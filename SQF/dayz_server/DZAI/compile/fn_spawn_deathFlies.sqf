/*
	fnc_spawndeathFlies
	
	Description: Does what it says on the box.
	
	Usage: [_unit] call fnc_spawn_deathFlies;
	
	Last updated: 6/2/2013
*/

	// private[""];
	_unit = _this select 0;
	_position = getPosATL _unit;
	_unit = [_position, 0.1, 1.5] call bis_fnc_flies;
