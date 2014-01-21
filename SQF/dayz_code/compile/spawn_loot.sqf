
private ["_iItem","_iClass","_iPos","_radius","_iPosZ","_item","_itemTypes","_qty","_max","_index","_weights",
"_cntWeights","_tQty","_canType","_mags","_magQty","_uniq"];

_iItem = _this select 0;
_iClass = _this select 1;
_iPos = _this select 2;
_radius = _this select 3;
_uniq = ["ItemWaterbottle", "ItemWaterbottleUnfilled"];
//diag_log("SL: Item " + str(_iItem));
//diag_log("SL: iClass " + str(_iClass));
//diag_log("SL: iPos " + str(_iPos));
//diag_log("SL: iRadius " + str(_radius));
_iPosZ = _iPos select 2;
if((isNil "_iPosZ") OR {( _iPosZ < 0)}) then { _iPos = [_iPos select 0,_iPos select 1,0]; };

switch (_iClass) do {
	default {
		//Item is food, add random quantity of cans along with an item (if exists)
		_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];

		_itemTypes = [];
		{
			_itemTypes set [count _itemTypes, _x select 0];
			//diag_log("SL: _x " + str(_x));
			//diag_log("SL: count _itemTypes " + str(count _itemTypes));
		} foreach getArray (configFile >> "CfgLoot" >> _iClass);
		//diag_log("SL: _itemTypes " + str(_itemTypes));
		_qty = 0;
		_max = ceil(random 2) + 1;
		while {_qty < _max} do {
			_index = dayz_CLBase find _iClass;
			//diag_log("SL: Loop Index 1 " + str(_index));
			_weights = dayz_CLChances select _index;
			//diag_log("SL: Weights " + str(_weights));
			_cntWeights = count _weights;
			//diag_log("SL: Count Weights " + str(_cntWeights));
			_index = floor(random _cntWeights);
			//diag_log("SL: Loop Index 2 " + str(_index));
			_index = _weights select _index;
			//diag_log("SL: Loop Index 3 " + str(_index));
			_canType = _itemTypes select _index;
			//diag_log("SL: Can Typees " + str(_canType));
			_tQty = round(random 1) + 1;
			//diag_log("SL: TQty " + str( _tQty));
			if (_canType in _uniq) then {
				_tQty = if (({_x in _uniq} count magazines _item) == 0) then {1} else {0};
				if (_tQty == 0) then {diag_log(format["%1 Prevent any duplicate member %2 from family %3",__FILE__, _canType, _uniq]);};
				//diag_log(format["%1 %2 DUP? type:%3 mag:%4 _this:%5",__FILE__, __LINE__, _canType, magazines _item, _this]);
			};
			if (_tQty > 0) then {
				_item addMagazineCargoGlobal [_canType,_tQty];
				_qty = _qty + _tQty;
			};
		};
		if (_iItem != "") then {
			_item addWeaponCargoGlobal [_iItem,1];
		};
	};
	case "weapon": {
		//Item is a weapon, add it and a random quantity of magazines
		_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		_item addWeaponCargoGlobal [_iItem,1];
		_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
		//diag_log("SL: Weapon " + str( _iItem));
		if ((count _mags) > 0) then {
		//	if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
			if (!(_iItem in MeleeWeapons)) then {
				_magQty = round(random 10);
				if (_magQty > 3) then {
					_item addMagazineCargoGlobal [(_mags select 0), (round(random 1) + 1)];
				};
			};
		};
	};
	case "magazine": {
		//Item is one magazine
		_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
		//diag_log("SL: Magazine " + str( _iItem));
		_item addMagazineCargoGlobal [_iItem,1];
	};
	case "object": {
		//Item is one magazine
		//diag_log("SL: Object " + str( _iItem));
		_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
	};
};
if ((count _iPos) > 2) then {
	_item setPosATL _iPos;
};

_item   // used in server_spawnCrashSite
