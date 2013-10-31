private [_object,_variables];
_object = (_this select 0);    
_variables = [_object] call DZU_fnc_exportVariables;

PVDZ_plr_VarSave = [_object,_variables];
publicVariableServer "PVDZ_plr_VarSave";
    if (isServer) then {
        PVDZ_plr_VarSave call server_playerVariableChange;
    };
    