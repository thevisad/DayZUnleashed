[]execVM "\z\addons\dayz_server\system\s_fps.sqf"; //server monitor FPS (writes each ~181s diag_fps+181s diag_fpsmin*)
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

dayz_versionNo = 		getText(configFile >> "CfgMods" >> "DayZ" >> "version");
dayz_hiveVersionNo = 	getNumber(configFile >> "CfgMods" >> "DayZ" >> "hiveVersion");
_script = getText(missionConfigFile >> "onPauseScript");

if ((count playableUnits == 0) and !isDedicated) then {
	isSinglePlayer = true;
};

waitUntil{initialized}; //means all the functions are now defined
// ### BASE BUILDING 1.2 ### SERVER SIDE BUILD ARRAYS - START
call build_baseBuilding_arrays;
// ### BASE BUILDING 1.2 ### SERVER SIDE BUILD ARRAYS - END
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
		_date = [2012,6,6,_hour,_minute];
		
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
	private["_i","_hiveResponse","_key","_objectArray","_objectCount"];
	
	for "_i" from 1 to 5 do {
		diag_log "HIVE: trying to get objects";
		_key = format["CHILD:302:%1:", dayZ_instance];
		_hiveResponse = _key call server_hiveReadWrite;  
		if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
			diag_log ("HIVE: connection problem... HiveExt response:"+str(_hiveResponse));
			_hiveResponse = ["",0];
		} 
		else {
			diag_log ("HIVE: found "+str(_hiveResponse select 1)+" objects" );
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
#ifdef EMPTY_TENTS_CHECK
		// check empty tents, remove some of them
		[_objectArray, EMPTY_TENTS_GLOBAL_LIMIT, EMPTY_TENTS_USER_LIMIT] call fa_removeExtraTents;
#endif
		// check vehicles count
		[_objectArray] call fa_checkVehicles;
	};

	{
		private["_action","_ObjectID","_class","_CharacterID","_worldspace","_inventory", "_hitpoints","_fuel","_damage","_entity","_dir","_point","_res",  "_rawData","_class","_worldspace","_uid", "_selection", "_dam", "_booleans", "_point", "_wantExplosiveParts"];

		_action = _x select 0; // values : "OBJ"=object got from hive  "CREATED"=vehicle just created ...
		_ObjectID = _x select 1;
		_class =	if ((typeName (_x select 2)) == "STRING") then { _x select 2 } else { "Old_bike_TK_CIV_EP1" };
		_CharacterID = _x select 3;			
		_worldspace = if ((typeName (_x select 4)) == "ARRAY") then { _x select 4 } else { [] };
		_inventory=	if ((typeName (_x select 5)) == "ARRAY") then { _x select 5 } else { [] };
		_hitpoints=	if ((typeName (_x select 6)) == "ARRAY") then { _x select 6 } else { [] };
		_fuel =	if ((typeName (_x select 7)) == "SCALAR") then { _x select 7 } else { 0 };
		_damage = if ((typeName (_x select 8)) == "SCALAR") then { _x select 8 } else { 0.9 };  
		_combination =	_x select 3;
		_entity = nil;
	
		_dir = floor(random(360));
		_point = getMarkerpos "respawn_west";	
		if (count _worldspace >= 1 && {(typeName (_worldspace select 0)) == "SCALAR"}) then { 
			_dir = _worldspace select 0;
		};
		if (count _worldspace == 2 && {(typeName (_worldspace select 1)) == "ARRAY"}) then { 
			_i = _worldspace select 1;
			if (count _i == 3 &&
				{(typeName (_i select 0)) == "SCALAR"} && 
				{(typeName (_i select 1)) == "SCALAR"} &&
				{(typeName (_i select 2)) == "SCALAR"}) then {
				_point = _i;	
			};
		};
 	
		// if legit vehicle      
		if ((_class isKindOf "AllVehicles") && ((_CharacterID == "0") OR (_CharacterID == "1")) && (_damage < 1)) then {
			//_damage=0.86;//_action="CREATED";
			_point set [2, 0]; // here _point is in ATL format	
#ifdef VEH_MAINTENANCE_ROTTEN_AT_STARTUP
			// rotten randomly the vehicle. Successive damages will lead to a respawn.
			if ((random(VEH_MAINTENANCE_ROTTEN_AT_STARTUP) < 1) AND {(_action == "OBJ")}) then {
				 _damage = VEH_MAINTENANCE_ROTTEN_LOGIC; _action = "DAMAGED"; 
			};
#endif
#ifdef VEH_MAINTENANCE_ADD_MISSING		

			// ask to create a new vehicle if damage is too high
			if (_damage > 0.85 AND (_action != "CREATED")) then { _action = "SPAWNED"; };  
#endif
			// check for no collision with world. Find a suitable place (depending of defined parameters)
			_worldspace = [_class, _dir, _point, _action] call fa_smartlocation;
			if (count _worldspace < 2) then {  // safe position NOT found
				_action = "FAILED"; // don't worry, maybe we will find a nice spot next time :)
			}
			else { // found a spot for respawn
				if ((([_worldspace select 1, _point] call BIS_fnc_distance2D) > 1) 
					AND (_action == "OBJ")) then { _action = "MOVED"; };
				_dir = _worldspace select 0;
				_point = _worldspace select 1;
				_entity = createVehicle [_class, _point, [], 0, 
					if ((_class isKindOf "Air") OR {(_action != "OBJ")}) then {"NONE"} else {"CAN_COLLIDE"}
				]; 
				_entity setVariable ["ObjectID", _ObjectID, true]; // this variable must be set very early
				_entity setVariable ["CharacterID", _CharacterID, true];	
				_entity setVariable ["lastUpdate",time]; // prevent immediate hive write when vehicle parts are set up
				// setPos will be done again just after setDir, see below....
#ifdef VEH_MAINTENANCE_ADD_MISSING		
				if (_damage > 0.85) then { 
					_fuel = VEH_MAINTENANCE_SPAWN_FUEL_LOGIC;
					_hitpoints = [];
					_damage = _hitpoints call fa_setDamagedParts;
		
					_inventory = []; // TODO: rewrite this inventory setup.
					//diag_log (format["VEH MAINTENANCE Creating vehicle Inventory:%1  and  Damaged parts:%2", _inventory, _hitpoints]);
				};
#endif
				_entity setDamage _damage;
				{
					_wantExplosiveParts = _x;
					{
						_selection = _x select 0;
						_dam = _x select 1;
						if (_selection in dayZ_explosiveParts) then {
							if (_wantExplosiveParts) then {
								if (_dam > 0.8) then { _dam = 0.8; };
								[_entity, _selection, _dam] call fnc_veh_handleDam;
							};
						}
						else {
							if (!_wantExplosiveParts) then {
								[_entity, _selection, _dam] call fnc_veh_handleDam;
							};
						};
					} forEach _hitpoints;
				} forEach [false, true]; // we set non explosive part first, then explosive parts
				_entity setvelocity [0,0,1];
				_entity setFuel _fuel;
				_entity call fnc_veh_ResetEH;
			};
#ifdef OBJECT_DEBUG
			diag_log (format["VEHICLE %1 %2 at %3, original damage=%4, effective damage=%6, fuel=%5",
				 _action, _entity call fa_veh2str, (getPosASL _entity) call fa_coor2str, _damage, _fuel, damage _entity]); // , hitpoints:%6, inventory=%7"  , _hitpoints, _inventory 
#endif
		}
		else { // else for object or non legit vehicle
			if (!(_class in SafeObjects )) then {  
				_damage = 1; 
			};
			if (_damage < 1) then {
				// Rule #1: Tents will be always spawned if non empty. 
				// Rule #2: Objects are not spawned if inside/close to building.
				// Rule #3: Rule #1 is higher priority
				_booleans=[];
				_worldspace = [_class, _point, _booleans] call fn_niceSpot;
				if (_booleans select 3) then { // is in building
					if ((_class != "TentStorage") OR {(_inventory call fa_tentEmpty)}) then {
						_action = "FAILED";
						_damage = 5;
#ifdef OBJECT_DEBUG
						diag_log(format["Won't spawn object #%1(%4) in/close to a building, _point:%3, inventory: %5 booleans:%2",_ObjectID, _booleans, _point, _class, _inventory]);
#endif
					};
				};
			};
			if (_damage < 1) then { // create object
#ifdef OBJECTS_FIX_OUTOFMAP
				_worldspace = [_dir, _point] call fa_staywithus;
				_dir =  _worldspace select 0;
				_point =  _worldspace select 1;
#endif
				// for tents: non colliding position
				_entity = createVehicle [_class, _point, [], 0, 
					if (_class=="TentStorage") then {"NONE"} else {"CAN_COLLIDE"}
				];	
				_entity setVariable ["ObjectID", _ObjectID, true];
				
				// fix for leading zero issues on safe codes after restart
				if (_class == "VaultStorageLocked") then {
					_entity setVariable ["OEMPos", _point, true];
					_codeCount = (count (toArray _CharacterID));
					if(_codeCount == 3) then {
						_CharacterID = format["0%1", _CharacterID];
					};
					if(_codeCount == 2) then {
						_CharacterID = format["00%1", _CharacterID];
					};
					if(_codeCount == 1) then {
						_CharacterID = format["000%1", _CharacterID];
					};
				};
				
				_entity setVariable ["CharacterID", _CharacterID, true];	
				_entity setVariable ["lastUpdate",time];
				_entity setDamage _damage;
	
				if (_class == "TentStorage") then { 
					_entity addMPEventHandler ["MPKilled",{_this call vehicle_handleServerKilled;}]; 
				};
				//diag_log ("DW_DEBUG " + _class + " #" + str(_ObjectID) + " pos=" +  	(_point call fa_coor2str) + ", damage=" + str(_damage)  );
			}
			else { // delete object -- this has been comented out: object are never really deleted from hive
			/*	_key = format["CHILD:306:%1:%2:%3:", _ObjectID, [], 1];
				_rawData = "HiveEXT" callExtension _key;
				_key = format["CHILD:304:%1:",_ObjectID]; // delete by ID (not UID which is handler 310)
				_rawData = "HiveEXT" callExtension _key;*/
#ifdef OBJECT_DEBUG
				diag_log (format["IGNORED %1 oid#%2 cid:%3 ",_class, _ObjectID, _CharacterID ]);
#endif
			};
		};
//diag_log(format["VEH MAINTENANCE DEBUG %1 %2", __FILE__, __LINE__]);
			
		// common code (vehicle or not)	
					
		if (_damage < 1 AND !(isNil ("_entity"))) then {
			_entity setdir _dir;
			_entity setPos _point;
			[_entity, _inventory] call fa_populateCargo;
			
			dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _entity];
			diag_log ("_entity that was placed was " + str(_entity) + " was used");
			_squad = 0;
			_combination = 0;
			// UPDATE MODIFIED OBJECTS TO THE HIVE 
			if (_action == "CREATED") then {
				_combination = floor(random 899) + 100;
				diag_log ("combination of " + str(_combination) + " was used");
				// insert className damage characterId  worldSpace inventory  hitPoints  fuel uniqueId  
				if (typeOf(_entity) in allbuildables_class) then {
					//|CHILD:400:1:Fort_RazorWire:12787015029211235:[235.339,[12787,15029.2,1.0506]]:[]:[]:929:0:242:|
					_key = format["CHILD:400:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance,_class,_ObjectID,_worldspace, [],[],dayz_playerUID,_squad ,_combination];
				}
				else 
				{
					_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:", dayZ_instance, 
						_class, _damage , 1, 
						[_dir, _point], 
						[getWeaponCargo _entity, getMagazineCargo _entity ,getBackpackCargo _entity], 
						_hitpoints, _fuel, _ObjectID ];
				};
				//diag_log (_key);
				_rawData = "HiveEXT" callExtension _key;
			};
			if (_action == "SPAWNED" || _action == "DAMAGED") then {
				// update hitpoint,damage   -- already done by needupdate
				/*_key = format["CHILD:306:%1:%2:%3:", _ObjectID, _hitpoints, _damage];
				_rawData = "HiveEXT" callExtension _key;*/
			};
			if (_action == "SPAWNED") then {
				// update inventory  
				_key = format["CHILD:309:%1:%2:", _ObjectID, 
					[getWeaponCargo _entity, getMagazineCargo _entity, getBackpackCargo _entity]];
				_rawData = "HiveEXT" callExtension _key;
			};
			if (_action == "MOVED" || _action == "SPAWNED") then {
				// update position,fuel in Hive  
				// already done by server_updateObject?
				/*_key = format["CHILD:305:%1:%2:%3:", _ObjectID, [_dir, _point], _fuel];
				_rawData = "HiveEXT" callExtension _key;*/
							//Updated object position if moved
				[_entity, "position"] call server_updateObject;
			};
			

		}; // not damaged
		sleep 0.01; // yield to connecting players.
	} forEach _objectArray;
	
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
	for "_x" from 1 to 6 do {
		_id = [] spawn spawn_carePackages;
	}; //Spawn care packages
	//Spawn camps
	// quantity, marker, radius, min distance between 2 camps
	Server_InfectedCamps = [3, "center", 4500, 2000] call fn_bases;
	dayzInfectedCamps = Server_InfectedCamps;
	publicVariable "dayzInfectedCamps";

	// antiwallhack
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fa_antiwallhack.sqf";

	if (isServer and isNil "sm_done") then {
	
		private ["_key","_data","_result","_status","_buildingArray","_bldCount","_val","_countr","_idKey","_type","_ownerID","_worldspace","_dir","_wsDone","_inventory","_hitPoints","_squadID","_combination","_damage","_object","_classname","_i","_requirements","_isDestructable","_objWpnTypes","_objWpnQty","_isOK","_block"];
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
		};
		{
				diag_log ("BASEBUILDING: Info " + str(_x));
				_countr = _countr + 1;
				_idKey = 	_x select 0;
				_type =		_x select 1;
				_ownerID = 	_x select 2;
				_worldspace = if ((typeName (_x select 3)) == "ARRAY") then { _x select 3 } else { [] };
				_dir = 0;
				_pos = [0,0,0];
				_wsDone = false;
				if (count _worldspace >= 2) then
				{
						_dir = _worldspace select 0;
						if (count (_worldspace select 1) == 3) then {
							_pos = _worldspace select 1;
							_wsDone = true;
						};
				};			

				_inventory=	if ((typeName (_x select 4)) == "ARRAY") then { _x select 4 } else { [] };
				_hitpoints=	if ((typeName (_x select 5)) == "ARRAY") then { _x select 5 } else { [] };
				_squadID =	if ((typeName (_x select 6)) == "SCALAR") then { _x select 6 } else { 0 };
				_combination = if ((typeName (_x select 7)) == "SCALAR") then { _x select 7 } else { 0.9 };  
		
				//diag_log ("BASEBUILDING: _idKey " + str(_idKey));
				//diag_log ("BASEBUILDING: _type " + str(_type));
				//diag_log ("BASEBUILDING: _ownerID " + str(_ownerID));
				//diag_log ("BASEBUILDING: _worldspace " + str(_worldspace));
				//diag_log ("BASEBUILDING: _dir " + str(_dir));
				//diag_log ("BASEBUILDING: _pos " + str(_pos));
				//diag_log ("BASEBUILDING: _squadID " + str(_squadID));
				//diag_log ("BASEBUILDING: _combination " + str(_combination));
				//diag_log ("BASEBUILDING: _hitPoints " + str(_hitPoints));
				
				
					_object = createVehicle [_type, _pos, [], 0, "CAN_COLLIDE"];
					_object setVariable ["lastUpdate",time];
					_object setVariable ["ObjectID", _idKey, true];
					//_object setVariable ["ObjectUID", _worldspace call dayz_objectUID2, true];
					_object setVariable ["CharacterID", _ownerID, true];
					_object setVariable ["CombinationID", _combination, true];
					
					_object setdir _dir;
					// ##### BASE BUILDING 1.2 Server Side ##### - START
					if (typeOf(_object) == "USOrdnanceBox_EP1") then {
						_object setpos _pos;
					};
					if ((_object isKindOf "Static") && !(_object isKindOf "TentStorage") && (typeOf(_object) != "USOrdnanceBox_EP1")) then {
						_object setpos [(getposATL _object select 0),(getposATL _object select 1), 0];
						//_object setpos [(getposATL _object select 0),(getposATL _object select 1), 0];
						//_object setpos [((_object modeltoworld [0,0,0]) select 0),((_object modeltoworld [0,0,0]) select 1), 0];
						//_object addEventHandler ["HandleDamage", {false}];	
					};
					//Set Variable
					if (typeOf(_object) == "Infostand_2_EP1" && (typeOf(_object) != "Infostand_1_EP1") || typeOf(_object) == "Fence_corrugated_plate") then {
						//addaction
						//_object setVariable ["ObjectUID", _worldspace call dayz_objectUID2, true];
						_object setVariable ["ObjectUID", _worldspace call dayz_objectUID2, true];
						_object setVariable ["AuthorizedUID", _inventory, true];
						_object setpos [(getposATL _object select 0),(getposATL _object select 1), 0];
						//_object setVariable ["ObjectUID", str(_idKey),true];//_object enableSimulation false;
						//_object setVariable ["ObjectID", str(_idKey), true];
						//_object addEventHandler ["HandleDamage", {false}];
					};


					// Set whether or not buildable is destructable
					if (typeOf(_object) in allbuildables_class) then {
						diag_log ("SERVER: in allbuildables_class:" + typeOf(_object) + " !");
						for "_i" from 0 to ((count allbuildables) - 1) do
						{
							_classname = (allbuildables select _i) select _i - _i + 1;
							_result = [_classname,typeOf(_object)] call BIS_fnc_areEqual;
							if (_result) exitWith {
								_requirements = (allbuildables select _i) select _i - _i + 2;

								_isDestructable = _requirements select 13;
								diag_log ("SERVER: " + typeOf(_object) + " _isDestructable = " + str(_isDestructable));
								if (!_isDestructable) then {
									diag_log("Spawned: " + typeOf(_object) + " Handle Damage False");
									_object addEventHandler ["HandleDamage", {false}];
								};
							};
						};
						//gateKeypad = _object addaction ["Defuse", "\z\addons\dayz_server\compile\enterCode.sqf"];
					};

					if (count _inventory > 0) then {
						//Add weapons
						_objWpnTypes = (_inventory select 0) select 0;
						_objWpnQty = (_inventory select 0) select 1;
						_countr = 0;					
						{
							_isOK = 	isClass(configFile >> "CfgWeapons" >> _x);
							if (_isOK) then {
								_block = 	getNumber(configFile >> "CfgWeapons" >> _x >> "stopThis") == 1;
								if (!_block) then {
									_object addWeaponCargoGlobal [_x,(_objWpnQty select _countr)];
								};
							};
							_countr = _countr + 1;
						} forEach _objWpnTypes; 
						
						//Add Magazines
						_objWpnTypes = (_inventory select 1) select 0;
						_objWpnQty = (_inventory select 1) select 1;
						_countr = 0;
						{
							_isOK = 	isClass(configFile >> "CfgMagazines" >> _x);
							if (_isOK) then {
								_block = 	getNumber(configFile >> "CfgMagazines" >> _x >> "stopThis") == 1;
								if (!_block) then {
									_object addMagazineCargoGlobal [_x,(_objWpnQty select _countr)];
								};
							};
							_countr = _countr + 1;
						} forEach _objWpnTypes;
						//Add Backpacks
						_objWpnTypes = (_inventory select 2) select 0;
						_objWpnQty = (_inventory select 2) select 1;
						_countr = 0;
						{
							_isOK = 	isClass(configFile >> "CfgVehicles" >> _x);
							if (_isOK) then {
								_block = 	getNumber(configFile >> "CfgVehicles" >> _x >> "stopThis") == 1;
								if (!_block) then {
									_object addBackpackCargoGlobal [_x,(_objWpnQty select _countr)];
								};
							};
							_countr = _countr + 1;
						} forEach _objWpnTypes;
					};	
					

					dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];
			} forEach _buildingArray;
		
		/*
		_buildingArray = [];
		diag_log("SERVER: Fetching buildings...");
		for "_j" from 1 to 5 do {
			_key = format["CHILD:600:%1:", dayZ_instance];
			_hiveBuildingResponse = _key call server_hiveReadWrite;  
			//diag_log ("HIVE: select 1 "+str(_hiveBuildingResponse select 1) );
			//diag_log ("HIVE: response "+str( typeName _hiveBuildingResponse ) );
			if ((((isnil "_hiveBuildingResponse") || {(typeName _hiveBuildingResponse != "ARRAY")}) || {((typeName (_hiveBuildingResponse select 1)) != "SCALAR")}) || {(_hiveBuildingResponse select 1 > 2000)}) then {
				//diag_log ("HIVE: buildings connection problem... HiveExt response:"+str(_hiveBuildingResponse));
				_hiveBuildingResponse = ["",0];
			} 
			else {
				diag_log ("HIVE: found "+str(_hiveBuildingResponse select 1)+" buildings" );
				_j = 99; // break
			};
		};
		
		
		_bldCount = 0;
		if ((_hiveBuildingResponse select 0) == "ObjectStreamStart") then {
			_buildingCount = _hiveBuildingResponse select 1;
			diag_log ("SERVER: _buildingCount " + str(_buildingCount));
			for "_j" from 1 to _buildingCount do { 
				_hiveBuildingResponse = _key call server_hiveReadWrite;
				diag_log ("SERVER: building _hiveBuildingResponse " + str(_hiveBuildingResponse));
				_result = call compile format ["%1",_hiveBuildingResponse];
				diag_log ("SERVER: building _result " + str(_result));

				_pos = call compile (_result select 1);
				diag_log ("SERVER: building _pos 1 " + str(_pos));
				_dir = _pos select 0;
				_pos = _pos select 1;
				
				diag_log ("SERVER: building _dir " + str(_dir));
				diag_log ("SERVER: building _pos 2 " + str(_pos));
				//_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
				_building = createVehicle [_result select 0, _pos, [], 0, "CAN_COLLIDE"];
				diag_log ("SERVER: createVehicle _building " + str(_building));
				_building setDir _dir;
				_bldCount = _bldCount + 1;
			};
			diag_log ("SERVER: Spawned " + str(_bldCount) + " buildings!");
		}; */
	};		
	sm_done = true;
	publicVariable "sm_done";
};
