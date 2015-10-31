private ["_modeldex","_nameKillerP","_typedeP","_nameBody","_cross","_backpackHolder","_method","_body"];
diag_log("GRAVESTONES REPLACEMENT START");
_modeldex = "";
_nameKillerP = "unknown";
_body = _this select 3;
_typedeP = 0;
_SomesOnesClothing = getText ( configFile >> "CfgVehicles" >> (typeOf _body) >> "clothingDZ");
_modeldex = typeOf _body;
diag_log("_modeldex = "+str(_modeldex));
if( _SomesOnesClothing != "") then {
	private ["_weapons", "_magazines", "_backpack", "_backpackWeapons", "_backpackMagazines", "_backpackType", "_position", "_holder", "_i", "_itemsCount", "_isZombie"];
	
	
	_weapons = weapons _body;
	_magazines = magazines _body;
	_backpack = unitBackpack _body;
	
	_nameBody = _body getVariable["bodyName","unknown"];
	_method = _body getVariable["deathType","unknown"];
	_position = (_body modelToWorld [0.0, 0.0, 0.0]); 

	_nameKillerP = _body getVariable ["nameKillerP","unknown"];
	_typedeP = _body getVariable ["typedeP","unknown"];

	if (!isNull _backpack) then
	{
		_backpackWeapons = getWeaponCargo _backpack;
		_backpackMagazines = getMagazineCargo _backpack;
		_backpackType = typeOf _backpack;
	}
	else
	{
		_backpackWeapons = [[], []];
		_backpackMagazines = [[], []];
		_backpackType = "";
	};

	_isZombie = _body isKindOf "zZombie_Base";

	

	_itemsCount = (count _weapons) + (count _magazines) + (count (_backpackWeapons select 0)) + (count (_backpackMagazines select 0));

	if ((_itemsCount > 0) and (!_isZombie)) then
	{
		_holder =  createVehicle ["WeaponHolder", _position, [], 0, "CAN_COLLIDE"];
		_holder setPos _position;
		// createVehicle _position;
		_xt = _position select 0;
		_yt = _position select 1;
		_dx = _yt + 2;
		_ammoboxPos = [_xt,_dx, 0];
		_holder setVariable ["RepLoot", (time+3600), true];
		_cross =  createVehicle ["GraveCross1", _position, [], 0, "CAN_COLLIDE"];
		_grave =  createVehicle ["Grave", _position, [], 0, "CAN_COLLIDE"];
		_grave modelToWorld _position;
		_cross modelToWorld _position;

		{ _holder addWeaponCargoGlobal [_x, 1]; } forEach _weapons;
		{ _holder addMagazineCargoGlobal [_x, 1]; } forEach _magazines;

		for "_i" from 0 to ((count (_backpackWeapons select 0)) - 1) do
		{
			_holder addWeaponCargoGlobal
				[((_backpackWeapons select 0) select _i), ((_backpackWeapons select 1) select _i)];
		};

		for "_i" from 0 to ((count (_backpackMagazines select 0)) - 1) do
		{
			_holder addMagazineCargoGlobal
				[((_backpackMagazines select 0) select _i), ((_backpackMagazines select 1) select _i)];
		};
	};
	_body removeAllMPEventHandlers "mpkilled";
	_body removeAllMPEventHandlers "mphit";
	_body removeAllMPEventHandlers "mprespawn";
	_body removeAllEventHandlers "FiredNear";
	_body removeAllEventHandlers "HandleDamage";
	_body removeAllEventHandlers "Killed";
	_body removeAllEventHandlers "Fired";
	_body removeAllEventHandlers "GetOut";
	_body removeAllEventHandlers "GetIn";
	_body removeAllEventHandlers "Local";
	deleteVehicle _body;
	
	[_position] spawn PVDZ_del_Flies;
	
	if ((_backpackType != "") and (!_isZombie)) then
	{
		//_backpackHolder = "WeaponHolder" createVehicle _position;
		_backpackHolder = createVehicle [_backpackType, _position, [], 0, "CAN_COLLIDE"];
		_backpackHolder setVariable ["RepLoot", (time+3600), true];
		_backpackHolder setPos _position;
		//_holder addBackpackCargoGlobal [_backpackType, 1];
		//_backpackHolder addBackpackCargoGlobal [_backpackType, 1];
	};
	//_flys = count ( allMissionObjects "#dynamicsound");

   diag_log format ["Replaced Body (%4)-(%1 items, at %2), _backpackType=%3", _itemsCount, _position, _backpackType,_nameBody];
};

