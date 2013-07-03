/*
	despawnBandits_NR

	Description: Deletes all AI units spawned by a trigger once all players leave the trigger area, then moves the trigger to a random location. Adapted from Sarge AI.
	
	Usage: Called by a dynamic trigger when all players have left the trigger area.

	Last updated: 8:45 PM 6/18/2013
	
*/
private ["_trigger","_grpArray","_isCleaning","_grpCount","_waitTime","_spawnCount","_newPos","_forceDespawn","_attempts"];
if (!isServer) exitWith {};							//Execute script only on server.

_trigger = _this select 0;							//Get the trigger object

_grpArray = _trigger getVariable ["GroupArray",[]];	//Find the groups spawned by the trigger. Or set an empty group array if none are found.
_isCleaning = _trigger getVariable ["isCleaning",nil];	//Find whether or not the trigger has been marked for cleanup, otherwise assume a cleanup has already happened.
_forceDespawn = _trigger getVariable ["forceDespawn",false];	//Check whether to run despawn script even if players are present in the trigger area.
if (isNil "_forceDespawn") then {_forceDespawn = false;};

_grpCount = count _grpArray;

//diag_log format ["DEBUG:: _grpCount is %1. _isCleaning is %2.",_grpCount,_isCleaning];
if (isNil "_isCleaning") exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Trigger's isCleaning variable is nil. Exiting despawn script.";};};
if ((_grpCount == 0) || (_isCleaning)) exitWith {if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Trigger's group array is empty, or a despawn script is already running. Exiting despawn script.";};};				//Exit script if the trigger hasn't spawned any AI units, or if a despawn script is already running for the trigger.

_trigger setVariable["isCleaning",true,false];		//Mark the trigger as being in a cleanup state so that subsequent requests to despawn for the same trigger will not run.
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: No players remain in trigger area. Deleting spawned AI in %1 seconds.",DZAI_despawnWait];};
if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	_marker setMarkerColor "ColorGreenAlpha";
	_marker setMarkerAlpha 0.7;							//Light green: Active trigger awaiting despawn.
};
sleep DZAI_despawnWait;									//Wait some time before deleting units. (amount of time to allow units to exist when the trigger area has no players)

if ((triggerActivated _trigger) && (!_forceDespawn)) exitWith {
	if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: A player has entered the trigger area. Cancelling despawn script.";}; //Exit script if trigger has been reactivated since _waitTime seconds has passed.
	_trigger setVariable ["isCleaning",false,false];	//Allow next despawn request.
	if (DZAI_debugMarkers > 0) then {
		private["_marker"];
		_marker = format["trigger_%1",_trigger];
		_marker setMarkerColor "ColorOrange";
		_marker setMarkerAlpha 0.9;						//Reset trigger indicator color to Active.
	};
};			

{
	if (DZAI_debugMarkers > 0) then {
		private["_markerName","_markerCount"];
		_markerCount = (count (waypoints _x)) - 3;
		//diag_log format ["DEBUG :: Estimating %1 waypoints for group %2.",_markerCount,_x];
		for "_i" from 1 to (count (waypoints _x) - 3) do {
			_markerName = format ["%1_%2",_x,_i];
			//diag_log format ["DEBUG :: Deleting marker: %1_%2. (Actual: %3)",_x,_i,_markerName];
			deleteMarker _markerName;
		};
		sleep 0.2;
	};
	{deleteVehicle _x} forEach (units _x);			//Delete all units of each group.
	sleep 0.5;
	deleteGroup _x;									//Delete the group after its units are deleted.
} forEach _grpArray;

//Update active AI count
if (isNil {_trigger getVariable "spawnCount"}) then {_trigger setVariable ["spawnCount",0]};
_spawnCount = _trigger getVariable "spawnCount";
if (_spawnCount == 0) exitWith {diag_log "ERROR :: Spawncount is zero.";};
DZAI_numAIUnits = DZAI_numAIUnits - _spawnCount;

//Clean up trigger variables and relocate trigger.
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Relocating dynamic trigger.";};
_trigger setVariable ["GroupArray",[],false];
_trigger setVariable ["isCleaning",nil,false];
_trigger setVariable ["patrolDist",nil,false];
_trigger setVariable ["gradeChances",nil,false];
_trigger setVariable ["spawnCount",nil,false];
_trigger setVariable ["forceDespawn",nil,false];

_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
_attempts = 0;
while {(({([_newPos select 0,_newPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
	sleep 0.5;
	_attempts = _attempts +1;
	_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	if (DZAI_debugLevel > 0) then {diag_log format ["DEBUG :: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];};
};
_trigger setPos [_newPos select 0,_newPos select 1];

if (DZAI_debugMarkers > 0) then {
	private["_marker"];
	_marker = format["trigger_%1",_trigger];
	_marker setMarkerPos _newPos;
	_marker setMarkerColor "ColorYellow";			//Reset trigger indicator to Ready.
	_marker setMarkerAlpha 0.8;
};

DZAI_actDynTrigs = (DZAI_actDynTrigs - 1);
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Despawned %1 AI in dynamic trigger area. Trigger relocated to %2.",_spawnCount,_newPos];};

true
