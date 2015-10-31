private ["_startTime","_generatorStr","_cfgLocation","_locationArray","_config","_spawnServerObj"];

_startTime = diag_tickTime;
_generatorStr = format ["CfgTownGenerator%1",worldName];

_cfgLocation = configFile >> _generatorStr;
if ((count _cfgLocation) < 1) then {_generatorStr = "CfgTownGenerator";_cfgLocation = configFile >> "CfgTownGenerator";};
_locationArray = [];

diag_log format ["OBJECT PATCH :: Spawning in serverside objects... Reading from file %1.",_generatorStr];

for "_i" from 0 to ((count _cfgLocation) - 1) do {
	_locationArray set [count _locationArray,configName (_cfgLocation select _i)];
};

///////////////////////////////////////////////////////////////

_spawnServerObj = {
	private ["_config","_objType","_objPos","_objDir","_object"];
	
	for "_i" from ((count _this) - 1) to 0 step -1 do {
		_config = _this select _i;
		if (isClass (_config)) then {
			_objType = getText (_config >> "type");
			_objPos = [] + getArray (_config >> "position");
			_objDir = getNumber (_config >> "direction");
			
			//diag_log format ["OBJECT PATCH :: Creating object %1 at %2.",_objType,_objPos];
			_object = _objType createVehicleLocal [_objPos select 0,_objPos select 1,0];
			_object setDir _objDir;
			_object setPosATL [_objPos select 0,_objPos select 1,0];
			_object allowDamage false;
			_object enableSimulation false;
			if ((_i % 25) == 0) then {sleep 0.01;};
		};
	};
};

///////////////////////////////////////////////////////////////
{
	_config = configFile >> _generatorStr >> _x;
	_config call _spawnServerObj;
	sleep 0.001;
} forEach _locationArray;

diag_log format ["OBJECT PATCH :: Serverside object patch completed in %1 seconds.",(diag_tickTime - _startTime)];
