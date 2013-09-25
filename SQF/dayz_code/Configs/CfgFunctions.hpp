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
            class setVariable
            {
                description = "Verifies DZU functions work.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
        };
        class Rpg
        {
          file = "\z\addons\dayz_code\functions\rpg";
          class getLevel
          {
                description = "Return the players current level.";
          };
          class giveEXP
          {
              description = "Return the amount of experience the player should receive for the given activity.";
          };
          class levelUp
          {
                description = "Attempt to level up a skill line up to a specific point.";
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