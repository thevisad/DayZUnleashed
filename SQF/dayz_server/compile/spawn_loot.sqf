/*
private ["_radius","_type","_iPos","_iPosZ","_random","_key1","_data1","_result1","_status","_lootCount","_lootArray","_val","_data","_status","_adminArray","_x0","_x1"];

if(isServer) then {

    _radius = 0;
    _type = _this select 0;
    
    _position = _this select 1;
    
    _lootArray = [];
    _positionLoot = [];
    
    _key1 = format["CHILD:230:%1::::%2:", _type,99];
        _data1 = "HiveEXT" callExtension _key1;

        _result1 = call compile format ["%1", _data1];
        _status = _result1 select 0;
        _lootCount = 0;
        //diag_log format ["SSL: Key: %1 - Result: %2 - Status: %3 - Loop Count: %4", _key1,_result1, _status, currentLootAmount];
        if (_status == "LootStart") then {
                _val = _result1 select 1;
                //diag_log ("SSL: _val " + str(_val));
                for "_i" from 0 to _val do {
                    _data = "HiveEXT" callExtension _key1;
                    _result1 = call compile format ["%1",_data];
                    _status = _result1 select 0;
                _lootArray set [count _lootArray, _result1];
                _lootCount = _lootCount + 1;
            };
            //diag_log ("SSL: Found " + str(_lootCount) + " Loot!");
        };
    
    //diag_log ("SSL: _type " + str(_type));
    //diag_log ("SSL: _iPos " + str(_iPos));
    //diag_log ("SSL: _iPosZ " + str(_iPosZ));

    currentLootAmount = currentLootAmount + 1;
    _min_amount=2;
    _max_amount=8;
    {
        _tempSpawnAmount = _max_amount - _min_amount;
        _iPos = _x;
        _iPosZ = _iPos select 2;
        if((isNil "_iPosZ") OR ( _iPosZ < 0)) then { _iPos = [_iPos select 0,_iPos select 1,0]; };

        _random=(floor(random _tempSpawnAmount) + _min_amount);
        _positionLoot = [];
        for "_i" from 0 to _random do {
            _temp  = _lootArray call BIS_fnc_selectRandom;
            diag_log format ["SSL: Temp item: %1 - Loop Count: %2",_temp, currentLootAmount];
            _positionLoot set [count _positionLoot, _temp];
        };
        diag_log format ["SSL: _positionLoot: %1 - Loop Count: %2",_positionLoot, currentLootAmount];
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
                        if (_iItem != "") then {
                            _item addWeaponCargoGlobal [_iItem,1];
                        };
                    } else {
                        _item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
                        if (_iItem != "") then {
                            _item addWeaponCargoGlobal [_iItem,1];
                        };
                    };
                    
                };
                case "weapon": {
                    //Item is a weapon, add it and a random quantity of magazines
                    //diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
                    
                    _nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
                    if (count _nearBy > 0) then {
                        _item = _iPos nearestObject "WeaponHolder";
                        _item addWeaponCargoGlobal [_iItem,1];
                        diag_log format ["SSL: Exists WeaponHolder: %1",_item];
                    } else {
                    
                        _item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
                        _item addWeaponCargoGlobal [_iItem,1];
                        diag_log format ["SSL: Created Weapon WeaponHolder: %1",_item];
                    };
                    
                    //diag_log format ["SSL: Added Weapon Item: %1 :", _iItem];
                    _mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
                    if ((count _mags) > 0) then {
                    //  if (_mags select 0 == "Quiver") then { _mags set [0, "WoodenArrow"] }; // Prevent spawning a Quiver
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
                        _item addMagazineCargoGlobal [_iItem,1];
                        diag_log format ["SSL: Exists WeaponHolder: %1",_item];
                    } else {
                    
                        _item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
                        _item addMagazineCargoGlobal [_iItem,1];
                        diag_log format ["SSL: Created Magazine WeaponHolder: %1",_item];
                    };
                    
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
            _item setVariable ["permaLoot",true];
            if ((count _iPos) > 2) then {
                _item setPosATL _iPos;
            };
            diag_log format ["SSL: Class: %1 - Item: %2 - item: %3 - iPos: %4 - Loop Count: %5",_iClass, _iItem,_item, _iPos, currentLootAmount];
        } forEach _positionLoot;
    
    } forEach _position;
};


_item   // used in server_spawnCrashSite
*/
/*
private ["_radius","_type","_iPos","_iPosZ","_random","_key1","_data1","_result1","_status","_lootCount","_lootArray","_val","_data","_status","_adminArray","_x0","_x1"];

if(isServer) then {

	_radius = 0;
	_type = _this select 0;
	
	_position = _this select 1;
	
	_lootArray = [];
	_positionLoot = [];
	
	_key1 = format["CHILD:230:%1::::%2:", _type,99];
		_data1 = "HiveEXT" callExtension _key1;

		_result1 = call compile format ["%1", _data1];
		_status = _result1 select 0;
		_lootCount = 0;
		//diag_log format ["SSL: Key: %1 - Result: %2 - Status: %3 - Loop Count: %4", _key1,_result1, _status, currentLootAmount];
		if (_status == "LootStart") then {
				_val = _result1 select 1;
				//diag_log ("SSL: _val " + str(_val));
				for "_i" from 0 to _val do {
					_data = "HiveEXT" callExtension _key1;
					_result1 = call compile format ["%1",_data];
					_status = _result1 select 0;
				_lootArray set [count _lootArray, _result1];
				_lootCount = _lootCount + 1;
			};
			//diag_log ("SSL: Found " + str(_lootCount) + " Loot!");
		};
	
	//diag_log ("SSL: _type " + str(_type));
	//diag_log ("SSL: _iPos " + str(_iPos));
	//diag_log ("SSL: _iPosZ " + str(_iPosZ));

	currentLootAmount = currentLootAmount + 1;
	_min_amount=2;
	_max_amount=8;
	{
		_tempSpawnAmount = _max_amount - _min_amount;
		_iPos = _x;
		_iPosZ = _iPos select 2;
		if((isNil "_iPosZ") OR ( _iPosZ < 0)) then { _iPos = [_iPos select 0,_iPos select 1,0]; };

		_random=(floor(random _tempSpawnAmount) + _min_amount);
		_positionLoot = [];
		for "_i" from 0 to _random do {
			_temp  = _lootArray call BIS_fnc_selectRandom;
			diag_log format ["SSL: Temp item: %1 - Loop Count: %2",_temp, currentLootAmount];
			_positionLoot set [count _positionLoot, _temp];
		};
		diag_log format ["SSL: _positionLoot: %1 - Loop Count: %2",_positionLoot, currentLootAmount];
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
						if (_iItem != "") then {
							_item addWeaponCargoGlobal [_iItem,1];
						};
					} else {
						_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
						if (_iItem != "") then {
							_item addWeaponCargoGlobal [_iItem,1];
						};
					};
					
				};
				case "weapon": {
					//Item is a weapon, add it and a random quantity of magazines
					//diag_log format ["SSL: Found Default Item: %2 : class: %1",_iClass, _iItem];
					
					_nearBy = nearestObjects [_iPos, ["WeaponHolder"], 2];
					if (count _nearBy > 0) then {
						_item = _iPos nearestObject "WeaponHolder";
						_item addWeaponCargoGlobal [_iItem,1];
						diag_log format ["SSL: Exists WeaponHolder: %1",_item];
					} else {
					
						_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
						_item addWeaponCargoGlobal [_iItem,1];
						diag_log format ["SSL: Created Weapon WeaponHolder: %1",_item];
					};
					
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
						_item addMagazineCargoGlobal [_iItem,1];
						diag_log format ["SSL: Exists WeaponHolder: %1",_item];
					} else {
					
						_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
						_item addMagazineCargoGlobal [_iItem,1];
						diag_log format ["SSL: Created Magazine WeaponHolder: %1",_item];
					};
					
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
			_item setVariable ["permaLoot",true];
			if ((count _iPos) > 2) then {
				_item setPosATL _iPos;
			};
			diag_log format ["SSL: Class: %1 - Item: %2 - item: %3 - iPos: %4 - Loop Count: %5",_iClass, _iItem,_item, _iPos, currentLootAmount];
		} forEach _positionLoot;
	
	} forEach _position;
};


_item   // used in server_spawnCrashSite
*/