_magazineArray = [] call player_countMagazines;
if (unleashed_SavingDebug == 1) then {
	diag_log(format["PFS: MAG ARRAY: %1",_magazineArray]);
};
PVDZ_plr_Save = [player,_magazineArray,false];
//PVDZ_plr_Save = [player,[_magazineArray,dayz_onBack],false];
publicVariableServer "PVDZ_plr_Save";

{
	PVDZ_veh_Update = [_x,"gear"];
	publicVariableServer "PVDZ_veh_Update";
} forEach nearestObjects [getPosATL player, dayz_updateObjects, 10];
					
dayz_lastSave = diag_tickTime;
