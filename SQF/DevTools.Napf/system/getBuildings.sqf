player removeAction getBuildingsAction;
_cfgmagazines = configFile >> 'CfgMagazines';
diag_log("Magazines Starts Here!");
for "_i" from 0 to (count _cfgmagazines)-1 do{
	_weapon = _cfgmagazines select _i;
	if (isClass _weapon) then{
		if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then{
			diag_log _weapon;
		};
	};
};
	
_cfgweapons = configFile >> 'cfgWeapons';
diag_log("Weapons Starts Here!");
for "_i" from 0 to (count _cfgweapons)-1 do{
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then{
		if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then{
			diag_log _weapon;
		};
	};
};

/*
	
_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Weapons Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && !(((_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Objects Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && !((_veh_type isKindOf "Building") or (_veh_type isKindOf "CAManBase") or (_veh_type isKindOf "Thing") or (_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) then{
			diag_log _vehicle;
		};
	};
};
*/




_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Helicopter Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Helicopter")) then{
			diag_log _vehicle;
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Plane Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Plane")) then{
			diag_log _vehicle;
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Ship Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Ship")) then{
			diag_log _vehicle;
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("StaticWeapon Starts Here!"); 
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "StaticWeapon")) then{
			diag_log _vehicle;
		};
	};
};



_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Car Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Car")) then{
			diag_log _vehicle;
		};
	};
};




_cfgvehicles = configFile >> "cfgVehicles";
diag_log("CAManBase Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "CAManBase")) then{
			diag_log _vehicle;
		};
	};
};

_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Wall Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Wall")) then{
			diag_log _vehicle;
		};
	};
};








_cfgvehicles = configFile >> "cfgVehicles";
diag_log("FuelStation Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "FuelStation")) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Camp Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Camp")) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Shed Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Shed")) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Strategic Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Strategic") && !((_veh_type isKindOf "Wall") or (_veh_type isKindOf "FuelStation") or (_veh_type isKindOf "Camp") or (_veh_type isKindOf "Shed") or (_veh_type isKindOf "ReammoBox"))) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("ReammoBox Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "ReammoBox")) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("Building Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Building") && !(_veh_type isKindOf "Strategic")) then{
			diag_log _vehicle;
		};
	};
};




_cfgvehicles = configFile >> "cfgVehicles";
diag_log("DZE_Housebase Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Building") && !(_veh_type isKindOf "DZE_Housebase")) then{
			diag_log _vehicle;
		};
	};
};


_cfgvehicles = configFile >> "cfgVehicles";
diag_log("ModularItems Starts Here!");
for "_i" from 0 to (count _cfgvehicles)-1 do{
	_vehicle = _cfgvehicles select _i;
	if (isClass _vehicle) then{
		_veh_type = configName _vehicle;
		if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Building") && !(_veh_type isKindOf "ModularItems")) then{
			diag_log _vehicle;
		};
	};
};
getBuildingsAction = player addaction ["Dump Classes", "system\getBuildings.sqf"];