private ["_object","_value","_config","_classname","_defaultValue","_variableName","_variableCap","_return","_debug"];
//_debug=false;
_return=0;

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_setVariable requires at least an object"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_setVariable all parameters must be defined values!"; _return};

_object = (_this select 0);
_classname = (_this select 1);
_variableChange = (_this select 2);

if ((typeName _classname) != (typeName ""))exitWith{diag_log format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};
if ((typeName _variableChange) != (typeName 1))exitWith{diag_log format["ERROR(%1): Expected number received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};
if (_variableChange==0)exitWith{_return};
//if((count _this)>3)then{_debug=_this select 3;};

    _config = configFile >> "CfgPlayerVariables";

if (!isClass(_config >> _classname)||(getNumber(_config >> _classname >> "load")!=1)) exitWith{diag_log format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_classname]; _return};

_variableName   =      getText(_config >> _classname >> "varname");
_isGlobal       =  if(getNumber(_config >> _classname >> "global")==1)then{true}else{false};
_defaultValue   =    getNumber(_config >> _classname >> "vardefault");
_variableMax    = getNumber(_config >> _classname >> "varmax");
_variableMin    = getNumber(_config >> _classname >> "varmin");
_variableLimit    =    getNumber(_config >> _classname >> "limit");
_currentValue   =    _object getVariable[_variableName, _defaultValue];
_newValue = _currentValue;

if((_variableLimit !=0) && ((abs _variableChange) > _variableLimit))then{
    switch(true) do {
        case (_variableChange > 0 ):
            {
                _newValue=_currentValue + _variableLimit;
            };
        case (_variableChange < 0 ):
            {
                _newValue=_currentValue - _variableLimit;
            };
        };
} else{

    _newValue = _currentValue + _variableChange;

};

_newValue=_newValue min _variableMax;
_newValue=_newValue max _variableMin;



if(_newValue != _currentValue)then{
_object setVariable[_variableName,_newValue,_isGlobal];
_return=if(abs _newValue > abs _currentValue)then{abs _newValue - abs _currentValue}else{abs _currentValue - abs _newValue};
};
/*
    if(_debug)then{
        private["_text"];
        _text=format["Found %1 on %2 with Varible Name: %3 value:%7>%6 default:%4, max:%8-%5",_classname,_object,_variableName,_defaultValue,_variableMax,_newValue,_currentValue,_variableMin];
        diag_log _text;
        cutText[_text,"PLAIN DOWN"];  
    };  
*/
_return
