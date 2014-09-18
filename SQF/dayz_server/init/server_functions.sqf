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
//server_updateNearbyObjects =	compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_updateNearbyObjects.sqf";
server_spawnCrashSite  =        compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_spawnCrashSite.sqf";
fnc_plyrHit   =                 compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fnc_plyrHit.sqf";
spawn_carePackages =            compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fnc_carePkgs.sqf";
spawnComposition =              compile preprocessFileLineNumbers "ca\modules\dyno\data\scripts\objectMapper.sqf"; //"\z\addons\dayz_code\compile\object_mapper.sqf";
fn_bases =                      compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\fn_bases.sqf";
server_playerVariableChange =   compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerVariableChange.sqf";
server_playerVariablesChange =  compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\server_playerVariablesChange.sqf";
// vehicle_handleInteract = {
// 	private["_object"];
// 	_object = _this select 0;
// 	if (_object in needUpdate_objects) then {
// 		needUpdate_objects = needUpdate_objects - [_object];
// 	};
// 	[_object, "all",true] call server_updateObject;
// };

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
// server_characterSync = {
// 	private ["_characterID","_playerPos","_playerGear","_playerBackp","_medical","_currentState","_currentModel","_key"];
// 	_characterID = 	_this select 0;	
// 	_playerPos =	_this select 1;
// 	_playerGear =	_this select 2;
// 	_playerBackp =	_this select 3;
// 	_medical = 		_this select 4;
// 	_currentState =	_this select 5;
// 	_currentModel = _this select 6;
// 	
// 	_key = format["CHILD:201:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:",_characterID,_playerPos,_playerGear,_playerBackp,_medical,false,false,0,0,0,0,_currentState,0,0,_currentModel,0];
// 	//diag_log ("HIVE: WRITE: "+ str(_key) + " / " + _characterID);
// 	_key call server_hiveWrite;
// };

//onPlayerConnected 		"[_uid,_name] spawn server_onPlayerConnect;";
onPlayerDisconnected 		"[_uid,_name] call server_onPlayerDisconnect;";

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