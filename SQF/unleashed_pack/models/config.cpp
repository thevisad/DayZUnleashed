// Unleashed Packe Skins

class CfgPatches {
	class Skins {
		units[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
	};
};

class CfgVehicles {

	// Man Skins
	class TK_CIV_Worker01_EP1;	// External class reference
	class TK_CIV_Worker02_EP1;	// External class reference
	class Functionary1_EP1;	// External class reference
	class INS_Lopotev;	// External class reference
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
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class Civilian3_DZ : Functionary1_EP1 {
		displayName = "Civilian Functionay (brown)";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class Civilian4_DZ : INS_Lopotev {
		displayName = "Civilian Lopotev";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
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
	};
	
	// Female Skins
	class Hooker1;	// External class reference
	class Secretary1;	// External class reference
	class Sportswoman1;	// External class reference
	class WorkWoman1;	// External class reference
	class Madam1;	// External class reference
	
	class CivilianW1_DZ : Hooker1 {
		displayName = "Civilian Hooker";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class CivilianW2_DZ : Secretary1 {
		displayName = "Civilian Secretary";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class CivilianW3_DZ : Sportswoman1 {
		displayName = "Civilian Sportswoman";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class CivilianW4_DZ : WorkWoman1 {
		displayName = "Civilian WorkWoman";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class CivilianW5_DZ : Madam1 {
		displayName = "Civilian Madam";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};

	// Bandit Level 1 Man
	class GUE_Soldier_3;	// External class reference
	// Bandit Level 2 Man
	class GUE_Soldier_2;	// External class reference
	//Bandit Level 3 Man
	class GUE_Soldier_Pilot;	// External class reference
	class GUE_Soldier_1; // External class reference
	//Bandit Level 4 Man
	class TK_INS_Soldier_AT_EP1;	// External class reference
	class TK_INS_Soldier_AAT_EP1; // External class reference
	//Bandit Level 5 Man
	class GUE_Commander;	// External class reference
	class INS_Soldier_Sniper; // External class reference
	
	class BanditL1_1_DZ : GUE_Soldier_3 {
		displayName = "Bandit Level 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL2_1_DZ : GUE_Soldier_2 {
		displayName = "Bandit Level 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL3_1_DZ : GUE_Soldier_Pilot {
		displayName = "Bandit Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL3_2_DZ : GUE_Soldier_1 {
		displayName = "Bandit Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL4_1_DZ : TK_INS_Soldier_AT_EP1 {
		displayName = "Bandit Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL4_2_DZ : TK_INS_Soldier_AAT_EP1 {
		displayName = "Bandit Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL5_1_DZ : GUE_Commander {
		displayName = "Bandit Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	class BanditL5_2_DZ : INS_Soldier_Sniper {
		displayName = "Bandit Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
	};
	
	// Bandit Level 1 FEMALE
	class Hooker2;	// External class reference
	// Bandit Level 2 Man
	class Secretary4;	// External class reference
	//Bandit Level 3 Man
	class Sportswoman4;	// External class reference
	class CIV_EuroWoman01_EP1; // External class reference
	//Bandit Level 4 Man
	class WorkWoman4;	// External class reference
	class CIV_EuroWoman02_EP1; // External class reference
	//Bandit Level 5 Man
	class Rita_Ensler_EP1;	// External class reference
	class Damsel1; // External class reference
	
	class BanditWL1_1_DZ : Hooker2 {
		displayName = "Bandit Female Level 1";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL2_1_DZ : Secretary4 {
		displayName = "Bandit Female Level 2";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL3_1_DZ : Sportswoman4 {
		displayName = "Bandit Female Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL3_2_DZ : CIV_EuroWoman01_EP1 {
		displayName = "Bandit Female Level 3";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL4_1_DZ : WorkWoman4 {
		displayName = "Bandit Female Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL4_2_DZ : CIV_EuroWoman02_EP1 {
		displayName = "Bandit Female Level 4";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL5_1_DZ : Rita_Ensler_EP1 {
		displayName = "Bandit Female Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
	
	class BanditWL5_2_DZ : Damsel1 {
		displayName = "Bandit Female Level 5";
		side = 1;
		weapons[] = {"Throw","Put"};
		backpack = "";
		magazines[] = {};
		respawnWeapons[] = {"Throw","Put"};
		respawnMagazines[] = {};
		weaponSlots = "1 + 4 + 12* 256 + 2* 4096 + 2 + 8* 16 + 12*131072";
		canHideBodies = 1;
		faceType = "HeadMask1Black"; // This gives the model a black balaclava
	};
};

