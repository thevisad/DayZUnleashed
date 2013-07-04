/*
	DZAI Variables File
	
	Description: Contains all configurable settings of DZAI. Contains settings for debugging, customization of AI units, spawning, and loot.
	
	Last updated: 7:32 PM 6/28/2013
*/
private["_worldname"];

if (!isServer) exitWith {};

//Enable/Disable Zombies, Zombie Hostility
DZAI_zombieEnemy = true;									//Enable or disable AI hostility to zombies. If enabled, AI will attack zombies. (default: true)

//DZAI Settings
DZAI_debugLevel = 0;										//Enable or disable event logging to arma2oaserver.rpt. Debug level setting. 0: Off, 1: Basic Debug, 2: Extended Debug. (Default: 0)
DZAI_debugMarkers = 0;										//Enable or disable debug markers. Track AI position, locate patrol waypoints, locate dynamically-spawned triggers. (Default: 0)
DZAI_monitor = true;										//Enable or disable server monitor. Keeps track of number of max/current AI units and dynamically spawned triggers. (Default: true)
DZAI_monitorRate = 180;										//Frequency of server monitor update to RPT log in seconds. (Default: 180)
DZAI_modName = "default";									//If using a non-standard version of a DayZ mod, edit this variable, other leave it as "default". Possible values: "skarolingor" (DayZ Lingor Skaronator Version), "2017" (DayZ 2017 and Namalsk 2017), "epoch" (DayZ Epoch), "civilian (DayZ Civilian).
DZAI_verifyTables = true;									//Use this if experiencing crashes or errors with DZAI. Set to "true" to have DZAI verify all tables for banned/invalid classnames. If invalid entries are found, they are removed and logged into the RPT log. (Default: true)

//AI Unit Variables						
DZAI_weaponNoise = 0.00;									//AI weapon noise multiplier for zombie aggro purposes. No effect if DZAI_zombieEnemy is set to false. Note: AI cannot be attacked or damaged by zombies.(Default: 0.00. Player equivalent: 1.00)
DZAI_dmgFactors1 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for bullet-type damage done to different body parts of AI units: Structural, Head, Body, Hands, Legs. Example: to make AI take 50% reduced damage to a body part, set the appropriate value to 0.50.
DZAI_dmgFactors2 =[1.0,1.0,1.0,1.0,1.0];					//Multipliers for non-bullet-type (ie: explosions, collisions) damage done to different body parts: Structural, Head, Body, Hands, Legs.
DZAI_refreshRate = 15;										//Amount of time in seconds between AI ammo and zombie check. (Default: 15)
DZAI_zDetectRange = 200;									//Maximum distance for AI to detect zombies. (Default: 200)

//AI Spawning Variables
DZAI_maxAIUnits = 65535;									//Use only if server performance is suffering beyond tolerable levels, otherwise leave this value alone. Sets limit of total AI spawned by DZAI (0: Disables AI spawning completely).
DZAI_respawnTime = 300;										//Time to wait before respawning an AI group with all units eliminated. (Default: 300)
DZAI_despawnWait = 120;										//Time to allow AI to remain in seconds before being removed when all players have left a trigger area. (Default: 120)

//Dynamic Trigger Settings
//DZAI automatically determines the settings for dynamic triggers. Below are settings that can be manually adjusted.
DZAI_dynManagerRate = 900;									//Frequency of dynamic trigger manager in seconds. The manager periodically relocates a percentage of inactive dynamic triggers (Default: 900)
DZAI_dynRemoveDeadWait = 300;								//Time to wait before deleting dead AI corpse. (Default: 300)
DZAI_dynDespawnWait = 120;									//Time to wait before dynamic trigger area when no players present, and delay time before force-despawning trigger area after all spawned units have been killed. (Default: 120)

//Extra AI Settings
DZAI_findKiller = false;									//If enabled, AI group will attempt to track down player responsible for killing a group member. Players with radios will be given text warnings if they are being pursued (Default: false)
DZAI_tempNVGs = false;										//If normal probability check for spawning NVGs fails, then give AI temporary NVGs only if they are spawned with weapongrade 2 or 3 (applies only during nighttime hours). Temporary NVGs are unlootable and will be removed at death (Default: false).

//AI weapon configuration
DZAI_dynamicWeaponList = true;								//True: Dynamically generate AI weapon list from CfgBuildingLoot. False: Use preset weapon list (DayZ 1.7.6.1). Highly recommended to enable DZAI_verifyTables if this option is set to false. (Default: true).
DZAI_banAIWeapons = [];										//(Only if DZAI_dynamicWeaponList = true) List of weapons that AI should never use. By default, AI may carry any lootable weapon. Example: DZAI_banAIWeapons = ["M107_DZ","BAF_AS50_scoped"]; will remove the M107 and AS50 from AI weapon tables if dynamic weapon list is enabled.

//AI loot configuration										(Edible and Medical items, Miscellaneous items, Skin packs)
DZAI_invmedicals = 1; 										//Number of selections of medical items (Inventory)
DZAI_invedibles = 1;										//Number of selections of edible items (Inventory)
DZAI_bpmedicals = 2; 										//Number of selections of medical items (Backpack)
DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
DZAI_numMiscItemS = 3;										//Maximum number of items to select from DZAI_MiscItemS table.
DZAI_numMiscItemL = 1;										//Maximum number of items to select from DZAI_MiscItemL table.

//AI loot probabilities
DZAI_gradeChances0 = [0.85,0.15,0.00,0.00];					//equipType = 0 - most AI will have basic pistols or rifles, and occasionally common military weapons.
DZAI_gradeChances1 = [0.55,0.40,0.04,0.01];					//equipType = 1 - most AI will have common rifles, many will have common military weapons. Very rarely, AI will spawn with high-grade military or helicrash weapons.
DZAI_gradeChances2 = [0.30,0.55,0.11,0.04];					//equipType = 2 - most AI carry military weapons, and occasionally high-grade military weapons.
DZAI_gradeChances3 = [0.00,0.60,0.33,0.07];					//equipType = 3 - All AI will carry at least a military-grade weapon. Many will be carrying high-grade military weapons.
DZAI_gradeChancesDyn = [0.30,0.60,0.08,0.02];				//Weapongrade chances for AI spawned from dynamic triggers.
DZAI_chanceMiscItemS = 0.66;								//Chance to add random item from DZAI_MiscItemS table.
DZAI_chanceMiscItemL = 0.20;								//Chance to add random item from DZAI_MiscItemL table.
DZAI_skinItemChance = 0.08;									//Chance to add random item from DZAI_SkinLoot table.

//NOTHING TO EDIT BEYOND THIS POINT.

//Internal Use Variables: DO NOT EDIT THESE
DZAI_weaponGrades = [0,1,2,3];								//All possible weapon grades. A "weapon grade" is a tiered classification of gear. 0: Civilian, 1: Military, 2: MilitarySpecial, 3: Heli Crash. Weapon grade also influences the general skill level of the AI unit.
DZAI_numAIUnits = 0;										//Tracks current number of currently active AI units, including dead units waiting for respawn.
DZAI_actDynTrigs = 0;										//Tracks current number of active dynamically-spawned triggers
DZAI_curDynTrigs = 0;										//Tracks current number of inactive dynamically-spawned triggers.
DZAI_actTrigs = 0;											//Tracks current number of active static triggers.	
DZAI_dynTriggerArray = [];									//List of all generated dynamic triggers.
DZAI_respawnQueue = [];										//Queue of AI groups that require respawning. Group ID is removed from queue after it is respawned.
DZAI_respawnActive = false;									//Tracks activity status of respawn queue. Prevents creation of multiple respawn queues.

diag_log format["[DZAI] DZAI Variables loaded. Debug Level: %1. DebugMarkers: %2. ModName: %3. DZAI_dynamicWeaponList: %4. VerifyTables: %5.",DZAI_debugLevel,DZAI_debugMarkers,DZAI_modName,DZAI_dynamicWeaponList,DZAI_verifyTables];
