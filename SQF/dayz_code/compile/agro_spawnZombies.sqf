private["_position","_doLoiter","_unitTypes","_isNoone","_loot","_array","_agent","_type","_radius","_method","_nearByPlayer","_attempt","_myDest","_newDest","_lootType"];
_player = _this select 0;
_random = _this select 1;
_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");

_loot = 	"";
_array = 	[];
_agent = 	objNull;

if (dayz_agroSpawnZombies > dayz_localagroSpawned) exitwith {}; 

_spawnChance = (ceil(random 10) + 1);
//diag_log("ASZ: Chance Set to: " + str(_random) + " Chance to spawn:" + str(_spawnChance));
if (_random < _spawnChance) exitwith {}; 

_type = _unitTypes call BIS_fnc_selectRandom;

//Create the Group and populate it
//diag_log ("ZASZ: Spawning: " + _type);
//diag_log ("ZASZ: Count: " + str(dayz_agroSpawnZombies));
_radius = 40;
_method = "NONE";

_position = [_player,30,100,0,0,0,0] call BIS_fnc_findSafePos;

_agent = createAgent [_type, _position, [], _radius, _method];

dayz_agroSpawnZombies = dayz_agroSpawnZombies + 1;

if (random 1 > 0.7) then {
	_agent setUnitPos "Middle";
};

if (isNull _agent) exitWith {
	dayz_agroSpawnZombies = dayz_agroSpawnZombies - 1;
};

_isAlive = alive _agent;
/*
_myDest = getPosATL _agent;
_newDest = getPosATL _agent;
_agent setVariable ["myDest",_myDest];
_agent setVariable ["newDest",_player];
*/
//Start behavior
_id = [_position,_agent] execFSM "\z\AddOns\dayz_code\system\zombie_agent.fsm";
//diag_log ("ZASZ: Agent: " + str(_agent) + " Spawned At: " + str(_position));