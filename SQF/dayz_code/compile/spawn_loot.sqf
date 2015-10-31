private ["_iItem","_iClass","_iPos","_radius","_iPosZ","_item","_itemTypes","_qty","_max","_index","_weights",
"_cntWeights","_tQty","_canType","_mags","_magQty","_uniq","_iItemRandom"];

_iItem = nil;
_iClass = nil;
_iPos = nil;

//Input
_iItem = _this select 0;
_iClass = _this select 1;
_iPos = _this select 2;
_radius = _this select 3;
_function = _this select 4;
_activeloot = _iClass;
//diag_log (format["SL: _iItem %1",_iItem]);
//diag_log (format["SL: _iClass %1: _function: %2",_iClass, _function]);
//diag_log (format["SL: _iPos %1",_iPos]);
//diag_log (format["SL: _radius %1",_radius]);
if ( isNil "_iClass" ) exitWith { diag_log("SL: _iClass was blank, exiting."); };
if ( isNil "_iItem" ) exitWith { diag_log("SL: _iItem was blank, exiting."); };
if ( isNil "_iPos"  ) exitWith { diag_log("SL: _iPos was blank, exiting."); };

//Unique items
_uniq = ["ItemWaterbottle", "ItemWaterbottleUnfilled"];
 
if (_iItem == "building") then {

        _iItemRandom=[];
        _iItemTypes = [] + getArray (configFile >> "cfgLoot" >> _iClass);
		if (count _iItemTypes == 0) exitWith { diag_log("SL: _iItemTypes was blank, exiting.") };
        _iItemRandom = _iItemTypes call BIS_fnc_selectRandom;
		//diag_log (format["SL: _iItemRandom %1",_iItemRandom]);
		//diag_log (format["SL: _iItemTypes %1",_iItemTypes]);
		_iItem = _iItemRandom select 0;
		//diag_log (format["SL: _iItem %1 _function: %2",_iItem, _function]);        
} else {        
        //diag_log (format["SL: _iItem was not spawned through us: %1",_iItem]);
		//diag_log (format["SL: _iClass was not spawned through us: %1",_iClass]);
		//diag_log (format["SL: _iPos was not spawned through us: %1",_iPos]);
		//diag_log (format["SL: _radius was not spawned through us: %1",_radius]);
};

if (isNil "_iitem" ) exitWith { diag_log("SL: _iItem was blank, exiting."); };

//Check what type the item is. Would be better to store this info within the loot configs as it is static info.
_iClass = switch (true) do
{
	case (isClass (configFile >> "CfgMagazines" >> _iItem)) : { "magazine"; };
	case (isClass (configFile >> "CfgWeapons" >> _iItem)) : { "weapon"; };
	case (isClass (configFile >> "CfgVehicles" >> _iItem)) : { "object"; };
	default { "" };
};

//diag_log (format["SL: _iClass switch %1: _activeloot: %2: _function: %3",_iClass, _activeloot, _function]);
 //Ground adjustment.
_iPosZ = _iPos select 2;
if((isNil "_iPosZ") OR {( _iPosZ < 0)}) then { _iPos = [_iPos select 0,_iPos select 1,0]; };
//diag_log ("CSL: _iPosZ " + str(_iPosZ));
 
 //Run loot system, Starting with default
if (_iItem != "" ) then {
	switch (_iClass) do {
		_nearBy = nearestObjects [_iPos, ["WeaponHolder","activeloot","objects"], 2];
		if (count(_nearBy) =< 0) then {
			default {
				_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];

				_itemTypes = [];
				{
					_itemTypes set [count _itemTypes, _x select 0]
				} foreach getArray (configFile >> "cfgLoot" >> _iClass);
				_qty = 0;
				_max = ceil(random 2) + 1;
				
				while {_qty < _max} do {
						_index = dayz_CLBase find _iClass;
						//diag_log (format["SL: _index %1",_index]);
						if (_index < 0)  exitWith { diag_log("SL: _index was negative, exiting."); };
						_weights = dayz_CLChances select _index;
						//diag_log (format["SL: _weights %1",_weights]);
						_cntWeights = count _weights;
						_index = floor(random _cntWeights);
						_index = _weights select _index;
						_canType = _itemTypes select _index;
						_tQty = round(random 1) + 1;
						if (_canType in _uniq) then {
								_tQty = if (({_x in _uniq} count magazines _item) == 0) then {1} else {0};
								if (_tQty == 0) then {diag_log(format["%1 Prevent any duplicate member %2 from family %3",__FILE__, _canType, _uniq]);};
								//diag_log(format["%1 %2 DUP? type:%3 mag:%4 _this:%5",__FILE__, __LINE__, _canType, magazines _item, _this]);
						};
					   
						if (_tQty > 0) then {
					   
								_item addMagazineCargoGlobal [_canType,_tQty];
								//diag_log ("CSL: spawntest item : " + str(_canType));
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
					//diag_log ("CSL: weapon item : " + str(_iItem));
					_item addWeaponCargoGlobal [_iItem,1];
					_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
					if ((count _mags) > 0) then {
					//      if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
							if (!(_iItem in MeleeWeapons)) then {
									_magQty = round(random 10);
									if (_magQty > 3) then {
										_item addMagazineCargoGlobal [(_mags select 0), (round(random 1) + 1)];
										//diag_log ("CSL: weapon mag item : " + str(_mags select 0));
									};
							};
					};
			};
			case "magazine": {
					//Item is one magazine
					_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
					//diag_log ("CSL: magazine item : " + str(_iItem));
					_item addMagazineCargoGlobal [_iItem,1];
			};
			case "object": {
					//Item is one magazine
					//diag_log ("CSL: object item : " + str(_iItem));
					_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
			};
			
			case "activeloot": {
					//Item is one magazine
					//diag_log ("CSL: object item : " + str(_iItem));
					_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
			};
		};
	};
};
if ((count _iPos) > 2) then {
        _item setPosATL _iPos;
};

_item