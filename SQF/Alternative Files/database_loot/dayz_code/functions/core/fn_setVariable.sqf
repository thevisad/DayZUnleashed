private ["_object","_value","_config","_classname","_defaultValue","_variableName","_variableCap","_return","_addition"];
_return=0;
_addition=TRUE;

if((count _this)<2) exitWith{diag_log "error: dzu_fnc_setVariable requires at least an object"; _return};
if (({isNil "_x"} count _this) != 0) exitWith {diag_log "error: dzu_fnc_setVariable all parameters must be defined values!"; _return};

_object = (_this select 0);
_classname = (_this select 1);
_variableChange = (_this select 2);
if((count _this)>3)then{_addition=_this select 3;};

if ((typeName _classname) != (typeName ""))exitWith{diag_log format["ERROR(%1): Expected string received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};
if ((typeName _variableChange) != (typeName 1))exitWith{diag_log format["ERROR(%1): Expected number received: %2","dzu_fnc_getVariable",(typeName _classname)]; _return};
if (_variableChange==0)exitWith{_return};

    _config = configFile >> "CfgPlayerVariables";

if (!isClass(_config >> _classname)||(getNumber(_config >> _classname >> "load")!=1)) exitWith{diag_log format["ERROR(%1): '%2' is NOT a valid variable.","dzu_fnc_getVariable",_classname]; _return};

_variableName   = getText(_config >> _classname >> "varname");
_isGlobal       = (getNumber(_config >> _classname >> "global")==1);
_defaultValue   = getNumber(_config >> _classname >> "vardefault");
_variableMax    = getNumber(_config >> _classname >> "varmax");
_variableMin    = getNumber(_config >> _classname >> "varmin");
_variableLimit  = getNumber(_config >> _classname >> "limit");
_currentValue   = _object getVariable[_variableName, _defaultValue];
_newValue       = _currentValue;

if(_addition)then{
    _isLimited = ((_variableLimit !=0) && ((abs _variableChange) > _variableLimit)); 
    _newValue= switch (true) do 
    {
        case ((_isLimited) && (_variableChange > 0 )):{_currentValue + _variableLimit};
        case ((_isLimited) && (_variableChange < 0 )):{_currentValue - _variableLimit};
        default {_currentValue + _variableChange};
    };
} else {
    _newValue = _variableChange;
};

_newValue=_newValue min _variableMax;
_newValue=_newValue max _variableMin;

if(_newValue != _currentValue)then{
_object setVariable[_variableName,_newValue,_isGlobal];
//TODO: Create Variable sync stack move this functionality there. 
    if(getNumber(_config >> _classname >> "alwaysSave")==1) then {
        PVDZ_plr_VarSave1 = [player,_variableName,_newValue];
        publicVariableServer "PVDZ_plr_VarSave1";
        if (isServer) then {
            PVDZ_plr_VarSave1 call server_playerVariableChange;
        };
   }else{
       [_variableName,_newValue] call DZU_fnc_saveVariables;
   };    
_return=if(abs _newValue > abs _currentValue)then{abs _newValue - abs _currentValue}else{abs _currentValue - abs _newValue};
};

_return
