private ["_object","_variables","_config","_classname","_isGlobal","_defaultValue","_variableName","_variableMax","_variableMin","_newValue","_variableID","_KeyMapSearch","_overrideValue","_override_variables","_variable_keys","_variable_values"];

_variables = [];
_variable_keys=[];
_variable_values=[];

if((count _this)<1) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object";_variables};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_LoadVars all parameters must be defined values!"; _variables};
_object = (_this select 0);

_config = configFile >> "CfgPlayerVariables";
for "_i" from 0 to ((count _config) - 1) do {
    _classname = configName (_config select _i);
    if(getNumber(_config >> _classname >> "load")==1)then{
    //Start      
        _variableName   = getText(_config >> _classname >> "varname");
        _newValue       = _object getVariable[_variableName, (getNumber(_config >> _classname >> "vardefault"))];        
        _newValue       = _newValue min (getNumber(_config >> _classname >> "varmax"));                    
        _newValue       = _newValue max (getNumber(_config >> _classname >> "varmin"));
        //Set the key after the value because of count
        _variable_values set [count _variable_keys,_newValue];
          _variable_keys set [count _variable_keys,_variableName];//Compatibility_Fix:Changed to _variableName from _classname for Unleashed.
    //End
    };
};

[_variable_keys,_variable_values]
