private["_position","_veh","_num","_config","_itemType","_itemChance","_weights","_index","_iArray"];

waitUntil{!isNil "BIS_fnc_selectRandom"};
if (isDedicated) then {
	_position = [getMarkerPos "center",0,9000,10,0,2000,0] call BIS_fnc_findSafePos;

	_randomvehicle = ["Misc_cargo_cont_net1","Misc_cargo_cont_net2","Misc_cargo_cont_net3"] call BIS_fnc_selectRandom;
	//_vehicleloottype = ["Residential","Industrial","Military","Farm","Supermarket","Hospital"] call BIS_fnc_selectRandom;
	
	_vehicleloottypeTemp = [] + getArray (configFile >> "cfgWeapons");
	_vehicleloottype =  _vehicleloottypeTemp call BIS_fnc_selectRandom;
	
	_veh = createVehicle [_randomvehicle,_position, [], 0, "CAN_COLLIDE"];
	dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_veh];
	_veh setVariable ["ObjectID",1,true];

	if (_randomvehicle == "Misc_cargo_cont_net1") then { _num = round(random 3) + 3; };
	if (_randomvehicle == "Misc_cargo_cont_net2") then { _num = round(random 6) + 4; };
	if (_randomvehicle == "Misc_cargo_cont_net3") then { _num = round(random 12) + 5; };

	//diag_log("DEBUG: Spawning a " + str (_randomvehicle) + " at " + str(_position) + " With total loot drops = " + str(_num));

	for "_x" from 1 to _num do {
		["building", "weapon", _position, 10] call spawn_loot;
		_nearby = _position nearObjects ["WeaponHolder",20];
		{
			_x setVariable ["permaLoot",true];
		} forEach _nearBy;
	};
	
	
};