/*
	DZAI Server Initialization File
	
	Description: Handles startup process for DZAI. Does not contain any values intended for modification.
	
	Last updated: 1:41 PM 7/18/2013
*/
private ["_startTime"];

if (!isServer || !isNil "DZAI_isActive") exitWith {};
DZAI_isActive = true;

#include "DZAI_version.hpp"
diag_log format ["Initializing %1 version %2",DZAI_TYPE,DZAI_VERSION];

_startTime = diag_tickTime;

createcenter east;							//Create centers for all sides
createcenter resistance;
east setFriend [resistance, 1];								//Resistance (AI) is hostile to West (Player), but friendly to East (AI).
east setFriend [west, 0];	
resistance setFriend [west, 0];								//East (AI) is hostile to West (Player), but friendly to Resistance (AI).
resistance setFriend [east, 1];	
west setFriend [resistance, 0];								//West (Player side) is hostile to all.
west setFriend [east, 0];

//Load DZAI variables
#include "dzai_variables.sqf"

//Load DZAI functions
#include "dzai_functions.sqf"

//Load DZAI classname tables.
#include "base_classname_configs\base_classnames.sqf"

//Detect DayZ mod variant being used.
if (DZAI_modName == "") then {
	private["_modVariant"];
	_modVariant = getText (configFile >> "CfgMods" >> "DayZ" >> "dir");
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Detected mod variant %1.",_modVariant];};
	switch (_modVariant) do {
		case "@DayZ_Epoch":
		{
			DZAI_modName = "epoch";				//DayZ Epoch
		};
		case "@DayzOverwatch":
		{
			DZAI_modName = "overwatch";			//DayZ Overwatch
		};
	};
};

//Build DZAI weapon classname tables from CfgBuildingLoot data if DZAI_dynamicWeapons = true;
if (DZAI_dynamicWeaponList) then {[DZAI_banAIWeapons] execVM '\z\addons\dayz_server\DZAI\scripts\buildWeaponArrays.sqf';};

//Create reference marker for dynamic triggers and set default values. These values are modified on a per-map basis in the switch-case block below.
_this = createMarker ["DZAI_centerMarker", (getMarkerPos 'center')];
_this setMarkerType "Empty";
_this setMarkerBrush "Solid";
DZAI_centerMarker = _this;
DZAI_dynTriggerRadius = 600;
DZAI_dynOverlap = 0.15;

//Load map-specific configuration file. Config files contain trigger/marker information, addition and removal of items/skins, and/or other variable customizations.

private["_worldname"];
_worldname=toLower format ["%1",worldName];
diag_log format["[DZAI] Server is running map %1. Loading static trigger and classname configs.",_worldname];

switch (_worldname) do {
	case "napf":
	{
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\init\world_classname_configs\napf_classnames.sqf";
		[] execVM "\z\addons\dayz_server\DZAI\init\world_map_configs\world_napf.sqf";
		DZAI_centerMarker setMarkerPos [9990.79,156.11501,12475.429];
		DZAI_centerSize = 7000;
		DZAI_dynTriggersMax = 15;
	};
};

//Initialize AI settings
if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then {DZAI_zAggro = true;diag_log "[DZAI] Zombie aggro to AI is enabled.";} else {DZAI_zAggro = false;diag_log "[DZAI] Zombie aggro to AI is disabled.";};
if (isNil "DDOPP_taser_handleHit") then {DZAI_taserAI = false;} else {DZAI_taserAI = true;diag_log "[DZAI] DDOPP Taser Mod detected.";};

if (DZAI_verifyTables) then {["DZAI_Rifles0","DZAI_Rifles1","DZAI_Rifles2","DZAI_Rifles3","DZAI_Pistols0","DZAI_Pistols1","DZAI_Pistols2","DZAI_Pistols3","DZAI_Backpacks0","DZAI_Backpacks1","DZAI_Backpacks2","DZAI_Backpacks3","DZAI_Edibles","DZAI_Medicals1","DZAI_Medicals2","DZAI_MiscItemS","DZAI_MiscItemL","DZAI_SkinLoot","DZAI_BanditTypes","DZAI_heliTypes"] execVM "\z\addons\dayz_server\DZAI\scripts\verifyTables.sqf";};
if (DZAI_dynAISpawns || DZAI_aiHeliPatrols) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\DZAI_scheduler.sqf';};
if (DZAI_monitor) then {[] execVM '\z\addons\dayz_server\DZAI\scripts\DZAI_monitor.sqf';};
diag_log format ["[DZAI] DZAI loaded with settings: Debug Level: %1. DebugMarkers: %2. ModName: %3. DZAI_dynamicWeaponList: %4. VerifyTables: %5.",DZAI_debugLevel,DZAI_debugMarkers,DZAI_modName,DZAI_dynamicWeaponList,DZAI_verifyTables];
diag_log format ["[DZAI] DZAI loading completed in %1 seconds.",(diag_tickTime - _startTime)];
