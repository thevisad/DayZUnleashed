[]execVM "\z\addons\dayz_server\system\s_fps.sqf"; //server monitor FPS (writes each ~181s diag_fps+181s diag_fpsmin*)
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

dayz_versionNo = 		getText(configFile >> "CfgMods" >> "DayZ" >> "version");
dayz_hiveVersionNo = 	getNumber(configFile >> "CfgMods" >> "DayZ" >> "hiveVersion");
_script = getText(missionConfigFile >> "onPauseScript");

if ((count playableUnits == 0) and !isDedicated) then {
	isSinglePlayer = true;
};

waitUntil{initialized}; //means all the functions are now defined

if (unleashed_HiveDebug == 1) then { diag_log "SM: Starting"; };

//Set the Time
	//Send request
	_key = "CHILD:307:";
	_result = _key call server_hiveReadWrite;
	_outcome = _result select 0;
	if(_outcome == "PASS") then {
		_date = _result select 1;
		
		//date setup
		_year = _date select 0;
		_month = _date select 1;
		_day = _date select 2;
		_hour = _date select 3;
		_minute = _date select 4;
		
		//Force full moon nights
		_date = [2013,8,3,_hour,_minute];
		
		if(isDedicated) then {
			//["dayzSetDate",_date] call broadcastRpcCallAll;
			setDate _date;
			dayzSetDate = _date;
			publicVariable "dayzSetDate";
		};
		if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Local Time set to ",_date]); };
	};

	
waituntil{isNil "sm_done"}; // prevent server_monitor be called twice (bug during login of the first player)
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
#include "\z\addons\dayz_server\compile\fa_hiveMaintenance.hpp"

if (isServer and isNil "sm_done") then {
		private ["_key","_data","_result","_status","_buildingArray","_bldCount","_val","_countr","_idKey","_type","_ownerID","_worldspace","_dir","_wsDone","_inventory","_hitPoints","_squadID","_combination","_damage","_object","_classname","_i","_requirements","_isDestructable","_objWpnTypes","_objWpnQty","_isOK","_block","_hiveResponse","_objectArray","_objectCount"];
		
		_key = format["CHILD:220:%1:", dayZ_instance];
		_data = "HiveEXT" callExtension _key;

		if (unleashed_HiveDebug == 1) then { diag_log("SM: Fetching messages..."); };

		//Process result
		_result = call compile format ["%1", _data];
		_status = _result select 0;

		msgList = [];
		_msgCount = 0;
		if (_status == "MessagingStreamStart") then {
			_val = _result select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key;
				_result = call compile format ["%1",_data];

				_status = _result select 0;
				msgList set [count msgList, _result];
				_msgCount = _msgCount + 1;
			};
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Found %1 system messages.",_msgCount]); };
		};
		
		
		_key = format["CHILD:600:%1:", dayZ_instance];
		_data = "HiveEXT" callExtension _key;
		if (unleashed_HiveDebug == 1) then { diag_log("SM: Fetching player buildings...");};
		//Process result
		_result = call compile format ["%1", _data];
		_status = _result select 0;
		_buildingArray = [];
		_bldCount = 0;
		_countr = 0;
		_idKey = 0;
		if (_status == "BuildingStreamStart") then {
			_val = _result select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key;
				_result = call compile format ["%1",_data];
				_status = _result select 0;
				_buildingArray set [count _buildingArray, _result];
				_bldCount = _bldCount + 1;
			};
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Found %1 base buildings.",_bldCount]); };
			[_buildingArray] call server_SpawnBuildings;
		};
		
			
		for "_i" from 1 to 5 do {
			if (unleashed_HiveDebug == 1) then { diag_log("SM: Fetching Garages..."); };
			_key = format["CHILD:605:%1:", dayZ_instance];
			_hiveResponse = _key call server_hiveReadWrite;  
			if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
				if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Garage connection problem, HiveExt response: %1",_hiveResponse]); };
				_hiveResponse = ["",0];
			} 
			else {
				if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Garage connection, HiveExt response: %1",_hiveResponse]); };
				_i = 99; // break
			};
		};
	
		_garageArray = [];

		if ((_hiveResponse select 0) == "GarageStreamStart") then {
			_garageCount = _hiveResponse select 1;
			if (unleashed_HiveDebug == 1) then { diag_log ("SM: Commence Garage Streaming..."); };
			for "_i" from 1 to _garageCount do { 
				_hiveResponse = _key call server_hiveReadWrite;
				_garageArray set [_i - 1, _hiveResponse];
				if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Garage Response: %1", _hiveResponse]); };
			};
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Found %1 garages.",(count _garageArray)]); };
			[_garageArray] call server_SpawnGarages;
		};
		
		
		
	for "_i" from 1 to 5 do {
		if (unleashed_HiveDebug == 1) then { diag_log "SM: Streaming Vehicles"; };
		_key = format["CHILD:302:%1:", dayZ_instance];
		_hiveResponse = _key call server_hiveReadWrite;  
		if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Vehicle connection problem response: %1",_hiveResponse]); };
			_hiveResponse = ["",0];
		} 
		else {
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Vehicle connection  response: %1",_hiveResponse]); };
			_i = 99; // break
		};
	};
	
	_objectArray = [];
	if ((_hiveResponse select 0) == "ObjectStreamStart") then {
		_objectCount = _hiveResponse select 1;
		if (unleashed_HiveDebug == 1) then { diag_log ("SM: Commence Vehicle Streaming..."); };
		for "_i" from 1 to _objectCount do { 
			_hiveResponse = _key call server_hiveReadWrite;
			_objectArray set [_i - 1, _hiveResponse];
			if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Vehicle Response: %1", _hiveResponse]); };
		};
		
		if (unleashed_HiveDebug == 1) then { diag_log (format["SM: Found %1 garages.",(count _objectArray)]); };
		[_objectArray] call fa_checkVehicles;
		[_objectArray] call server_spawnVehicle;
	};

	createCenter civilian;

	if (isDedicated) then {
		endLoadingScreen;
	};	
	
	if (isDedicated) then {
		_id = [] execFSM "\z\addons\dayz_server\system\server_cleanup.fsm";
	};
	
	allowConnection = true;

	// [_guaranteedLoot, _randomizedLoot, spawnOnStart, _frequency, _variance, _spawnChance, _spawnMarker, _spawnRadius, _spawnFire, _fadeFire]
	//[3, 4, 3, (40 * 60), (15 * 60), 0.75, 'center', 4000, true, false] spawn server_spawnCrashSite;
	//Animated Helicrash
	// [_guaranteedLoot, _randomizedLoot, _frequency, _variance, _spawnChance, _spawnMarker, _spawnRadius, _spawnFire, _fadeFire, _useStatic, _preWaypoint, _crashDamage]
	nul =    [
                6,        //Number of the guaranteed Loot-Piles at the Crashside
                4,        //Number of the random Loot-Piles at the Crashside 3+(1,2,3 or 4)
                1800,    //Fixed-Time (in seconds) between each start of a new Chopper
                900,      //Random time (in seconds) added between each start of a new Chopper
                1,        //Spawnchance of the Heli (1 will spawn all possible Choppers, 0.5 only 50% of them)
                'center', //Center-Marker for the Random-Crashpoints, for Chernarus this is a point near Stary
                8000,    //Radius in Meters from the Center-Marker in which the Choppers can crash and get waypoints
                true,    //Should the spawned crashsite burn (at night) & have smoke?
                false,    //Should the flames & smoke fade after a while?
                false,    //Use the Static-Crashpoint-Function? If true, you have to add Coordinates into server_spawnCrashSite.sqf
                15,        //Amount of Random-Waypoints the Heli gets before he flys to his Point-Of-Crash (using Static-Crashpoint-Coordinates if its enabled)
                0.01        //Amount of Damage the Heli has to get while in-air to explode before the POC. (0.0001 = Insta-Explode when any damage//bullethit, 1 = Only Explode when completly damaged)
            ] spawn server_spawnCrashSite;

	/*
	for "_x" from 1 to 6 do {
		_id = [] spawn spawn_carePackages;
	}; //Spawn care packages
	
	for "_x" from 1 to 50 do {
		_id = [] spawn spawn_wrecks;
	}; //Spawn wrecks
	*/
	//Spawn camps
	// quantity, marker, radius, min distance between 2 camps
	Server_InfectedCamps = [5, "center", 4500, 2000] call fn_bases;
	dayzInfectedCamps = Server_InfectedCamps;
	publicVariable "dayzInfectedCamps";

	// antiwallhack
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fa_antiwallhack.sqf";	
	sm_done = true;
	publicVariable "sm_done";
};
