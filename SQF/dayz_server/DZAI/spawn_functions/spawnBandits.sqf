/*
	spawnBandits
	
	Usage: [_minAI, _addAI, _patrolDist, _trigger, _numGroups (optional)] spawn spawnBandits;
	
	Description: Called through (mapname)_config.sqf when a static trigger is activated by a player.
	
	Note: To specify custom patrol waypoints, replace _patrolDist with an array containing:
		- An array of markers specifying each waypoint
		- A number between 0-1 specifying probability of selecting a random marker as the next waypoint. (Default: 0.00)
		- A number between 0-1 specifiying probability of reading the marker array in reverse order. (Default: 0.50)
		- Example: [['marker1','marker2','marker3'],0.50,0.50]
	
	Last updated: 12:36 PM 8/6/2013
*/

private ["_minAI","_addAI","_patrolDist","_trigger","_equipType","_numGroups","_grpArray","_triggerPos","_gradeChances","_totalAI","_spawnPositions","_spawnCount","_positionArray","_locationArray","_startTime","_tMarker"];
if (!isServer) exitWith {};

_startTime = diag_tickTime;

_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;								//Numerical: patrol radius. Array: List of markers to use as patrol waypoints.
_trigger = _this select 3;									//The trigger calling this script.
_positionArray = _this select 4;								//Array of manually-defined spawn points (markers). If empty, nearby buildings are used as spawn points.
_equipType = if ((count _this) > 5) then {_this select 5} else {1};		//(Optional) Select the item probability table to use
_numGroups = if ((count _this) > 6) then {_this select 6} else {1};		//(Optional) Number of groups of x number of units each to spawn

_grpArray = _trigger getVariable ["GroupArray",[]];	

if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Active groups found at %1. Exiting spawn script (spawnBandits)",(triggerText _trigger)];};};						

_triggerPos = getPosATL _trigger;
_gradeChances = [_equipType] call DZAI_getGradeChances;

//If trigger already has defined spawn points, then reuse them instead of recalculating new ones.
_locationArray = _trigger getVariable ["locationArray",[]];	
if ((count _locationArray) == 0) then {
	_spawnPositions = [];
	if (DZAI_debugMarkers > 0) then {
		_tMarker = createMarker [str(_trigger), (getPosATL _trigger)];
		_tMarker setMarkerText "STATIC TRIGGER (ACTIVE)";
		_tMarker setMarkerType "Defend";
		_tMarker setMarkerColor "ColorRed";
		_tMarker setMarkerBrush "Solid";
		if (DZAI_debugMarkers > 1) then {_nul = [_trigger] spawn DZAI_updateSpawnMarker;};
	};
	//If no markers specified in position array, then generate spawn points using building positions (search for buildings within 250m. generate a maximum of 100 positions).
	if ((count _positionArray) == 0) then {
		private["_nearbldgs","_nearbldgCount"];
		_nearbldgs = nearestObjects [_triggerPos,["HouseBase"],250];
		_nearbldgCount = count _nearbldgs;
		if (_nearbldgCount > 0) then {
			if (_nearbldgCount > 100) then {_nearbldgs resize 100;};
			{
				_spawnPositions set [(count _spawnPositions),(getPosATL _x)];
			} forEach _nearbldgs;
		} else {
			_spawnPositions = [_triggerPos]; //If no buildings are nearby, use trigger position as backup spawn location.
		};	
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from building positions (spawnBandits).";};
	} else {
		if (typeName (_positionArray select 0) == "STRING") then {
			{
				_spawnPositions set [(count _spawnPositions),(getMarkerPos _x)];
			} forEach _positionArray;
			if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from marker positions (spawnBandits).";};
		} else {
			_spawnPositions = _positionArray;
			if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from randomly-generated positions (spawnBandits).";};
		};
	};
} else {
	if (DZAI_debugMarkers > 0) then {
		_tMarker = str (_trigger);
		_tMarker setMarkerText "STATIC TRIGGER (ACTIVE)";
		_tMarker setMarkerColor "ColorRed";
		if (DZAI_debugMarkers > 1) then {_nul = [_trigger] spawn DZAI_updateSpawnMarker;};
	};
	//If spawn points are already defined (subsequent trigger activations)
	_spawnPositions = _locationArray;
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from stored positions (spawnBandits).";};
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Processed static trigger spawn data in %1 seconds (spawnBandits).",(diag_tickTime - _startTime)];};

_startTime = diag_tickTime;

_grpArray = [];
_totalSpawned = 0;

//Spawn groups
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_spawnPos","_pos","_totalAI"];
	_totalAI = (_minAI + round(random _addAI));
	if (_totalAI > 0) then {
		//Select spawn location
		//_spawnPos = _spawnPositions call BIS_fnc_selectRandom2;
		_spawnPos = _spawnPositions call DZAI_findSpawnPos;
		
		//Spawn units
		_unitGroup = [_totalAI,grpNull,_spawnPos,_trigger,_gradeChances] call fnc_createGroup;
		
		//Set group variables
		_unitGroup setVariable ["unitType",0];
		_unitGroup setVariable ["trigger",_trigger];
		_unitGroup allowFleeing 0;
		
		//Update AI count
		DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
		_totalSpawned = _totalSpawned + _totalAI;
		if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size %2.",_unitGroup,_totalAI];};
		
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
		
		_grpArray set [count _grpArray,_unitGroup];
	} else {
		//Add a group to respawn queue.
		_nul = [_trigger] spawn DZAI_retrySpawn;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: No AI to spawn for AI group %1 of %2.",_j,_numGroups]};
	};
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned %1 new AI groups (%2 units total) in %3 seconds at %4 (spawnBandits).",_numGroups,_totalSpawned,(diag_tickTime - _startTime),(triggerText _trigger)];};

0 = [_trigger,_grpArray,_patrolDist,_gradeChances,_spawnPositions,[_minAI,_addAI]] call fnc_initTrigger;

true
