private ["_radius","_type","_iPos","_iPosZ","_random","_key1","_data1","_result1","_status1","_lootCount","_lootArray1","_val","_data","_status","_adminArray","_x0","_x1"];

_radius = 0;
_type = _this select 0;
_iPos = _this select 1;
_iPosZ = _iPos select 2;

//diag_log ("SSL: _type " + str(_type));
//diag_log ("SSL: _iPos " + str(_iPos));
//diag_log ("SSL: _iPosZ " + str(_iPosZ));


_min_amount=3;
_max_amount=8;
_tempSpawnAmount = _max_amount - _min_amount;


_lootArray = [];
_lootArray1 = [];

if((isNil "_iPosZ") OR ( _iPosZ < 0)) then { _iPos = [_iPos select 0,_iPos select 1,0]; };


if(isServer) then {
	_random=(floor(random _tempSpawnAmount) + _min_amount);
	_key1 = format["CHILD:230:%1::::%2:", _type,_random ];
	_data1 = "HiveEXT" callExtension _key1;

	_result1 = call compile format ["%1", _data1];
	_status1 = _result1 select 0;
	_lootCount = 0;

	if (_status1 == "LootStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
			_lootArray1 set [count _lootArray1, _result1];
			_lootCount = _lootCount + 1;
		};
		//diag_log ("SSL: Found " + str(_lootCount) + " Loot!");
	};
	{
		//[_x select 0, _x select 1, _iPos, _lootMaxRadius] call spawn_loot;
		_iClass = _x select 1;
		_iItem = _x select 0;
		switch (_iClass) do {
			default {
				//Item is food, add random quantity of cans along with an item (if exists)
				//diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
				
				_nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
				if (count _nearBy > 0) then {
					_item = _iPos nearestObject "WeaponHolder";
					//diag_log format ["SSL: Exists WeaponHolder: %1",_item];
				} else {
				
					_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
					//diag_log format ["SSL: Created WeaponHolder: %1",_item];
				};
				if (_iItem != "") then {
						_item addWeaponCargoGlobal [_iItem,1];
						//diag_log format ["SSL: Added Default Item: %1 :", _iItem];
						
				};
			};
			case "weapon": {
				//Item is a weapon, add it and a random quantity of magazines
				//diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
				
				_nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
				if (count _nearBy > 0) then {
					_item = _iPos nearestObject "WeaponHolder";
					//diag_log format ["SSL: Exists WeaponHolder: %1",_item];
				} else {
				
					_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
					//diag_log format ["SSL: Created WeaponHolder: %1",_item];
				};
				_item addWeaponCargoGlobal [_iItem,1];
				//diag_log format ["SSL: Added Weapon Item: %1 :", _iItem];
				_mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
				if ((count _mags) > 0) then {
				//	if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
					if (!(_iItem in MeleeWeapons)) then {
						_magQty = round(random 10);
						if (_magQty > 3) then {
							_item addMagazineCargoGlobal [(_mags select 0), (round(random 1) + 1)];
							//diag_log format ["SSL: Added Magazine Item: %1 :", _mags select 0];
						};
					};
				};
			};
			case "magazine": {
				//diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
				//Item is one magazine
				
				_nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
				if (count _nearBy > 0) then {
					_item = _iPos nearestObject "WeaponHolder";
					//diag_log format ["SSL: Exists WeaponHolder: %1",_item];
				} else {
					_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
					//diag_log format ["SSL: Created WeaponHolder: %1",_item];
				};
				_item addMagazineCargoGlobal [_iItem,1];
				//diag_log format ["SSL: Added Magazine Item: %1 :", _iItem];
			};
			case "object": {
				//diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
				//Item is one magazine
				_item = createVehicle [_iItem, _iPos, [], _radius, "CAN_COLLIDE"];
				//diag_log format ["SSL: Created WeaponHolder: %1",_item];
				//diag_log format ["SSL: Added Object Item: %1 :", _iItem];
			};
		};
	} forEach _lootArray1;
	/*
	_detectRange =	200;
	_nearUnits = _iPos nearEntities [["cAManBase"],_detectRange];
	if ((count _nearUnits) > 0) then {
		private ["_nearPlayerUnits"];
		_nearPlayerUnits = [];
		{
			if (isPlayer _x) then {
				_nearPlayerUnits set [count _nearPlayerUnits,_x];
			};
		} forEach _nearUnits;
		
		if ((count _nearPlayerUnits) > 0) then {
			{
				if (isPlayer _x) then {
					_item reveal [_x,200];
				};
				sleep 0.1;
			} forEach _nearPlayerUnits;
		};
	};
	*/
};


_item   // used in server_spawnCrashSite
