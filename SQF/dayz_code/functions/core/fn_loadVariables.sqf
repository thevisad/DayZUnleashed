private ["_object","_variables","_config","_classname","_isGlobal","_defaultValue","_variableName","_variableMax","_variableMin","_newValue"];
_variables = [];
if((count _this)<1) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object";_variables};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_LoadVars all parameters must be defined values!"; _variables};
_object = (_this select 0);
_config = configFile >> "CfgPlayerVariables";
for "_i" from 0 to ((count _config) - 1) do {
    _classname = configName (_config select _i);
    if(getNumber(_config >> _classname >> "load")==1)then{
    //Start      
        _isGlobal       = if(getNumber(_config >> _classname >> "global")==1)then{true}else{false};
        _defaultValue   = getNumber(_config >> _classname >> "vardefault");
        _variableName   = getText(_config >> _classname >> "varname");
        _variableMax    = getNumber(_config >> _classname >> "varmax");
        _variableMin    = getNumber(_config >> _classname >> "varmin");
        _newValue       = _object getVariable[_variableName, _defaultValue];        
        _newValue       = _newValue min _variableMax;                    
        _newValue       = _newValue max _variableMin;
        _object setVariable[_variableName,_newValue,_isGlobal];
        _variables = _variables + [_classname];
    //End
    };
};

_object setVariable["CfgPlayerVariables",_variables,FALSE];//DONT MAKE THIS NETWORK
_variables
