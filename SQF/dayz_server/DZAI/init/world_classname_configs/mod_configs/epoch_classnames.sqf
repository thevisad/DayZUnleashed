/*
	DayZ Epoch configuration
	
	Description: Adds DayZ Epoch-specific items to DZAI loot tables if Epoch mode is on.
	
	Last updated:
	
*/

DZAI_metalBars = [["ItemSilverBar",0.20],["ItemSilverBar10oz",0.10],["ItemGoldBar",0.03],["ItemGoldBar10oz",0.015]];
DZAI_metalBarNum = 2;		//Maximum number of metal bars to generate
	
DZAI_BanditTypes = DZAI_BanditTypes + ["Soldier1_DZ","RU_Policeman_DZ","Pilot_EP1_DZ","Haris_Press_EP1_DZ","Ins_Soldier_GL_DZ","Functionary1_EP1_DZ","GUE_Commander_DZ","Priest_DZ","Rocker2_DZ","SurvivorWpink_DZ","SurvivorWcombat_DZ","SurvivorWdesert_DZ","SurvivorWurban_DZ","Soldier_TL_PMC_DZ","Soldier_Sniper_PMC_DZ","Soldier_Bodyguard_AA12_PMC_DZ","Drake_Light_DZ","CZ_Special_Forces_GL_DES_EP1_DZ","TK_INS_Soldier_EP1_DZ","TK_INS_Warlord_EP1_DZ"];
DZAI_SkinLoot = DZAI_SkinLoot + ["Skin_Soldier1_DZ","Skin_RU_Policeman_DZ","Skin_Pilot_EP1_DZ","Skin_Haris_Press_EP1_DZ","Skin_Ins_Soldier_GL_DZ","Skin_Functionary1_EP1_DZ","Skin_GUE_Commander_DZ","Skin_Priest_DZ","Skin_Rocker2_DZ","Skin_SurvivorWpink_DZ","Skin_SurvivorWcombat_DZ","Skin_SurvivorWdesert_DZ","Skin_SurvivorWurban_DZ","Skin_Soldier_TL_PMC_DZ","Skin_Soldier_Sniper_PMC_DZ","Skin_Soldier_Bodyguard_AA12_PMC_DZ","Skin_Drake_Light_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","Skin_TK_INS_Soldier_EP1_DZ","Skin_TK_INS_Warlord_EP1"];
DZAI_Edibles = DZAI_Edibles + ["FoodBioMeat"];
DZAI_MiscItemS = DZAI_MiscItemS + ["ItemZombieParts"];
DZAI_skinItemChance = 0.15;

diag_log "DayZ Epoch loot tables loaded.";
