/*
	respawnBandits
	
	Usage: [_unitGroup,_trigger,_maxUnits] call respawnBandits;
	
	Description: Called internally by fnc_banditAIRespawn. Calls fnc_createAI to respawn a unit near a randomly selected building from a stored reference location.
	
	Last updated: 12:36 PM 8/6/2013
*/

private ["_unitGroup","_trigger","_grpArray","_triggerPos","_patrolDist","_gradeChances","_spawnPositions","_spawnPos","_unit","_pos","_startTime","_maxUnits","_totalAI","_aiGroup"];
if (!isServer) exitWith {};

_startTime = diag_tickTime;

_unitGroup = _this select 0;
_trigger = _this select 1;
_maxUnits = _this select 2;

_triggerPos = getpos _trigger;
_patrolDist = _trigger getVariable ["patrolDist",150];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
_spawnPositions = _trigger getVariable "locationArray";

_totalAI = ((_maxUnits select 0) + round(random (_maxUnits select 1)));

if (_totalAI == 0) exitWith {
	0 = [(time + DZAI_respawnTime),_trigger,_unitGroup] spawn fnc_respawnHandler;
	false
};

//Select spawn position
//_spawnPos = _spawnPositions call BIS_fnc_selectRandom2;
_spawnPos = _spawnPositions call DZAI_findSpawnPos;

//Respawn the group
_aiGroup = [_totalAI,_unitGroup,_spawnPos,_trigger,_gradeChances] call fnc_createGroup;
if (isNull _unitGroup) then {diag_log "DZAI Error :: Respawned group is null group. New group was reassigned.";_unitGroup = _aiGroup};

//Update AI count
DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Created group %1 of size %2.",_unitGroup,_totalAI];};

if ((count (waypoints _unitGroup)) > 1) then {
	_unitGroup setCurrentWaypoint ((waypoints _unitGroup) call BIS_fnc_selectRandom2);
} else {
	0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %2 AI units respawned at %3 in %1 seconds (respawnBandits).",diag_tickTime - _startTime,_totalAI,(triggerText _trigger)];};

true
