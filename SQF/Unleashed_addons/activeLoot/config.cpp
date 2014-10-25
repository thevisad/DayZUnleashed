#define private    0
#define protected  1
#define public     2

class CfgPatches
{
    class DZUactiveLoot
    {
        units[] = {"activeLoot","supplyCrate_AL","supplyCrate_AL_2","supplyCrate_AL_3","supplyCrate_AL_4","supplyCrate_AL_5","supplyCrate_AL_6","supplyCrate_locked_AL","supplyCrate_locked_AL_2","supplyCrate_locked_AL_3","supplyCrate_locked_AL_4","supplyCrate_locked_AL_5","supplyCrate_locked_AL_6","deadBody_AL","staticLoot","supplyCrate_SL","deadBody_SL"};
        weapons[] = {};
        requiredVersion = 0.1;
		version = "0.98-Devbuild-2014-10-24_11";
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
              description = "Add an item from a given loot table to a container, randomly.";
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
        displayName     = "Loot";           //in-world name
        searchTime      = 10;               //Search time in seconds
        searchSkill     = "Survival";       //Player skill used to lower search time 
        searchSkillCurve= 50;               // 1:1 skill-to-curve will lower search time by 50%. 
        requiredSkill   = 1;                //not implemented
        minTick         = 1;                //Minimum seconds to search reguardless of skill.
        searchEXP       = "al_Search_Loot"; //EXP to reward player with
        searchSound     = "searchCrate_1";  //Sound to play upon completing the search
        searchMessage   = "Searching %1%2"; //Message to play while searching, will replace %1 with displayName and %2 with %completed should be an action verb of SearchLoot useraction below
        searchedClass   = "staticLoot";     //The end cfgvehicle that the item turns into, should be a reammoBox style container
        requiredItems[] = {};               //Items required to start the search
        lootTable[]       = {"trash"};      //List of loot tables to look for rewards from. 
        minLootDrop     = 1;                //Survival is always used to interpolate between min/max LootDropped  
        maxLootDrop     = 10;               
        model           = "\ca\weapons\AmmoBoxes\USBasicAmmo.p3d";
        icon            = "\ca\weapons\Data\map_ico\icomap_ammo_CA.paa";
        destrType       = "DestructNo";
        mapSize         = 0.0;
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
		searchSkill     = "Engineer";
        searchSkillCurve = 100;
        searchMessage    = "Picking Lock %1%2";
        searchEXP        = "al_pick_lock";
        requiredItems[]  = {"ItemToolbox"};
        minLootDrop      = 3;
        maxLootDrop      = 20;
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
        maxLootDrop = 6;
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