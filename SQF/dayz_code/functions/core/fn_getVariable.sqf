/*
    TODO:create variable value type checking
*/
private ["_object","_value","_config","_classname","_defaultValue","_variableName","_variableMax","_variableMin","_return","_debug"];
_debug=false;
_return=0;

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {debugLog "error: dzu_fnc_LoadVars all parameters must be defined values!"; _return};

_object = (_this select 0);
_classname = (_this select 1);
if ((typeName _classname) != (typeName ""))exitWith{debugLog format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};

if((count _this)>2)then{_debug=_this select 2;};

     _config = configFile >> "CfgPlayerVariables";
_classname = "var" + _classname;

if (!isClass(_config >> _classname)) exitWith{debugLog format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_classname]; _return};

    _variableName   = getText(_config >> _classname >> "varname");
    _defaultValue   = getNumber(_config >> _classname >> "vardefault");
    _variableMax    = getNumber(_config >> _classname >> "varmax");
    _variableMin    = getNumber(_config >> _classname >> "varmin");
    _return        = _object getVariable[_variableName, _defaultValue];
    _return        = _return min _variableMax;                    
    _return        = _return max _variableMin;                    

    if(_debug)then{
        private["_text"];
        _text=format["Found %1 on %2 with VarName: %3  value:%7(%4/%5-%6)",_classname,_object,_variableName,_defaultValue,_variableMin,_variableMax,_return];
        diag_log _text;
        cutText[_text,"PLAIN DOWN"];  
    };  
        
_return