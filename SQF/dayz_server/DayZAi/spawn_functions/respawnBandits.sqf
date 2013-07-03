/*
	respawnBandits
	
	Usage: [_unitGroup,_trigger,_spawnType] call respawnBandits;
	
	Description: Called internally by fnc_banditAIRespawn. Calls fnc_createAI to respawn a unit near a randomly selected building from a stored reference location.
	
	Last updated: 6:16 PM 6/17/2013
*/

private ["_unitGroup","_trigger","_grpArray","_triggerPos","_patrolDist","_gradeChances","_spawnPositions","_p","_unit","_pos","_spawnType","_startTime"];
if (!isServer) exitWith {};

_startTime = diag_tickTime;

//Editables and default values
_unitGroup = _this select 0;
_trigger = _this select 1;				//Trigger that spawned the AI unit.

//Check if group still exists before respawning the unit
_grpArray = _trigger getVariable ["GroupArray",[]];
if !(_unitGroup in _grpArray) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Group not found in trigger's group array. Cancelling respawn script. (respawnBandits)";};};

//Retrieve variables attached to trigger
_triggerPos = getpos _trigger;
_patrolDist = _trigger getVariable ["patrolDist",125];
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
_spawnPositions = _trigger getVariable "locationArray";
_spawnType = _trigger getVariable ["spawnType",2];

//Select spawn position
_p = _spawnPositions call BIS_fnc_selectRandom;
_pos = -1;
if (_spawnType == 2) then {
	_pos = [_p, 1, 100, 2, 0, 2000, 0] call BIS_fnc_findSafePos;
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Respawning AI from building positions (respawnBandits).";};
} else {
	_pos = _p;
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Respawning AI from marker positions (respawnBandits).";};
};

//Respawn the unit
_unit = [_unitGroup,_pos,_trigger,_gradeChances] call fnc_createAI;
_unitGroup selectLeader _unit;
if ((count (waypoints _unitGroup)) < 2) then {
	if ((typeName _patroldist) == "SCALAR") then {
		0 = [_unitGroup,_triggerPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	} else {
		0 = [_unitGroup,_patrolDist,DZAI_debugMarkers] spawn fnc_DZAI_customPatrol;
	};
};
if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: 1 AI unit respawned in %1 seconds (respawnBandits).",round(diag_tickTime - _startTime)];};

true
