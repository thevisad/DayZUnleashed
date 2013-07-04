/*
	Chernarus Classname Configuration
	
	Last updated: 1:13 PM 6/3/2013
	
*/
private ["_newItems"];
switch (DZAI_modName) do {
	case "2017":
	{
		DZAI_maxPistolMags = 1;
		DZAI_invmedicals = 0; 										//Number of selections of medical items (Inventory)
		DZAI_invedibles = 0;										//Number of selections of edible items (Inventory)
		DZAI_bpmedicals = 0; 										//Number of selections of medical items (Backpack)
		DZAI_bpedibles = 1;											//Number of selections of edible items (Backpack)
		DZAI_SkinLoot = [];
		DZAI_BanditTypes = DZAI_BanditTypes - ["Bandit1_DZ", "BanditW1_DZ", "Camo1_DZ", "Sniper1_DZ"];
		_newItems = ["Beard_DZ","Dimitry_DZ","Alexej_DZ","Stanislav_DZ","Czech_Norris"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_BanditTypes set [count DZAI_BanditTypes,_newItems select _i];};
		DZAI_Edibles = DZAI_Edibles - ["FoodCanPasta","ItemWaterbottleBoiled","FoodmuttonCooked","FoodchickenCooked","FoodBaconCooked","FoodRabbitCooked","FoodbaconRaw","FoodchickenRaw","FoodmuttonRaw","foodrabbitRaw","FoodCanUnlabeled","FoodPistachio","FoodNutmix","FoodMRE"] + ["HumanFleshCooked","RawHumanFlesh","RawInfectedFlesh","InfectedFleshCooked","FoodSteakCooked","FoodSteakRaw","FoodCanDogFood"];
		DZAI_MiscItemS = DZAI_MiscItemS - ["HandGrenade_West","FlareGreen_M203","HandGrenade_West","FlareGreen_M203"];
		DZAI_gradeChances0 = [0.90,0.10,0.00,0.00];
		DZAI_gradeChances1 = [0.65,0.30,0.05,0.00];
		DZAI_gradeChances2 = [0.30,0.45,0.15,0.00];
		DZAI_gradeChances3 = [0.25,0.55,0.20,0.00];
		//Reduce tool probabilities (both tiers)
		DZAI_gadgets0 set [1,["NVGoggles",0.00]];
		DZAI_gadgets1 set [1,["NVGoggles",0.00]];
		DZAI_tools0 set [0,["ItemFlashlight",0.60]];
		DZAI_tools0 set [2,["ItemKnife",0.65]];
		DZAI_tools0 set [3,["ItemHatchet",0.60]];
		DZAI_tools0 set [4,["ItemCompass",0.40]];
		DZAI_tools0 set [5,["ItemMap",0.30]];
		DZAI_tools0 set [7,["ItemFlint",0.20]];		//Replace ItemMatchbox with ItemFlint
		DZAI_tools0 set [8,["ItemFlashlightRed",0.10]];
		DZAI_tools0 set [9,["ItemGPS",0.000]];		//Reduce probability of functional GPS
		DZAI_tools1 set [0,["ItemFlashlight",0.60]];
		DZAI_tools1 set [2,["ItemKnife",0.65]];
		DZAI_tools1 set [3,["ItemHatchet",0.60]];
		DZAI_tools1 set [4,["ItemCompass",0.40]];
		DZAI_tools1 set [5,["ItemMap",0.30]];
		DZAI_tools1 set [7,["ItemFlint",0.20]];		//Replace ItemMatchbox with ItemFlint
		DZAI_tools1 set [8,["ItemFlashlightRed",0.10]];
		DZAI_tools1 set [9,["ItemGPS",0.000]];		//Reduce probability of functional GPS
		DZAI_Backpacks0 = ["ice_apo_pack3"];
		DZAI_Backpacks1 = ["ice_apo_pack3","ice_apo_pack1"];
		DZAI_Backpacks2 = ["ice_apo_pack1","ice_apo_pack4","ice_apo_pack2"];
		DZAI_Backpacks3 = ["ice_apo_pack4","ice_apo_pack2"];
		DZAI_tempNVGs = false;	//Disable temporary NVG chance for DayZ 2017.
		diag_log "DayZ 2017 classnames loaded.";
	};
	case "epoch":
	{
		#include "mod_configs\epoch_classnames.sqf"
	};
	case "civilian":
	{
		DZAI_Backpacks0 set [count DZAI_Backpacks0,"ice_apo_pack3"];
		_newItems = ["ice_apo_pack3","ice_apo_pack1"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks1 set [(count DZAI_Backpacks1),(_newItems select _i)];};
		_newItems = ["ice_apo_pack1","ice_apo_pack4","ice_apo_pack2"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks2 set [(count DZAI_Backpacks2),(_newItems select _i)];};
		_newItems = ["ice_apo_pack4","ice_apo_pack2"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_Backpacks3 set [(count DZAI_Backpacks3),(_newItems select _i)];};
		//_newItems = ["Warlord_DZ","Skimask_DZ","Bardak_DZ","Boss_DZ","Euroman2_DZ","Euroman1_DZ","Doctor_DZ","CameraMan_DZ","Profiteer4_DZ","Profiteer3_DZ","Profiteer3_DZ","Profiteer2_DZ","Profiteer1_DZ","Priest_DZ","Pilot_DZ","PMC_Female_DZ","Female_2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ","Policeman_DZ","Rocker1_DZ","Rocker2_DZ","Rocker3_DZ","Rocker4_DZ","Civilian2_DZ","Civilian3_DZ","Priest_DZ","Pilot_DZ","Villager1_DZ","Villager4_DZ","Villager3_DZ","Villager2_DZ","Worker4_DZ","Worker3_DZ","Worker2_DZ","Worker1_DZ","Assistant_DZ"];
		//for "_i" from 0 to ((count _newItems) - 1) do {DZAI_BanditTypes set [(count DZAI_BanditTypes),(_newItems select _i)];};
		_newItems = ["Skin_Policeman_DZ","Skin_Citizen2_DZ","Skin_Citizen3_DZ","Skin_Rocker1_DZ","Skin_Rocker2_DZ","Skin_Rocker3_DZ","Skin_Rocker4_DZ","Skin_Worker1_DZ","Skin_Assistant_DZ","Skin_Pilot_DZ","Skin_Priest_DZ"];
		for "_i" from 0 to ((count _newItems) - 1) do {DZAI_SkinLoot set [(count DZAI_SkinLoot),(_newItems select _i)];};
	};
	case default {};
};
