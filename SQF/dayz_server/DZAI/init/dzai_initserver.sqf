/*
	DZAI Server Initialization File
	
	Description: Handles startup process for DZAI. Does not contain any values intended for modification.
	
	Last updated: 12:55 PM 6/26/2013
*/
private ["_startTime"];

if (!isServer) exitWith {};

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

#include "dzai_functions.sqf"

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
	case "napf":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\napf_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_napf.sqf";
		DZAI_centerMarker setMarkerPos [10000.854,105.66483,10481.422];
		DZAI_centerSize = 8000;
		DZAI_dynTriggersMax = 30;
	};
};

if (DZAI_verifyTables) then {["DZAI_Rifles0","DZAI_Rifles1","DZAI_Rifles2","DZAI_Rifles3","DZAI_Pistols0","DZAI_Pistols1","DZAI_Pistols2","DZAI_Pistols3","DZAI_Backpacks0","DZAI_Backpacks1","DZAI_Backpacks2","DZAI_Backpacks3","DZAI_Edibles","DZAI_Medicals1","DZAI_Medicals2","DZAI_MiscItemS","DZAI_MiscItemL","DZAI_SkinLoot","DZAI_BanditTypes"] execVM "\z\addons\dayz_server\DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynTriggersMax > 0) then {[DZAI_dynTriggersMax] execVM '\z\addons\dayz_server\DZAI\scripts\spawnTriggers_random.sqf';};
if (DZAI_monitor) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\dzai_monitor.sqf';};
diag_log format ["[DZAI] DZAI loading completed in %1 seconds.",(diag_tickTime - _startTime)];
