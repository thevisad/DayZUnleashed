private ["_object","_variables","_config","_classname","_isGlobal","_defaultValue","_variableName","_variableMax","_variableMin","_newValue","_KeyMapSearch","_overrideValue","_override_variables"];
/*
 KeyMap search finds previously saved values as [[keys],[values]]
 */
_KeyMapSearch ={
    private["_array2D","_value","_location"];
    _value=objNull;
    _array2D= _this select 0;
    _location= ((_array2D select 0) find (_this select 1));
    if( _location >= 0) then {
        _value = ( _array2D select 1 ) select _location;
    };
    _value
};

_variables = [];
_override_variables=[];
if((count _this)<1) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object";_variables};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_LoadVars all parameters must be defined values!"; _variables};
_object = (_this select 0);

if((count _this)>1)then{_override_variables = _this select 1;};

_config = configFile >> "CfgPlayerVariables";
for "_i" from 0 to ((count _config) - 1) do {
    _classname = configName (_config select _i);
    if(getNumber(_config >> _classname >> "load")==1)then{
    //Start      
        _isGlobal       = (getNumber(_config >> _classname >> "global")==1);
        _defaultValue   = getNumber(_config >> _classname >> "vardefault");
        _variableName   = getText(_config >> _classname >> "varname");
        _variableMax    = getNumber(_config >> _classname >> "varmax");
        _variableMin    = getNumber(_config >> _classname >> "varmin");
        _newValue       = _object getVariable[_variableName, _defaultValue];        
        _newValue       = _newValue min _variableMax;                    
        _newValue       = _newValue max _variableMin;
        
        if((count _override_variables) > 0) then {
        _overrideValue = [_override_variables,_classname] call _KeyMapSearch;
            if(!isNull _overrideValue) then {
                _newValue = _overrideValue;  
            };
        };
        _object setVariable[_variableName,_newValue,_isGlobal];
        _variables set [count _variables, _classname];
    //End
    };
};

_variables
