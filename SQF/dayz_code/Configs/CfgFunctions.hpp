class cfgFunctions
{
    class DZU
    {
        class Core
        {
            file = "\z\addons\dayz_code\functions\core";
            class loadVariables
            {
                description = "[_object,_variableArray] call DZU_fnc_loadVariables.\n Loads _object with all varible classes with load=1.\n Optionally: Override default values with _variableArray.";
                //file = "\z\addons\dayz_code\functions\core\fn_loadVariables.sqf";
            };
            class getVariable
            {
                description = "[_object,_variable] call DZU_fnc_getVariable.\n Returns the value of the _variable on _object.\n Respects class _variable limits, initializes default on _object if not loaded and returns that value.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class getVariableProperty
            {
                description = "[_variable,_property] call DZU_fnc_getVariableProperty.\n return _property from class _variable.\n _property can be: variable, isGlobal, default, max, minium, isLimited, limit, forceSave and description.\n invalid property will return default value.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariableName.sqf";
            };
            class setVariable
            {
                description = "[_object,_value,_variable(,_set)] call DZU_fnc_setVariable.\n if _set is true: sets _variable to _value on _object.\n if _set is false or not included: add _value to _variable on _object.\n _value can be negative.";
                //file = "\z\addons\dayz_code\functions\core\fn_getVariable.sqf";
            };
            class exportVariables
            {
                description = "_variableArray = [_object] call DZU_fnc_loadVariables. Exports a loadable variable array that can be passed to DZU_fnc_loadVariables.";
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