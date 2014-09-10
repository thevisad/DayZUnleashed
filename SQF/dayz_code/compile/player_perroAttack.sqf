private ["_unit", "_type", "_vehicle", "_speed", "_nextPlayerPos", "_distance", "_isVehicle", "_isSameFloor", "_isStairway", "_isClear", "_epu", "_epv", "_gpu_asl", "_gpv_asl", "_areaAffect", "_hu", "_hv", "_ob_arr", "_cob", "_deg", "_sign", "_a", "_rnd", "_move", "__FILE__", "_vel", "_hpList", "_hp", "_wound", "_damage", "_strH", "_dam", "_total", "_cnt", "_index", "_woundDamage","_classTackleTime"];
//diag_log("PPA: starting");
_start = diag_tickTime;

_unit = _this select 0;
_type = _this select 1;

_vehicle = (vehicle player);
_speed = speed player;
_nextPlayerPos = player call dayz_futurePos;
_distance = [_unit, _nextPlayerPos] call BIS_fnc_distance2D;

_isVehicle = (_vehicle != player);
_isSameFloor = false;
_isStairway = false;
_isClear = false;

_gpu_asl = getPosASL _unit;
_hu = _gpu_asl select 2;
_gpv_asl = getPosASL _vehicle;
_hv = _gpv_asl select 2;
_move = "Dog_Attack";
if (_type != "perro") exitWith {diag_log("PPA: not a perro");}; // we deal only with perros in this function
if (_unit distance player > dayz_areaAffect) exitWith {diag_log("PPA: too far:");}; // distance too far according to any logic dealt here //+str(_unit distance _nextPlayerPos)+"/"+str(_areaAffect)

//This is handled within a new case we wont zeds to always attack
//if (((!_isVehicle) AND {(random 8 > 1)}) AND {((toArray(animationState player) select 5) == 112)}) exitWith {"player down"}; // less attack if player prones

// check if fight is in stairway or not,
if (abs(_hu - _hv) < 1.3) then {
	_isSameFloor = true;
	if ((!_isVehicle) AND {(abs(_hu - _hv) > 0.15)}) then { _isStairway = true; };
};

if (!_isSameFloor) exitWith {diag_log("PPA: not on same floor");}; // no attack if the 2 fighters are not on the same level

// check relative angle (where is the player/vehicle in the Z sight)
_deg = [_unit,  _nextPlayerPos] call BIS_fnc_relativeDirTo;
if (_deg > 180) then { _deg = _deg - 360; };

/*
// check Z stance. Stand up Z if it prones/kneels. Cancel the attack.
if (unitPos _unit != "UP") exitWith {
	_unit setUnitPos "UP";
	"bad stance"
};
*/

switch true do {
	case ((toArray(animationState player) select 5) == 112) : {
	//diag_log("PPA: animationState");
		if (_distance < 3) then {
			_move = "Dog_Attack";
		};
	};
	case (r_player_unconscious) : {
	//diag_log("PPA: r_player_unconscious");
		if (random 3 < 1) then {
			_move = "Dog_Attack";
		};
	};
	case (_isStairway) : {
	//diag_log("PPA: _isStairway");
		if (_distance < 1.7) then {
			_move = "Dog_GetUp";
		};
	};
	case (_isVehicle AND {(_distance > 2.2)}) : { // enable attack if Z is between 2.2 and 3.5. Other cases are handled in "default"
	//diag_log("PPA: _isVehicle");
		if (_distance < 3.5) then {
			_move = "Dog_GetUp";
		};
	};
	case (_speed >= 5) : {
	//diag_log("PPA: _speed");
		if (_distance < 2.3) then {
			_move = "Dog_GetUp";
		};
	};
	default {
	//diag_log("PPA: default");
		_move = "Dog_Attack";
	};
};

// fix the direction
_unit setDir ((getDir _unit) + _deg);
//_unit setPosATL (getPosATL _unit);


// let's animate the Z
if (local _unit) then {
	_unit switchMove _move;
}
else {
	[objNull,  _unit,  rSwitchMove,  _move] call RE;
};

// Damage is done after the move
sleep 0.3;

//if (r_player_unconscious) exitWith {"player unconscious"};  // no damage if player still unconscious.

// broadcast hit noise
[_unit,  "dog_bark",  1,  false] call dayz_zombieSpeak;

// compute damage for vehicle and/or the player
if (_isVehicle) then {
	// eject the player of the open vehicle. There will be no damage in this case
	if (0 != {_vehicle isKindOf _x} count ["ATV_Base_EP1",  "Motorcycle",  "Bicycle"]) then {
		if (random 3 < 1) then {
			player action ["eject",  _vehicle];
		};
		//diag_log(format["PPA: %1: Player ejected from %2", __FILE__, _vehicle]);
	}; // fi veh with compartment
} else { // player by foot
//Make sure sure evrything is processed as we attack.
	if (player distance _unit <= 2.2) then {
		_damage = 0.2 + random (1);
		_tPos = (getPosASL _vehicle);
		_zPos = (getPosASL _unit);
		_inAngle = [_zPos,(getdir _unit),50,_tPos] call fnc_inAngleSector;
		if (_inAngle) then {
			//LOS check
			_cantSee = [_unit,_vehicle] call dayz_losCheck;
			if (!_cantSee) then {
				// player may fall if hit...
				_deg = [player, _unit] call BIS_fnc_relativeDirTo;
				_lastTackle = player getVariable ["lastTackle", 0];
                _skillCombat= [player,"Combat"] call DZU_fnc_getVariable;
				_move = "";
				_classTackleTime = 0;
                
                
                _classTackleTime = 6.72 + (0.28 * _skillCombat);

				
				if ((diag_tickTime - _lastTackle) > _classTackleTime) then {
					switch true do {
						// front
						case (((!_isVehicle) and (_speed >= 5.62)) and (((_deg > 315) and (_deg <= 360)) or ((_deg > 0) and (_deg < 45)))) : {
							//player setVelocity [(velocity player select 0) + 5 * sin direction _unit, (velocity player select 1) + 5 * cos direction _unit, (velocity player select 2) + 1];
							// stop player
							_vel = velocity player;
							player setVelocity [-(_vel select 0),  -(_vel select 1),  0];
							/*
							// rotate player 'smoothly'
							[_deg] spawn {
								private["_step","_i"];
								_step = 180 / 3;
								_i = 0;
								while { _i < 3 } do {
									player setDir ((getDir player) + _step);
									_i = _i + 1;
									sleep 0.01;
								};
							};

							// make player divem
							_move = switch (toArray(animationState player) select 17) do {
								case 114 : {"ActsPercMrunSlowWrflDf_TumbleOver"}; // rifle
								case 112 : {"AmovPercMsprSlowWpstDf_AmovPpneMstpSrasWpstDnon"}; // pistol
								default {"ActsPercMrunSlowWrflDf_TumbleOver"};
							};
							*/
						};
						// left
						case (((!_isVehicle) and (_speed >= 5.62)) and ((_deg > 225) and (_deg < 315))) : {
							//player setVelocity [(velocity player select 0) + 5 * sin direction _unit, (velocity player select 1) + 5 * cos direction _unit, (velocity player select 2) + 1];
							// stop player
							//_vel = velocity player;
							//player setVelocity [-(_vel select 0),  -(_vel select 1),  0];

							// rotate player 'smoothly'
							
							
							
									[_deg] spawn {
									private["_step","_i"];
									_step = 90 / 5;
									_i = 0;
									while { _i < 5 } do {
										player setDir ((getDir player) + _step);
										_i = _i + 1;
										sleep 0.01;
									};
								

								// make player dive
								_move = switch (toArray(animationState player) select 17) do {
									case 114 : {"ActsPercMrunSlowWrflDf_TumbleOver"}; // rifle
									case 112 : {"AmovPercMsprSlowWpstDf_AmovPpneMstpSrasWpstDnon"}; // pistol
									default {"ActsPercMrunSlowWrflDf_TumbleOver"};
								};
							};
							
						};
						// right
						case (((!_isVehicle) and (_speed >= 5.62)) and ((_deg > 45) and (_deg < 135))) : {
							//player setVelocity [(velocity player select 0) + 5 * sin direction _unit, (velocity player select 1) + 5 * cos direction _unit, (velocity player select 2) + 1];
							// stop player
							//_vel = velocity player;
							//player setVelocity [-(_vel select 0),  -(_vel select 1),  0];

							// rotate player 'smoothly'
							[_deg] spawn {
								private["_step","_i"];
								_step = 90 / 5;
								_i = 0;
								while { _i < 5 } do {
									player setDir ((getDir player) - _step);
									_i = _i + 1;
									sleep 0.01;
								};
							};

							// make player dive
							_move = switch (toArray(animationState player) select 17) do {
								case 114 : {"ActsPercMrunSlowWrflDf_TumbleOver"}; // rifle
								case 112 : {"AmovPercMsprSlowWpstDf_AmovPpneMstpSrasWpstDnon"}; // pistol
								default {"ActsPercMrunSlowWrflDf_TumbleOver"};
							};
						};
						// rear
						case (((!_isVehicle) and (_speed >= 5.62)) and ((_deg > 135) and (_deg < 225))) : {
							// stop player
							//_vel = velocity player;
							//player setVelocity [-(_vel select 0),  -(_vel select 1),  0];

							// make player dive
							_move = switch (toArray(animationState player) select 17) do {
								case 114 : {"ActsPercMrunSlowWrflDf_TumbleOver"}; // rifle
								case 112 : {"AmovPercMsprSlowWpstDf_AmovPpneMstpSrasWpstDnon"}; // pistol
								default {"ActsPercMrunSlowWrflDf_TumbleOver"};
							};
						};
					};

					// make player dive After making sure the zed can see you.
					if (_move != "") then {
						player setVariable ["lastTackle", time];
						_doRE = ({isPlayer _x} count (player nearEntities ["AllVehicles",100]) > 1);

						if (_doRE) then {
							[nil, player, rSWITCHMOVE, _move] call RE;
						} else {
							player switchMove _move;
						};

						if (_move == "ActsPercMrunSlowWrflDf_TumbleOver") then {
							[_doRE] spawn {
								private ["_doRE"];
								_doRE = _this select 0;

								waitUntil { animationState player == "ActsPercMrunSlowWrflDf_TumbleOver" }; // just in case
								waitUntil { animationState player != "ActsPercMrunSlowWrflDf_TumbleOver" };

								if (_doRE) then {
									[nil, player, rSWITCHMOVE, ""] call RE;
								} else {
									player switchMove "";
								};
							};
						};

						//diag_log(format["PPA: %1 player tackled. Weapons: cur:""%2"" anim.state:%6 (%7)--> move: %3. Angle:%4 Delta-time:%5",  __FILE__, currentWeapon player, _move, _deg, time - _lastTackle, animationState player, toArray(animationState player) select 17 ]);
					};
				};

				switch true do {
					case (_isStairway AND (_hv > _hu)) : { // player is higher than Z,  so Z hurts legs
						[player,  "legs",  _damage,  _unit, "zombie"] call fnc_usec_damageHandler;
					};
					case (_isStairway AND (_hu > _hv)) : { // player is lower than Z,  so Z hurts head
						[player,  "head_hit",  _damage,  _unit, "zombie"] call fnc_usec_damageHandler;
					};
					default {
						if (r_player_blood < (r_player_bloodTotal * 0.8)) then {
							_cnt = count (DAYZ_woundHit select 1);
							_index = floor (random _cnt);
							_index = (DAYZ_woundHit select 1) select _index;
							_wound = (DAYZ_woundHit select 0) select _index;
						} else {
							_cnt = count (DAYZ_woundHit_ok select 1);
							_index = floor (random _cnt);
							_index = (DAYZ_woundHit_ok select 1) select _index;
							_wound = (DAYZ_woundHit_ok select 0) select _index;
						};
						[player,  _wound,  _damage,  _unit, "zombie"] call fnc_usec_damageHandler;
					};
				};

			};
		};
	};
	//diag_log("PPA: exit");
}; // fi player by foot

_stop = diag_tickTime;
//diag_log format ["PPA: %2 Execution Time: %1",_stop - _start, __FILE__];

// please do not remove this last line! It's the return code
""
