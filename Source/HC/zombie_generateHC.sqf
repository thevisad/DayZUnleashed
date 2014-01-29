private ["_position","_doLoiter","_unitTypes","_isNoone","_loot","_array","_agent","_type","_radius","_method","_nearByPlayer","_myDest","_newDest","_lootType","_rnd","_isAlive","_id"];
_position = 	_this select 0;
_doLoiter = 	_this select 1;
_unitTypes = 	_this select 2;


_isNoone = 	{isPlayer _x} count (_position nearEntities [["AllVehicles","CAManBase"],30]) == 0;
_loot = 	"";
_array = 	[];
_agent = 	objNull;

//Exit if a player is nearby
if (!_isNoone) exitWith {};

if (count _unitTypes == 0) then {
	_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");
};

_type = _unitTypes call BIS_fnc_selectRandom;

//Create the Group and populate it
//diag_log ("Spawned: " + _type);
_radius = 0;
_method = "CAN_COLLIDE";
if (_doLoiter) then {
	_radius = 40;
	_method = "NONE";
};
//diag_log ("Spawned: " + str([_type, _position, [], _radius, _method]));
_agent = createAgent [_type, _position, [], _radius, _method];
_agent removeAllEventHandlers "local"; // attach our own later
_agent addEventHandler ["local", { diag_log "Locality Event"; if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM "zombie_agentHC.fsm" };}];
PVDZE_zed_Spawn = [_agent];
publicVariableServer "PVDZE_zed_Spawn";

if (_doLoiter) then {
	_agent setDir round(random 180);
	_agent setPosATL _position;
	_agent setvelocity [0, 0, 1];
	//_agent setVariable ["doLoiter",true,true];
} else {
	_agent setVariable ["doLoiter",false,true];
};

//diag_log ("CREATE INFECTED: " + str(_this));

_position = getPosATL _agent;
_nearByPlayer = ({isPlayer _x} count (_position nearEntities [["AllVehicles","CAManBase"],30]) > 0);

if (random 1 > 0.7) then {
	_agent setUnitPos "Middle";
};

//diag_log ("CREATED: "  + str(_agent));
if (_nearByPlayer) then {
	deleteVehicle _agent;
};

_isAlive = alive _agent;

_myDest = getPosATL _agent;
_newDest = getPosATL _agent;
_agent setVariable ["myDest",_myDest];
_agent setVariable ["newDest",_newDest];

//Add some loot
_rnd = random 1;
if (_rnd > 0.3) then {
	_lootType = 		configFile >> "CfgVehicles" >> _type >> "zombieLoot";
	if (isText _lootType) then {
		_array = []+ getArray (configFile >> "cfgLoot" >> getText(_lootType));
		if (count _array > 0) then {
			_loot = _array call BIS_fnc_selectRandomWeighted;
			if(!isNil "_array") then {
				_agent addMagazine _loot;
			};
		};
	};
};

//Start behavior
hint "execFSM zombie_agentHC.fsm";
_id = [_position,_agent] execFSM "zombie_agentHC.fsm";
diag_log "execFSM zombie_agentHC.fsm:" +str _id;