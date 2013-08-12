//Soldier with no helment
class BAF_Soldier_L_W;
class Camo1_DZ: BAF_Soldier_L_W {
	displayName = $STR_CHAR_1;
	side = 1;
    isFemaleDZ = 0;
    clothingDZ = "Skin_Camo1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
	weapons[] = {"Throw","Put"};
	backpack = "";
	magazines[] = {};
	respawnWeapons[] = {"Throw","Put"};
	respawnMagazines[] = {};
	weaponSlots = "1	 + 	4	 + 12*		256	 + 2*	4096	 + 	2	 + 8*	16  + 12*131072";
	canHideBodies = 1;
};	
class Camo2_DZ: Camo1_DZ{
  clothingDZ = "Skin_Camo_DZ";
  hiddenselectionstextures[] = {"\ca\characters_d_baf\data\camo_MTP_co.paa", "\ca\characters_d_baf\data\armour_co.paa", "\ca\characters_d_baf\data\equip_d_co.paa"};  
};

//Soldier with helmet
class BAF_Soldier_W;
class Soldier1_DZ: BAF_Soldier_W {
    displayName = "Soldier";
    side = 1;
    isFemaleDZ = 0;
    clothingDZ = "Skin_Soldier1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};
class Soldier2_DZ: Soldier1_DZ {
  clothingDZ = "Skin_Soldier1_DZ";
  hiddenselectionstextures[] = {"\ca\characters_d_baf\data\camo_DDPM_co.paa", "\ca\characters_d_baf\data\armour_co.paa", "\ca\characters_d_baf\data\equip_d_co.paa"};  
};

//Officer
class BAF_Soldier_Officer_W;
class Rocket_DZ: BAF_Soldier_Officer_W {
    displayName = "Rocket";
    side = 1;
    isFemaleDZ = 0;
    clothingDZ = "Skin_Survivor_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};
class Officer_DZ : Rocket_DZ {
    displayName = "Officer";
    clothingDZ = "Skin_Survivor_DZ";
    hiddenselectionstextures[] = {"\ca\characters_d_baf\data\camo_MTP_co.paa", "\ca\characters_d_baf\data\armour_co.paa", "\ca\characters_d_baf\data\equip_d_co.paa"};
};

//Sniper
class BAF_Soldier_SniperH_W;
class Sniper1_DZ: BAF_Soldier_SniperH_W {
    displayName = "Sniper";
    side = 1;
    isFemaleDZ = 0;
    clothingDZ = "Skin_Sniper_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};
class Sniper2_DZ : Sniper1_DZ {
    clothingDZ = "Skin_Sniper_DZ";
    hiddenselectionstextures[] = {"\ca\characters_E\Ghillie\Data\ghillie_overall1_desert_co.paa"};
};

