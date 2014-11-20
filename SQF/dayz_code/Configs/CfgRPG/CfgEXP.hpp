//[player,"Generic_Survival"] call DZU_fnc_giveEXP;

class CfgEXP{
    class Default {
        Name="";        //value of %2
        Description="";
        Image="";
        Message="You were awarded %1 %2 experience.";
        Experience=1;   //value of %1
        MiniumGain=1;
    };
    
    class Generic: Default{
        Name="Generic";
        Experience=25;
    };
    
    class Generic_limited: Generic{
        MiniumGain=0;
    };
    
    class Refuel_5l: Generic{
        MiniumGain=0;
    };
    class Refuel_Object_5l: Refuel_5l{
        Experience=5;
    };
    
    class Refuel_20l: Generic{
        Experience=40;
        MiniumGain=0;
    };
    class Refuel_Object_20l: Refuel_20l{
        Experience=20;
    };
    
    class Generic_Engineering: Generic{
        Name="Engineering";
        };
    class Generic_Hunting: Generic{
        Name="Wilderness";
        };
    class Generic_Medical: Generic{
        Name="Medical";
        };
    class Generic_Combat: Generic{
        Name="Combat";
        };
    class Generic_Survival: Generic{
        Name="Survivalist";
        };

     class Build: Generic_Engineering{
        Experience=50;
        MiniumGain=0;
     };
     
     class Build_med: Build{
        Experience=75;
     };
     class Build_large: Build{
        Experience=100;
     };
     
    class Repair: Generic_Engineering{};
    class Craft: Generic_Engineering{};
    
    class Boil: Generic_Hunting{};
    class Cook: Generic_Hunting{};
    class Gut: Generic_Hunting{};
    class ChopWood: Generic_Hunting{};
    class Trap: Generic_Hunting{};
        
    class Blood_Self: Generic_Medical{};
    class Blood_Other: Generic_Medical{
        Experience=35;
    };
    class Blood_Bag: Generic_Medical{ //Blood Bag crafting exp
        Experience=30;
    };
    class Bandage_Self: Generic_Medical{};
    //class Bandage_Other: Generic_Medical{};
       
    class Combat_Player: Generic_Combat{};
    class Combat_NPC: Generic_Combat{
        Experience=50;
        };    
    class Combat_NPC2: Generic_Combat{
        Experience=75;
        };
    class Combat_NPC3: Generic_Combat{
        Experience=100;
        };
    class Combat_NPC4: Generic_Combat{
        Experience=125;
        };
    class Combat_NPC5: Generic_Combat{
        Experience=150;
        };
    class Combat_NPC6: Generic_Combat{
        Experience=175;
        };
    class Combat_NPC6: Generic_Combat{
        Experience=200;
        };
        
    class Combat_Zed: Generic_Combat{
        Experience=35;
        };
    
    class Find_Loot: Generic_Survival{};
};           