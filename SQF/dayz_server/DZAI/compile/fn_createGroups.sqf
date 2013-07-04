/*
	fn_createGroups
	
	Description: Creates a specified number of respawning AI groups of specified size. Used for spawning AI from static triggers.
	
	Last updated: 12:12 PM 6/26/2013
*/
private ["_unitGroup","_grpArray","_numGroups","_spawnPositions","_spawnType","_maxAI","_patrolDist","_triggerPos","_trigger","_gradeChances","_startTime","_minAI","_addAI","_totalSpawned"];

_numGroups = _this select 0;
_spawnPositions = _this select 1;
_spawnType = _this select 2;
_trigger = _this select 3;
_gradeChances = _this select 4;
_maxAI = _this select 5;
_patrolDist = _this select 6;
_triggerPos = _this select 7;

_startTime = diag_tickTime;

_minAI = _maxAI select 0;
_addAI = _maxAI select 1;
_grpArray = [];
_totalSpawned = 0;

//Spawn groups
for "_j" from 1 to _numGroups do {
	private ["_unitGroup","_p","_pos","_totalAI"];
	_totalAI = (_minAI + round(random _addAI));
	if (_totalAI == 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: No AI to spawn for AI group %1 of %2.",_j,_numGroups]};};
	_unitGroup = createGroup ([east,resistance] call BIS_fnc_selectRandom);
	waitUntil {!isNull _unitGroup};
	
	_p = _spawnPositions call BIS_fnc_selectRandom;
	_pos = [0,0,0];
	if (_spawnType == 2) then {	
		_pos = [_p,1,100,2,0,2000,0] call BIS_fnc_findSafePos;
	} else {
		_pos = _p;
	};

	//Spawn units
	[_totalAI,_unitGroup,_pos,_trigger,_gradeChances] call fnc_createUnit;
	
	//Update AI count
	_unitGroup setVariable ["groupSize",_totalAI];
	DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
	_totalSpawned = _totalSpawned + _totalAI;
	if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size %2.",_unitGroup,_totalAI];};
	
	if ((typeName _patroldist) == "SCALAR") then {
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	} else {
		0 = [_unitGroup,_patrolDist,DZAI_debugMarkers] spawn fnc_DZAI_customPatrol;
	};
	_grpArray set [count _grpArray,_unitGroup];
};

if ((count _grpArray) == 0) exitWith {[_trigger] execVM '\z\addons\dayz_server\DZAI\scripts\resetStaticTrigger.sqf'; if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: No units to spawn. Force resetting trigger area (spawnBandits)";};};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned %1 new AI groups of %2 units each in %3 seconds (fn_createGroups).",_numGroups,_totalSpawned,(diag_tickTime - _startTime)];};

0 = [_trigger,_grpArray,_patrolDist,_gradeChances,_spawnPositions,_spawnType,[_minAI,_addAI]] spawn fnc_initTrigger;

true
