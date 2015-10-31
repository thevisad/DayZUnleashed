//Soldier with no helment
class BAF_Soldier_L_W;
class Camo1_DZ: BAF_Soldier_L_W {
	displayName = $STR_CHAR_1;
	side = 1;
    clothingDZ = "Skin_Camo1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
	weapons[] = {"Throw","Put"};
	backpack = "";
	magazines[] = {};
	respawnWeapons[] = {"Throw","Put"};
	respawnMagazines[] = {};
	weaponSlots = "1	 + 	4	 + 12*		256	 + 2*	4096	 + 	2	 + 8*	16  + 12*131072";
	canHideBodies = 0;
};	
class Camo2_DZ: Camo1_DZ{
  clothingDZ = "Skin_Camo1_DZ";
  hiddenselectionstextures[] = {"\ca\characters_d_baf\data\camo_MTP_co.paa", "\ca\characters_d_baf\data\armour_co.paa", "\ca\characters_d_baf\data\equip_d_co.paa"};  
};

//Soldier with helmet
class BAF_Soldier_W;
class Soldier1_DZ: BAF_Soldier_W {
    displayName = "Soldier";
    side = 1;
    clothingDZ = "Skin_Soldier1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 0;
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
    clothingDZ = "Skin_Officer1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 0;
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
    clothingDZ = "Skin_Sniper1_DZ";
    faction = "DZU_FACTION_SURVIVOR";
    vehicleClass = "survivor";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 0;
};
class Sniper2_DZ : Sniper1_DZ {
    hiddenselectionstextures[] = {"\ca\characters_E\Ghillie\Data\ghillie_overall1_desert_co.paa"};
};
//TK Soldier
class TKSoldier1_DZ : Survivor3_DZ {
        //displayName = "Militiaman";
        clothingDZ = "Skin_TKSoldier1_DZ";
        model = "\CA\characters_E\LOC\LOC_soldier01";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\LOC\Data\LOC_opfor01_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\LOC\Data\LOC_soldier01.rvmat", "CA\characters_E\LOC\Data\W1_LOC_soldier01.rvmat", "CA\characters_E\LOC\Data\W2_LOC_soldier01.rvmat"};
            tex[] = {};
        }; 
};
//TK Civilian 1
class TKCivil1_DZ : Survivor3_DZ {
        //displayName = "Takistani (scarf)";
        clothingDZ = "Skin_TKCivil1_DZ";
        model = "\CA\characters_E\civil\Tak_civil05\Tak_civil05";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\civil\Tak_civil05\Data\Tak_civil05_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\civil\Tak_civil05\Data\Tak_civil05.rvmat", "CA\characters_E\civil\Tak_civil05\Data\W1_Tak_civil05.rvmat", "CA\characters_E\civil\Tak_civil05\Data\W2_Tak_civil05.rvmat"};
            tex[] = {};
        }; 
};
//TK Civilian 2
class TKCivil2_DZ : Survivor3_DZ {
        //displayName = "Takistani (sweater)";
        clothingDZ = "Skin_TKCivil2_DZ";
        model = "\CA\characters_E\civil\Tak_civil01\Tak_civil01";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\civil\Tak_civil01\Data\Tak_civil01_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\civil\Tak_civil01\Data\Tak_civil01.rvmat", "CA\characters_E\civil\Tak_civil01\Data\W1_Tak_civil01.rvmat", "CA\characters_E\civil\Tak_civil01\Data\W2_Tak_civil01.rvmat"};
            tex[] = {};
        };
};
//TK_CIV_Worker01_EP1
class TKWorker1_DZ : Survivor3_DZ{
    clothingDZ = "Skin_TKWorker1_DZ";
    model = "\Ca\characters_E\Overall\Overall";
    hiddenselections[] = {"Camo"};
    hiddenselectionstextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
    class Wounds {
        mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
        tex[] = {};
    };    
};
//TK_CIV_Worker02_EP1
class TKWorker2_DZ : TKWorker1_DZ{    
    clothingDZ = "Skin_TKWorker2_DZ";
    hiddenselectionstextures[] = {"\Ca\characters_E\Overall\Data\Overall_3_co.paa"};
};
