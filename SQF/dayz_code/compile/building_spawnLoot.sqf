
private ["_obj", "_type", "_config", "_positions", "_itemTypes", "_lootChance", "_countPositions", "_bias",
"_rnd", "_iPos", "_nearBy", "_index", "_weights", "_cntWeights", "_itemType", "_qty"];

_obj = _this;
_type = typeOf _obj;
_config = configFile >> "CfgBuildingLoot" >> _type;
_positions = [] + getArray (_config >> "lootPos");
_qty = 0; 
{
	if (count _x == 3) then {
		_iPos = _obj modelToWorld _x;
		PVDZ_spawn_loot = [_type,_iPos];
		publicVariableServer "PVDZ_spawn_loot";
		_qty = _qty +1;
	} else {
		diag_log(format["%1 Illegal loot position #%3 from %2 in building %4 -- skipped", __FILE__,
						configName _config, _forEachIndex+1, typeOf _obj]);
	};
} forEach _positions;


_qty
