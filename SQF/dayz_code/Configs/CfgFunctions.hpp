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
                description = "Returns the value of the variable";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class getVariableName
            {
                description = "returns the name of the variable used in setvariable";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariableName.sqf";
            };
            class setVariable
            {
                description = "increments the value of a variable by x";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class exportVariables
            {
                description = "Exports a loadable variable array that can be passed to loadVariables.";
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
                description = "Return current level.";
          };
          class getSkillPoints
          {
                description = "Return current skill points";
          };
          class getExperience
          {
                description = "Return current experience points";
          };
          class giveEXP
          {
              description = "Trigger an experience event";
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