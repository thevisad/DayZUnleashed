class CfgEXP{
    class Default {
        Description="";
        Image="";
        Message="";
        Experience=1;
        MiniumGain=0;
    };
    class Generic: Default{
    };
        class Refuel_Can: Generic{
            Experience=10;
        };
        class Refuel_Object: Refuel_Can{
            Experience=5;
        };
    class Engineer: Default{
        Experience=10;       
    };
        class Build_0: Engineer{
        };
        class Repair_0: Engineer{
        };
        class Repair_1: Repair_0{
            Experience=20; 
        };
        class Repair_2: Repair_0{
            Experience=30;
        };
        class Repair_3: Repair_0{
            Experience=40;
        };
        class Repair_4: Repair_0{
            Experience=50;
        };
        class Craft_0: Engineer{
        };
    class Survival: Default{
        Experience=10;
    };
        class Boil: Survival{
        };
        class Cook_0: Survival{
        };
        class Gut_0: Survival{
        };
        class ChopWood_0: Survival{
        };
        class Sneak_0: Survival{
        };
        class Loot_0: Survival{
        };
        class Trap_0: Survival{
        };
    class Medical: Default{
        Experience=10;
    };
        class Blood_Other: Medical{
            Experience=20;
        };
        class Blood_Self: Blood_Other{
            Experience=10;
        };
        class Blood_Bag: Blood_Other{
            Experience=30;
        };
    class Combat: Default{
        Experience=10;        
    };
        class Zed_0: Combat{
            Experience=5;
        };
        class Player_0: Combat{
        };
        class NPC_0: Combat{
        };      
        class NPC_1: NPC_0{
            Experience=20;
        };      
        class NPC_2: NPC_0{
            Experience=30;
        };      
        class NPC_3: NPC_0{
            Experience=40;
        };      
        class NPC_4: NPC_0{
            Experience=50;
        };      
        class NPC_5: NPC_0{
            Experience=60;
        };   
};           