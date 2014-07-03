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
        requiredAddons[] = {"CAData","CAWeapons","dayz","dayz_code"};
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
          class searchCondition
          {
                description = "Search condition for active loot";  
          };
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

class CfgRPG
{
    class CfgEXP
    {
	    class Find_Loot;
	    class Generic_Engineering;
	    class al_Search_Loot : Find_Loot{};
	    class al_pick_lock : Generic_Engineering{};  
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
        minTick         = 1;            //Minimum number of ticks this  can go (1 is still hardcoded minium)
        searchEXP       = "al_Search_Loot";
        searchSound     = "searchCrate_1";
        searchMessage   = "Searching %1%2";
        searchedClass   = "staticLoot";        
        requiredItems[] = {};                
        lootTable[]       = {"trash"};
        minLootDrop     = 1;
        maxLootDrop     = 10;
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
                    condition =  "(this call DZU_fnc_searchCondition)";
                    statement = "(this spawn DZU_fnc_searchLoot)";
                };
            };
    };        

//Supply Crates
class supplyCrate_AL: activeLoot
    {
        scope = 2;
        displayName = "Supply Crate";
        searchedClass = "supplyCrate_SL";
        lootTable[]       = {"civskins","normalbackpacks","civgeneric","civilian","hunt","craftingitems","equipment"};
    };      
class supplyCrate_AL_2: supplyCrate_AL
    {
        lootTable[] = {"vehicleparts","airparts"};
        maxLootDrop = 3;
    };
class supplyCrate_AL_3: supplyCrate_AL
    {
        lootTable[] = {"buildingkits","buildingitems","rarebuildingitems"};
    };
class supplyCrate_AL_4: supplyCrate_AL
    {
        lootTable[] = {"food","drink","craftingitems"};
    };
class supplyCrate_AL_5: supplyCrate_AL
    {
        lootTable[] = {"medical","hospital"};
    };
class supplyCrate_AL_6: supplyCrate_AL
    {
        lootTable[] = {"milgeneric","milskins","military","militaryspecial","rarebackpacks","attachments"};
    };
//Locked supply crates
class supplyCrate_locked_AL: supplyCrate_AL
	{
        displayName      = "Supply Crate (Locked)";
        searchTime       = 20;
        searchSkillCurve = 100;
        searchMessage    = "Picking Lock %1%2";
        searchEXP       = "al_pick_lock";
        requiredItems[]  = {"ItemToolbox"};
            class UserActions
            {
                class SearchLoot
                {
                    displayName = "Pick Lock";
                    position = "";
                    radius = 2;
                    onlyForplayer = 1;                                       
                    condition =  "(this call DZU_fnc_searchCondition)";
                    statement = "(this spawn DZU_fnc_searchLoot)";
                };
            };
	};
class supplyCrate_locked_AL_2: supplyCrate_locked_AL
    {
        lootTable[] = {"vehicleparts","airparts"};
        maxLootDrop = 3;
    };  
class supplyCrate_locked_AL_3: supplyCrate_locked_AL
    {
        lootTable[] = {"buildingkits","buildingitems","rarebuildingitems"};
    };  
class supplyCrate_locked_AL_4: supplyCrate_locked_AL
    {
        lootTable[] = {"food","drink","craftingitems"};
    };  
class supplyCrate_locked_AL_5: supplyCrate_locked_AL
    {
        lootTable[] = {"medical","hospital"};
    };  
class supplyCrate_locked_AL_6: supplyCrate_locked_AL
    {
        lootTable[] = {"milgeneric","milskins","military","militaryspecial","rarebackpacks","attachments"};
    };    
    
//Dead bodies
class deadBody_AL : activeLoot
    {
      
        scope = 2;
        displayName = "Dead Body";
        searchedClass = "deadBody_SL";
        model = "\dayz\objects\dead_soldier_0";
        lootTable[] = {"milskins","military","rarebackpacks","attachments"};
        maxLootDrop = 3;
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