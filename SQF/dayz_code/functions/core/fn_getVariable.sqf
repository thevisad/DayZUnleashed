private ["_object","_value","_config","_classname","_objVariable","_defaultValue","_variableName","_variableCap","_newValue","_debug","_classtree"];
_debug=false;
_value=0;
_return=[0,0];

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object";_value};
if (({isNil "_x"} count _this) != 0) exitWith {debugLog "error: dzu_fnc_LoadVars all parameters must be defined values!"; _value};

_object = (_this select 0);
_objVariable = (_this select 1);

if((count _this)>1)then{_debug=_this select 2;};
if ((typeName _objVariable) != (typeName ""))exitWith{debugLog format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _objVariable)]; _value};

_config = configFile >> "CfgPlayerVariables";
if (!isClass(_config >> _objVariable)) exitWith{debugLog format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_objVariable]; _value};

_variableName   =      getText(_config >> _objVariable >> "varname");
_defaultValue   =    getNumber(_config >> _objVariable >> "vardefault");
_newValue      = _object getVariable[_variableName, _defaultValue];

_variableCap    =    getNumber(_config >> _objVariable >> "cap");




/*         if(_variableCap !=0 )then{
        switch(true) do {
            case (_variableCap > 0 ):
                {
                  _newValue=_newValue min _variableCap;                    
                };
            case (_variableCap < 0 ):
                {
                  _newValue=_newValue max _variableCap;                    
                };            
            }; 
        }; */
        
