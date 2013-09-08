/*
	DZAI Variables File
	
	Description: Contains all configurable settings of DZAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	
	Last updated: 6:57 PM 8/28/2013
*/
private["_worldname"];

diag_log "[DZAI] Reading DZAI variables.";

/*	DZAI Settings
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 0)
DZAI_debugLevel = 0;

//Enable or disable debug markers. 0: Off, 1: Basic markers (Track AI position, locate patrol waypoints, locate dynamically-spawned triggers), 2: Extended markers (Basic markers + Static trigger markers and refreshing dynamic trigger markers) (Default: 0)										
DZAI_debugMarkers = 0;	

//Enable or disable server monitor. Periodically reports number of max/current AI units and dynamically spawned triggers into RPT log. (Default: true)									
DZAI_monitor = true;

//Frequency of server monitor update to RPT log in seconds. (Default: 300)										
DZAI_monitorRate = 300;

//Enable or disable verification of classname tables used by DZAI. If invalid entries are found, they are removed and logged into the RPT log.
//If disabled, clients may crash upon looting AI bodies with invalid items. Disable ONLY if a previous scan shows no invalid classnames (Default: true).										
DZAI_verifyTables = true;

//(Experimental) Enable to have server spawn in objects/buildings normally spawned clientside by DayZ's CfgTownGenerator. Prevents AI from walking/shooting through clutter and other objects. (Default: false)									
DZAI_objPatch = false;

//Minimum seconds to pass until a dead AI body can be cleaned up by DZAI's task scheduler. Affects both static and dynamic AI units (Default: 300).										
DZAI_cleanupDelay = 600;									

/*

	DZAI_modName value		Enables extra features (ie: Items, AI skins, loot rates, etc.) for...
	--------------------------------------------------------------------------------------------------------------------
	(blank)					Automatically detect mod (can be manually specified by editing DZAI_modName below)
	"default"				Force default settings
	"2017"					DayZ 2017/Namalsk 2017	(Can't be automatically detected, must manually set DZAI_modName = "2017" to enable)
	"epoch"					DayZ Epoch 				(Automatically detected - no need to edit)
	"civilian"				DayZ Civilian 			(Can't be automatically detected, must manually set DZAI_modName = "civilian" to enable)
	"overwatch"				DayZ Overwatch 			(Automatically detected - no need to edit)
	"huntinggrounds"		DayZ Hunting Grounds 	(Automatically detected - no need to edit)
	
*/

//(Optional) If the wrong DayZ mod is being detected, choose the correct one from the list above. In most cases it is unnecessary to edit this setting.
DZAI_modName = "";


/*	AI Unit Variables
--------------------------------------------------------------------------------------------------------------------*/		

//AI weapon noise multiplier for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)		
DZAI_weaponNoise = 0.00;

//Amount of time in seconds between AI ammo refresh and zombie check. Decreasing this value may impact server performance. (Default: 15)											
DZAI_refreshRate = 15;	

//Maximum distance for AI group leader to detect zombies. Increasing range beyond default may impact server performance. (Default: 200)							
DZAI_zDetectRange = 200;									

//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)
DZAI_zombieEnemy = true;	


/*	AI Spawning Variables (Static AI spawns)
--------------------------------------------------------------------------------------------------------------------*/	

//Enable or disable static AI spawns. If enabled, AI spawn points will be generated in cities, towns, and other predefined areas. Does not include custom-defined spawns (Default: true).
DZAI_staticAI = true;

//Time to wait before respawning an AI group once all units have been eliminated. (Default: 300)										
DZAI_respawnTime = 300;

//Time to allow spawned AI units to exist in seconds before being despawned when no players are present in a trigger area. (Default: 120)										
DZAI_despawnWait = 120;										


/*Dynamic Trigger Settings (Dynamic AI spawns)
--------------------------------------------------------------------------------------------------------------------*/		

//(Optional) Leave as nil to have DZAI spawn a predetermined number of dynamic triggers. Can be edited to specify max number of dynamic triggers to spawn. (Default: nil)
DZAI_dynTriggersMax = nil;

//Enable or disable dynamic AI trigger spawns. If enabled, AI spawn locations will be randomly placed around the map. (Default: true)									
DZAI_dynAISpawns = true;

//Time to wait before deleting bodies of AI units spawned from dynamic triggers. (Default: 300)									
DZAI_dynRemoveDeadWait = 600;

//Time to wait before despawning all AI units in dynamic trigger area when no players are present, and delay time before force-despawning trigger area after all spawned units have been killed. (Default: 120)
DZAI_dynDespawnWait = 120;									


/*	AI Helicopter patrol settings
IMPORTANT: Before enabling AI helicopter patrols, make sure you have properly edited your server_cleanup.fsm file. Otherwise, the helicopters will explode after spawning.
--------------------------------------------------------------------------------------------------------------------*/		

//Enable or disable AI helicopter patrols. (Default: false)
DZAI_aiHeliPatrols = true;		

//Maximum number of active AI helicopters patrols. (Default: 0).							
DZAI_maxHeliPatrols = 3;

//Classnames of helicopter types to use. Helicopter types must have at least 2 gunner seats (Default: "UH1H_DZ").									
DZAI_heliTypes = ["UH1H_DZ"];	

//Enable or disable loot generation on destroying AI helicopter. Dead crew members carrying loot will be parachuted out after helicopter is destroyed (Default: true)							
DZAI_heliLoot = true;										


/*	Extra AI Settings
--------------------------------------------------------------------------------------------------------------------*/

//If enabled, AI group will attempt to track down player responsible for killing a group member. Players with radios will be given text warnings if they are being pursued (Default: true)
DZAI_findKiller = true;	

//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 2 or 3 (applies only during nighttime hours). Temporary NVGs are unlootable and will be removed at death (Default: false).									
DZAI_tempNVGs = true;	

//Amount of humanity to reward player for killing an AI unit (Default: 0)									
DZAI_humanityGain = 100;										


/*	Dynamic weapon list settings
--------------------------------------------------------------------------------------------------------------------*/

//True: Dynamically generate AI weapon list from CfgBuildingLoot. False: Use preset weapon list (DayZ 1.7.6.1). Highly recommended to enable DZAI_verifyTables if this option is set to false. (Default: true).
DZAI_dynamicWeaponList = true;

//(Only if DZAI_dynamicWeaponList = true) List of classnames of weapons that AI should never use. By default, AI may carry any lootable weapon. Example: DZAI_banAIWeapons = ["M107_DZ","BAF_AS50_scoped"]; will remove the M107 and AS50 from AI weapon tables if dynamic weapon list is enabled.								
//Note: It is recommended to add all melee weapon classnames into this list as AI have issues using melee weapons. 
//All melee weapons and crossbows present in DayZ 1.7.7.1 have been pre-banned ("Crossbow_DZ","Crossbow","MeleeHatchet","MeleeCrowbar","MeleeMachete","MeleeBaseball","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails")
DZAI_banAIWeapons =  ["M107_DZ","BAF_AS50_scoped"];									


/*	AI loot quantity settings
--------------------------------------------------------------------------------------------------------------------*/

//Number of selections of medical items (Inventory)
DZAI_invmedicals = 1;

//Number of selections of edible items (Inventory) 										
DZAI_invedibles = 1;	

//Number of selections of medical items (Backpack)									
DZAI_bpmedicals = 1; 	

//Number of selections of edible items (Backpack)									
DZAI_bpedibles = 1;	

//Maximum number of items to select from DZAI_MiscItemS table.										
DZAI_numMiscItemS = 2;						

//Maximum number of items to select from DZAI_MiscItemL table.				
DZAI_numMiscItemL = 1;										


/*	AI loot probability settings
--------------------------------------------------------------------------------------------------------------------*/

//Chance to add each medical item.
DZAI_chanceMedicals = 0.70;	

//Chance to add each edible item.								
DZAI_chanceEdibles = 0.85;

//Chance to add random item from DZAI_MiscItemS table.									
DZAI_chanceMiscItemS = 0.60;

//Chance to add random item from DZAI_MiscItemL table.								
DZAI_chanceMiscItemL = 0.15;								


/*AI weapon/skill probabilities (gradeChances should add up to 1.00) - [Civilian, Military, MilitarySpecial, HeliCrash] - Note: AI with higher grade weaponry will also have higher skill settings.
--------------------------------------------------------------------------------------------------------------------*/

//equipType = 0 - most AI will have basic pistols or rifles, and occasionally common military weapons.
DZAI_gradeChances0 = [0.90,0.10,0.00,0.00];	

//equipType = 1 - most AI will have common rifles, many will have common military weapons. Very rarely, AI will spawn with high-grade military or helicrash weapons.				
DZAI_gradeChances1 = [0.60,0.35,0.04,0.01];	

//equipType = 2 - most AI carry military weapons, and occasionally high-grade military weapons.				
DZAI_gradeChances2 = [0.20,0.65,0.11,0.04];

//equipType = 3 - All AI will carry at least a military-grade weapon. Many will be carrying high-grade military weapons.					
DZAI_gradeChances3 = [0.00,0.60,0.33,0.07];	

//Weapongrade chances for AI spawned from dynamic triggers.				
DZAI_gradeChancesDyn = [0.25,0.60,0.12,0.03];				


/*
	AI skill settings

	NOTE: The AI skill levels are not linear 0-3. The skill gap between 1-2 is higher than 0-1 and 2-3.
	
	0-1: Low to medium-skilled AI. Most common type of AI encountered. Intended to challenge players.
	2-3: High-skilled AI. Uncommon/rare type of AI found in places with military loot. Intended to kill players.
	HeliCrew: Maximum-skilled AI. Skills are intended to be extremely high as helicopters patrol alone and carry high-value loot.
*/

DZAI_skill0 = [	
	//AI skill settings level 0 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.15,0.10],
	["aimingShake",0.40,0.10],
	["aimingSpeed",0.40,0.10],
	["endurance",0.40,0.20],
	["spotDistance",0.55,0.20],
	["spotTime",0.40,0.20],
	["courage",0.40,0.20],
	["reloadSpeed",0.40,0.20],
	["commanding",0.40,0.20],
	["general",0.40,0.20]
];
DZAI_skill1 = [	
	//AI skill settings level 1 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.40,0.10],
	["aimingShake",0.55,0.10],
	["aimingSpeed",0.60,0.10],
	["endurance",0.75,0.20],
	["spotDistance",0.65,0.20],
	["spotTime",0.75,0.20],
	["courage",0.65,0.20],
	["reloadSpeed",0.75,0.20],
	["commanding",0.75,0.20],
	["general",0.75,0.20]
];
DZAI_skill2 = [	
	//AI skill settings level 2 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.50,0.10],
	["aimingShake",0.75,0.10],
	["aimingSpeed",0.80,0.10],
	["endurance",0.85,0.20],
	["spotDistance",0.75,0.20],
	["spotTime",0.85,0.20],
	["courage",0.75,0.20],
	["reloadSpeed",0.85,0.20],
	["commanding",0.85,0.20],
	["general",0.85,0.20]
];
DZAI_skill3 = [	
	//AI skill settings level 3 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.60,0.10],
	["aimingShake",0.75,0.10],
	["aimingSpeed",0.90,0.10],
	["endurance",0.95,0.20],
	["spotDistance",0.90,0.20],
	["spotTime",0.95,0.20],
	["courage",0.85,0.20],
	["reloadSpeed",0.95,0.20],
	["commanding",0.95,0.20],
	["general",0.95,0.20]
];
DZAI_heliCrewSkills = [	
	//AI skill settings level 4 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.50,0.10],
	["aimingShake",0.75,0.10],
	["aimingSpeed",0.80,0.10],
	["endurance",0.60,0.20],
	["spotDistance",0.9,0.10],
	["spotTime",0.90,0.10],
	["courage",0.90,0.10],
	["reloadSpeed",0.90,0.10],
	["commanding",0.90,0.10],
	["general",0.90,0.10]
];


//NOTHING TO EDIT BEYOND THIS POINT

//Load custom DZAI settings file.
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\DZAI_settings_override.sqf";

//Internal Use Variables: DO NOT EDIT THESE  - Support will not be given if these variables are edited.
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a tiered classification of gear. 0: Civilian, 1: Military, 2: MilitarySpecial, 3: Heli Crash. Weapon grade also influences the general skill level of the AI unit.
DZAI_numAIUnits = 0;										//Tracks current number of currently active AI units, including dead units waiting for respawn.
DZAI_actDynTrigs = 0;										//Tracks current number of active dynamically-spawned triggers
DZAI_curDynTrigs = 0;										//Tracks current number of inactive dynamically-spawned triggers.
DZAI_actTrigs = 0;											//Tracks current number of active static triggers.	
DZAI_dynTriggerArray = [];									//List of all generated dynamic triggers.
DZAI_respawnQueue = [];										//Queue of AI groups that require respawning. Group ID is removed from queue after it is respawned.
DZAI_respawnActive = false;									//Tracks activity status of respawn queue. Prevents creation of multiple respawn queues.
DZAI_dmgFactors = [0.3375,0.50625,0.3375,1,1];				//AI health settings.
DZAI_curHeliPatrols = 0;									//Tracks current number of active AI heli patrols.
DZAI_locations = [];										//List of positions for cities, towns, and other locations.
//DZAI_actHeliGroups = [];									//List of active heli patrol groups

diag_log "[DZAI] DZAI Variables loaded.";
