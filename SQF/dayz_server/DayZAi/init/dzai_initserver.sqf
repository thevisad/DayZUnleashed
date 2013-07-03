/*
	DZAI Server Initialization File
	
	Description: Handles startup process for DZAI. Does not contain any values intended for modification.
	
	Last updated: 6:16 PM 6/17/2013
*/
private ["_startTime"];

_startTime = diag_tickTime;
diag_log "[DZAI] Initializing DZAI addon. Reading dzai_variables.sqf.";

//Load DZAI variables
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\dzai_variables.sqf";
call compile preprocessFile "\z\addons\dayz_server\DZAI\SHK_pos\shk_pos_init.sqf";

createcenter east;											//Create centers for all sides
createcenter resistance;
resistance setFriend [east, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
resistance setFriend [west, 0];	
EAST setFriend [WEST, 0];									//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
EAST setFriend [resistance, 1];	
WEST setFriend [EAST, 0];									//West (Player side) is hostile to all.
WEST setFriend [resistance, 0];

	waituntil {!isnil "bis_fnc_init"};
	diag_log "[DZAI] Compiling DZAI functions.";
	// [] call BIS_fnc_help;
	//Compile general functions.
	BIS_fnc_selectRandom = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandom.sqf";	//Altered version
	fnc_setSkills = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_setSkills.sqf";
	fnc_spawn_deathFlies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_spawn_deathFlies.sqf";
	fnc_unitConsumables = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitConsumables.sqf";
	fnc_unitInventory = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitInventory.sqf";
	fnc_unitTools = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitTools.sqf";
	fnc_unitSelectWeapon = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectWeapon.sqf";
	fnc_unitSelectPistol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectPistol.sqf";
	if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then { // Optional AI-to-Z hostility
		ai_fired = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
		ai_alertzombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
	};
	fnc_banditAIKilled = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIKilled.sqf";
	fnc_banditAIRespawn = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIRespawn.sqf";
	fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandomWeighted.sqf";
	fnc_createAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createAI.sqf";
	fnc_createAI_NR = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createAI_NR.sqf";
	fnc_damageAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_damageHandlerAI.sqf";
	fnc_getGradeChances =			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_getGradeChances.sqf";
	fnc_initTrigger = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_initTrigger.sqf";
	fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\BIN_taskPatrol.sqf";
	if (DZAI_debugMarkers < 1) then {
		fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain.sqf";
	} else {
		fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain_debug.sqf";
	};
	fnc_DZAI_customPatrol = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\DZAI_customPatrol.sqf";
	fnc_updateDead = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_updateDead.sqf";
	//Compile spawn scripts
	fnc_spawnBandits = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits.sqf";
	fnc_respawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnBandits.sqf";
	fnc_spawnBandits_bldgs = 		fnc_spawnBandits;
	fnc_spawnBandits_markers = 		fnc_spawnBandits;
	fnc_despawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits.sqf";
	fnc_spawnBandits_random_NR = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_random_NR.sqf";
	fnc_despawnBandits_NR = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_NR.sqf";
	
	//Wrapper function for compatibility with old spawnBandits format.
	fnc_spawnBandits_bldgs = 	{
		private ["_equipType","_numGroups"];
		_equipType = if ((count _this) > 4) then {_this select 4} else {1};
		_numGroups = if ((count _this) > 5) then {_this select 5} else {1};
		0 = [_this select 0,_this select 1,_this select 2,_this select 3,[],_equipType,_numGroups] call fnc_spawnBandits;
		true
	};
	
	//Wrapper function for compatibility with old spawnBandits format.
	fnc_spawnBandits_markers  = 	{
		private ["_equipType","_numGroups"];
		_equipType = if ((count _this) > 5) then {_this select 5} else {1};
		_numGroups = if ((count _this) > 6) then {_this select 6} else {1};
		0 = [_this select 0,_this select 1,_this select 2,_this select 3,_this select 4,_equipType,_numGroups] call fnc_spawnBandits;
		true
	};

private["_worldname"];
_worldname=toLower format ["%1",worldName];

diag_log format["[DZAI] Server is running map %1. Loading static trigger and classname configs.",_worldname];

//Load DZAI classname tables.
#include "base_classname_configs\base_classnames.sqf"

//Build DZAI weapon classname tables from CfgBuildingLoot data if DZAI_dynamicWeapons = true;
if (DZAI_dynamicWeaponList) then {[DZAI_banAIWeapons] execVM '\z\addons\dayz_server\DZAI\scripts\buildWeaponArrays.sqf';};

//Create reference marker for dynamic triggers and set default values. These values are modified by world_(map_name).sqf
_this = createMarker ["DZAI_centerMarker", (getMarkerPos 'center')];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
DZAI_centerMarker = _this;
DZAI_dynTriggerRadius = 600;
DZAI_dynOverlap = 0.1;

//Load mod-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.

switch (_worldname) do {
	case "chernarus":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\chernarus_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_chernarus.sqf";
		DZAI_centerMarker setMarkerPos [7580.2803, 7636.8018];
		DZAI_centerSize = 6000;
		DZAI_dynTriggersMax = 16;
	};
	case "utes":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\utes_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_utes.sqf";
		DZAI_centerMarker setMarkerPos [3648.311, 3820.9607];
		DZAI_centerSize = 1000;
		DZAI_dynTriggersMax = 3;
	};
	case "zargabad":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\zargabad_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_zargabad.sqf";
		DZAI_centerMarker setMarkerPos [3998.7087, 4120.4692];
		DZAI_centerSize = 2000;
		DZAI_dynTriggersMax = 5;

	};
	case "fallujah":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\fallujah_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_fallujah.sqf";
		DZAI_centerMarker setMarkerPos [5139.8008, 4092.6797];
		DZAI_centerSize = 4000;
		DZAI_dynTriggersMax = 11;
	};
	case "takistan":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\takistan_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_takistan.sqf";
		DZAI_centerMarker setMarkerPos [6368.2764, 6624.2744];
		DZAI_centerSize = 6000;
		DZAI_dynTriggersMax = 16;
	};
    case "tavi":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\tavi_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_tavi.sqf";
		DZAI_centerMarker setMarkerPos [10864.419, 11084.657, 1.5322094];
		DZAI_centerSize = 8000;
		DZAI_dynTriggersMax = 16;
    };
	 case "lingor":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\lingor_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_lingor.sqf";
		DZAI_centerMarker setMarkerPos [4247.3218, 4689.731];
		DZAI_centerSize = 4000;
		DZAI_dynTriggersMax = 11;
    };
    case "namalsk":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\namalsk_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_namalsk.sqf";
		DZAI_centerMarker setMarkerPos [6051.7534, 8728.8447];
		DZAI_centerSize = 3500;
		DZAI_dynTriggersMax = 6;
    };
    case "mbg_celle2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\mbg_celle2_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_mbg_celle2.sqf";
		DZAI_centerMarker setMarkerPos [6399.5469, 6583.6987];
		DZAI_centerSize = 6250;
		DZAI_dynTriggersMax = 17;
    };
	case "oring":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\oring_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_oring.sqf";
		DZAI_centerMarker setMarkerPos [5138.3276, 5535.9248];
		DZAI_centerSize = 4750;
		DZAI_dynTriggersMax = 15;
    };
	case "panthera2":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\panthera2_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_panthera2.sqf";
		DZAI_centerMarker setMarkerPos [5510.7402, 4248.1196];
		DZAI_centerSize = 3250;
		DZAI_dynTriggersMax = 9;
    };
	case "isladuala":
    {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\isladuala_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_isladuala.sqf";
		DZAI_centerMarker setMarkerPos [5133.2119, 5228.4541];
		DZAI_centerSize = 5500;
		DZAI_dynTriggersMax = 8;
    };
	case "sara":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\sara_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_sara.sqf";
		DZAI_centerMarker setMarkerPos [12011.185, 11251.99, 0.036790848];
		DZAI_centerSize = 6250;
		DZAI_dynTriggersMax = 17;
    };
	case default {
		DZAI_centerSize = 5000;
		DZAI_dynTriggersMax = 20;
		diag_log "Unrecognized worldname found. Verifying table compatibility.";
		if (!DZAI_verifyTables) then {DZAI_verifyTables = true;};	//Force table verification for unrecognized maps to help creating new loot config files.
	};
};

if (DZAI_verifyTables) then {["DZAI_Rifles0","DZAI_Rifles1","DZAI_Rifles2","DZAI_Rifles3","DZAI_Pistols0","DZAI_Pistols1","DZAI_Pistols2","DZAI_Pistols3","DZAI_Backpacks0","DZAI_Backpacks1","DZAI_Backpacks2","DZAI_Backpacks3","DZAI_Edibles","DZAI_Medicals1","DZAI_Medicals2","DZAI_MiscItemS","DZAI_MiscItemL","DZAI_SkinLoot","DZAI_BanditTypes"] execVM "\z\addons\dayz_server\DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynTriggersMax > 0) then {[DZAI_dynTriggersMax] execVM '\z\addons\dayz_server\DZAI\scripts\spawnTriggers_random.sqf';};
if (DZAI_monitor) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\dzai_monitor.sqf';};
diag_log format ["[DZAI] DZAI loading completed in %1 seconds.",(diag_tickTime - _startTime)];
