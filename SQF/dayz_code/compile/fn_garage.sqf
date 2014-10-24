if(not local player) exitWith{};

disableSerialization;

_display = findDisplay 20011;
_listbox = _display displayCtrl 20014;
_sel = lbCurSel _listbox; 
if(_sel < 0) exitWith{};

_leveltype = unleashed_GarageVehicleNameArray select _sel;
_vehicleName = lbtext [20014,_sel];
CloseDialog 0;
diag_log(format["GARAGEHANDLER: FN: Vehicle Name: %1",_vehicleName]);

_vehicleNameArrayindex = unleashed_GarageVehicleNameArray find _leveltype;
if (unleashed_GarageDebug == 1) then {
	diag_log(format["GARAGEHANDLER: FN: Vehicle Name Array Index: %1",_vehicleNameArrayindex]);
	diag_log(format["GARAGEHANDLER: FN: Vehicle Class Array: %1",unleashed_GarageVehicleClassArray]);
	diag_log(format["GARAGEHANDLER: FN: Vehicle ID Array: %1",unleashed_GarageVehicleIDArray]);
	diag_log(format["GARAGEHANDLER: FN: Vehicle Name Array: %1",unleashed_GarageVehicleNameArray]);
};

_SelectedClassIndex = unleashed_GarageVehicleClassArray select _vehicleNameArrayindex;
_SelectedVIDIndex = unleashed_GarageVehicleIDArray select _vehicleNameArrayindex;
_SelectedNameIndex = unleashed_GarageVehicleNameArray select _vehicleNameArrayindex;
if (unleashed_GarageDebug == 1) then {
	diag_log(format["GARAGEHANDLER: FN: Selected Class Index: %1",_SelectedClassIndex]);
	diag_log(format["GARAGEHANDLER: FN: Selected VID Index: %1",_SelectedVIDIndex]);
	diag_log(format["GARAGEHANDLER: FN: Selected Name Index: %1",_SelectedNameIndex]);
};
unleashed_GarageVehicleClassArray set [_vehicleNameArrayindex,"deletethis"];
unleashed_GarageVehicleIDArray set [_vehicleNameArrayindex,"deletethis"];
unleashed_GarageVehicleNameArray set [_vehicleNameArrayindex,"deletethis"];

unleashed_GarageVehicleClassArray = unleashed_GarageVehicleClassArray - ["deletethis"];
unleashed_GarageVehicleIDArray = unleashed_GarageVehicleIDArray - ["deletethis"];
unleashed_GarageVehicleNameArray = unleashed_GarageVehicleNameArray - ["deletethis"];

unleashed_CurrentGarage setVariable ["VehicleClassArray", unleashed_GarageVehicleClassArray, true];
unleashed_CurrentGarage setVariable ["VehicleIDArray", unleashed_GarageVehicleIDArray , true];
unleashed_CurrentGarage setVariable ["VehicleNameArray", unleashed_GarageVehicleNameArray , true];

if (unleashed_GarageDebug == 1) then {
	diag_log(format["GARAGEHANDLER: FN: Vehicle Class Array: %1",unleashed_GarageVehicleClassArray]);
	diag_log(format["GARAGEHANDLER: FN: Vehicle ID Array: %1",unleashed_GarageVehicleIDArray]);
	diag_log(format["GARAGEHANDLER: FN: Vehicle Name Array: %1",unleashed_GarageVehicleNameArray]);
	diag_log(format["GARAGEHANDLER: FN: _SelectedClassIndex: %1, _SelectedVIDIndex: %2, _SelectedNameIndex: %3",_SelectedClassIndex, _SelectedVIDIndex, _SelectedNameIndex]);
};
hint parseText format["Processing your <t size='1.0' font='Zeppelin33' color='#ffd800'>%1</t>.",_vehicleName];
_playerposition = getPosATL player;
player playActionNow "Medic";
sleep 5;
PVDZ_gar_Handler = ["remove",_SelectedVIDIndex,_playerposition,unleashed_GarageUID];
publicVariableServer "PVDZ_gar_Handler";

player removeAction remove_vehicle; 
remove_vehicle = -1; 
player removeAction insert_vehicle; 
insert_vehicle = -1; 
player removeAction unleashed_hack_garage; 
unleashed_hack_garage = -1;