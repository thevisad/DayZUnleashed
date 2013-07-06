/*
	DZAI Dynamic Trigger Manager
	
	Description: Periodically selects a random dynamic trigger. If it is inactive and not marked for despawn, a probability check determines whether or not to move the trigger to a randomized location.
	
	Last updated: 6:49 PM 6/21/2013
*/
private ["_randomizeCount"];
_randomizeCount = ceil(0.25*DZAI_dynTriggersMax);
diag_log format["Starting DZAI Dynamic Trigger Manager in %1 seconds. Number of dynamic triggers to randomize per cycle: %2",DZAI_dynManagerRate,_randomizeCount];
sleep DZAI_dynManagerRate;

while {true} do {
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Randomizing %1 dynamic trigger locations... (dynTrigger_manager)",_randomizeCount];};
	for "_i" from 1 to _randomizeCount do {
	private ["_trigger","_isCleaning"];
		if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Selecting a random dynamic trigger to randomize location. (dynTrigger_manager)";};
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
			_trigger setPos [_newPos select 0,_newPos select 1];
			if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: A dynamic trigger has been relocated to %1. (dynTrigger_manager)",_newPos];};
			if (DZAI_debugMarkers > 0) then {
				private["_marker"];
				_marker = format["trigger_%1",_trigger];
				_marker setMarkerPos _newPos;
				_marker setMarkerColor "ColorYellow";			//Reset trigger indicator to Ready.
				_marker setMarkerAlpha 0.8;
			};
		};
		sleep 5;
	};
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Finished randomizing %1 dynamic trigger locations. Next cycle in %2 seconds. (dynTrigger_manager)",_randomizeCount,DZAI_dynManagerRate];};
	sleep DZAI_dynManagerRate;
};
