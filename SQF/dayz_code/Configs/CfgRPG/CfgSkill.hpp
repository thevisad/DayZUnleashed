class CfgSkill {
        class Engineer {
          skill=1;
          displayName="Engineer";
          description="Engineering Training";
          locked=0;                 //Specilized skill
          image="";                 //Image tile
          maxSkill=1000;            //Skill limit
          minSkill=1000;            //Skill level of parent to unlock
          cost=0;                   //Experience cost of unlock skill.
          curve=10.0;               //Curve applied to current skill versus experience.
          ability[] = {};           //list of abilities this skill line grants.
        };/*        
            class Repair: Engineer{
                locked=1;
                displayName="Repair";
                description="";
            };       
            class Construct: Engineer{
                locked=1;
                displayName="Construction";
                description="";
            };       
            class Crafting: Engineer{
                locked=1;
                displayName="Crafting";
                description="";
            };       
       */
        class Survival {
          skill=2;
          displayName="Survival";
          description="Surival Training";
          locked=0;                 //Specilized skill
          image="";                 //Image tile
          maxSkill=1000;            //Skill limit
          minSkill=1000;            //Skill level of parent to unlock
          cost=0;                   //Experience cost of unlock skill.
          curve=10.0;               //Curve applied to current skill versus experience.
          ability[] = {};           //list of abilities this skill line grants.
        };/*
            class LootFinding: Survival {
                locked=1; 
                displayName="LootFinding";
                description="Finding bigger & better loot";
            }; 
            class Hiding: Survival {
                locked=1; 
                displayName="Hiding";
                description="Stealth Movement, this skill directly lowers your ability to be seen by zeds and ai";
            };
            class Trapping: Survival {
                locked=1; 
                displayName="Trapping";//Gillie suit crafting
                description="Wilderness, Surival, Food crafting";
            };
           */      
        class Medical {
          skill=3;
          displayName="Medical";
          description="Medic Training";
          locked=0;                 //Specilized skill
          image="";                 //Image tile
          maxSkill=1000;            //Skill limit
          minSkill=1000;            //Skill level of parent to unlock
          cost=0;                   //Experience cost of unlock skill.
          curve=10.0;               //Curve applied to current skill versus experience.
          ability[] = {};           //list of abilities this skill line grants.
        };/*
            class BloodWork: Medical {
                locked=1;
                displayName="BloodWork";
                description="Taking blood from players, making blood bags";
            };               
            class Triage: Medical {
                locked=1;
                displayName="Triage";
                description="Saving players, restoreing more health, less chance to fail advance medical stuff.";
            };       
            class FieldMedic: Medical {
                locked=1;
                displayName="FieldMedic";
                description="MedGuyver of the post apoc world, Craft medical supplies from every day items.";
            };
          */  
        class Combat {
          skill=4;
          displayName="Combat";
          description="Solider Training";
          locked=0;                 //Specilized skill
          image="";                 //Image tile
          maxSkill=1000;            //Skill limit
          minSkill=1000;            //Skill level of parent to unlock
          cost=0;                   //Experience cost of unlock skill.
          curve=10.0;               //Curve applied to current skill versus experience.
          ability[] = {};           //list of abilities this skill line grants.
        };/*  
            class Strategy: Combat {
                locked=1;
                displayName="Strategy";
                description="Lowers the chance to take damage, lowers damage when hit.";
            };         
            class Enforcer: Combat {
                locked=1;
                displayName="Enforcer";
                description="Lowers the chance to take damage, lowers damage when hit.";
            };                 
            class Warfare: Combat {
                locked=1;
                displayName="Warfare";
                description="Setting traps and blowing shit up.";
            };
        */
};