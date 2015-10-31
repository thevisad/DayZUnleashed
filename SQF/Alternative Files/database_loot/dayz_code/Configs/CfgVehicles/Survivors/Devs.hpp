class GER_Soldier_Medic_EP1;
class TheVisad_DZU: GER_Soldier_Medic_EP1 {
    displayName = "TheBeard";
    identityTypes[] = {"TheVisad"};
    side = 1;
    faction = "DZU_FACTION_DEV";
    weapons[] = {"Throw","Put"};
    //model = "\dayz\characters\man_bandit";
    //portrait = "\Ca\characters_E\data\portraits\ger_soldier_CA";
    magazines[] = {};
    backpack = "";
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 0;
    cancarrybackpack = 1;
};

class XerXes_DZU: TheVisad_DZU {
    displayName = "DaChops";
    identityTypes[] = {"SonOfXerXes"};
};
class CIV_EuroMan02_EP1;
class XyberViri_DZU: CIV_EuroMan02_EP1 {
    displayName = "DEV";
    hiddenSelectionsTextures[] = {"\ca\characters_e\Civil\Hladik\Data\european-man_02_co.paa"};
    side = 1;
    faction = "DZU_FACTION_DEV";
    weapons[] = {"Throw","Put"};
    magazines[] = {};
    backpack = "";
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 0;  
    cancarrybackpack = 1;  
};

class PvtAmmo_DZU: TheVisad_DZU {
    displayName = "PedoBear";
    identityTypes[] = {"PvtAmmo"};  
};