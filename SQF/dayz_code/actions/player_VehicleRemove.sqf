_ObjectUID = _this select 0;
_GarageID = _this select 1;
_OwnerID = _this select 2;
_Inventory = _this select 3;

{
	_currentVehicle = _x select 1;
} count _Inventory;

[_ObjectUID, _GarageID, _OwnerID, _currentVehicle] call server_GarageRemove;