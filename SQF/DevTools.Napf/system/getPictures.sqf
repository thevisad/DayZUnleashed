
/*
_cfgmagazines = configFile >> 'CfgMagazines';
diag_log("Magazines Starts Here!");
for "_i" from 0 to (count _cfgmagazines)-1 do{
	_weapon = _cfgmagazines select _i;
	if (isClass _weapon) then{
		if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then{
			
			_cfgmagazinesPicture = getText( _weapon >> "picture");
			diag_log (format["%1@%2", _weapon,_cfgmagazinesPicture]);
		};
	};
};
	
_cfgweapons = configFile >> 'cfgWeapons';
diag_log("Weapons Starts Here!");
for "_i" from 0 to (count _cfgweapons)-1 do{
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then{
		if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then{
			
			_cfgweaponsPicture = getText ( _weapon >> "picture");
			diag_log (format["%1@%2", _weapon,_cfgweaponsPicture]);
		};
	};
};


	
_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Vehicles Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && !(((_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then{
			_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};

_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Vehicles 2 Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && !(((_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then{
			_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Objects Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && !((_veh_type isKindOf "Building") or (_veh_type isKindOf "CAManBase") or (_veh_type isKindOf "Thing") or (_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Helicopter Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Helicopter")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Plane Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Plane")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Ship Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Ship")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("StaticWeapon Starts Here!"); 
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "StaticWeapon")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Car Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Car")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};




_cfgvehicles = configFile >> "cfgVehicles";
diag_log("CAManBase Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "CAManBase")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};

_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Wall Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Wall")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};








_cfgvehicles = configFile >> "cfgVehicles";
diag_log("FuelStation Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "FuelStation")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Camp Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Camp")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Shed Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Shed")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Strategic Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Strategic") && !((_veh_type isKindOf "Wall") or (_veh_type isKindOf "FuelStation") or (_veh_type isKindOf "Camp") or (_veh_type isKindOf "Shed") or (_veh_type isKindOf "ReammoBox"))) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};

*/

_cfgvehicles = configFile >> "cfgVehicles";
diag_log("ReammoBox Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "ReammoBox")) then{
			_cfgweaponsPicture = getText ( _vehicle >> "picture");
			_cfgweaponsDisplayName = getText ( _vehicle >> "displayName");
			_cfgweaponsModel = getText ( _vehicle >> "model");
			_cfgweaponsIcon = getText ( _vehicle >> "icon");
			_cfgweaponsTransportMaxMagazines = getNumber  ( _vehicle >> "transportMaxMagazines");
			_cfgweaponsTransportMaxWeapons = getNumber  ( _vehicle >> "transportMaxWeapons");
			diag_log (format["%1@%2@%3@%4@%5@%6@%7", _vehicle,_cfgweaponsPicture,_cfgweaponsDisplayName,_cfgweaponsModel,_cfgweaponsIcon,_cfgweaponsTransportMaxMagazines,_cfgweaponsTransportMaxWeapons]);
		};
	};
};

/*
_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Building Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Building") && !(_veh_type isKindOf "Strategic")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};




_cfgvehicles = configFile >> "cfgVehicles";
diag_log("DZE_Housebase Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "DZE_Housebase")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("ModularItems Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if (((getNumber (_vehicle >> "scope") == 0) or (getNumber (_vehicle >> "scope") == 2)) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "ModularItems")) then{
						_cfgweaponsPicture = getText ( _vehicle >> "picture");
			diag_log (format["%1@%2", _vehicle,_cfgweaponsPicture]);
		};
	};
};
/*
