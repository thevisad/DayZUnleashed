private["_pos"];
_pos = _this select 0;
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

{
	[_x,"gear"] call server_updateObject;
	if (unleashed_debug == 1) then {
		diag_log(format["SGS: Updating nearby objects: %1",_x]);
	};
} forEach nearestObjects [_pos, dayz_updateObjects, 10];