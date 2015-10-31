//CFGRpg system for unleashed.
#define PSkill       0
#define VSkill       1
#define OSkill       2
/*
Experience Variable("CfgRPG" >> "CfgConfig" >> "Experiences")
Skill Variables  ("CfgRPG" >> "CfgConfig" >> "Skills")
*/


class CfgRPG {
        
   class CfgConfig {
       class Experiences {
           class Experience {
               levelCurve=5;       //Every one of these skill points will lower our exp gain by 1,including ones we haven't spent.
               skillPoints=100;    //Cost to level up skills.    
               displayName="Experience Points";
               descriptionShort="These are experience points, they make you level up.";               
           };             
       };
       
       class Skills {
         class Engineer {
             displayName="Engineering";
             descriptionShort="Engineering helps with all things technical.";
         };
         class Hunting {
             displayName="Hunting";
             descriptionShort="Huntering helps you adapt to the wilderness";
         };
         class Medical {
             displayName="Medical Expertise";
             descriptionShort="Medical Expertise helps you prevent diseases and cure existing ones.";
         };
         class Combat {
             displayName="Combat Training";
             descriptionShort="Combat Training helps you become more deadly in combat.";
         };
         class Survival {
             displayName="Survivalism";
             descriptionShort="Survivalism helps keep you alive, but does not offer any benefits by itself.";
         }; 
       };
       
   };
   #include "CfgRPG\CfgEXP.hpp"   //Experience Values        
};
