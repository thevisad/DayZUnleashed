private [];
_cursorTarget = _this select 3;
diag_log ("ForceSave: Object is: "+ str(_cursorTarget));
//["PVDZ_veh_Update",[_this select 3,"all"]] call callRpcProcedure;
PVDZ_veh_Update = [_cursorTarget,"all"];
publicVariableServer "PVDZ_veh_Update";