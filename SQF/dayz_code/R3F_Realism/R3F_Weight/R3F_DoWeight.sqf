
#include "R3F_WEIGHT_Configuration.cfg"

call compile preprocessFile "\z\addons\dayz_code\R3F_Realism\R3F_Weight\R3F_Weight_Fnct.sqf";

private ["_n","_gearbox_visible","_control","_display","_initial_text"];

disableSerialization;

R3F_Weight = call R3F_WEIGHT_FNCT_GetWeight;

_initial_text = "";
_n = 0;
while {true} do
{
	sleep R3F_WEIGHT_SHORT_DELAY;
	R3F_Weight = call R3F_WEIGHT_FNCT_GetWeight;
	_combat_skill = [player,"Combat"] call DZU_fnc_getVariable;
	if (_combat_skill > 0) then 
	{
		_weight_reduction = _combat_skill * 4;
		if (_weight_reduction > R3F_Weight) then
		{
			R3F_Weight = R3F_Weight - _weight_reduction;
		};
	};
	_n = 0;
};
