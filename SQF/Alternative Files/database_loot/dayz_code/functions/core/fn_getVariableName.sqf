private ["_object","_value","_config","_classname","_defaultValue","_variableName","_variableMax","_variableMin","_return","_debug"];
_return="";

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_LoadVars all parameters must be defined values!"; _return};
    _object = (_this select 0);
    _classname = (_this select 1);
if ((typeName _classname) != (typeName ""))exitWith{diag_log format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};

    _config = configFile >> "CfgPlayerVariables";

if (!isClass(_config >> _classname)||(getNumber(_config >> _classname >> "load")!=1)) exitWith{diag_log format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_classname]; _return};

_return= getText(_config >> _classname >> "desc");

_return
