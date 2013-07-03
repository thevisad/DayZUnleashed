/*
	spawnBandits_random_NR

	Usage: Called by an activated dynamic trigger when a player unit enters the trigger area.
	
	Description: Spawns a group of AI units some distance from a dynamically-spawned trigger. These units do not respawn after death.
	
	Last updated: 12:04 AM 6/18/2013
*/
private ["_patrolDist","_trigger","_unitGroupArray","_totalAI","_maxDist","_unitGroup","_pos","_targetPlayer","_unitArray","_playerArray","_playerPos","_minDist","_playerCount","_spawnPos","_nearbyTriggers"];
if (!isServer) exitWith {};

_patrolDist = _this select 0;
_trigger = _this select 1;
_unitArray = _this select 2;

_unitGroupArray = _trigger getVariable ["GroupArray",[]];			
if (count _unitGroupArray > 0) exitWith {if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Active groups found. Exiting spawn script (spawnBandits_random_NR)";};};						

if ((random 1) > DZAI_dynSpawnChance) exitWith {
	private["_newPos"];
	_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_trigger setPos _newPos;
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Probability check for dynamic AI spawn failed, relocating trigger to position %1. (spawnBandits_random_NR)",_newPos];};
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_trigger];
		_marker setMarkerPos _newPos;
	};
};

//Build list of player units within trigger area. A player is randomly chosen from the array. If the player is not over water, then the trigger is moved to surround them and their position is used as a reference point for spawning AI.
_playerArray = [];
{
	if (isPlayer _x) then {
		_playerArray set [(count _playerArray),_x];	
	};
} forEach _unitArray;
_playerCount = (count _playerArray);
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: %1 units within trigger area. %2 are players. (spawnBandits_random_NR)",(count _unitArray),_playerCount];};

_targetPlayer = _playerArray call BIS_fnc_selectRandom;
_playerPos = getPosATL _targetPlayer;
_spawnPos = [0,0,0];
if !(surfaceIsWater [_playerPos select 0,_playerPos select 1]) then {
	_trigger setPosATL _playerPos;									
	_spawnPos = _playerPos;
} else {
	_spawnPos = getPosATL _trigger;
};
_minDist = 125;
_maxDist = (_minDist + random(175));
_pos = [_spawnPos,_minDist,_maxDist,5,0,2000,0] call BIS_fnc_findSafePos;
//If BIS_fnc_findSafePos fails to find a safe location, then force respawn instead.
if ((_pos distance _spawnPos) > 500) exitWith {
	private["_newPos"];
	_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_trigger setPos _newPos;
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Could not find suitable location to spawn AI units, relocating trigger to position %1. (spawnBandits_random_NR)",_newPos];};
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

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: %1 AI spawns triggered (spawnBandits_random_NR).",_totalAI];};

_unitGroup = grpNull;
if ((random 1) < 0.5) then {				//50% chance to choose East or Resistance as AI side to avoid reaching 140 group/side limit.
	_unitGroup = createGroup east;
} else {
	_unitGroup = createGroup resistance;
};
for "_i" from 1 to _totalAI do {
	private ["_unit"];
	_unit = [_unitGroup,_pos,_trigger] call fnc_createAI_NR;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI %1 of %2 spawned (spawnBandits_random_NR).",_i,_totalAI];};
};

_unitGroup selectLeader ((units _unitGroup) select 0);
_unitGroup allowFleeing 0;

0 = [_unitGroup,_spawnPos,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;

{
	_unitGroup reveal [_x,4];
} forEach _playerArray;
(leader _unitGroup) glanceAt _targetPlayer;

_unitGroupArray set [count _unitGroupArray,_unitGroup];
//diag_log format ["DEBUG :: _trigger %1, groupArray %2, _total AI %3.",_trigger,_unitGroupArray,_totalAI];
0 = [_trigger,_unitGroupArray,_totalAI] spawn fnc_initTrigger;

true
