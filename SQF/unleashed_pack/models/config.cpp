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
	class Villager1;	// External class reference
	
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
	
	class Civilian11_DZ : Villager1 {
		displayName = "Civilian Villager (blue)";
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
};

