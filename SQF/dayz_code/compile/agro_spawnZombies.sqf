private["_position","_doLoiter","_unitTypes","_isNoone","_loot","_array","_agent","_type","_radius","_method","_nearByPlayer","_attempt","_myDest","_newDest","_lootType"];
_player = _this select 0;
_random = _this select 1;
_unitTypes = 	[];
{	
	_type = typeOf _x;
	_unitTypes = _unitTypes + (getArray (configFile >> "CfgBuildingLoot" >> _type >> "zombieClass"));
} forEach(nearestObjects [_player, ["Building"], 100]);

_loot = 	"";
_array = 	[];
_agent = 	objNull;

_sp4wnAroundObjects = ["building"];


if (dayz_agroSpawnZombies > dayz_localagroSpawned) exitwith {
	if (unleashed_ZombieDebug == 1) then {
		diag_log("ASZ: Too many zombies not spawning");
	};
}; 

_spawnChance = (floor(random 10) + 1);
if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Requested chance: %1 - Random chance: %2", _random, _spawnChance]);
};
if (_random < _spawnChance) exitwith { diag_log(format["ASZ: Random Failed to spawn"]) }; 

_type = _unitTypes call BIS_fnc_selectRandom;



_radius = 40;
_method = "NONE";
_playerposition = getPosATL player;
_position = [_player,30,200,0,0,0,0] call BIS_fnc_findSafePos;
if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Player Position: %1",_playerposition]);
};
_nearby = (nearestObjects [_playerposition, _sp4wnAroundObjects,dayz_spawnArea]) - (nearestObjects [_playerposition, _sp4wnAroundObjects, dayz_safeDistPlr]);
if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Nearby: %1",_nearby]);
};
_nearbyCount = count _nearby;
if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Nearby Count: %1",_nearbyCount]);
};
if ((_nearbyCount < 1) or (vehicle player != player)) exitwith {"ASZ: Nothing close to spawn zeds" };

if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Spawning: %1",_type]);
	diag_log(format["ASZ: Count: %1",dayz_agroSpawnZombies]);
	diag_log(format["ASZ: Radius: %1",_radius]);
	diag_log(format["ASZ: Position: %1",_position]);
};

_agent = createAgent [_type, _position, [], _radius, _method];

if (unleashed_ZombieDebug == 1) then {
	diag_log(format["ASZ: Agent: %1",_agent]);
};

if (!isNull _agent) then {
	dayz_agroSpawnZombies = dayz_agroSpawnZombies + 1;

	if (random 1 > 0.7) then {
		_agent setUnitPos "Middle";
	};

	if (isNull _agent) exitWith {
		dayz_agroSpawnZombies = dayz_agroSpawnZombies - 1;
		if (unleashed_ZombieDebug == 1) then {
			diag_log(format["ASZ: NULL Agent, not spawned"]);
		};
	};

	_agent setVariable ["myDest",_playerposition];
	_agent setVariable ["newDest",_playerposition];

	//Start behavior
	_id = [_position,_agent,"agro"] execFSM "\z\AddOns\dayz_code\system\zombie_agent.fsm";
	if (unleashed_ZombieDebug == 1) then {
		diag_log ("ASZ: " + str(_agent) + " Spawned At: " + str(_position));
	};
};