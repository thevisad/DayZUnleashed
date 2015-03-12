_body = _this select 0;
_position = _this select 1;

_weapons = _body getVariable ["_weapons",false];
_magazines = _body getVariable ["_magazines",false];
_backpack = _body getVariable ["_backpack",false];
_backpackWeapons = _body getVariable ["_backpackWeapons",false];
_backpackMagazines = _body getVariable ["_backpackMagazines",false];
_backpackType = _body getVariable ["_backpackType",false];


_itemsCount = (count _weapons) + (count _magazines) + (count (_backpackWeapons select 0)) + (count (_backpackMagazines select 0));
if (_itemsCount > 0) then
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

if (_backpackType != "")) then
{
	//_backpackHolder = "WeaponHolder" createVehicle _position;
	_backpackHolder = createVehicle [_backpackType, _position, [], 0, "CAN_COLLIDE"];
	_backpackHolder setVariable ["RepLoot", (time+3600), true];
	_backpackHolder setPos _position;
	//_holder addBackpackCargoGlobal [_backpackType, 1];
	//_backpackHolder addBackpackCargoGlobal [_backpackType, 1];
};