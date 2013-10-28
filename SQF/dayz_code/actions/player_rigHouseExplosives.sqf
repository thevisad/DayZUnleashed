// Created by [GEEK SQUAD]Churchie
// Contributors to getting it working are:| iCentari | Thank you!
private["_obj","_bag","_pos"]; 
	_arr = _this select 3; 
	_vehicle = _arr select 0; 
	_argument = _arr select 1; 
	_hasToolbox = "ItemToolbox" in items player; 
	
if( _argument == 0 ) then { 
player removeAction churchie_rig_veh; 
churchie_rig_veh = -1; 
player removeMagazine "PipeBomb"; 
	_dir = getDir player; 
	_playerPos = getPos player; 
	_position = [(_playerPos select 0) + (0.90 * sin(_dir)), (_playerPos select 1) + (0.90 * cos(_dir)), _playerPos select 2]; 
	_pipe = "PipeBomb" createVehicle _position; 
	_position = [(_playerPos select 0) + (0.70 * sin(_dir)), (_playerPos select 1) + (0.70 * cos(_dir)), _playerPos select 2]; 
	_bomb = "BAF_ied_v1" createVehicle _position; 
	_pipe setDir (_dir + 250); 
	_bomb setDir (_dir + 200); 
	player playActionNow "Medic"; 
	[player,"repair",0,false] call dayz_zombieSpeak; 
    [player,"Generic_Combat"] call DZU_fnc_giveEXP;
	sleep 6; 
	_nearBomb = (_playerPos) nearObjects["BAF_ied_v1", 10]; 
	_bomb2 = _nearBomb select 0; 
	churchieseventrig = _vehicle addEventHandler ["Engine", {null = [_this select 0, 0, 0, [_vehicle, 2, _bomb]] execVM "\z\addons\dayz_code\actions\player_rigVehicleExplosives.sqf"} ]; 
	cutText ["You have rigged the vehicles engine to blow on ignition.", "PLAIN DOWN"]; 
}; 

if( _argument == 1 ) then { 
	player removeAction churchie_defuse; 
	churchie_defuse = -1; 
	churchie_defusing_started = true; 
	player playActionNow "Medic"; 
	[player,"repair",0,false] call dayz_zombieSpeak; 
	sleep 6; 
	churchie_defusing_started = false; 
	_random = random 100; if( _random < 1 ) then { cutText ["Defuse failed!!", "PLAIN DOWN"]; 
	_nearPipe = (getPos _vehicle) nearObjects["PipeBomb", 1]; 
if( count _nearPipe > 0 ) then { _pipe = _nearPipe select 0; deleteVehicle _pipe; }; null = "HelicopterExploSmall" createVehicle (position _vehicle); deleteVehicle _vehicle; 
	} else { 
	player addMagazine "PipeBomb"; 
	_nearPipe = (getPos _vehicle) nearObjects["PipeBomb", 1]; 
if( count _nearPipe > 0 ) then { _pipe = _nearPipe select 0; deleteVehicle _pipe; }; deleteVehicle _vehicle; cutText ["You defused the bomb!", "PLAIN DOWN"]; 
	}; 
}; 
if( _argument == 2 ) then { _vehicle = _this select 0; sleep 0.8; _nearBomb = (getPos _vehicle) nearObjects["BAF_ied_v1", 10]; 
if( count _nearBomb > 0 ) then { _bomb = _nearBomb select 0; _nearPipe = (getPos _bomb) nearObjects["PipeBomb", 1]; 
if( count _nearPipe > 0 ) then { _pipe = _nearPipe select 0; deleteVehicle _pipe; };
	_vehCrew = crew _vehicle; { _x action ["eject", _vehicle]; } forEach _vehCrew; sleep 0.05; 
	null = "HelicopterExploSmall" createVehicle (position _bomb); 
	deleteVehicle _bomb; 
	}; 
};
