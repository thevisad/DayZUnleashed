private["_pos"];
_pos = _this select 0;
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

_objects = nearestObjects [getPosATL player, dayz_updateObjects, 10];
{
	[_x, "gear"] call server_updateObject;
#ifdef OBJECT_DEBUG
	diag_log(format["SUNO: Updating nearby object at %1",_pos]);
#endif
} foreach _objects;
