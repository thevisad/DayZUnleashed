private ["_object","_value","_config","_classname","_defaultValue","_variableName","_variableMax","_variableMin","_return","_debug"];
_return="";

if((count _this)<2) exitWith{diag_log "error:dzu_fnc_getVariableProperty all parameters must be defined!"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error:dzu_fnc_getVariableProperty all parameters must be defined!"; _return};
    //_object = (_this select 0);
    _classname = (_this select 0);
    _property = (_this select 1);
if ((typeName _classname) != (typeName ""))exitWith{diag_log format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariableProperty",(typeName _classname)]; _return};
if ((typeName _property) != (typeName ""))exitWith{diag_log format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariableProperty",(typeName _property)]; _return};

    _config = configFile >> "CfgPlayerVariables";

if (!isClass(_config >> _classname)||(getNumber(_config >> _classname >> "load")!=1)) exitWith{diag_log format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_classname]; _return};

_return = switch (_property) do {
    	case "variable": {getText(_config >> _classname >> "varname")};
        case "isGlobal": {(getNumber(_config >> _classname >> "global")==1)};
        case "default": {getNumber(_config >> _classname >> "vardefault")};
        case "max": {getNumber(_config >> _classname >> "varmax")};
        case "minimum": {getNumber(_config >> _classname >> "varmin")};
        case "isLimited": {(getNumber(_config >> _classname >> "limit")>0)};
        case "limit": {getNumber(_config >> _classname >> "limit")};
        case "forceSave": {(getNumber(_config >> _classname >> "alwaysSave")==1)};
        case "description": {getText(_config >> _classname >> "desc")};
        default {getNumber(_config >> _classname >> "vardefault")};
    };


;

_return
