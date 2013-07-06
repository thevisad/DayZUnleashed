/*
	Written for DZAI. Loosely adapted from BIN_taskPatrol by Binesi.
	
	Description: Assigns patrol waypoints to a group based on an array of markers and optionally, values specifying probabilities of randomly choosing the next waypoint and reversing the provided marker array.
	
	Usage: [_group,_patrolArray,_debug (optional)] spawn DZAI_customPatrol.sqf
	
	_group: The group to assign waypoints
	_patrolArray: Global variable containing an array of: 1) Markers indicating each waypoint, 2) Probability to choose a random waypoint in the sequence as the next waypoint, 3) Probability to reverse the order of the given marker array.
	_debug (optional): Set to "1" to create debug markers for each waypoint created.
	
	Last updated: 2:04 AM 6/25/2013
*/
if (!isServer) exitWith {};

private["_group,_wpArray","_pos","_j","_wpStart","_wpEnd","_dzai_behavior","_dzai_speedmode","_mode","_formation","_patrolArray","_debug","_firstWP","_lastWP","_step","_randomFactor","_reversalChance","_wpStatement"];

_group = _this select 0;
_patrolArray = _this select 1;
_debug = if ((count _this) > 2) then {_this select 2} else {0};

_wpArray = [];
_randomFactor = 0.00;
_reversalChance = 0.50;
if (typeName (_patrolArray select 0) == "ARRAY") then {
	//If all three parameters are provided, use given _wpArray, _randomFactor, and _reversalChance are given.
	_wpArray = _patrolArray select 0;
	_randomFactor = _patrolArray select 1;
	_reversalChance = _patrolArray select 2;
	diag_log format ["Starting custom patrol with 3 provided values: %1 (_wpArray), %2 (_randomFactor), %3, (_reversalChance)",_wpArray,_randomFactor,_reversalChance];
} else {
	//If only an array of markers is provided, use default values for _randomFactor and _reversalChance.
	_wpArray = _patrolArray;
	diag_log format ["DEBUG :: Starting custom patrol with 1 provided value: %1 (_wpArray).",_wpArray];
};

_wpStatement = format["if ((random 1) < %1) then { group this setCurrentWaypoint [(group this), (floor (random (count (waypoints (group this)))))];};",_randomFactor];

_mode = ["YELLOW", "RED"] call BIS_fnc_selectRandom;
_formation = ["STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "DIAMOND"] call BIS_fnc_selectRandom;
_dzai_behavior = ["AWARE","COMBAT"] call BIS_fnc_selectRandom;
_dzai_speedmode =  ["LIMITED","NORMAL"] call BIS_fnc_selectRandom;
	
_group setBehaviour _dzai_behavior;
_group setSpeedMode _dzai_speedmode;
_group setCombatMode _mode;
_group setFormation _formation;
	
_pos = getMarkerPos (_wpArray select 0);
_j = count (waypoints _group);

_firstWP = null;	_lastWP = null;		_step = null;
if ((random 1) < 0.5) then {
	_firstWP = 0;	_lastWP = ((count _wpArray) - 1);	_step = 1;		//50% chance to follow waypoints in forward order
	//diag_log "Patrolling in forward order.";
} else {
	_firstWP = ((count _wpArray) - 1);	_lastWP = 0;	_step = -1;		//50% chance to follow waypoints in reverse order
	//diag_log "Patrolling in reverse order.";
};

for "_i" from _firstWP to _lastWP step _step do {
	private["_markerPos","_waypoint"];
	_markerPos = getMarkerPos (_wpArray select _i);
	_waypoint = _group addWaypoint [_markerPos,0];
	_waypoint setWaypointType "MOVE";
	_waypoint setWaypointCompletionRadius 40;
	[_group,(_j+_i)] setWaypointTimeout [0,3,15];
	[_group,(_j+_i)] setWaypointStatements ["true", _wpStatement];
	
	if (_debug > 0) then {
		private["_marker","_markername"];
		_markername = format["%1_%2",_group,_i];
		_marker = createMarker[_markername,_markerPos];
		_marker setMarkerShape "ELLIPSE";
		_marker setMarkerType "Dot";
		_marker setMarkerColor "ColorPink";
		_marker setMarkerBrush "SolidBorder";
		_marker setMarkerSize [20, 20];
	};
		
	sleep 0.5;
};

_wpStart = _group addWaypoint [_pos, 0];
_wpStart setWaypointType "SAD";
_wpStart setWaypointCompletionRadius 40;
[_group,(count waypoints _group)] setWaypointStatements ["true", "group this setCurrentWaypoint [(group this), (round (random 2) + 1)];"];

_wpEnd = _group addWaypoint [_pos, 0];
_wpEnd setWaypointType "CYCLE";
_wpEnd setWaypointCompletionRadius 100;

true
