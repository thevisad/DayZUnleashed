player removeAction remove_vehicle; 
remove_vehicle = -1; 
player removeAction insert_vehicle; 
insert_vehicle = -1; 
player removeAction unleashed_hack_garage; 
unleashed_hack_garage = -1;
//[_nearVehicle,_nearVehicleID,_ObjectUID,getPosATL player]
_Vehicle = _this select 3;
_nearVehicle = _Vehicle select 0;
_nearVehicleClass = typeOf _nearVehicle;
_nearVehicleID = _Vehicle select 1;
_garageUID = _Vehicle select 2;
_garageClass = _Vehicle select 4;
_vehicleName = getText (configFile >> "CfgVehicles" >> _nearVehicleClass >> "displayName");
_garageLimit = getNumber (configFile >> "CfgVehicles" >> _garageClass >> "vehicleLimit");

_arrayCount = count unleashed_GarageVehicleClassArray;
if (unleashed_GarageDebug == 1) then {
	diag_log (format["GARAGEHANDLER: THIS:%1",_this]);
	diag_log (format["GARAGEHANDLER: ADD Array Count:%1",_arrayCount]);
	diag_log (format["GARAGEHANDLER: ADD Garage Limit:%1",_garageLimit]);
};
if (_arrayCount >= _garageLimit) then { 
	hintsilent format["Your garage is currently at its maximum capcity."];
} else {

	if (unleashed_GarageDebug == 1) then {
		diag_log (format["GARAGEHANDLER: THIS:%1",_this]);
		diag_log (format["GARAGEHANDLER: ADD VEHICLE:%1",_nearVehicle]);
		diag_log (format["GARAGEHANDLER: ADD VEHICLECLASS:%1",_nearVehicleClass]);
		diag_log (format["GARAGEHANDLER: ADD VEHICLEID:%1",_nearVehicleID]);
		diag_log (format["GARAGEHANDLER: ADD GARAGEID:%1",_garageUID]);
		diag_log (format["GARAGEHANDLER: ADD GARAGECLASS:%1",_garageClass]);
		diag_log (format["GARAGEHANDLER: ADD VEHICLENAME:%1",_vehicleName]);
	};

	unleashed_GarageVehicleClassArray set [count unleashed_GarageVehicleClassArray, _nearVehicleClass];
	unleashed_GarageVehicleIDArray set [count unleashed_GarageVehicleIDArray, _nearVehicleID];
	unleashed_GarageVehicleNameArray set [count unleashed_GarageVehicleNameArray, _vehicleName];

	player playActionNow "Medic";
	sleep 5;

	if (unleashed_GarageDebug == 1) then {
		diag_log(format["GARAGEHANDLER: ADD Vehicle Name: %1",_vehicleName]);
	};
	PVDZ_gar_Handler = ["add",_garageUID,_nearVehicle,_nearVehicleID];
	publicVariableServer "PVDZ_gar_Handler";
};