if (isServer) exitWith {};
disableSerialization;
_display = findDisplay 20011;
_VehicleList = _display displayCtrl 20014;
_queuelist = _display displayCtrl 20015;
_VehicleValue = _display displayCtrl 20016;
_vehicleCount = count unleashed_GarageVehicleNameArray;
_VehicleValue ctrlSetText format["Current Vehicles: %1",_vehicleCount ];

{
	_VehicleList lbAdd _x;
	if (unleashed_bug == 1) then {
		diag_log(format["GARAGEHANDLER: Build list: ListName: %1",_x]);
	};
	
} forEach unleashed_GarageVehicleNameArray;