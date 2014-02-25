#define private    0
#define protected  1
#define public     2

class CfgPatches
{
    class DZUactiveLoot
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 0.1;
        requiredAddons[] = {"CAData","CAWeapons","dayz"};
        author[] = {"Xyberviri","HNGamers"};
    };
};

class CfgSounds {
    class searchCrate_1 {
        name = "searchCrate_1";
        sound[] = {"\HNG\addons\Dayz_Unleashed\activeLoot\effects\searchCrate_1",0.1,1,30};
        titles[] = {};
    };
};    


class cfgFunctions
{
    class DZU
    {
        class activeLoot
        {
          file = "\HNG\addons\Dayz_Unleashed\activeLoot\functions\activeLoot";
          class searchLoot
          {
                description = "Search a loot pile for items of use based on skills";
          };
          class addToLootBox
          {
              description = "Add an item or array of items to a container.";
          };
        };
    };
};  

class CfgVehicleClasses
{
    class Loot
    {
        displayName = "Loot";
    };
    
};    

class CfgVehicles
{
    class Strategic;
    class ReammoBox;
//active loot
    class activeLoot: Strategic
    {
        scope           = 0;
        accuracy        = 1;
        displayName     = "Loot";       //%1
        searchTime      = 10;           //%2
        searchSkill     = "Survival";   //%3
        searchSkillCurve= 50;
        requiredSkill   = 1;
        maxTick         = 1;            //Max Additional Ticks
        searchSound     = "searchCrate_1";
        searchMessage   = "Searching %1%2";
        searchedClass   = "staticLoot";        
        requiredItems[] = {};                
        model           = "\ca\weapons\AmmoBoxes\USBasicAmmo.p3d";
        icon            = "\ca\weapons\Data\map_ico\icomap_ammo_CA.paa";
        destrType       = "DestructNo";
        mapSize         = 2.0;
        vehicleClass    = "Loot";
        textplural      = "Loot";
        textsingular    = "Loot";
            class UserActions
            {
                class SearchLoot
                {
                    displayName = "Search";
                    position = "";
                    radius = 2;
                    onlyForplayer = 1;
                    //condition = "!(this getVariable[""SearchInProgress"",false])";
                    condition = "(time - (this getVariable [""SearchInProgress"", time]) <= 0)";
                    statement = "[this,player] spawn DZU_fnc_searchLoot";
                };
            };
    };        
class supplyCrate_AL: activeLoot
    {
        scope = 2;
        displayName = "Supply Crate";
        searchedClass = "supplyCrate_SL";
    };      
    
class supplyCrate_locked_AL:supplyCrate_AL
	{
        displayName      = "Supply Crate (Locked)";
        searchTime       = 20;
        searchSkillCurve = 100;
        searchMessage    = "Picking Lock %1%2";
        requiredItems[]  = {"lockPick"};
            class UserActions
            {
                class pickLock
                {
                    displayName = "Pick Lock";
                    position = "";
                    radius = 2;
                    onlyForplayer = 1;
                    condition = "(time - (this getVariable [""SearchInProgress"", time]) <= 0)";
                    statement = "[this,player] spawn DZU_fnc_searchLoot";
                };
            };
	};

class deadBody_AL : activeLoot
    {
      
        scope = 2;
        displayName = "Dead Body";
        searchedClass = "deadBody_SL";
        model = "\dayz\objects\dead_soldier_0";  
    };
 //staticLoot Looted
    class staticLoot: ReammoBox
    {
        scope = 0;
        accuracy = 1;
        displayName = "Loot (Searched)";
        model = "\ca\weapons\AmmoBoxes\USBasicAmmo.p3d";
        destrType = "DestructNo";
        class TransportMagazines{};
        class TransportWeapons{};
        transportMaxMagazines = 1e+009;
        transportMaxWeapons = 1e+009;       
        transportMaxBackpacks = 1e+009;
        vehicleClass = "Loot";
        textplural = "Loot";
        textsingular = "Loot";       
    };
class supplyCrate_SL: staticLoot
    {
        scope = 1;
        displayName = "Supply Crate (Searched)";         
    };  
 class deadBody_SL: staticLoot
    {
        scope = 1;
        displayName = "Dead Body"; 
        model = "\dayz\objects\dead_soldier_1";        
    };       
        
            
};