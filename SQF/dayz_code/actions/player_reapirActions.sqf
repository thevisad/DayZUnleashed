private ["_vehicle", "_vehicle_refuel_id"];
//Repair station script by Gorsy 

//Big thanks to Seven, and Muddr for the original refueling script,
//and big thanks to Zombz.net, Player 2 and Ghost
_vehicle = objNull;
diag_log "Running ""Zombz.net - Repair Stations"".";
 
_distance = 50; // Distance from object to display Refuel Message
_amount= 0.02; // Refuel rate, Repair Rate
_amount2= 0.01; // Repair Rate
while {true} do
{
    if (!isNull player) then {
        private ["_currentVehicle", "_isNearFeed", "_countFuel"];
                _currentVehicle = vehicle player;
                _countFuel = (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _countFuel = _countFuel + (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _countFuel = _countFuel + (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _countFuel = _countFuel + (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _countFuel = _countFuel + (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _countFuel = _countFuel + (count ((position _currentVehicle) nearObjects ["land_nav_pier_c_big", _distance]));
                _isNearFeed = _countFuel > 0;
 
        if (_vehicle != _currentVehicle) then {
            if (!isNull _vehicle) then {
                _vehicle removeAction _vehicle_refuel_id;
                _vehicle = objNull;
            };
 
            if (_currentVehicle != player && _isNearFeed && !(_currentVehicle isKindof "Bicycle")) then {  //change "Bicycle" to "Land" to allow only air vehicles to aut-refuel
                _vehicle = _currentVehicle;
 
                _vehicle_refuel_id = _vehicle addAction ["Refuel and Repair", "Scripts\repair.sqf", [_amount,_amount2], -1, false, true, "", "vehicle _this == _target && local _target"];
            };
        };
   
        if (!_isNearFeed) then {
            _vehicle removeAction _vehicle_refuel_id;
            _vehicle = objNull;
        };
    };
    sleep 2;
}