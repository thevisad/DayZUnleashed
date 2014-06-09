//["PVDZ_veh_Update",[_this select 3,"all"]] call callRpcProcedure;
/*
private["_object"];

_cursorTarget = _this select 3;

diag_log ("ForceSave: Object is: "+ str(_cursorTarget));

if (typeOf(_cursorTarget) in allbuildables_class) then {
	PVDZ_veh_Update = [_cursorTarget,"gear"];
};
		
if (_cursorTarget isKindOf "TentStorage") then {
	PVDZ_veh_Update = [_cursorTarget,"gear"];
};

if (cursorTarget isKindOf "AllVehicles") then {
	PVDZ_veh_Update = [_cursorTarget,"all"];
};

publicVariableServer "PVDZ_veh_Update";
if (isServer) then {
	PVDZ_veh_Update call server_updateObject;
};
*/
private [];
diag_log ("ForceSave: Object is: "+ str(_cursorTarget));
_cursorTarget = _this select 3;
//["PVDZ_veh_Update",[_this select 3,"all"]] call callRpcProcedure;
PVDZ_veh_Update = [_cursorTarget,"all"];
publicVariableServer "PVDZ_veh_Update";