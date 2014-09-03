/*
	DZMSAIConfig.sqf
	This is a configuration for the AI that spawn at missions.
	This includes their skin, weapons, gear, and skills.
	You can adjust these to your liking, but it is for advanced users.
*/

///////////////////////////////////////////////
// Array of skin classnames for the AI to use
DZMSBanditSkins = ["BRT_Commander_DZ", "BRT_Officer_DZ", "BRT_Pilot_DZ", "BRT_Scout_DZ", "BRT_Looter_DZ", "BRT_Grunt_DZ"];

////////////////////////
// Array of AI Skills
DZMSSkills0 = [
	["aimingAccuracy",0.10,0.125],
	["aimingShake",0.50,0.59],
	["aimingSpeed",0.50,0.59],
	["endurance",0.50,0.59],
	["spotDistance",0.50,0.59],
	["spotTime",0.50,0.59],
	["courage",0.50,0.59],
	["reloadSpeed",0.50,0.59],
	["commanding",0.60,0.69],
	["general",0.60,0.69]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.69],
	["aimingSpeed",0.60,0.69],
	["endurance",0.60,0.69],
	["spotDistance",0.60,0.69],
	["spotTime",0.60,0.69],
	["courage",0.60,0.69],
	["reloadSpeed",0.60,0.69],
	["commanding",0.70,0.79],
	["general",0.70,0.79]
];

DZMSSkills2 = [
	["aimingAccuracy",0.175,0.225],
	["aimingShake",0.70,0.79],
	["aimingSpeed",0.70,0.79],
	["endurance",0.70,0.79],
	["spotDistance",0.70,0.79],
	["spotTime",0.70,0.79],
	["courage",0.70,0.79],
	["reloadSpeed",0.70,0.79],
	["commanding",0.80,0.89],
	["general",0.80,0.89]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.225,0.250],
	["aimingShake",0.80,0.89],
	["aimingSpeed",0.80,0.89],
	["endurance",0.80,0.89],
	["spotDistance",0.80,0.89],
	["spotTime",0.80,0.89],
	["courage",0.80,0.89],
	["reloadSpeed",0.80,0.89],
	["commanding",0.90,0.99],
	["general",0.90,0.99]
];

//////////////////////////////////////////////////////////////
// This is the primary weaponlist that can be assigned to AI
// These are assigned based on AI difficulty level
DZMSWeps0 = [
"M16A2",
"M16A2GL",
"AK_74",
"M4A1_Aim",
"AKS_74_kobra",
"AKS_74_U",
"AK_47_M",
"M24",
"M1014",
"DMR_DZ",
"M4A1",
"M14_EP1",
"Remington870_lamp",
"MP5A5",
"MP5SD",
"M4A3_CCO_EP1"
];

DZMSWeps1 = [
"M16A2",
"M16A2GL",
"M249_DZ",
"AK_74",
"M4A1_Aim",
"AKS_74_kobra",
"AKS_74_U",
"AK_47_M",
"M24",
"SVD_CAMO",
"M1014",
"DMR_DZ",
"M4A1",
"M14_EP1",
"Remington870_lamp",
"M240_DZ",
"M4A1_AIM_SD_camo",
"M16A4_ACG",
"M4A1_HWS_GL_camo",
"Mk_48_DZ",
"M4A3_CCO_EP1",
"Sa58V_RCO_EP1",
"Sa58V_CCO_EP1",
"M40A3",
"Sa58P_EP1",
"Sa58V_EP1"
];

DZMSWeps2 = [
"FN_FAL",
"FN_FAL_ANPVS4",
"Mk_48_DZ",
"M249_DZ",
"BAF_L85A2_RIS_Holo",
"G36C",
"G36C_camo",
"G36A_camo",
"G36K_camo",
"AK_47_M",
"AKS_74_U",
"M14_EP1",
"bizon_silenced",
"DMR_DZ",
"RPK_74"
];

DZMSWeps3 = [
"FN_FAL",
"FN_FAL_ANPVS4",
"Mk_48_DZ",
"M249_DZ",
"BAF_L85A2_RIS_Holo",
"G36C",
"G36C_camo",
"G36A_camo",
"G36K_camo",
"AK_47_M",
"AKS_74_U",
"M14_EP1",
"bizon_silenced",
"DMR_DZ",
"RPK_74"
];

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
// They are all the same, but can be customized.
DZMSGear0 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear1 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear2 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear3 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

DZMSGear4 = [
["ItemBandage","ItemBandage","ItemPainkiller"],
["ItemKnife","ItemFlashlight"]
];

////////////////////////////////////////////////////////////
// These are the backpacks that can be assigned to AI units.
DZMSPacklist = [
"DZ_Patrol_Pack_EP1",
"DZ_Assault_Pack_EP1",
"DZ_Czech_Vest_Puch",
"DZ_ALICE_Pack_EP1",
"DZ_TK_Assault_Pack_EP1",
"DZ_British_ACU",
"DZ_CivilBackpack_EP1",
"DZ_Backpack_EP1"
];