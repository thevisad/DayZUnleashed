class cfgFunctions
{
    class DZU
    {
        class Core
        {
            file = "\z\addons\dayz_code\functions\core";
            class loadVariables
            {
                description = "Loads all varible classes with load=true";
                //file = "\z\addons\dayz_code\functions\core\fn_loadVariables.sqf";
            };
            class getVariable
            {
                description = "Verifies DZU functions work.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class getVariableName
            {
                description = "Verifies DZU functions work.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariableName.sqf";
            };
            class setVariable
            {
                description = "Verifies DZU functions work.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class exportVariables
            {
                description = "Export the variables as an array for resetting.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
        };
        
        class Net
        {
            file = "\z\addons\dayz_code\functions\Net";
            class KeyMapADD
            {
                description = "builds keymaps with network error checking.";
            };            
            class saveVariables
            {
                description = "saves variables in network enviroment.";
            };
        };
 
        class Rpg
        {
          file = "\z\addons\dayz_code\functions\rpg";
          class initRPG
          {
                description = "Initilize RPG System.";
          };
          class getLevel
          {
                description = "Return objects current level.";
          };
          class getSkillPoints
          {
                description = "Return objects current skill points";
          };
          class getExperience
          {
                description = "Return objects current experience points";
          };
          class giveEXP
          {
              description = "Return the amount of experience the player should receive for the given activity.";
          };
          class levelUp
          {
                description = "Attempt to level up a skill line up to a specific point.";
          };
          class getSkills
          {
                description = "Return an array of variables used by the RPG System.";
          };
        };
        class Diag
        {
            file = "\z\addons\dayz_code\functions\diag";
            class test
            {
                description = "Verifies DZU functions work.";
                //file = "\z\addons\dayz_code\functions\core\fn_loadVariables.sqf";
            };
        };
    };
};  