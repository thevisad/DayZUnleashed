[]execVM "\z\addons\dayz_server\system\s_fps.sqf"; //server monitor FPS (writes each ~181s diag_fps+181s diag_fpsmin*)
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

dayz_versionNo = 		getText(configFile >> "CfgMods" >> "DayZ" >> "version");
dayz_hiveVersionNo = 	getNumber(configFile >> "CfgMods" >> "DayZ" >> "hiveVersion");
_script = getText(missionConfigFile >> "onPauseScript");

if ((count playableUnits == 0) and !isDedicated) then {
	isSinglePlayer = true;
};

waitUntil{initialized}; //means all the functions are now defined

diag_log "HIVE: Starting";

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
		diag_log ("HIVE: Local Time set to " + str(_date));
	};

	
waituntil{isNil "sm_done"}; // prevent server_monitor be called twice (bug during login of the first player)
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_initserver.sqf";
#include "\z\addons\dayz_server\compile\fa_hiveMaintenance.hpp"

if (isServer and isNil "sm_done") then {
		private ["_key","_data","_result","_status","_buildingArray","_bldCount","_val","_countr","_idKey","_type","_ownerID","_worldspace","_dir","_wsDone","_inventory","_hitPoints","_squadID","_combination","_damage","_object","_classname","_i","_requirements","_isDestructable","_objWpnTypes","_objWpnQty","_isOK","_block","_hiveResponse","_objectArray","_objectCount"];
		_key = format["CHILD:600:%1:", dayZ_instance];
		_data = "HiveEXT" callExtension _key;
		diag_log("BASEBUILDING: Fetching Base Buildings...");
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
			diag_log ("BASEBUILDING: Found " + str(_bldCount) + " Base Buildings!");
			[_buildingArray] call server_SpawnBuildings;
		};
		
			
		for "_i" from 1 to 5 do {
			diag_log("GARAGEINFO: Fetching Garages...");
			_key = format["CHILD:605:%1:", dayZ_instance];
			_hiveResponse = _key call server_hiveReadWrite;  
			if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
				diag_log ("GARAGEINFO: connection problem... HiveExt response:"+str(_hiveResponse));
				_hiveResponse = ["",0];
			} 
			else {
				//diag_log ("SM: found "+str(_hiveResponse select 1)+" vehicles" );
				_i = 99; // break
			};
		};
	
		_garageArray = [];

		if ((_hiveResponse select 0) == "GarageStreamStart") then {
			_garageCount = _hiveResponse select 1;
			diag_log ("HIVE: Commence Object Streaming...");
			for "_i" from 1 to _garageCount do { 
				_hiveResponse = _key call server_hiveReadWrite;
				_garageArray set [_i - 1, _hiveResponse];
				//diag_log (format["HIVE dbg %1 %2", typeName _hiveResponse, _hiveResponse]);
			};
			diag_log ("GARAGEINFO: Found " + str(count _garageArray) + " Garages");
			[_garageArray] call server_SpawnGarages;
		};
		
		
		
	for "_i" from 1 to 5 do {
		diag_log "SM: Streaming Vehicles";
		_key = format["CHILD:302:%1:", dayZ_instance];
		_hiveResponse = _key call server_hiveReadWrite;  
		if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
			diag_log ("HIVE: connection problem... HiveExt response:"+str(_hiveResponse));
			_hiveResponse = ["",0];
		} 
		else {
			//diag_log ("SM: found "+str(_hiveResponse select 1)+" vehicles" );
			_i = 99; // break
		};
	};
	
	_objectArray = [];
	if ((_hiveResponse select 0) == "ObjectStreamStart") then {
		_objectCount = _hiveResponse select 1;
		diag_log ("HIVE: Commence Object Streaming...");
		for "_i" from 1 to _objectCount do { 
			_hiveResponse = _key call server_hiveReadWrite;
			_objectArray set [_i - 1, _hiveResponse];
			//diag_log (format["HIVE dbg %1 %2", typeName _hiveResponse, _hiveResponse]);
		};
		diag_log ("HIVE: got " + str(count _objectArray) + " objects");
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
                4000,    //Radius in Meters from the Center-Marker in which the Choppers can crash and get waypoints
                true,    //Should the spawned crashsite burn (at night) & have smoke?
                false,    //Should the flames & smoke fade after a while?
                true,    //Use the Static-Crashpoint-Function? If true, you have to add Coordinates into server_spawnCrashSite.sqf
                15,        //Amount of Random-Waypoints the Heli gets before he flys to his Point-Of-Crash (using Static-Crashpoint-Coordinates if its enabled)
                0.0001        //Amount of Damage the Heli has to get while in-air to explode before the POC. (0.0001 = Insta-Explode when any damage//bullethit, 1 = Only Explode when completly damaged)
            ] spawn server_spawnCrashSite;
			/*
	for "_x" from 1 to 6 do {
		_id = [] spawn spawn_carePackages;
	}; //Spawn care packages
	*/
	//Spawn camps
	// quantity, marker, radius, min distance between 2 camps
	Server_InfectedCamps = [3, "center", 4500, 2000] call fn_bases;
	dayzInfectedCamps = Server_InfectedCamps;
	publicVariable "dayzInfectedCamps";

	// antiwallhack
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fa_antiwallhack.sqf";	
	sm_done = true;
	publicVariable "sm_done";
};
