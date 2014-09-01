/*
	DayZ Mission System Config by Vampire
	DZMS: https://github.com/SMVampire/DZMS-DayZMissionSystem
*/

///////////////////////////////////////////////////////////////////////
// Do you want your players to gain humanity from killing mission AI?
DZMSMissHumanity = true;

// How Much Humanity?
DZMSCntHumanity = 100;

// Do You Want AI to use NVGs?
//(They are deleted on death)
DZMSUseNVG = true;

// Do you want AI to use RPG7V's?
//(Only one unit per group spawn will have one)
DZMSUseRPG = false;

// Do you want AI kills to count as bandit kills?
DZMSCntBanditKls = true;

// Do you want AI to disappear instantly when killed?
DZMSCleanDeath = false;

// Do you want AI that players run over to not have gear?
// (If DZMSCleanDeath is true, this doesn't matter)
DZMSRunGear = false;

// How long before bodies disappear? (in seconds) (default = 2400)
DZMSBodyTime = 2400;

// Percentage of AI that must be dead before mission completes (default = 0)
//( 0 is 0% of AI / 0.50 is 50% / 1 is 100% )
DZMSRequiredKillPercent = 0;

// How long in seconds before mission scenery disappears (default = 1800 / 0 = disabled)
DZMSSceneryDespawnTimer = 1800;

// Should crates despawn with scenery? (default = false)
DZMSSceneryDespawnLoot = false;

//////////////////////////////////////////////////////////////////////////////////////////
// You can adjust the weapons that spawn in weapon crates inside DZMSWeaponCrateList.sqf
// You can adjust the AI's gear inside DZMSAIConfig.sqf in the ExtConfig folder also.
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to use static coords for missions?
// Leave this false unless you know what you are doing.
DZMSStaticPlc = false;

// Array of static locations. X,Y,Z
DZMSStatLocs = [
[0,0,0],
[0,0,0]
];

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Do you want vehicles from missions to save to the Database? (this means they will stay after a restart)
// If False, vehicles will disappear on restart. It will warn a player who gets inside of a vehicle.
// This is experimental, and off by default in this version.
DZMSSaveVehicles = false;

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Armed Choppers (Huey)
DZMSChoppers = ["MH6J_DZ","MH6J_EP1","Mi17_Civilian","Mi17_DZ","Mi17_Ins","Mi17_medevac_CDF","Mi17_medevac_Ins","Mi17_medevac_RU","UH1H_DZ"];

//Small Vehicles (Humvees)
DZMSSmallVic = ["BAF_Offroad_D","BAF_Offroad_W","car_hatchback","car_sedan","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open","hilux1_civil_3_open_EP1","HMMWV","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M2","HMMWV_M998A2_SOV_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_MK19","HMMWV_MK19_DES_EP1","HMMWV_Terminal_EP1","Volha_1_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VWGolf","Offroad_DSHKM_Gue","Offroad_DSHKM_INS","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_Gue","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_GUE","Pickup_PK_INS","Pickup_PK_TK_GUE_EP1","S1203_ambulance_EP1","S1203_TK_CIV_EP1","Skoda","SkodaBlue","SkodaGreen","SkodaRed","SUV_PMC","SUV_PMC_BAF","SUV_TK_CIV_EP1","SUV_TK_EP1","SUV_UN_EP1","Lada1","Lada1_TK_CIV_EP1","Lada2","Lada2_TK_CIV_EP1","LadaLM","LandRover_CZ_EP1","LandRover_MG_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_Special_CZ_EP1","LandRover_SPG9_TK_EP1","LandRover_SPG9_TK_INS_EP1","LandRover_TK_CIV_EP1"];

//Large Vehicles (Urals)
DZMSLargeVic = ["Kamaz","KamazOpen","KamazReammo","KamazRefuel","KamazRepair","WarfareReammoTruck_CDF","WarfareReammoTruck_Gue","WarfareReammoTruck_INS","WarfareReammoTruck_RU","WarfareReammoTruck_USMC","WarfareRepairTruck_Gue","WarfareSalvageTruck_CDF","WarfareSalvageTruck_Gue","WarfareSalvageTruck_INS","WarfareSalvageTruck_RU","WarfareSalvageTruck_USMC","WarfareSupplyTruck_CDF","WarfareSupplyTruck_Gue","WarfareSupplyTruck_INS","WarfareSupplyTruck_RU","WarfareSupplyTruck_USMC","UralCivil","UralCivil2","UralOpen_CDF","UralOpen_INS","UralReammo_CDF","UralReammo_INS","UralReammo_TK_EP1","UralRefuel_CDF","UralRefuel_INS","UralRefuel_TK_EP1","UralRepair_CDF","UralRepair_INS","UralRepair_TK_EP1","UralSalvage_TK_EP1","UralSupply_TK_EP1","Ural_CDF","Ural_INS","Ural_TK_CIV_EP1","Ural_UN_EP1","V3S_Civ","V3S_Gue","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1","V3S_Reammo_TK_GUE_EP1","V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","V3S_Salvage_TK_GUE_EP1","V3S_Supply_TK_GUE_EP1","V3S_TK_EP1","V3S_TK_GUE_EP1","UAZ_AGS30_CDF","UAZ_AGS30_INS","UAZ_AGS30_RU","UAZ_AGS30_TK_EP1","UAZ_CDF","UAZ_INS","UAZ_MG_CDF","UAZ_MG_INS","UAZ_MG_TK_EP1","UAZ_RU","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1","MTVR","MtvrReammo","MtvrReammo_DES_EP1","MtvrRefuel","MtvrRefuel_DES_EP1","MtvrRepair","MtvrRepair_DES_EP1","MtvrSalvage_DES_EP1","MtvrSupply_DES_EP1","MTVR_DES_EP1"];

/*///////////////////////////////////////////////////////////////////////////////////////////
There are two types of missions that run simultaneously on a the server.
The two types are Major and Minor missions.

Major missions have a higher AI count, but also have more crates to loot.
Minor missions have less AI than Major missions, but have crates that reflect that.

Below is the array of mission file names and the minimum and maximum times they run.
Do not edit the Arrays unless you know what you are doing.
*/
DZMSMajorArray = ["SM1","SM2","SM3","SM4","SM5","SM6"];
DZMSMinorArray = ["SM1","SM2","SM3","SM4","SM5","SM6"];

/////////////////////////////////////////////////////////////////////////////////////////////
// The Minumum time in seconds before a major mission will run.
// At least this much time will pass between major missions. Default = 650 (10.8 Minutes)
DZMSMajorMin = 650;

// Maximum time in seconds before a major mission will run.
// A major mission will always run before this much time has passed. Default = 2000 (33.33 Minutes)
DZMSMajorMax = 2000;

// Time in seconds before a minor mission will run.
// At least this much time will pass between minor missions. Default = 600 (10 Minutes)
DZMSMinorMin = 600;

// Maximum time in seconds before a minor mission will run.
// A minor mission will always run before this much time has passed. Default = 990 (16.5 Minutes)
DZMSMinorMax = 990;

// Blacklist Zone Array -- missions will not spawn in these areas
// format: [[x,y,z],radius]
// Ex: [[06325,07807,0],300] //Starry Sobor
DZMSBlacklistZones = [
	[[0,0,0],50]
];

/*=============================================================================================*/
// Do Not Edit Below This Line
/*=============================================================================================*/
DZMSVersion = "1.1FIN";
