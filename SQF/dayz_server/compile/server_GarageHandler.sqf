private ["_type","_vehicle_remove","_ObjectUID","_key","_hiveResponse","_i","_objectArray","_objectCount","_garage_add","_garage_delete"];
_type = 	_this select 0;

diag_log(format["GARAGEHANDLER: Handler Type: %1",_type]);
_vehicle_remove = {
	_ObjectUID = _this select 1;
	_position = _this select 2; 
	_garageUID = _this select 3;
	if (unleashed_debug == 1) then {
		diag_log(format["GARAGEHANDLER: Object UID: %1",_ObjectUID]);
		diag_log(format["GARAGEHANDLER: Garage UID: %1",_garageUID]);
	};

	
	for "_i" from 1 to 5 do {
		diag_log "SGH: Streaming Vehicle";
		//|CHILD:609:1:92657:46232122900272180:|
		_key = format["CHILD:609:%1:%2:%3:", dayZ_instance,_garageUID,_ObjectUID];
		_hiveResponse = _key call server_hiveReadWrite;  
		if ((((isnil "_hiveResponse") || {(typeName _hiveResponse != "ARRAY")}) || {((typeName (_hiveResponse select 1)) != "SCALAR")}) || {(_hiveResponse select 1 > 2000)}) then {
			diag_log ("HIVE: connection problem... HiveExt response:"+str(_hiveResponse));
			_hiveResponse = ["",0];
		} 
		else {
			//diag_log ("SM: found "+str(_hiveResponse select 1)+" vehicles" );
			_i = 99; // break
		};
	};
	
	_objectArray = [];
	if ((_hiveResponse select 0) == "GarageVehicleStreamStart") then {
		_objectCount = _hiveResponse select 1;
		diag_log ("HIVE: Commence Object Streaming...");
		for "_i" from 1 to _objectCount do { 
			_hiveResponse = _key call server_hiveReadWrite;
			_objectArray set [_i - 1, _hiveResponse];
			//diag_log (format["HIVE dbg %1 %2", typeName _hiveResponse, _hiveResponse]);
		};
		diag_log ("HIVE: Garage pulled this from inventory " + str(_objectArray));
		[_objectArray, _position] spawn server_spawnGarageVehicle;
	};
	
	_key = format["CHILD:607:%1:%2:%3:",dayZ_instance,_garageUID,_ObjectUID];
	_key call server_hiveWrite;
};

_vehicle_add = {
	//["add",_garageUID,_nearVehicle,_ObjectUID];
	["add",_garageUID,_nearVehicle,_nearVehicleID];
	_garageUID = _this select 1;
	_nearVehicle = _this select 2;
	_ObjectUID = _this select 3;
		if (unleashed_debug == 1) then {
		diag_log(format["GARAGEHANDLER: Object UID: %1",_ObjectUID]);
		diag_log(format["GARAGEHANDLER: Near Vehicle: %1",_nearVehicle]);
		diag_log(format["GARAGEHANDLER: Garage UID: %1",_garageUID]);
	};

	
	diag_log (format["HIVE: GARAGE:%1 VEHICLE:%2",_garageUID,_ObjectUID]);
	_key = format["CHILD:608:%1:%2:%3:",dayZ_instance, _garageUID,_ObjectUID];
	_key call server_hiveWrite;
	{
		_x action ["Eject", _nearVehicle];
	} forEach crew _nearVehicle;
	diag_log (format["HIVE: Garage Inserted %1 into garage %2 ",_ObjectUID,_garageUID]);
	deleteVehicle _nearVehicle;
};


switch (_type) do {
	case "add": {
		call _vehicle_add;
	};
	case "remove": {
		call _vehicle_remove;
	};
};