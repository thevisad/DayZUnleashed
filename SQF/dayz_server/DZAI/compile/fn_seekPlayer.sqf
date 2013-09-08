/*
	fnc_seekPlayer
	
	Description: Used for dynamically spawned AI. Creates a MOVE waypoint directing AI to a random player's position, then uses BIN_taskPatrol to create a circular patrol path around player's position.
	
	Last updated: 2:54 PM 8/10/2013
*/

private ["_unitGroup","_spawnPos","_waypoint","_patrolDist","_statement","_targetPlayer","_patrolCenter","_smokeCover"];

_unitGroup = _this select 0;
_spawnPos = _this select 1;
_patrolDist = _this select 2;
_targetPlayer = _this select 3;

//_smokeCover = _spawnPos spawn DZAI_smokeCover;
_unitGroup setBehaviour "AWARE";//"CARELESS"
_unitGroup setSpeedMode "FULL";
_unitGroup setCombatMode "RED";//"BLUE"

deleteWaypoint [_unitGroup,0];

//_statement = format ["deleteWaypoint[(group this),0]; 0 = [(group this),%1,%2,%3] spawn fnc_BIN_taskPatrol;",_spawnPos,_patrolDist,DZAI_debugMarkers];
_waypoint = _unitGroup addWaypoint [_spawnPos,0];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointCompletionRadius 30;
_waypoint setWaypointTimeout [5,5,5];
_waypoint setWaypointStatements ["true","group this setCurrentWaypoint [group this,0]"];
_unitGroup setCurrentWaypoint _waypoint;

if (_targetPlayer hasWeapon "ItemRadio") then {
	[nil,_targetPlayer,"loc",rTITLETEXT,"[RADIO] A nearby bandit group is preparing an ambush.","PLAIN DOWN",0] call RE;
};

sleep 30;

//Begin hunting phase
while {(alive _targetPlayer) && !(isNull _targetPlayer) && (_targetPlayer isKindOf "Man") && ((_targetPlayer distance _spawnPos) < 300) && ((_unitGroup getVariable ["groupSize",0]) > 0)} do {
	if !(_unitGroup getVariable ["inPursuit",false]) then {
		_waypoint setWPPos getPosATL _targetPlayer;
		_unitGroup setCurrentWaypoint _waypoint;
		_unitGroup setFormDir ([(leader _unitGroup),_targetPlayer] call BIS_fnc_dirTo);
		(units _unitGroup) doTarget _targetPlayer;
		(units _unitGroup) doFire _targetPlayer;
		//Warn player of AI bandit presence if they have a radio.
		if (_targetPlayer hasWeapon "ItemRadio") then {
			[nil,_targetPlayer,"loc",rTITLETEXT,"[RADIO] You are being followed by a bandit group.","PLAIN DOWN",0] call RE;
		};
	};
	sleep 30;
};

if ((_unitGroup getVariable ["groupSize",0]) < 1) exitWith {};

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Group %1 has exited hunting phase. Moving to patrol phase. (fn_seekPlayer)",_unitGroup];};

//Begin patrol phase
_waypoint setWaypointStatements ["true","if ((random 1) < 0.50) then { group this setCurrentWaypoint [(group this), (floor (random (count (waypoints (group this)))))];};"];
_patrolCenter = if (!(isNull _targetPlayer)) then {getPosATL _targetPlayer} else {getPosATL (leader _unitGroup)};
0 = [_unitGroup,_patrolCenter,_patrolDist,DZAI_debugMarkers] spawn fnc_BIN_taskPatrol;

sleep 5;
if ((_targetPlayer hasWeapon "ItemRadio") && !(_unitGroup getVariable ["inPursuit",false])) then {
	[nil,_targetPlayer,"loc",rTITLETEXT,"[RADIO] You have successfully evaded the pursuing bandits.","PLAIN DOWN",0] call RE;
};
	
true
