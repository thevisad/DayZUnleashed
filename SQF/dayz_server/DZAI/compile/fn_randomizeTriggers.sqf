/*
	fnc_randomizeTriggers
	
	Description:
	
	Last updated:	3:15 PM 8/10/2013
	
*/
private ["_randomizeCount","_trigger"];

_randomizeCount = _this select 0;

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Randomizing %1 dynamic trigger locations... (fnc_randomizeTriggers)",_randomizeCount];};
for "_i" from 1 to _randomizeCount do {
private ["_trigger"];
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Selecting a random dynamic trigger to randomize location. (fnc_randomizeTriggers)";};
	_trigger = DZAI_dynTriggerArray call BIS_fnc_selectRandom2;
	//Select only dynamic triggers that haven't spawned any AI and not in cleaning state
	if ((count (_trigger getVariable ["GroupArray",[]]) == 0) && (!(_trigger getVariable ["isCleaning",false]))) then {
		private ["_newPos"];
		_newPos = _trigger call DZAI_relocDynTrigger;
		if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: A dynamic trigger has been relocated to %1. (fnc_randomizeTriggers)",_newPos];};
	};
	sleep 1;
};
