//  Function: DZU_fnc_saveVariable

_updateInterval=100;   //How often to save this to the server
    _stackLimit=1;      //How large to all this list to grow before sending to server.
       _timeNow=diag_tickTime;
if((count _this)<2) exitWith{
    diag_log "error: DZU_fnc_saveVariable requires at least'Variable' & 'Value'.";
};
if (({isNil "_x"} count _this) != 0) exitWith {
    diag_log "error: DZU_fnc_saveVariable all parameters must be defined values!";
};
if(isNil "DZU_stack_saveVariable")then{
    DZU_stack_saveVariable=[[],[],0];
};
if(isNil "DZU_time_saveVariable")then{
    DZU_time_saveVariable=_timeNow;
};

_updateVariable=(_this select 0);
_updateValue=(_this select 1);
_saveRequest=((count _this)>2);
_lastSave=(_timeNow - DZU_time_saveVariable);

DZU_stack_saveVariable = [_updateVariable,_updateValue,DZU_stack_saveVariable] call DZU_fnc_KeyMapADD;
_stackSize = (count(DZU_stack_saveVariable select 1));

diag_log format["DZU_fnc_saveVariables:Last save(%1) Time(%2)",_lastSave,_timeNow];
diag_log format["DZU_fnc_saveVariables:Change(%1) Value(%2)",_updateVariable,_updateValue];
diag_log format["DZU_fnc_saveVariables:Stack Contents==> %1",DZU_stack_saveVariable];
if((_stackSize > _stackLimit)||(_lastSave>_updateInterval)||(_saveRequest))then{
    PVDZ_plr_VarSave2 = [player,DZU_stack_saveVariable];
    DZU_time_saveVariable=_timeNow;
    DZU_stack_saveVariable=[[],[],0];    
    publicVariableServer "PVDZ_plr_VarSave2";
    if (isServer) then {
        PVDZ_plr_VarSave2 call server_playerVariableChange;
    };   
};
