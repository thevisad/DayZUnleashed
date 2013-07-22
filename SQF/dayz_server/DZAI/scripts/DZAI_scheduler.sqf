/*
	DZAI Scheduler
	
	Description:
	
	Last updated: 7:39 PM 7/13/2013
*/
private ["_randomizeCount"];

diag_log "Spawning AI helicopter patrols and dynamic triggers in 30 seconds.";

sleep 30;

if (DZAI_verifyTables) then {
	waitUntil {sleep 0.1; !isNil "DZAI_classnamesVerified"};	//Wait for DZAI to finish verifying classname arrays.
} else {
	waitUntil {sleep 0.1; !isNil "DZAI_weaponsInitialized"};	//Wait for DZAI to finish building weapon classname arrays.
};

if (DZAI_dynAISpawns) then {
	_dynTriggers = [DZAI_dynTriggersMax] execVM '\z\addons\dayz_server\DZAI\scripts\spawnTriggers_random.sqf';
	waitUntil {sleep 1; scriptDone _dynTriggers};
	_randomizeCount = ceil(0.25*DZAI_dynTriggersMax);
};
sleep 3;
if (DZAI_aiHeliPatrols) then {
	_helipatrols = [] spawn fnc_spawnHeliPatrol;
	waitUntil {sleep 1; scriptDone _helipatrols};
};

diag_log "Starting DZAI Scheduler in 15 minutes.";
sleep 900;

while {true} do {
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Scheduler is now running.";};
	if (DZAI_dynAISpawns) then {
		_dynTriggers = [_randomizeCount] spawn fnc_randomizeTriggers;
		waitUntil {sleep 1; scriptDone _dynTriggers};
	};
	sleep 3;
	if (DZAI_aiHeliPatrols) then {
		_helipatrols = [] spawn fnc_spawnHeliPatrol;
		waitUntil {sleep 1; scriptDone _helipatrols};
	};
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Scheduler is returning to sleeping state.";};
	sleep 900;
};
