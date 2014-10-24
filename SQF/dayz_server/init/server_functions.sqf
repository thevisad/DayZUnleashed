#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"
waituntil {!isnil "bis_fnc_init"};

BIS_MPF_remoteExecutionServer = {
	if ((_this select 1) select 2 == "JIPrequest") then {
		[nil,(_this select 1) select 0,"loc",rJIPEXEC,[any,any,"per","execVM","ca\Modules\Functions\init.sqf"]] call RE;
	};
};

BIS_Effects_Burn =			    {};
server_playerLogin =		    compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerLogin.sqf";
server_playerSetup =		    compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerSetup.sqf";
server_onPlayerDisconnect =     compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_onPlayerDisconnect.sqf";
server_updateObject =           compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_updateObject.sqf";
server_playerDied =             compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerDied.sqf";
server_publishObj =             compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_publishObject.sqf";	//Creates the object in DB
server_publishBld = 	        compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_publishBuilding.sqf";	//Creates the building in DB
server_swapObject =				compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_swapObject.sqf"; 
server_deleteObj =			    compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_deleteObj.sqf"; 	//Removes the object from the DB
server_playerSync =		    	compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerSync.sqf";
zombie_findOwner =			    compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\zombie_findOwner.sqf";
server_spawnCrashSite  =        compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_spawnCrashSite.sqf";
fnc_plyrHit   =                 compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fnc_plyrHit.sqf";
spawn_carePackages =            compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fnc_carePkgs.sqf";
spawn_wrecks = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fnc_wrecks.sqf";

//Get instance name (e.g. dayz_1.chernarus)
fnc_instanceName = {
	"dayz_" + str(dayz_instance) + "." + worldName
};

spawnComposition =              compile preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"; //"\z\addons\dayz_code\compile\object_mapper.sqf";
fn_bases =                      compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fn_bases.sqf";
server_playerVariableChange =   compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerVariableChange.sqf";
server_playerVariablesChange =  compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerVariablesChange.sqf";
server_GarageHandler =  compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_GarageHandler.sqf";

server_SpawnBuildings = {
	private ["_buildingArray","_countr","_type","_idKey","_ownerID","_worldspace","_dir","_wsDone","_inventory","_hitpoints","_squadID","_combination","_object","_class","_lockable","_countArray","_combinationTest","_objWpnTypes","_objWpnQty","_isOK","_block"];
	_buildingArray = _this select 0;
	{ //3:50:45 "BASEBUILDING: Info ["WoodGate_DZ","13039915736716","146",[5.799,[13039.9,15736.7,0.091]],[],[],0,942]"
			diag_log ("BASEBUILDING: Info " + str(_x));
			_type =		_x select 0;
			_idKey = 	_x select 1;
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
			_combination = _x select 7;  
			
			//diag_log (format["SM: _type %1",_type]);
			//diag_log (format["SM: _idKey %1",_idKey]);
			//diag_log (format["SM: _ownerID %1",_ownerID]);
			//diag_log (format["SM: _worldspace %1",_worldspace]);
			_object = createVehicle [_type, _pos, [], 0, 
				if (_type=="TentStorage") then {"NONE"} else {"CAN_COLLIDE"}
			];	
			_object setVariable ["lastUpdate",time];
			_object setVariable ["ObjectID", _idKey, true];
			//_object setVariable ["ObjectUID", _worldspace call dayz_objectUID2, true];
			_object setVariable ["OwnerID", _ownerID, true];

			_lockable = 0;
			if(isNumber (configFile >> "CfgVehicles" >> _type >> "lockable")) then {
				_lockable = getNumber(configFile >> "CfgVehicles" >> _type >> "lockable");
			};
			// fix for leading zero issues on safe codes after restart
			
			_countArray = (count (toArray _combination));
			
			if (_lockable == 4) then {
				
				if(_countArray == 3) then {
					_combination = format["0%1", _combination];
				};
				if(_countArray == 2) then {
					_combination = format["00%1", _combination];
				};
				if(_countArray == 1) then {
					_combination = format["000%1", _combination];
				};
			};

			if (_lockable == 3) then {
				if(_countArray == 2) then {
					_combination = format["0%1", _combination];
				};
				if(_countArray == 1) then {
					_combination = format["00%1", _combination];
				};
			};
			
			_object setVariable ["CharacterID", _combination, true];
			
			//_combinationTest = _object getVariable ["CharacterID", 0];
			//diag_log (format["SM: Test: %1", _combinationTest]);
			//diag_log (format["SM: Combination %1", _combination]);

			//diag_log (format["SM: Building Type: %1, UID: %2, OwnerID: %3, WorldSpace: %4, Inventory: %5, HitPoints: %6, SquadID: %7, Combination: %8",_type,_idKey,_ownerID,_worldspace,_inventory,_hitpoints,_squadID,_combination]);
						
			clearWeaponCargoGlobal  _object;
			clearMagazineCargoGlobal  _object;
			
			_object setdir _dir;

			if (_type == "TentStorage") then { 
				_object addMPEventHandler ["MPKilled",{_this call vehicle_handleServerKilled;}]; 
			};
			
			if (count _inventory > 0) then {
				if (_type in DZE_LockedStorage) then {
						// Fill variables with loot
						_object setVariable ["WeaponCargo", (_inventory select 0),true];
						_object setVariable ["MagazineCargo", (_inventory select 1),true];
						_object setVariable ["BackpackCargo", (_inventory select 2),true];
					} else {
					//Add weapons
					_objWpnTypes = (_inventory select 0) select 0;
					_objWpnQty = (_inventory select 0) select 1;
					_countr = 0;					
					{
						diag_log (format["SM: Building Type: %1, UID: %2, InventoryObject: %3",_object,_idKey,_x]);
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
							if (_x == "BoltSteel") then { _x = "WoodenArrow" }; // Convert BoltSteel to WoodenArrow
							if (_x == "ItemTent") then { _x = "ItemTentOld" };
					diag_log (format["SM: Building Type: %1, UID: %2, InventoryObject: %3",_object,_idKey,_x]);
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
					diag_log (format["SM: Building Type: %1, UID: %2, InventoryObject: %3",_object,_idKey,_x]);
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
			};	

			

			dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];
		} forEach _buildingArray;
};

server_SpawnGarages = {
	private ["_garageVehicleArray","_vehicleIDArray","_vehicleClassArray","_vehicleNameArray","_garageArray","_countr","_GarageUID","_garageClassName","_worldspace","_dir","_wsDone","_playerID","_garageID","_object","_key","_hiveResponse","_i","_garageVehicleCount","_vehicleID","_vehicleClass","_vehicleName"];
	_garageVehicleArray = [];
	_vehicleIDArray = [];
	_vehicleClassArray = [];
	_vehicleNameArray = [];
	_garageArray = _this select 0;
	{ 
		//"GARAGEINFO: Info ["155874131660271","dzu_playerGarage_sm",[236,[16615,14572.1,0.001]],"76561198013702927","15"]"
		if (unleashed_bug == 1) then {
			diag_log ("GARAGEINFO: Info " + str(_x));
		};
		_GarageUID =	_x select 0;
		_garageClassName = _x select 1;
		_worldspace = _x select 2;
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

		_playerID =	_x select 3;
		_garageID =	_x select 4;

		if (unleashed_bug == 1) then {
			diag_log(format["GARAGEINFO: SpawnGarages GarageUID: %1",_GarageUID]);
			diag_log(format["GARAGEINFO: SpawnGarages GarageClassName: %1",_garageClassName]);
			diag_log(format["GARAGEINFO: SpawnGarages WorldSpace: %1",_worldspace]);
			diag_log(format["GARAGEINFO: SpawnGarages PlayerID: %1",_playerID]);
			diag_log(format["GARAGEINFO: SpawnGarages GarageID: %1",_garageID]);
		};
		_object = createVehicle [_garageClassName, _pos, [], 0, "CAN_COLLIDE"];
		_object setVariable ["lastUpdate",time];
		_object setVariable ["GarageUID", _GarageUID, true];
		_object setVariable ["GarageID", _garageID, true];
		_object setVariable ["OwnerID", _playerID, true];
		_object setdir _dir;

		for "_i" from 1 to 5 do {
			diag_log("GARAGEINFO: Fetching Vehicles in Garages...");
			_key = format["CHILD:606:%1:%2:",dayZ_instance, _GarageUID];
			_hiveResponse = _key call server_hiveReadWrite;  
			if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
				diag_log ("GARAGEINFO: Vehicles connection problem... HiveExt response:"+str(_hiveResponse));
				_hiveResponse = ["",0];
			} 
			else {
				_i = 99; // break
			};
		};

		if ((_hiveResponse select 0) == "VehicleStreamStart") then {
			_vehicleIDArray = [];
			_vehicleClassArray = [];
			_vehicleNameArray = [];	
			_garageVehicleArray = [];	
			_garageVehicleCount = _hiveResponse select 1;
			diag_log ("HIVE: Garage Inventory Streaming...");
			for "_i" from 1 to _garageVehicleCount do { 
				_hiveResponse = _key call server_hiveReadWrite;
				_garageVehicleArray set [_i - 1, _hiveResponse];
				//diag_log (format["HIVE dbg %1 %2", typeName _hiveResponse, _hiveResponse]);
			};
		};
		{
			_vehicleID =	_x select 0;
			_vehicleClass =	_x select 1;
			_vehicleIDArray = _vehicleIDArray + [_vehicleID];
			_vehicleClassArray = _vehicleClassArray + [_vehicleClass];
			_vehicleName = getText (configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");
			_vehicleNameArray = _vehicleNameArray + [_vehicleName];
			//
		} forEach _garageVehicleArray;

		_object setVariable ["VehicleClassArray", _vehicleClassArray, true];
		_object setVariable ["VehicleIDArray", _vehicleIDArray , true];
		_object setVariable ["VehicleNameArray", _vehicleNameArray , true];
		unleashed_GarageVehicleClassArray =_vehicleClassArray;
		unleashed_GarageVehicleIDArray =_vehicleIDArray;
		unleashed_GarageVehicleNameArray =_vehicleNameArray;
		//diag_log(format["SM: Garage _vehicleClassArray: %1, _vehicleIDArray: %2, _vehicleNameArray: %3 ",_vehicleClassArray, _vehicleIDArray , _vehicleNameArray]);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_object];
	} forEach _garageArray;
};



server_spawnVehicle = {
	private ["_objectArray","_vehicleLocation","_action","_ObjectID","_class","_CharacterID","_worldspace","_inventory","_hitpoints","_fuel","_damage","_combination","_entity","_dir","_point","_i","_wantExplosiveParts","_selection","_dam","_booleans","_key","_rawData","_squad"];
	_objectArray = _this select 0;
	
	{
		if (unleashed_bug == 1) then {
			diag_log(format["GARAGESPAWNER: Current Vehicle Spawn: %1",_x]);
		};
		_action = _x select 0; // values : "OBJ"=object got from hive  "CREATED"=vehicle just created ...
		_ObjectID = _x select 1;
		_ObjectUID = _x select 2;
		_class =	if ((typeName (_x select 3)) == "STRING") then { _x select 3 } else { "Old_bike_TK_CIV_EP1" };
		_CharacterID = _x select 4;			
		_worldspace = if ((typeName (_x select 5)) == "ARRAY") then {_x select 5} else { [] };

		_inventory=	if ((typeName (_x select 6)) == "ARRAY") then { _x select 6 } else { [] };
		_hitpoints=	if ((typeName (_x select 7)) == "ARRAY") then { _x select 7 } else { [] };
		_fuel =	if ((typeName (_x select 8)) == "SCALAR") then { _x select 8 } else { 0 };
		_damage = if ((typeName (_x select 9)) == "SCALAR") then { _x select 9 } else { 0.9 };  
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
				_entity setVariable ["ObjectUID", _ObjectUID, true]; // this variable must be set very early
				_entity setVariable ["ObjectID", _ObjectID, true]; // this variable must be set very early
				_entity setVariable ["CharacterID", _CharacterID, true];	
				_entity setVariable ["lastUpdate",time]; // prevent immediate hive write when vehicle parts are set up
				// setPos will be done again just after setDir, see below....
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
		}
		else { // else for object or non legit vehicle
			if (!(_class in SafeObjects )) then {  
				_damage = 1; 
			};
			if (_damage < 1) then {
				_booleans=[];
				_worldspace = [_class, _point, _booleans] call fn_niceSpot;
				if (_booleans select 3) then { // is in building
						_action = "FAILED";
						_damage = 5;
						diag_log(format["Won't spawn object #%1(%4) in/close to a building, _point:%3, inventory: %5 booleans:%2",_ObjectID, _booleans, _point, _class, _inventory]);
				};
			};
			if (_damage < 1) then { // create object
#ifdef OBJECTS_FIX_OUTOFMAP
				_worldspace = [_dir, _point] call fa_staywithus;
				_dir =  _worldspace select 0;
				_point =  _worldspace select 1;
#endif
				_entity = createVehicle [_class, _point, [], 0, "CAN_COLLIDE"];	
				_entity setVariable ["ObjectID", _ObjectID, true];
				_entity setVariable ["CharacterID", _CharacterID, true];	
				_entity setVariable ["lastUpdate",time];
				_entity setDamage _damage;

				//diag_log ("DW_DEBUG " + _class + " #" + str(_ObjectID) + " pos=" +  	(_point call fa_coor2str) + ", damage=" + str(_damage)  );
			}
			else { 
				// delete object -- this has been comented out: object are never really deleted from hive
				/*	_key = format["CHILD:306:%1:%2:%3:", _ObjectID, [], 1];
				_rawData = "HiveEXT" callExtension _key;
				_key = format["CHILD:304:%1:",_ObjectID]; // delete by ID (not UID which is handler 310)
				_rawData = "HiveEXT" callExtension _key;*/
			};
		};
		if (_damage < 1 AND !(isNil ("_entity"))) then {
			_entity setdir _dir;
			_entity setPos _point;
			[_entity, _inventory] call fa_populateCargo;
			
			dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _entity];
			//diag_log ("_entity that was placed was " + str(_entity) + " was used");
			_squad = 0;
			_combination = 0;
			// UPDATE MODIFIED OBJECTS TO THE HIVE 
			if (_action == "CREATED") then {
				_combination = floor(random 899) + 100;
				//diag_log ("combination of " + str(_combination) + " was used");
				// insert className damage characterId  worldSpace inventory  hitPoints  fuel uniqueId  
					_key = format["CHILD:308:%1:%2:%3:%4:%5:%6:%7:%8:%9:", dayZ_instance, 
						_class, _damage , 1, 
						[_dir, _point], 
						[getWeaponCargo _entity, getMagazineCargo _entity ,getBackpackCargo _entity], 
						_hitpoints, _fuel, _ObjectID ];
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
};

server_spawnGarageVehicle = {
	private ["_garageLoopArray","_vehicleLocation","_action","_ObjectID","_class","_CharacterID","_worldspace","_inventory","_hitpoints","_fuel","_damage","_entity","_dir","_point","_i","_wantExplosiveParts","_selection","_dam","_booleans","_key","_rawData","_squad"];
	_garageLoopArray = _this select 0;
	_tempworldspace = _this select 1;
	_worldspace = [];
	_position = [];

	if (unleashed_bug == 1) then {
		diag_log(format["GARAGESPAWNER: Current Vehicle Location: %1",_tempworldspace]);
		diag_log(format["GARAGESPAWNER: Count of Vehicle Location: %1", (count _tempworldspace)]);
	};
	{
		diag_log(format["GARAGESPAWNER: Current Vehicle Spawning: %1",_x]);
			//Current Vehicle Spawning: ["OBJ","323","5685647","UralCivil2","0",[153,[15921.2,10391.5,0.113]],[["motor",0.8],["karoserie",0.9],["palivo",0.4],["wheel_1_1_steering",0.88],["wheel_2_1_steering",0.8],["wheel_1_2_steering",0.26],["wheel_2_2_steering",0.63]],[],0.51,0.59]"
		_action = _x select 0; // values : "OBJ"=object got from hive  "CREATED"=vehicle just created ...
		_ObjectID = _x select 1;
		_ObjectUID = _x select 2;
		_class =	if ((typeName (_x select 3)) == "STRING") then { _x select 3 } else { "Old_bike_TK_CIV_EP1" };
		_CharacterID = _x select 4;	
		_dir = floor(random(360));
		_position = [_tempworldspace,3,8,2,0,30,0] call BIS_fnc_findSafePos;
		if (unleashed_bug == 1) then {
			diag_log(format["GARAGESPAWNER: BIS Vehicle Location: %1",_position]);
		};
		_position set [2,0];
		_worldspace = [_class, _dir, _position ,"OBJ"] call fa_smartlocation;
		if (unleashed_bug == 1) then {
			diag_log(format["GARAGESPAWNER: Smart Vehicle Location: %1",_worldspace]);
		};
		
		_hitpoints=	if ((typeName (_x select 7)) == "ARRAY") then { _x select 7 } else { [] };
		_inventory=	if ((typeName (_x select 6)) == "ARRAY") then { _x select 6 } else { [] };
		
		_fuel =	if ((typeName (_x select 8)) == "SCALAR") then { _x select 8 } else { 0 };
		_damage = if ((typeName (_x select 9)) == "SCALAR") then { _x select 9 } else { 0.9 };  
		_entity = nil;
		
		_point = _tempworldspace;	
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
		if ((_class isKindOf "AllVehicles") && (_damage < 1)) then {
			if (count _worldspace < 2) then {  // safe position NOT found
				_action = "FAILED"; // don't worry, maybe we will find a nice spot next time :)
			}
			else { 
				if ((([_worldspace select 1, _point] call BIS_fnc_distance2D) > 1) 
					AND (_action == "OBJ")) then { _action = "MOVED"; };
				_dir = _worldspace select 0;
				_point = _worldspace select 1;
				_entity = createVehicle [_class, _point, [], 0, 
					if ((_class isKindOf "Air") OR {(_action != "OBJ")}) then {"NONE"} else {"CAN_COLLIDE"}
				]; 
				_entity setVariable ["ObjectID", _ObjectID, true]; // this variable must be set very early
				_entity setVariable ["ObjectUID", _ObjectUID, true]; // this variable must be set very early
				_entity setVariable ["CharacterID", _CharacterID, true];	
				_entity setVariable ["lastUpdate",time]; // prevent immediate hive write when vehicle parts are set up
				// setPos will be done again just after setDir, see below....
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
		};
		
		if (_damage < 1 AND !(isNil ("_entity"))) then {
			_entity setdir _dir;
			_entity setPos _point;
			[_entity, _inventory] call fa_populateCargo;
			dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _entity];
			// UPDATE MODIFIED OBJECTS TO THE HIVE 
			[_entity, "position"] call server_updateObject;
		};
	} forEach _garageLoopArray;
};

server_updateNearbyObjects = {
	private["_pos"];
	_pos = _this select 0;
	{
		[_x, "gear"] call server_updateObject;
		//diag_log(format["SF-SUNO: Updating %2 object at %1",_pos,_x]);
	} forEach nearestObjects [_pos, dayz_updateObjects, 10];
};

vehicle_handleServerKilled = {
	private["_unit","_killer"];
	_unit = _this select 0;
	_killer = _this select 1;
		
	[_unit, "killed"] call server_updateObject;
	
	_unit removeAllMPEventHandlers "MPKilled";
	_unit removeAllMPEventHandlers "mphit";
	_unit removeAllMPEventHandlers "mprespawn";
	_unit removeAllEventHandlers "FiredNear";
	_unit removeAllEventHandlers "Killed";
	_unit removeAllEventHandlers "HandleDamage";
	_unit removeAllEventHandlers "GetIn";
	_unit removeAllEventHandlers "GetOut";
	_unit removeAllEventHandlers "Fired";
    	_unit removeAllEventHandlers "Local";
};

check_publishobject = {
	private["_allowed","_allowedObjects","_object"];

	_object = _this select 0;
	_playername = _this select 1;
	_allowed = false;

#ifdef OBJECT_DEBUG
	diag_log format ["DEBUG: Checking if Object: %1 is allowed published by %2", _object, _playername];
#endif
	_allowedObjects = dayz_updateObjects + dayz_allowedObjects;
	if ((typeOf _object) in _allowedObjects) then {
#ifdef OBJECT_DEBUG
		diag_log format ["DEBUG: Object: %1 published by %2 is Safe",_object, _playername];
#endif
		_allowed = true;
	};

	_allowed
};

check_publishbuilding = {
	private["_allowed","_allowedObjects","_object"];

	_object = _this select 0;
	_playername = _this select 1;
	_allowed = false;

#ifdef OBJECT_DEBUG
	diag_log format ["DEBUG: Checking if Object: %1 is allowed published by %2", _object, _playername];
#endif

	if ((typeOf _object) in dayz_allowedObjects) then {
#ifdef OBJECT_DEBUG
		diag_log format ["DEBUG: Object: %1 published by %2 is Safe",_object, _playername];
#endif
		_allowed = true;
	};

	_allowed
};

//event Handlers
eh_localCleanup = {
	private ["_object"];
	_object = _this select 0;
	_object addEventHandler ["local", {
		if(_this select 1) then {
			private["_type","_unit"];
			_unit = _this select 0;
			_type = typeOf _unit;
			 _myGroupUnit = group _unit;
 			_unit removeAllMPEventHandlers "mpkilled";
 			_unit removeAllMPEventHandlers "mphit";
 			_unit removeAllMPEventHandlers "mprespawn";
 			_unit removeAllEventHandlers "FiredNear";
			_unit removeAllEventHandlers "HandleDamage";
			_unit removeAllEventHandlers "Killed";
			_unit removeAllEventHandlers "Fired";
			_unit removeAllEventHandlers "GetOut";
			_unit removeAllEventHandlers "GetIn";
			_unit removeAllEventHandlers "Local";
			clearVehicleInit _unit;
			deleteVehicle _unit;
			deleteGroup _myGroupUnit;
			_unit = nil;
			#ifdef SERVER_DEBUG
			diag_log ("CLEANUP: DELETED A " + str(_type) );
			#endif
		};
	}];
};

server_hiveWrite = {
	private["_data"];
	//diag_log ("ATTEMPT WRITE: " + _this);
	_data = "HiveExt" callExtension _this;
	//diag_log ("WRITE: " +str(_data));
};

server_hiveReadWrite = {
	private["_key","_resultArray","_data"];
	_key = _this;
	//diag_log ("ATTEMPT READ/WRITE: " + _key);
	_data = "HiveExt" callExtension _key;
	//diag_log ("READ/WRITE: " +str(_data));
	_resultArray = call compile format ["%1",_data];
	_resultArray
};

server_checkPlayer = {
	private["_data"];
	//"check_player" callExtension _uid;
	/*
	[["CommunityBanned","0"],
    ["VACBanned","1"],
    ["NumberOfVACBans","8"],
    ["DaysSinceLastBan","76"],
    ["EconomyBan","none"]]
	*/
	_data = "check_player" callExtension _this;
	//diag_log ("WRITE: " +str(_data));
};

server_getFriends = {
	private["_data"];
	_result = "get_friends" callExtension getPlayerUID (playableUnits select 0);
	//_result = "get_friends" callExtension "ERROR"; //DOWNLOAD FAILED
	//_result = "get_friends" callExtension "CLEAR"; //123
	/*
	["76561197965565385","76561197977088328","76561197979284389",
    "76561197983917529","76561197990835078","76561198007489546",
    "76561198009320375","76561198013020910","76561198018221755",
    "76561198023999280","76561198025492474","76561198034167818",
    "76561198035333552","76561198063488310","76561198065555502",
    "76561198071941786","76561198072809368"]
	*/
	_data = "get_friends" callExtension _this;
};

server_urlFetch = {
	private["_data"];
	//url_fetch = compile preprocessFileLineNumbers "url_fetch.sqf";
	//"http://killzonekid.com/hello.php?name=KK" spawn url_fetch;
	_data = "url_fetch" callExtension _this;
	//diag_log ("WRITE: " +str(_data));
};


//onPlayerConnected 		"[_uid,_name] spawn server_onPlayerConnect;";
onPlayerDisconnected 		"call player_forceSave;[_uid,_name] call server_onPlayerDisconnect;";

server_getDiff =	{
	private["_variable","_object","_vNew","_vOld","_result"];
	_variable = _this select 0;
	_object = 	_this select 1;
	_vNew = 	_object getVariable[_variable,0];
	_vOld = 	_object getVariable[(_variable + "_CHK"),_vNew];
	_result = 	0;
	if (_vNew < _vOld) then {
		//JIP issues
		_vNew = _vNew + _vOld;
		_object getVariable[(_variable + "_CHK"),_vNew];
	} else {
		_result = _vNew - _vOld;
		_object setVariable[(_variable + "_CHK"),_vNew];
	};
	_result
};

server_getDiff2 =	{
	private["_variable","_object","_vNew","_vOld","_result"];
	_variable = _this select 0;
	_object = 	_this select 1;
	_vNew = 	_object getVariable[_variable,0];
	_vOld = 	_object getVariable[(_variable + "_CHK"),_vNew];
	_result = _vNew - _vOld;
	_object setVariable[(_variable + "_CHK"),_vNew];
	_result
};

// dayz_objectUID = {
// 	private["_position","_dir","_key","_object"];
// 	_object = _this;
// 	_position = getPosATL _object;
// 	_dir = direction _object;
// 	_key = [_dir,_position] call dayz_objectUID2;
//     _key
// };

dayz_objectUID2 = {
	private["_position","_dir","_key"];
	_dir = _this select 0;
	_key = "";
	_position = _this select 1;
	{
		_x = _x * 10;
		if ( _x < 0 ) then { _x = _x * -10 };
		_key = _key + str(round(_x));
	} forEach _position;
	_key = _key + str(round(_dir));
	_key
};

dayz_recordLogin = {
	private["_key"];
	_key = format["CHILD:103:%1:%2:%3:",_this select 0,_this select 1,_this select 2];
	_key call server_hiveWrite;
};

call compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fa_hiveMaintenance.sqf";
#include "Antihack.sqf"
[] ExecVM "\z\addons\dayz_server\DZMS\DZMSInit.sqf";