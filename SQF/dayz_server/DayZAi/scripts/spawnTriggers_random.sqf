/*
	spawnTriggers_random

	Usage: 
	Description: 
	
	Last updated: 8:45 PM 6/18/2013
*/
private ["_numTriggers","_trigOnAct","_patrolRadius"];
if (!isServer) exitWith {};

_numTriggers = _this select 0;							//Number of triggers to create

if (_numTriggers == 0) exitWith {};						// Exit script if there is nothing to spawn

if (DZAI_verifyTables) then {
	waitUntil {sleep 0.1; !isNil "DZAI_classnamesVerified"};	//Wait for DZAI to finish verifying classname arrays.
} else {
	waitUntil {sleep 0.1; !isNil "DZAI_weaponsInitialized"};	//Wait for DZAI to finish building weapon classname arrays.
};

_patrolRadius = 300;

_trigOnAct = format["[%1,thisTrigger,thisList] call fnc_spawnBandits_random_NR",_patrolRadius];

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawning %1 dynamic trigger spawns in 60 seconds (spawnTriggers_random).",_numTriggers];};

sleep 60;

for "_i" from 1 to _numTriggers do {
	private ["_trigger","_trigPos","_attempts"];
	_trigPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
	_attempts = 0;
	while {(({([_trigPos select 0,_trigPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
		sleep 0.5;
		_attempts = _attempts +1;
		_trigPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		diag_log format ["DEBUG :: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];
	};
	_trigger = createTrigger ["EmptyDetector",[_trigPos select 0,_trigPos select 1]];
	_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [5, 7, 20, true];
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigOnAct, "[thisTrigger] spawn fnc_despawnBandits_NR;"];
	if (DZAI_debugMarkers == 1) then {
		private ["_markername","_marker"];
		_markername = format["trigger_%1",_trigger];
		_marker = createMarker[_markername,_trigPos];
		_marker setMarkerShape "ELLIPSE";
		_marker setMarkerType "Flag";
		_marker setMarkerBrush "SOLID";
		_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
		_marker setMarkerColor "ColorYellow";
		_marker setMarkerAlpha 0.8;		//Dark yellow = Trigger in ready state.
	};
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Dynamic trigger %1 of %2 spawned at %3 (spawnTriggers_random). Next trigger spawning in 5 seconds.",_i,_numTriggers,_trigPos];};
	DZAI_curDynTrigs = DZAI_curDynTrigs + 1;
	DZAI_dynTriggerArray set [(count DZAI_dynTriggerArray),_trigger];
	//diag_log format ["DEBUG :: Contents of DZAI_dynTriggerArray: %1.",DZAI_dynTriggerArray];
	sleep 5;
};
[] execVM '\z\addons\dayz_server\DZAI\scripts\dynTrigger_manager.sqf';
