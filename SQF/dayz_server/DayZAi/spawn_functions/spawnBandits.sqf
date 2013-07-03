/*
	spawnBandits
	
	Usage: [_minAI, _addAI, _patrolDist, _trigger, _numGroups (optional)] call spawnBandits;
	
	Description: Called through (mapname)_config.sqf. Spawns a specified number groups of AI units some distance from a trigger used as a reference location.
	
	Note: To specify custom patrol waypoints, replace _patrolDist with an array containing:
		- An array of markers specifying each waypoint
		- A number between 0-1 specifying probability of selecting a random marker as the next waypoint.
		- A number between 0-1 specifiying probability of reading the marker array in reverse order.
		- Example: [['marker1','marker2','marker3'],0.50,0.50]
	
	Last updated: 6:16 PM 6/17/2013
*/

private ["_minAI","_addAI","_patrolDist","_trigger","_equipType","_numGroups","_grpArray","_triggerPos","_gradeChances","_totalAI","_spawnPositions","_spawnCount","_markerArray","_spawnType","_locationArray","_startTime"];
if (!isServer) exitWith {};

_startTime = diag_tickTime;

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};
	
_minAI = _this select 0;									//Mandatory minimum number of AI units to spawn
_addAI = _this select 1;									//Maximum number of additional AI units to spawn
_patrolDist = _this select 2;								//Numerical: patrol radius. Array: List of markers to use as patrol waypoints.
_trigger = _this select 3;									//The trigger calling this script.
_markerArray = _this select 4;								//Array of manually-defined spawn points (markers). If empty, nearby buildings are used as spawn points.
_equipType = if ((count _this) > 5) then {_this select 5} else {1};		//(Optional) Select the item probability table to use
_numGroups = if ((count _this) > 6) then {_this select 6} else {1};		//(Optional) Number of groups of x number of units each to spawn

_grpArray = _trigger getVariable ["GroupArray",[]];			
if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits)";};};						

_totalAI = (DZAI_spawnExtra + _minAI + round(random _addAI));	//Calculate total number of units to spawn per group.
if (_totalAI < 1) exitWith {[_trigger] execVM '\z\addons\dayz_server\DZAI\scripts\resetStaticTrigger.sqf'; if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: No units to spawn. Force resetting trigger area (spawnBandits)";};};									

_triggerPos = getPosATL _trigger;
_gradeChances = [_equipType] call fnc_getGradeChances;
_spawnCount = (_totalAI * _numGroups);

//If trigger already has defined spawn points, then reuse them instead of recalculating new ones.
_spawnPositions = [];
_locationArray = _trigger getVariable ["locationArray",[]];	
_spawnType = 2;
if ((count _locationArray) == 0) then {
	if ((count _markerArray) == 0) then {
		private["_nearbldgs"];
		_nearbldgs = nearestObjects [_triggerPos,["Building"],300];
		{
			_spawnPositions set [(count _spawnPositions),(getPosATL _x)];
		} forEach _nearbldgs;
		if ((count _spawnPositions) == 0) then {_spawnPositions = [_triggerPos];};	//If no buildings are nearby, use trigger position as backup spawn location.
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from building positions (spawnBandits).";};
	} else {
		{
			_spawnPositions set [(count _spawnPositions),(getMarkerPos _x)];
		} forEach _markerArray;
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Spawning AI from marker positions (spawnBandits).";};
		_spawnType = 3;
	};
} else {
	_spawnPositions = _locationArray;
	_spawnType = _trigger getVariable ["spawnType",2];
};

//Spawn units
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_p","_pos"];
	_unitGroup = grpNull;
	if ((random 1) < 0.5) then {				//50% chance to choose East or Resistance as AI side to avoid reaching 140 group/side limit.
		_unitGroup = createGroup east;
	} else {
		_unitGroup = createGroup resistance;
	};
	_p = _spawnPositions call BIS_fnc_selectRandom;
	_pos = [0,0,0];
	if (_spawnType == 2) then {	
		_pos = [_p,1,100,2,0,2000,0] call BIS_fnc_findSafePos;
	} else {
		_pos = _p;
	};
	for "_i" from 1 to _totalAI do {
		private["_unit"];
		_unit = [_unitGroup,_pos,_trigger,_gradeChances] call fnc_createAI;	//Create and equip the unit
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits).",_i,_totalAI];};
	};
	
	_unitGroup selectLeader ((units _unitGroup) select 0);
	_unitGroup allowFleeing 0;
	
	if ((typeName _patroldist) == "SCALAR") then {
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	} else {
		0 = [_unitGroup,_patrolDist,DZAI_debugMarkers] spawn fnc_DZAI_customPatrol;
	};
	_grpArray set [count _grpArray,_unitGroup];
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned %1 new AI groups of %2 units each in %3 seconds (spawnBandits).",_numGroups,_totalAI,(diag_tickTime - _startTime)];};

0 = [_trigger,_grpArray,_spawnCount,_patrolDist,_gradeChances,_spawnPositions,_spawnType] spawn fnc_initTrigger;

true
