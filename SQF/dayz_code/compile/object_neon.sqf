// Created by Churchie  www.DayZUnleashed.com
// Contributors to getting it working are:| TheVisad | Thank you!
_args = _this select 3; 
_vehicle = _args select 0; 
_hasNeon = _vehicle getVariable["Neon", false]; 

if( !_hasNeon ) then { _vehicle setVariable["Neon", true, true]; 
	_colour = _vehicle getVariable["NeonColour", 0]; 
	_colour = _colour + 1; 
if( _colour > 4 ) then { _colour = 1; }; 
	_vehicle setVariable["NeonColour", _colour, true]; 
neon_toggle = 1; SpawnLight = [_vehicle, _colour]; publicVariable "SpawnLight"; [_vehicle, _colour] spawn spawnLight; while{ (alive _vehicle) and (neon_toggle != 0) and (_vehicle getVariable["Neon", false]) } do { sleep 0.2; }; 
if( neon_toggle != 0 ) then { neon_toggle = 0; deleteVehicle neon_light; }; 
	} else { 
	_vehicle setVariable["Neon", false, true]; 
if( neon_toggle != 0 ) then { neon_toggle = 0; deleteVehicle neon_light; }; };