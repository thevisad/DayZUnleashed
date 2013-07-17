// Unleashed Packe Skins

class CfgPatches {
	class Skins {
		units[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class CfgVehicles {

	class zZombie_Base;	// External class reference

	// Man Skins
	class TK_CIV_Worker01_EP1;	// External class reference
	class TK_CIV_Worker02_EP1;	// External class reference
	class Villager1;	// External class reference
	class GUE_Villager3;	// External class reference
	class SchoolTeacher;	// External class reference
	class Worker1;	// External class reference  NOT FOUND in cfgunbann
	class Citizen3_EP1;	// External class reference
	class Worker4;	// External class reference
	class Woodlander4;	// External class reference
	class Rocker3;	// External class reference
	
	class Civilian1_DZ : TK_CIV_Worker01_EP1 {
		displayName = "Civilian Worker (red)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		canCarryBackPack = 1;
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class Civilian2_DZ : TK_CIV_Worker02_EP1 {
		displayName = "Civilian Worker (brown)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		canCarryBackPack = 1;
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class Civilian3_DZ : Villager1 {
		displayName = "Civilian Villager 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian4_DZ : GUE_Villager3 {
		displayName = "Civilian Villager 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian5_DZ : SchoolTeacher {
		displayName = "Civilian Teacher";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian6_DZ : Worker1 {
		displayName = "Civilian Worker";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian7_DZ : Citizen3_EP1 {
		displayName = "Civilian Citizen";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian8_DZ :Worker4 {
		displayName = "Civilian Worker (Blue Jacked)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian9_DZ : Woodlander4 {
		displayName = "Civilian Woodlanger (camo)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Civilian10_DZ : Rocker3 {
		displayName = "Civilian Rocker (blue)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	// Female Skins
	class TanyaDes;			// External class reference
	class TanyaWood;		// External class reference
	class TanyaDelta;		// External class reference
	class TanyaBO;			// External class reference
	class SurvivorW2_DZ;	// External class reference
	
	class CivilianW1_DZ : TanyaDes {
		displayName = "Civilian Female 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		model = "\tanya\tanyaDes.p3d";
		Picture = "\tanya\data\Ico\i_SF_CA.paa";
		Icon = "\tanya\data\map_ico\i_komandos_CA.paa";
	};
	
	class CivilianW2_DZ : TanyaWood {
		displayName = "Civilian Female 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class CivilianW3_DZ : TanyaDelta {
		displayName = "Civilian Female 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class CivilianW4_DZ : TanyaBO {
		displayName = "Civilian Female 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class CivilianW5_DZ : SurvivorW2_DZ {
		displayName = "Civilian Female 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};

	// Bandit Level 1 Man
	class TK_Special_Forces_EP1;	// External class reference
	// Bandit Level 2 Man
	class INS_Soldier_Sniper;	// External class reference
	//Bandit Level 3 Man
	class GUE_Soldier_1;	// External class reference
	class FR_GL; // External class reference
	//Bandit Level 4 Man
	class TK_INS_Soldier_AT_EP1;	// External class reference
	class TK_INS_Soldier_AAT_EP1; // External class reference
	//Bandit Level 5 Man
	class GUE_Soldier_3;	// External class reference
	class TK_GUE_Soldier_EP1; // External class reference
	
	class Banditl11_DZ : TK_Special_Forces_EP1 {
		displayName = "Bandit Level 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Banditl21_DZ : INS_Soldier_Sniper {
		displayName = "Bandit Level 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		faceType = "HeadMask1Black";
	};
	
	class Banditl31_DZ : GUE_Soldier_1 {
		displayName = "Bandit Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Banditl32_DZ : FR_GL {
		displayName = "Bandit Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		faceType = "HeadMask1Black";
	};
	
	class Banditl41_DZ : TK_INS_Soldier_AT_EP1 {
		displayName = "Bandit Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Banditl42_DZ : TK_INS_Soldier_AAT_EP1 {
		displayName = "Bandit Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Banditl51_DZ : GUE_Soldier_3 {
		displayName = "Bandit Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		faceType = "HeadMask1Black";
	};
	
	class Banditl52_DZ : TK_GUE_Soldier_EP1 {
		displayName = "Bandit Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	// Bandit Level 1 FEMALE
	class BB_Merc_OA_Female_light;	// External class reference
	// Bandit Level 2 Man
	class BB_Merc_OA_Female_gl;	// External class reference
	//Bandit Level 3 Man
	class BB_Merc_OA_Female_helmet;	// External class reference
	//class BB_Merc_OA_Female_pilot; // External class reference
	//Bandit Level 4 Man
	class BB_Merc_OA_Female_pilot2;	// External class reference
	class BB_Merc_OA_Female_pilot; // External class reference
	//Bandit Level 5 Man
	//class Rita_Ensler_EP1;	// External class reference
	//class RU_Damsel1; // External class reference
	
	class Banditwl11_DZ : BB_Merc_OA_Female_light {
		displayName = "Bandit Female Level 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl21_DZ : BB_Merc_OA_Female_gl {
		displayName = "Bandit Female Level 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl31_DZ : BB_Merc_OA_Female_helmet {
		displayName = "Bandit Female Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl32_DZ : BB_Merc_OA_Female_helmet {
		displayName = "Bandit Female Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl41_DZ : BB_Merc_OA_Female_pilot2 {
		displayName = "Bandit Female Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl42_DZ : BB_Merc_OA_Female_pilot {
		displayName = "Bandit Female Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		//faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl51_DZ : BB_Merc_OA_Female_light {
		displayName = "Bandit Female Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class Banditwl52_DZ : BB_Merc_OA_Female_gl {
		displayName = "Bandit Female Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};

	// Hero Level 1 Man
	class TK_Soldier_Officer_EP1;	// External class reference
	//Hero Level 2 Man
	class CIV_Contractor2_BAF;	// External class reference
	//Hero Level 3 Man
	class CIV_Contractor1_BAF;	// External class reference
	class GER_Soldier_TL_EP1; // External class reference
	//Hero Level 4 Man
	class CZ_Special_Forces_GL_DES_EP1;	// External class reference
	class US_Delta_Force_EP1; // External class reference
	//Hero Level 5 Man
	class FR_R;	// External class reference
	class FR_AR; // External class reference
	
	class Herol11_DZ : TK_Soldier_Officer_EP1 {
		displayName = "Hero Level 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol21_DZ : CIV_Contractor2_BAF {
		displayName = "Hero Level 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol31_DZ : CIV_Contractor1_BAF {
		displayName = "Hero Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol32_DZ : GER_Soldier_TL_EP1 {
		displayName = "Hero Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol41_DZ : CZ_Special_Forces_GL_DES_EP1 {
		displayName = "Hero Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol42_DZ : US_Delta_Force_EP1 {
		displayName = "Hero Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herotl51_DZ : FR_AR {
		displayName = "Hero Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
	
	class Herol52_DZ : FR_AR {
		displayName = "Hero Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		canCarryBackPack = 1;
	};
};