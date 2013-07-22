/*
	DZAI Variables File
	
	Description: Contains all configurable settings of DZAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	
	Last updated: 1:41 PM 7/18/2013
*/
private["_worldname"];

diag_log "[DZAI] Reading DZAI variables.";

//Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)

//DZAI Settings
DZAI_debugLevel = 0;										//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 0)
DZAI_debugMarkers = 0;										//Enable or disable debug markers. 0: Off, 1: Basic markers (Track AI position, locate patrol waypoints, locate dynamically-spawned triggers), 2: Extended markers (Basic markers + Static trigger markers and refreshing dynamic trigger markers) (Default: 0)
DZAI_monitor = true;										//Enable or disable server monitor. Periodically reports number of max/current AI units and dynamically spawned triggers into RPT log. (Default: true)
DZAI_monitorRate = 180;										//Frequency of server monitor update to RPT log in seconds. (Default: 180)
DZAI_verifyTables = true;									//Enable or disable verification of classname tables used by DZAI. If invalid entries are found, they are removed and logged into the RPT log. Disable ONLY if a previous scan shows no invalid classnames (Default: true).

/*
	Enable mod-specific features (Optional) - Selecting one of these options will enable additional features specific to each mod. ie: Items, AI skins, loot rates, etc.
	
	**NOTE** If DZAI_modName is left blank, DZAI will attempt to automatically detect if one of the above mods is active. If the wrong version is being detected, set DZAI_modName to the appropriate value as listed below:
	**EXCEPTION** Manual activation is required for: DayZ 2017, 2017 Namalsk, DayZ Civilian
	
	DZAI_modName value		Enables extra features for...
	--------------------------------------------------------------------------------------------------------------------
	(blank)					Automatically detect mod (can be manually specified by editing DZAI_modName)
	"default"				Force default settings
	"2017"					DayZ 2017/Namalsk 2017	(Can't be automatically detected, must manually set DZAI_modName = "2017" to enable)
	"epoch"					DayZ Epoch
	"civilian"				DayZ Civilian (Can't be automatically detected, must manually set DZAI_modName = "civilian" to enable)
	"overwatch"				DayZ Overwatch
	
*/
DZAI_modName = "";

//AI Unit Variables						
DZAI_weaponNoise = 0.00;									//AI weapon noise multiplier for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)			
DZAI_refreshRate = 15;										//Amount of time in seconds between AI ammo refresh and zombie check. Decreasing this value may impact server performance. (Default: 15)
DZAI_zDetectRange = 200;									//Maximum distance for AI group leader to detect zombies. Increasing range beyond default may impact server performance. (Default: 200)

//AI Spawning Variables
DZAI_respawnTime = 300;										//Time to wait before respawning an AI group once all units have been eliminated. (Default: 300)
DZAI_despawnWait = 120;										//Time to allow spawned AI units to exist in seconds before being despawned when no players are present in a trigger area. (Default: 120)

//Dynamic Trigger Settings
//DZAI automatically determines the settings for dynamic triggers. Below are settings that can be manually adjusted.
DZAI_dynAISpawns = true;									//Enable or disable dynamic AI trigger spawns. If enabled, AI spawn locations will be randomly placed around the map. (Default: true)
DZAI_dynRemoveDeadWait = 300;								//Time to wait before deleting bodies of AI units spawned from dynamic triggers. (Default: 300)
DZAI_dynDespawnWait = 120;									//Time to wait before despawning all AI units in dynamic trigger area when no players are present, and delay time before force-despawning trigger area after all spawned units have been killed. (Default: 120)

//AI Helicopter patrol settings
//IMPORTANT: Before enabling AI helicopter patrols, make sure you have properly edited your server_cleanup.fsm file. Otherwise, the helicopters will explode after spawning.
DZAI_aiHeliPatrols = false;									//Enable or disable AI helicopter patrols. (Default: false)
DZAI_maxHeliPatrols = 0;									//Maximum number of active AI helicopters patrols. (Default: 0).
DZAI_heliTypes = ["UH1H_DZ"];								//Classnames of helicopter types to use. Helicopter types must have at least 2 gunner seats (Default: "UH1H_DZ").

//Extra AI Settings
DZAI_findKiller = false;									//If enabled, AI group will attempt to track down player responsible for killing a group member. Players with radios will be given text warnings if they are being pursued (Default: false)
DZAI_tempNVGs = false;										//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 2 or 3 (applies only during nighttime hours). Temporary NVGs are unlootable and will be removed at death (Default: false).
DZAI_humanityGain = 0;										//Amount of humanity to reward player for killing an AI unit (Default: 0)

//Dynamic weapon list settings
DZAI_dynamicWeaponList = true;								//True: Dynamically generate AI weapon list from CfgBuildingLoot. False: Use preset weapon list (DayZ 1.7.6.1). Highly recommended to enable DZAI_verifyTables if this option is set to false. (Default: true).
DZAI_banAIWeapons = [];										//(Only if DZAI_dynamicWeaponList = true) List of weapons that AI should never use. By default, AI may carry any lootable weapon. Example: DZAI_banAIWeapons = ["M107_DZ","BAF_AS50_scoped"]; will remove the M107 and AS50 from AI weapon tables if dynamic weapon list is enabled.
//Note: It is recommended to add all melee weapon classnames into this list as AI have issues using melee weapons. All melee weapons and crossbows present in DayZ 1.7.7.1 have been pre-banned ("Crossbow_DZ","Crossbow","MeleeBaseBallBat","MeleeMachete")

//AI loot amounts settings									(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 										//Number of selections of medical items (Inventory)
DZAI_invedibles = 1;										//Number of selections of edible items (Inventory)
DZAI_bpmedicals = 1; 										//Number of selections of medical items (Backpack)
DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
DZAI_numMiscItemS = 2;										//Maximum number of items to select from DZAI_MiscItemS table.
DZAI_numMiscItemL = 1;										//Maximum number of items to select from DZAI_MiscItemL table.

//AI loot probability settings
DZAI_chanceMedicals = 0.75;									//Chance to add each medical item.
DZAI_chanceEdibles = 0.85;									//Chance to add each edible item.
DZAI_chanceMiscItemS = 0.60;								//Chance to add random item from DZAI_MiscItemS table.
DZAI_chanceMiscItemL = 0.15;								//Chance to add random item from DZAI_MiscItemL table.

//AI weapon/skill probabilities (gradeChances should add up to 1.00) - [Civilian, Military, MilitarySpecial, HeliCrash] - Note: AI with higher grade weaponry will also have higher skill settings.
DZAI_gradeChances0 = [0.85,0.15,0.00,0.00];					//equipType = 0 - most AI will have basic pistols or rifles, and occasionally common military weapons.
DZAI_gradeChances1 = [0.55,0.40,0.04,0.01];					//equipType = 1 - most AI will have common rifles, many will have common military weapons. Very rarely, AI will spawn with high-grade military or helicrash weapons.
DZAI_gradeChances2 = [0.31,0.56,0.10,0.03];					//equipType = 2 - most AI carry military weapons, and occasionally high-grade military weapons.
DZAI_gradeChances3 = [0.00,0.60,0.33,0.07];					//equipType = 3 - All AI will carry at least a military-grade weapon. Many will be carrying high-grade military weapons.
DZAI_gradeChancesDyn = [0.30,0.60,0.08,0.02];				//Weapongrade chances for AI spawned from dynamic triggers.

//AI skill settings
DZAI_skill0 = [	
	//AI skill settings level 0 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.15,0.10],
	["aimingShake",0.40,0.10],
	["aimingSpeed",0.40,0.10],
	["endurance",0.40,0.20],
	["spotDistance",0.30,0.20],
	["spotTime",0.40,0.20],
	["courage",0.40,0.20],
	["reloadSpeed",0.40,0.20],
	["commanding",0.40,0.20],
	["general",0.40,0.20]
];
DZAI_skill1 = [	
	//AI skill settings level 1 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.20,0.10],
	["aimingShake",0.50,0.10],
	["aimingSpeed",0.50,0.10],
	["endurance",0.55,0.20],
	["spotDistance",0.45,0.20],
	["spotTime",0.55,0.20],
	["courage",0.55,0.20],
	["reloadSpeed",0.55,0.20],
	["commanding",0.55,0.20],
	["general",0.55,0.20]
];
DZAI_skill2 = [	
	//AI skill settings level 2 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.30,0.10],
	["aimingShake",0.60,0.10],
	["aimingSpeed",0.65,0.10],
	["endurance",0.70,0.20],
	["spotDistance",0.60,0.20],
	["spotTime",0.70,0.20],
	["courage",0.70,0.20],
	["reloadSpeed",0.70,0.20],
	["commanding",0.70,0.20],
	["general",0.70,0.20]
];
DZAI_skill3 = [	
	//AI skill settings level 3 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.40,0.10],
	["aimingShake",0.70,0.10],
	["aimingSpeed",0.75,0.10],
	["endurance",0.80,0.20],
	["spotDistance",0.75,0.20],
	["spotTime",0.80,0.20],
	["courage",0.80,0.20],
	["reloadSpeed",0.80,0.20],
	["commanding",0.80,0.20],
	["general",0.80,0.20]
];
DZAI_heliCrewSkills = [	
	//AI skill settings level 4 (Skill, Minimum skill, Maximum bonus amount).
	["aimingAccuracy",0.50,0.10],
	["aimingShake",0.75,0.10],
	["aimingSpeed",0.80,0.10],
	["endurance",0.60,0.20],
	["spotDistance",0.90,0.10],
	["spotTime",0.90,0.10],
	["courage",0.90,0.10],
	["reloadSpeed",0.90,0.10],
	["commanding",0.90,0.10],
	["general",0.90,0.10]
];

//NOTHING TO EDIT BEYOND THIS POINT

//Internal Use Variables: DO NOT EDIT THESE  - Support will not be given if these variables are edited.
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a tiered classification of gear. 0: Civilian, 1: Military, 2: MilitarySpecial, 3: Heli Crash. Weapon grade also influences the general skill level of the AI unit.
DZAI_numAIUnits = 0;										//Tracks current number of currently active AI units, including dead units waiting for respawn.
DZAI_actDynTrigs = 0;										//Tracks current number of active dynamically-spawned triggers
DZAI_curDynTrigs = 0;										//Tracks current number of inactive dynamically-spawned triggers.
DZAI_actTrigs = 0;											//Tracks current number of active static triggers.	
DZAI_dynTriggerArray = [];									//List of all generated dynamic triggers.
DZAI_respawnQueue = [];										//Queue of AI groups that require respawning. Group ID is removed from queue after it is respawned.
DZAI_respawnActive = false;									//Tracks activity status of respawn queue. Prevents creation of multiple respawn queues.
DZAI_dmgFactors = [0.3375,0.50625,0.3375,0,0.3375];			//AI health settings.
DZAI_curHeliPatrols = 0;									//Tracks current number of active AI heli patrols.
DZAI_heliWaypoints = [];									//Current list of randomly-generated AI heli patrol waypoints.
//DZAI_actHeliGroups = [];									//List of active heli patrol groups

diag_log "[DZAI] DZAI Variables loaded.";
