player removeAction remove_vehicle; 
remove_vehicle = -1; 
player removeAction insert_vehicle; 
insert_vehicle = -1; 
player removeAction unleashed_hack_garage; 
unleashed_hack_garage = -1;
_Vehicle = _this select 3;
_nearVehicle = _Vehicle select 0;
_nearVehicleClass = typeOf _nearVehicle;
_nearVehicleID = _Vehicle select 1;
_garageUID = _Vehicle select 2;
_vehicleName = getText (configFile >> "CfgVehicles" >> _nearVehicleClass >> "displayName");
//[B 1-1-C:1 (thevisad),B 1-1-C:1 (thevisad),7,[353d4100# 982304: ural_open.p3d REMOTE,"58956785685647","15"]]"

if (unleashed_bug == 1) then {
	diag_log (format["GARAGEHANDLER: THIS:%1",_this]);
	diag_log (format["GARAGEHANDLER: ADD VEHICLE:%1",_nearVehicle]);
	diag_log (format["GARAGEHANDLER: ADD VEHICLECLASS:%1",_nearVehicleClass]);
	diag_log (format["GARAGEHANDLER: ADD VEHICLEID:%1",_nearVehicleID]);
	diag_log (format["GARAGEHANDLER: ADD GARAGEID:%1",_garageUID]);
	diag_log (format["GARAGEHANDLER: ADD VEHICLENAME:%1",_vehicleName]);
};

unleashed_GarageVehicleClassArray set [count unleashed_GarageVehicleClassArray, _nearVehicleClass];
unleashed_GarageVehicleIDArray set [count unleashed_GarageVehicleIDArray, _nearVehicleID];
unleashed_GarageVehicleNameArray set [count unleashed_GarageVehicleNameArray, _vehicleName];

player playActionNow "Medic";
sleep 5;

if (unleashed_bug == 1) then {
	diag_log(format["GARAGEHANDLER: ADD Vehicle Name: %1",_vehicleName]);
};
PVDZ_gar_Handler = ["add",_garageUID,_nearVehicle,_nearVehicleID];
publicVariableServer "PVDZ_gar_Handler";