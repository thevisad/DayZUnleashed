private ["_location","_dir","_classname","_item","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_object","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_friendlies","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText","_lockable","_zheightchanged","_rotate","_combination_1","_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_abort","_isNear","_need","_objHupDiff","_needNear","_vehicle","_inVehicle","_previewCounter","_requireplot","_objHDiff","_isLandFireDZ","_isTankTrap"];

if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_40") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// disallow building if too many objects are found within 30m
if((count ((getPosATL player) nearObjects ["All",30])) >= DZE_BuildingLimit) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_41"), "PLAIN DOWN"];};

_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater = 		dayz_isSwimming;
_cancel = false;
_reason = "";
_canBuildOnPlot = false;

_vehicle = vehicle player;
_inVehicle = (_vehicle != player);

DZE_Q = false;
DZE_Z = false;

DZE_Q_alt = false;
DZE_Z_alt = false;

DZE_Q_ctrl = false;
DZE_Z_ctrl = false;

DZE_5 = false;
DZE_4 = false;
DZE_6 = false;

DZE_cancelBuilding = false;

call gear_ui_init;
closeDialog 1;

if (_isWater) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_26", "PLAIN DOWN"];};
if (_inVehicle) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_42"), "PLAIN DOWN"];};
if (_onLadder) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_21", "PLAIN DOWN"];};
if (player getVariable["combattimeout", 0] >= time) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_43"), "PLAIN DOWN"];};

_item =	_this;

// Need Near Requirements
_abort = false;
_reason = "";

_needNear = 	getArray (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "neednearby");

{
	switch(_x) do{
		case "fire":
		{
			_distance = 3;
			_isNear = {inflamed _x} count (getPosATL player nearObjects _distance);
			if(_isNear == 0) then {
				_abort = true;
				_reason = "fire";
			};
		};
		case "workshop":
		{
			_distance = 3;
			_isNear = count (nearestObjects [player, ["Wooden_shed_DZ","WoodShack_DZ","WorkBench_DZ"], _distance]);
			if(_isNear == 0) then {
				_abort = true;
				_reason = "workshop";
			};
		};
		case "fueltank":
		{
			_distance = 30;
			_isNear = count (nearestObjects [player, dayz_fuelsources, _distance]);
			if(_isNear == 0) then {
				_abort = true;
				_reason = "fuel tank";
			};
		};
	};
} forEach _needNear;


if(_abort) exitWith {
	cutText [format[(localize "str_epoch_player_135"),_reason,_distance], "PLAIN DOWN"];
	DZE_ActionInProgress = false;
};

_classname = 	getText (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "create");
_classnametmp = _classname;
_require =  getArray (configFile >> "cfgMagazines" >> _this >> "ItemActions" >> "Build" >> "require");
_text = 		getText (configFile >> "CfgVehicles" >> _classname >> "displayName");
_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");

_lockable = 0;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "lockable")) then {
	_lockable = getNumber(configFile >> "CfgVehicles" >> _classname >> "lockable");
};

_isAllowedUnderGround = 1;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "nounderground")) then {
	_isAllowedUnderGround = getNumber(configFile >> "CfgVehicles" >> _classname >> "nounderground");
};

_offset = 	getArray (configFile >> "CfgVehicles" >> _classname >> "offset");
if((count _offset) <= 0) then {
	_offset = [0,5,0];
};
_needText = localize "str_epoch_player_246";
_isLandFireDZ = (_classname == "Land_Fire_DZ");

_missing = "";
_hasrequireditem = true;
{
	_hastoolweapon = _x in weapons player;
	if(!_hastoolweapon) exitWith { _hasrequireditem = false; _missing = getText (configFile >> "cfgWeapons" >> _x >> "displayName"); }
} forEach _require;

_hasbuilditem = _this in magazines player;
if (!_hasbuilditem) exitWith {DZE_ActionInProgress = false; cutText [format[(localize "str_player_31"),_text,"build"] , "PLAIN DOWN"]; };

if (!_hasrequireditem) exitWith {DZE_ActionInProgress = false; cutText [format[(localize "str_epoch_player_137"),_missing] , "PLAIN DOWN"]; };
if (_hasrequireditem) then {
	if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _hasrequireditem start"]);};
	_location = [0,0,0];
	_isOk = true;

	// get inital players position
	_location1 = getPosATL player;
	_dir = getDir player;


	_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];

	_object attachTo [player,_offset];
	
	_position = getPosATL _object;
	
	cutText [(localize "str_epoch_player_45"), "PLAIN DOWN"];

	_previewCounter = 60;
	
	player allowDamage false;
	SnappingOffset = _offset;
	SnappingDir = 0;
	SnappingSpotMarkers = [];
	SnappingEnabled = false;
	SnappedOffsetZ = 0;
	SnappingResetPos = false;

	if (isClass (configFile >> "SnapPoints" >> _classname)) then {
		s_building_snapping = player addAction ["<t color=""#0000ff"">Toggle Snapping</t>", "\z\addons\dayz_code\actions\player_toggleSnapping.sqf",_classname, 3, true, false, "",""];
	};
	
	_snapper = [_object, _classname] spawn snap_object;
	_key_monitor = [_isAllowedUnderGround] spawn player_buildControls ;

	while {_isOk} do {
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _isOk start"]);};
		sleep 1;
		_location2 = getPosATL player;

		if(DZE_5) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: DZE_5 hit"]);};
			_isOk = false;
			detach _object;
			_dir = getDir _object;
			_position = getPosATL _object;
			deleteVehicle _object;
		};

		if(_location1 distance _location2 > 5) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _location1 hit"]);};
			_isOk = false;
			_cancel = true;
			_reason = "You've moved to far away from where you started building (within 5 meters)"; 
			detach _object;
			deleteVehicle _object;
		};
		
		[format["<t size='0.6'>Time left to build: %1</t>",(ceil(_previewCounter))],0,0.8,0.5,0,0,8] spawn BIS_fnc_dynamicText;
		
		if(_previewCounter <= 0) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _previewCounter hit"]);};
			_isOk = false;
			_cancel = true;
			_reason = "Ran out of time to find position"; 
			detach _object;
			deleteVehicle _object;
		};

		_previewCounter = _previewCounter - 1;
		
		if(((SnappingOffset select 2) > 5) or ((SnappingOffset select 2) < -5)) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: SnappingOffset hit"]);};
			_isOk = false;
			_cancel = true;
			_reason = "Cannot move up or down more than 5 meters"; 
			detach _object;
			deleteVehicle _object;
		};

		if (player getVariable["combattimeout", 0] >= time) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: combattimeout hit"]);};
			_isOk = false;
			_cancel = true;
			_reason = (localize "str_epoch_player_43");
			detach _object;
			deleteVehicle _object;
		};

		if (DZE_cancelBuilding) exitWith {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: DZE_cancelBuilding hit"]);};
			_isOk = false;
			_cancel = true;
			_reason = "Cancelled building.";
			detach _object;
			deleteVehicle _object;
		};
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _isOk start"]);};
	};

	terminate _snapper;
	terminate _key_monitor;
	player removeAction s_building_snapping;
	s_building_snapping = -1;
	player allowDamage true;
	
	//No building on roads unless toggled
	if (unleashed_BuildOnRoads==0) then {
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: unleashed_BuildOnRoads hit"]);};
		if (isOnRoad _position) then { _cancel = true; _reason = "Cannot build on a road."; };
	};
	// No building in trader zones
	if(!canbuild) then { _cancel = true; _reason = "Cannot build in a city."; };
	if(!placevault) then { _cancel = true; _reason = "Cannot build in a city."; };

	if(!_cancel) then { 
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _cancel start"]);};
		_classname = _classnametmp;

		// Start Build
		_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];

		_object setdir _dir;

		// Get position based on object
		_location = _position;

		if((_isAllowedUnderGround == 0) and ((_location select 2) < 0)) then {
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _isAllowedUnderGround hit"]);};
			_location set [2,0];
		};

		_object setPosATL _location;
		_uid = [_dir,_location] call dayz_objectUID2;
		_isGarage = _object isKindOf "dzu_playerGarage";
		if (_isGarage) then {
			_object setVariable ["GarageUID", _uid ,true];
			_GarageUID = _object getVariable ["GarageUID", "0"];
			_object setVariable ["VehicleClassArray", [], true];
			_object setVariable ["VehicleIDArray", [] , true];
			_object setVariable ["VehicleNameArray", [] , true];
			if (unleashed_PlayerBuildDebug == 1) then {
				diag_log (format["PB: UID: %1", _uid]);
				diag_log (format["PB: GarageUID: %1", _GarageUID]);
			};
		
		};
		
		cutText [format[(localize "str_epoch_player_138"),_text], "PLAIN DOWN"];
		
		_limit = 3;
		
		if (isNumber (configFile >> "CfgVehicles" >> _classname >> "constructioncount")) then {
			_limit = getNumber(configFile >> "CfgVehicles" >> _classname >> "constructioncount");
		};
		
		_isOk = true;
		_proceed = false;
		_counter = 0;
		
		while {_isOk} do {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _isOk2 start"]);};
			[10,10] call dayz_HungerThirst;
			player playActionNow "Medic";
			
			_dis=20;
			_sfx = "repair";
			[player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
			[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
			r_interrupt = false;
			_animState = animationState player;
			r_doLoop = true;
			_started = false;
			_finished = false;
	
			while {r_doLoop} do {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: r_doLoop start"]);};
				_animState = animationState player;
				_isMedic = ["medic",_animState] call fnc_inString;
				if (_isMedic) then {
					_started = true;
				};
				if (_started and !_isMedic) then {
					r_doLoop = false;
					_finished = true;
				};
				if (r_interrupt or (player getVariable["combattimeout", 0] >= time)) then {
					r_doLoop = false;
				};
				if (DZE_cancelBuilding) exitWith {
					r_doLoop = false;
				};
				sleep 0.1;
			};
			r_doLoop = false;


			if(!_finished) exitWith {
				if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _finished1 hit"]);};
				_isOk = false;
				_proceed = false;
			};

			if(_finished) then {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _finished2 hit"]);};
				_counter = _counter + 1;
			};

			cutText [format[(localize "str_epoch_player_139"),_text, _counter,_limit], "PLAIN DOWN"];

			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: text: %1, counter: %2, limit: %3, finished: %4",_text, _counter,_limit, _finished]);};
			
			if(_counter == _limit) exitWith {
				if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _counter limit hit"]);};
				_isOk = false;
				_proceed = true;
			};
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _isOk2 end"]);};
		};

		if (_proceed) then {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _proceed hit"]);};
			_num_removed = ([player,_item] call BIS_fnc_invRemove);
			if(_num_removed == 1) then {
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _num_removed hit"]);};
				cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];
				_object setVariable ["OwnerID", dayz_playerUID,true];
				_object setVariable ["lastUpdate",time];
				_location = _object modelToWorld [0,0,0];
				//_location = getPosATL _object;
				_object setVariable ["OEMPos",_location,true];

				if(_lockable > 1) then {
					if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _lockable start"]);};
					_combinationDisplay = "";

					switch (_lockable) do {
						if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: switch hit"]);};
						case 2: { // 2 lockbox
							_combination_1 = (floor(random 3)) + 100; // 100=red,101=green,102=blue
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination = format["%1%2%3",_combination_1,_combination_2,_combination_3];
							dayz_combination = _combination;
							if (_combination_1 == 100) then {
								_combination_1_Display = "Red";
							};
							if (_combination_1 == 101) then {
								_combination_1_Display = "Green";
							};
							if (_combination_1 == 102) then {
								_combination_1_Display = "Blue";
							};
							_combinationDisplay = format["%1%2%3",_combination_1_Display,_combination_2,_combination_3];
						};
						
						case 3: { // 3 combolock
							_combination_1 = floor(random 10);
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination = format["%1%2%3",_combination_1,_combination_2,_combination_3];
							dayz_combination = _combination;
							_combinationDisplay = _combination;
						};
						
						case 4: { // 4 safe
							_combination_1 = floor(random 10);
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination_4 = floor(random 10);
							_combination = format["%1%2%3%4",_combination_1,_combination_2,_combination_3,_combination_4];
							dayz_combination = _combination;
							_combinationDisplay = _combination;
						};
					};

					_object setVariable ["CharacterID",_combination,true];
					

					PVDZ_bld_Publish = [dayz_characterID,_object,[_dir,_location],_classname, _combination, "player_build1",dayz_playerUID,_uid];
					publicVariableServer "PVDZ_bld_Publish";

					cutText [format[(localize "str_epoch_player_140"),_combinationDisplay,_text], "PLAIN DOWN", 5];
					
					if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _lockable end"]);};
				} else {
					if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _lockable else"]);};
					_object setVariable ["CharacterID",dayz_characterID,true];
					
					// fire?
					if(_object isKindOf "Land_Fire_DZ") then {
						_object spawn player_fireMonitor;
					} else {
						PVDZ_bld_Publish = [dayz_characterID,_object,[_dir,_location],_classname,dayz_characterID, "player_build2",dayz_playerUID,_uid];
						publicVariableServer "PVDZ_bld_Publish";
					};
				};
				if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _num_removed end"]);};
			} else {
				if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _num_removed else"]);};
				deleteVehicle _object;
				cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
			};
			if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _cancel end"]);};
		} else {
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _cancel else"]);};
			r_interrupt = false;
			if (vehicle player == player) then {
				[objNull, player, rSwitchMove,""] call RE;
				player playActionNow "stop";
			};

			deleteVehicle _object;
			cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
		};
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _cancel end"]);};
	} else {
		if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _cancel else"]);};
		deleteVehicle _object;
		cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
	};
	if (unleashed_PlayerBuildDebug == 1) then { diag_log (format["PB: _hasrequireditem ended"]);};
};

DZE_ActionInProgress = false;
