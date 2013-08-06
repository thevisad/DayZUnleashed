/*
	DayZ Base Building
	Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
*/
private ["_location","_dir","_classname","_item","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_canBuildOnPlot","_friendlies","_nearestPole","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText"];

if(CodeInProgress ) exitWith { cutText ["Building already in progress." , "PLAIN DOWN"]; };
CodeInProgress  = true;

_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater = 		(surfaceIsWater (getPosATL player)) or dayz_isSwimming;
_cancel = false;
_reason = "";
_canBuildOnPlot = false;
DZE_BuildingZ = 0;

DZE_5 = false;

call gear_ui_init;

if(_isWater) exitWith {CodeInProgress  = false; cutText [localize "str_player_26", "PLAIN DOWN"];};
if(_onLadder) exitWith {CodeInProgress  = false; cutText [localize "str_player_21", "PLAIN DOWN"];};
if(player getVariable["combattimeout", 0] >= time) exitWith {CodeInProgress  = false; cutText ["Cannot build while in combat.", "PLAIN DOWN"];};

_item =			_this;
_classname = 	getText (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "create");
_classnametmp = _classname;
_require =  getArray (configFile >> "cfgMagazines" >> _this >> "ItemActions" >> "Build" >> "require");
_text = 		getText (configFile >> "CfgVehicles" >> _classname >> "displayName");

_offset = 	getArray (configFile >> "CfgVehicles" >> _classname >> "offset");

_isPole = (_classname == "Plastic_Pole_EP1_DZ");

_distance = 30;
_needText = "Plot Pole";

if(_isPole) then {
	_distance = 45;
};

// check for near plot
_findNearestPoles = nearestObjects [(vehicle player), ["Plastic_Pole_EP1_DZ"], _distance];
_findNearestPole = [];

{
	if (alive _x) then {
		_findNearestPole set [(count _findNearestPole),_x];
	};
} foreach _findNearestPoles;

_IsNearPlot = count (_findNearestPole);

// If item is plot pole and another one exists within 45m
if(_isPole and _IsNearPlot > 0) exitWith {  CodeInProgress  = false; cutText ["Cannot build plot pole within 45m of an existing plot." , "PLAIN DOWN"]; };

if(_IsNearPlot == 0) then {
	_canBuildOnPlot = true;
} else {
	
	// check nearby plots ownership and then for friend status
	_nearestPole = _findNearestPole select 0;

	// Find owner 
	_ownerID = _nearestPole getVariable["CharacterID","0"];

	// diag_log format["DEBUG BUILDING: %1 = %2", dayz_characterID, _ownerID];

	// check if friendly to owner
	if(dayz_characterID == _ownerID) then {
		_canBuildOnPlot = true;		
	} else {
		_friendlies		= player getVariable ["friendlyTo",[]];
		// check if friendly to owner
		if(_ownerID in _friendlies) then {
			_canBuildOnPlot = true;
		};
	};
};

// _message
if(!_canBuildOnPlot) exitWith {  CodeInProgress  = false; cutText [format["Building requires %1 within %2m.",_needText,_distance] , "PLAIN DOWN"]; };

_missing = "";
_hasrequireditem = true;
{
	_hastoolweapon = _x in weapons player;
	if(!_hastoolweapon) exitWith { _hasrequireditem = false; _missing = _x; }
} forEach _require;

_hasbuilditem = _this in magazines player;
if (!_hasbuilditem) exitWith {CodeInProgress  = false; cutText [format[(localize "str_player_31"),_text,"build"] , "PLAIN DOWN"]; };

if (!_hasrequireditem) exitWith {CodeInProgress  = false; cutText [format["Missing tool %1",_missing] , "PLAIN DOWN"]; };
if (_hasrequireditem) then {

	_location = [0,0,0];
	
	_counter = 0;
	_isOk = true;

	while {_isOk} do {
		
		

		if(_counter == 0) then {
			// get inital players position
			_location1 = getPosATL player;
			_dir = getDir player;
			_position = player modeltoworld _offset;
			_position = [(_position select 0),(_position select 1), (_position select 2)];
			hintSilent str (_position);

			// if ghost preview available use that instead
			_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");
			if (_ghost == "") then {
				_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
			} else {
				_classname = _ghost;
				_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
			};
	
			_object setDir _dir;
			_object setPos _position;
			_object attachTo [player];
		};

		_zheightchanged = false;

		if (DZE_Q) then {
			DZE_Q = false;
			DZE_BuildingZ = DZE_BuildingZ + 0.1;
			_zheightchanged = true;
		};
		if (DZE_Z) then {
			DZE_Z = false;
			DZE_BuildingZ = DZE_BuildingZ - 0.1;
			
			_zheightchanged = true;
		};
		
		if(_zheightchanged) then {
			detach _object;
			deleteVehicle _object;

			_dir = getDir player;
			_position = player modeltoworld _offset;
			_position = [(_position select 0),(_position select 1), (_position select 2)+DZE_BuildingZ];

			hintSilent str (_position);

			// if ghost preview available use that instead
			_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");
			if (_ghost == "") then {
				_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
			} else {
				_classname = _ghost;
				_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
			};
	
			_object setDir _dir;
			_object setPos _position;
			_object attachTo [player];
		};

		cutText ["Planning construction numpad 8 = up, numpad 2 = down, and numpad 5 to start building.", "PLAIN DOWN"];
		
		_location0 = getPosATL player;

		sleep 1;

		_location2 = getPosATL player;

		if(DZE_5) exitWith {
			_isOk = false;
			detach _object;
			deleteVehicle _object;
		};

		if(_location1 distance _location2 > 5) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Moving to fast."; 
			detach _object;
			deleteVehicle _object;
		};
		
		if(_counter >= 45) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Ran out of time to find position."; 
			detach _object;
			deleteVehicle _object;
		};
		_counter = _counter + 1;

		if (player getVariable["combattimeout", 0] >= time) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Cannot build while in combat.";
			detach _object;
			deleteVehicle _object;
		};
	};


	_classname = _classnametmp;

	


	// Start Build 
	_tmpbuilt = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];

	_dir = getDir player;
	_tmpbuilt setdir _dir;
	
	// Get position based on player
	_location = player modeltoworld _offset;
	
	_location = [(_location select 0),(_location select 1),(_position select 2)];

	hintSilent str (_location);
	
	_tmpbuilt setpos _location;

	// No building on roads
	if (isOnRoad _location) then { _cancel = true; _reason = "Cannot build on a road."; };

	// No building in trader zones
	if(!canbuild) then { _cancel = true; _reason = "Cannot build in a city."; };
	if(!placevault) then { _cancel = true; _reason = "Cannot build in a city."; };

	if(!_cancel) then {

		cutText [format["Placing %1, move to cancel.",_text], "PLAIN DOWN"];
		
		_limit = 3;

		if(isNumber (configFile >> "CfgVehicles" >> _classname >> "constructioncount")) then {
			_limit = getNumber(configFile >> "CfgVehicles" >> _classname >> "constructioncount");
		};

		_isOk = true;
		_proceed = false;
		_counter = 0;
		
		while {_isOk} do {

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
				sleep 0.1;
			};
			r_doLoop = false;


			if(!_finished) exitWith {
				_isOk = false;
				_proceed = false;
			};

			if(_finished) then {
				_counter = _counter + 1;
			};

			cutText [format["Constructing %1 stage %2 of %3, move to cancel.",_text, _counter,_limit], "PLAIN DOWN"];

			if(_counter == _limit) exitWith {
				_isOk = false;
				_proceed = true;
			};
	
		};

		if (_proceed) then {
	
			_num_removed = ([player,_item] call BIS_fnc_invRemove);
			if(_num_removed == 1) then {

				cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];

				_tmpbuilt setVariable ["characterID",dayz_characterID,true];
	
				//["dayzPublishObj",[dayz_characterID,_tmpbuilt,[_dir,_location],_classname]] call callRpcProcedure;
				PVDZ_obj_Publish = [dayz_characterID,_tmpbuilt,[_dir,_location],_classname];
				publicVariableServer "PVDZ_obj_Publish";


			} else {
				deleteVehicle _tmpbuilt;
				cutText ["Canceled building." , "PLAIN DOWN"];
			};

		} else {
			r_interrupt = false;
			if (vehicle player == player) then {
				[objNull, player, rSwitchMove,""] call RE;
				player playActionNow "stop";
			};

			deleteVehicle _tmpbuilt;

			cutText ["Canceled building." , "PLAIN DOWN"];
		};

	} else {
		deleteVehicle _tmpbuilt;
		cutText [format["Canceled construction of %1 %2.",_text,_reason], "PLAIN DOWN"];
	};
};

CodeInProgress  = false;