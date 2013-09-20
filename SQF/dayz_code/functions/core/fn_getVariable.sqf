/*
	TODO:create variable value type checking
*/
private ["_object","_value","_config","_objVariable","_defaultValue","_variableName","_variableCap","_return","_debug"];
_debug=false;
_return=0;

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {debugLog "error: dzu_fnc_LoadVars all parameters must be defined values!"; _return};

_object = (_this select 0);
_objVariable = (_this select 1);
if ((typeName _objVariable) != (typeName ""))exitWith{debugLog format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _objVariable)]; _return};

if((count _this)>2)then{_debug=_this select 2;};

     _config = configFile >> "CfgPlayerVariables";
_objVariable = "var" + _objVariable;

if (!isClass(_config >> _objVariable)) exitWith{debugLog format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_objVariable]; _return};

_variableName   =      getText(_config >> _objVariable >> "varname");
_defaultValue   =    getNumber(_config >> _objVariable >> "vardefault");
_variableCap    =    getNumber(_config >> _objVariable >> "cap");
_return         =    _object getVariable[_variableName, _defaultValue];
if(_variableCap !=0 )then{
	switch(true) do {
		case (_variableCap > 0 ):
			{
				_return=_return min _variableCap;
			};
		case (_variableCap < 0 ):
			{
				_return=_return max _variableCap;
			};
		};
};

_return
