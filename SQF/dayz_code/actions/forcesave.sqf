private [];
_cursorTarget = _this select 3;
if (unleashed_debug == 1) then {
	diag_log(format["FS: Object is:%1",_cursorTarget]);
};
PVDZ_veh_Update = [_cursorTarget,"all"];
publicVariableServer "PVDZ_veh_Update";