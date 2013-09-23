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
               skillPoints=100;    //Every one of these we get 1 skill point.    
               displayName="Experience Points";
               descriptionShort="These are experience points, they make you level up.";               
           };
             
       };
       
       class Skills {
           
         class Engineer {
             displayName="Engineering";
             descriptionShort="This is your ability to figure out mechanical things";
                          
         };
         
         class Hunting {
             displayName="Hunting";
             descriptionShort="The skills of a mountain man, the kind that keep you alive.";
                          
         };
         
         class Medical {
             displayName="Medical";
             descriptionShort="You might grow up to be a doctor one day.";
             
         };
         
         class Combat {
             displayName="Combat";
             descriptionShort="The more you know the more dangerous you become.";
             
         };
         
         class Sneaking {
             displayName="Sneaking";
             descriptionShort="Become the shadow,nothing like a ninja.";
             
         }; 
          
       };
       
   };
   #include "CfgRPG\CfgEXP.hpp"   //Experience Values        
};
