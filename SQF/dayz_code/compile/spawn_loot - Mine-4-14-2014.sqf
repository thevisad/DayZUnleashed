
private ["_iItem","_iClass","_iPos","_radius","_iPosZ","_item","_itemTypes","_qty","_max","_index","_weights",
"_cntWeights","_tQty","_canType","_mags","_magQty","_uniq","_iItemRandom"];
_iClass="nothing";
_iItem = _this select 0;
_iClass = _this select 1;
_iPos = _this select 2;
_radius = _this select 3;
_classSet="notset";
_uniq = ["ItemWaterbottle", "ItemWaterbottleUnfilled"];


if (_iItem == "building") then {
	_iItemRandom=[];
	_iItemTypes = [] + getArray (configFile >> "cfgLoot" >> _iClass);
	_iItemRandom = _iItemTypes call BIS_fnc_selectRandom;
	_iItem = _iItemRandom select 0;
	diag_log  ("CSL: _iItem replaced as " + str(_iItem));		
} else { 	
	diag_log  ("CSL: Exiting out due to failed loading process");
};

if(isClass(configFile >> "cfgWeapons" >> _iItem)) then {
	_iClass = "weapon";
	diag_log  ("CSL: _iClass Replaced for weapon: " + str(_iItem));
} else {
	_iClass="nothing";
	diag_log  ("CSL: _iClass Passed as Magazine/Object for " + str(_iClass));
	if(isClass (configFile >> "CfgMagazines" >> _iItem)) then {
		_iClass = "magazine";
		diag_log  ("CSL: _iClass Replaced for magazine: " + str(_iItem));
	} else {
		_iClass="nothing";
		diag_log  ("CSL: _iClass Passed as Object for " + str(_iClass));
		if (isClass (configFile >> "CfgVehicles" >> _iItem)) then {
			_iClass = "object";
			diag_log  ("CSL: _iClass Replaced for object: " + str(_iItem));
		};
	};
};


if !((_iClass == "weapon") or (_iClass == "magazine") or (_iClass == "object")) exitWith {diag_log ("Spawn Loot Exited")};

_iPosZ = _iPos select 2;
if((isNil "_iPosZ") OR {( _iPosZ < 0)}) then { _iPos = [_iPos select 0,_iPos select 1,0]; };
diag_log  ("CSL: _iPosZ " + str(_iPosZ));

if (_iItem != "" ) then {
	switch (_iClass) do {
		_nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
		case "weapon": {
			//Item is a weapon, add it and a random quantity of magazines
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
			diag_log  ("CSL: weapon item : " + str(_iItem));
			_item addWeaponCargoGlobal [_iItem,1];
			_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
			if ((count _mags) > 0) then {
			//	if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
				if (!(_iItem in MeleeWeapons)) then {
					_magQty = round(random 10);
					if (_magQty > 3) then {
					
						_item addMagazineCargoGlobal [(_mags select 0), (round(random 1) + 1)];
						diag_log ("CSL: weapon item : " + str(_mags select 0));
					};
				};
			};
		};
		case "magazine": {
			//Item is one magazine
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
			diag_log ("CSL: magazine item : " + str(_iItem));
			_item addMagazineCargoGlobal [_iItem,1];
		};
		case "object": {
			//Item is one magazine
			diag_log ("CSL: object item : " + str(_iItem));
			_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
		};
		
		default {
			//Item is food, add random quantity of cans along with an item (if exists)
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];

			_itemTypes = [];
			{
				_itemTypes set [count _itemTypes, _x select 0]
			} foreach getArray (configFile >> "cfgLoot" >> _iClass);
			_qty = 0;
			_max = ceil(random 2) + 1;
			while {_qty < _max} do {
				_index = dayz_CLBase find _iClass;
				_weights = dayz_CLChances select _index;
				_cntWeights = count _weights;
				_index = floor(random _cntWeights);
				_index = _weights select _index;
				_canType = _itemTypes select _index; 
				_tQty = round(random 1) + 1;
				if (_canType in _uniq) then {
					_tQty = if (({_x in _uniq} count magazines _item) == 0) then {1} else {0};
					if (_tQty == 0) then {diag_log(format["%1 Prevent any duplicate member %2 from family %3",__FILE__, _canType, _uniq]);};
					diag_log (format["%1 %2 DUP? type:%3 mag:%4 _this:%5",__FILE__, __LINE__, _canType, magazines _item, _this]);
				};
				
				if (_tQty > 0) then {
				
					_item addMagazineCargoGlobal [_canType,_tQty];
					diag_log ("CSL: spawntest item : " + str(_canType));
					_qty = _qty + _tQty;
				};
			};
		
			if (_iItem != "") then {
				_item addWeaponCargoGlobal [_iItem,1];
			};
		};
	};
};
if ((count _iPos) > 2) then {
	_item setPosATL _iPos;
};

_item 
