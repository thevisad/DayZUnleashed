class CfgEXP{
    class Default {
        Description="";
        Image="";
        Message="";
        Experience=1;
        MiniumGain=0;
    };
    
    class Generic: Default{
        Experience=10;
    };
    
    class Refuel_Can: Generic{};
    class Refuel_Object: Refuel_Can{
        Experience=5;
    };
    
    class Generic_Engineering: Generic{};
    class Generic_Hunting: Generic{};
    class Generic_Medical: Generic{};
    class Generic_Combat: Generic{};
    class Generic_Sneaking: Generic{};

    class Build: Generic_Engineering{};
    class Repair: Generic_Engineering{};
    class Craft: Generic_Engineering{};
    
    class Boil: Generic_Hunting{};
    class Cook: Generic_Hunting{};
    class Gut: Generic_Hunting{};
    class ChopWood: Generic_Hunting{};
    class Sneak: Generic_Hunting{};
    class Trap: Generic_Hunting{};
        
    class Blood_Self: Generic_Medical{};
    class Blood_Other: Generic_Medical{
        Experience=20;
    };
    class Blood_Bag: Generic_Medical{
        Experience=30;
    };
       
    class Combat_Player: Generic_Combat{};
    class Combat_NPC: Generic_Combat{};
    class Combat_Zed: Generic_Combat{};
};           