private ["_position","_sfx"];
_position = select 0;
_sfx = nearestObject [_position,"Sound_Flies"];
if (!(isNull _sfx)) then {
	deleteVehicle _sfx;
};