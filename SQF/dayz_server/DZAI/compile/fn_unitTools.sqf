/*
		fnc_unitTool
		
		Description: Generates tools for AI: Flashlight, Watch, Knife, Hatchet, Compass, Map, Toolbox, Matchbox, Military Flashlight, Rangefinder, GPS, NV Goggles.
		
        Usage: [_unit,_weapongrade] call fnc_unitTools;
		
		Last updated: 6/3/2013
*/
private ["_unit","_toolselect","_chance","_tool","_toolsArray"];
_unit = _this select 0;
_weapongrade = _this select 1;

_toolsArray = [];
if (_weapongrade < 2) then {
	_toolsArray = DZAI_tools0;
} else {
	_toolsArray = DZAI_tools1;
};

//diag_log format ["DEBUG :: Counted %1 tools in _toolsArray.",(count _toolsArray)];
for "_i" from 0 to ((count _toolsArray) - 1) do {
	_chance = ((_toolsArray select _i) select 1);
	//diag_log format ["DEBUG :: %1 chance to add tool.",_chance];
	if ((random 1) < _chance) then {
		_tool = ((_toolsArray select _i) select 0);
		_unit addWeapon _tool;
		//diag_log format ["DEBUG :: Added tool %1 as loot to AI corpse.",_tool];
	};
};
