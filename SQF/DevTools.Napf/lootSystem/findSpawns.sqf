player removeAction findSpawnsAction;

testSpawnPoints = 
{
	private ["_findFunction", "_spawnPointName", "_markerColor"];

	_findFunction = _this select 0;
	_spawnPointName = _this select 1;
	_markerColor = _this select 2;

	private ["_spawnPosition", "_spawnPoint", "_resultingPoints"];

	_spawnPosition = getMarkerPos _spawnPointName;

	_resultingPoints = [];

	for "_x" from 1 to 500 do
	{
		_spawnPoint = [_spawnPosition] call findSpawnPosition;

		if (!(_spawnPoint in _resultingPoints)) then
		{
			_resultingPoints set [count _resultingPoints, _spawnPoint];

			private ["_marker", "_markerName"];

			_markerName = format ["%1_%2", _spawnPointName, count _resultingPoints];
			_marker = createMarker [_markerName, [_spawnPoint select 0, _spawnPoint select 1]];
			_markerName setMarkerShape "ICON";
			_markerName setMarkerType "DOT";
			_markerName setMarkerColor _markerColor;
		};
	};
};

findSpawnPosition = 
{
	[_this select 0, 0,1500,10,0,2,1] call BIS_fnc_findSafePos
};


[findSpawnPosition, "spawn0", "ColorBlue"] call testSpawnPoints; 
[findSpawnPosition, "spawn1", "ColorRed"] call testSpawnPoints; 
[findSpawnPosition, "spawn2", "ColorGreen"] call testSpawnPoints; 
[findSpawnPosition, "spawn3", "ColorOrange"] call testSpawnPoints; 
[findSpawnPosition, "spawn4", "ColorBrown"] call testSpawnPoints; 
[findSpawnPosition, "spawn5", "ColorYellow"] call testSpawnPoints; 
findSpawnsAction = player addaction ["Find Spawns", "findSpawns.sqf"];