/*
	spawnBandits_dynamic

	Usage: Called by an activated dynamic trigger when a player unit enters the trigger area.
	
	Description: Spawns a group of AI units some distance from a dynamically-spawned trigger. These units do not respawn after death.
	
	Last updated: 12:23 AM 6/25/2013
*/
#include "\z\addons\dayz_server\DZAI\init\dyn_trigger_defs.hpp"

private ["_patrolDist","_trigger","_grpArray","_totalAI","_maxDist","_unitGroup","_pos","_targetPlayer","_unitArray","_playerArray","_playerPos","_minDist","_playerCount","_spawnPos","_nearbyTriggers","_findPlayer","_startTime"];
if (!isServer) exitWith {};

//Check if there are too many AI units in the game.
if (DZAI_numAIUnits >= DZAI_maxAIUnits) exitWith {diag_log format["DZAI Warning: Maximum number of AI reached! (%1)",DZAI_numAIUnits];};

_patrolDist = _this select 0;
_trigger = _this select 1;
_unitArray = _this select 2;

_startTime = diag_tickTime;

_grpArray = _trigger getVariable ["GroupArray",[]];	
if (count _grpArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits)";};};			
						
//Build list of player units within trigger area. A player is randomly chosen from the array. If the player is not over water, then the trigger is moved to surround them and their position is used as a reference point for spawning AI.
_playerArray = [];
{
	if (isPlayer _x) then {
		_playerArray set [(count _playerArray),_x];	
	};
} forEach _unitArray;
//_playerCount = (count _playerArray);

//if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: %1 units within trigger area. %2 are players. (spawnBandits_dynamic)",(count _unitArray),_playerCount];};

_targetPlayer = _playerArray call BIS_fnc_selectRandom;
_playerPos = getPosATL _targetPlayer;

//Count number of players close to the targeted player.
_playerCount = {isPlayer _x} count (_playerPos nearEntities [["AllVehicles","CAManBase"],100]);
//_playerCount = ({(_isPlayer _x) && ((_x distance _targetPlayer) < 100)} count _unitArray) -1;

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Counted %1 players within 100m of target player (spawnBandits_dynamic)",_playerCount];};

_spawnPos = [0,0,0];
_findPlayer = true;
if !(surfaceIsWater [_playerPos select 0,_playerPos select 1]) then {
	_trigger setPosATL _playerPos;									
	_spawnPos = _playerPos;
	//Don't hunt player if they are in a vehicle
	if !(_targetPlayer isKindOf "Man") then {
		_findPlayer = false;
		//diag_log format ["DEBUG :: Target player %1 is in a vehicle.",_targetPlayer];
	};
} else {
	//Don't hunt player if they are over water
	_spawnPos = getPosATL _trigger;
	_findPlayer = false;
	//diag_log "DEBUG :: Target player is over water.";
};
_minDist = 150;
_maxDist = (_minDist + random(200));
_pos = [_spawnPos,_minDist,_maxDist,5,0,2000,0] call BIS_fnc_findSafePos;
//If BIS_fnc_findSafePos fails to find a safe location, then force respawn instead.
if ((_pos distance _spawnPos) > 500) exitWith {
	private["_newPos"];
	_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_attempts = 0;
	while {(({([_newPos select 0,_newPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
		_attempts = _attempts +1;
		_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];};
	};
	_trigger setPos [_newPos select 0,_newPos select 1];
	if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Could not find suitable location to spawn AI units, relocating trigger to position %1. (spawnBandits_dynamic)",_newPos];};
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_trigger];
		_marker setMarkerPos _newPos;
	};
};

//Calculate number of AI to spawn. Equation: round(2.6 ln (#players) + 2) +/- 1
_totalAI = -1;
if (_playerCount < 7) then {
	_totalAI = (round(2.6*(ln _playerCount) + 2)) + round(random 1) - round(random 1);				//Calculate number of AI to spawn based on number of players nearby.
} else {
	_totalAI = (6 + round(random 1) - round(random 1));												//Set AI upper limit.
};
//Reduce number of AI spawned if trigger area intersects another activated trigger to avoid overwhelming AI spawns.
_nearbyTriggers = ({((_trigger distance _x) < ((triggerArea _trigger) select 0))&&(triggerActivated _x)} count DZAI_dynTriggerArray) - 1;
if (_nearbyTriggers > 0) then {
	_totalAI = round(_totalAI/(_nearbyTriggers + 1));
	if (DZAI_debugLevel > 0) then {diag_log format ["DEBUG :: Counted %1 other triggers within %2 meters. Number of AI to spawn reduced to %3.",_nearbyTriggers,((triggerArea _trigger) select 0),_totalAI];};
};

//No more exitWith statements, so trigger is committed to spawning at this point.
if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	_marker setMarkerPos _spawnPos;
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerAlpha 0.9;				//Dark orange: Activated trigger
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Processed dynamic trigger spawn data in %1 seconds (spawnBandits_dynamic).",(diag_tickTime - _startTime)];};

_startTime = diag_tickTime;

_grpArray = [];

_unitGroup = call DZAI_createGroup;

diag_log format ["DEBUG :: Created group %1 (fn_createGroups_dyn).",_unitGroup];

//Spawn units
[_totalAI,_unitGroup,_pos,_trigger] call fnc_createUnit;

//Update AI count
_unitGroup setVariable ["groupSize",_totalAI];
DZAI_numAIUnits = DZAI_numAIUnits + _totalAI;
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size %2.",_unitGroup,_totalAI];};

if (_findPlayer) then {
	//Travel to player's position, then begin patrol.
	0 = [_unitGroup,_spawnPos,_patrolDist,_targetPlayer] spawn fnc_seekPlayer;
	//diag_log "DEBUG :: Seeking target player.";
} else {
	//Begin patrol immediately.
	0 = [_unitGroup,_spawnPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;
	//diag_log "DEBUG :: Beginning patrol.";
};

//_grpArray set [count _grpArray,_unitGroup];
_grpArray = [_unitGroup];

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned 1 new AI groups of %1 units each in %2 seconds (fn_createGroups_dyn).",_totalAI,(diag_tickTime - _startTime)];};

0 = [_trigger,_grpArray] spawn fnc_initTrigger;
//diag_log format ["DEBUG :: _trigger %1, groupArray %2, _total AI %3.",_trigger,_grpArray,_totalAI];
//Prevent player(s) from causing despawn by entering an air vehicle.
_trigger setTriggerStatements [DYNTRIG_STATEMENTS_ACTIVE];

true
