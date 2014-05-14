
private ["_obj", "_type", "_config", "_positions", "_itemTypes", "_lootChance", "_countPositions", "_bias",
"_rnd", "_iPos", "_nearBy", "_index", "_weights", "_cntWeights", "_itemType", "_qty", "_i"];

_obj = _this;
_type = typeOf _obj;
_config = configFile >> "CfgBuildingLoot" >> _type;
_positions = [] + getArray (_config >> "lootPos");
_itemTypes = [] + getArray (_config >> "lootType");
_lootChance = getNumber (_config >> "lootChance");
_countPositions = count _positions;
_qty = 0; // effective quantity of spawned weaponholder

// bias for this building. The lower it is, the lower chance some of the lootpiles will spawn
_bias = 50 max dayz_lootSpawnBias;
_bias = 100 min _bias;
_bias = (_bias + random(100-_bias)) / 100;

//diag_log(format["SL: BIAS:%1 LOOTCHANCE:%2", _bias, _lootChance]);
{
	_lootChance = getNumber (_config >> "lootChance");
	if (count _x == 3) then {
		if (dayz_lootSpawnDebug == 1) then {
			_rnd = 1;
		} else {
			_rnd = (random 1) / _bias;
		};
		_iPos = _obj modelToWorld _x;
		_nearBy = nearestObjects [_iPos, ["ReammoBox"], 2];

		if (count _nearBy > 0) then {
			_lootChance = _lootChance - 0.05;
		};
			
		//diag_log format["SL: _rnd: %1 - _lootChance: %2",_rnd, _lootChance];
		if (_rnd >= _lootChance) then {
			if (count _nearBy == 0) then {
				_index = dayz_CBLBase find _type;
				_weights = dayz_CBLChances select _index;
				_cntWeights = count _weights;
				_index = floor(random _cntWeights);
				_index = _weights select _index;
				_itemType = _itemTypes select _index;

				//diag_log format["SL: Building: %1 - Group: %2",_type, _itemType select 0];
				["building",_itemType select 0, _iPos, 0.0] call spawn_loot;
				_qty = _qty +1;
			};
		} else {
			//diag_log format["SL: Chance skipped spawning loot for Building: %1",_type];
		};
		sleep ((random 3) / 1000);
	} else {
		//diag_log(format["SL: %1 Illegal loot position #%3 from %2 in building %4 -- skipped", __FILE__,configName _config, _forEachIndex+1, typeOf _obj]);
	};
} forEach _positions;

_qty
