/*
	fnc_randomizeTriggers
	
	Description:
	
	Last updated:	7:20 PM 7/13/2013
	
*/
private ["_randomizeCount","_trigger","_isCleaning","_attempts","_newPos","_marker"];

_randomizeCount = _this select 0;

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Randomizing %1 dynamic trigger locations... (fnc_randomizeTriggers)",_randomizeCount];};
for "_i" from 1 to _randomizeCount do {
private ["_trigger","_isCleaning"];
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Selecting a random dynamic trigger to randomize location. (fnc_randomizeTriggers)";};
	_trigger = DZAI_dynTriggerArray call BIS_fnc_selectRandom;
	_isCleaning = _trigger getVariable ["isCleaning",false];
	if ((!triggerActivated _trigger) && (!_isCleaning)) then {
	private ["_newPos","_attempts"];
		_attempts = 0;
		_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		while {(({([_newPos select 0,_newPos select 1] distance _x) < (2*DZAI_dynTriggerRadius - 2*DZAI_dynTriggerRadius*DZAI_dynOverlap)} count DZAI_dynTriggerArray) > 0)&&(_attempts < 3)} do {
			sleep 0.5;
			_attempts = _attempts +1;
			_newPos = [(getMarkerPos DZAI_centerMarker),random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
			if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Calculated trigger position intersects with at least 1 other trigger (attempt %1/3).",_attempts];};
		};
		_trigger setPos _newPos;
		if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: A dynamic trigger has been relocated to %1. (fnc_randomizeTriggers)",_newPos];};
		if (DZAI_debugMarkers > 0) then {
			private["_marker"];
			_marker = format["trigger_%1",_trigger];
			_marker setMarkerPos _newPos;
			_marker setMarkerColor "ColorYellow";			//Reset trigger indicator to Ready.
			_marker setMarkerAlpha 0.8;
		};
	};
	sleep 1;
};
