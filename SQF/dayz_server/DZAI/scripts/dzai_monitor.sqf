/*
	DZAI Server Monitor
	
	Description: Periodically reports current numbers of active AI units, static triggers, and dynamic triggers.
	
	Last updated: 4:25 PM 6/7/2013
*/

diag_log "Starting DZAI Server Monitor in 60 seconds.";
sleep 60;

while {true} do {
	if ((isNil "DZAI_numAIUnits") || (DZAI_numAIUnits < 0)) then {DZAI_numAIUnits = 0; diag_log "DEBUG :: Active AI count has been force reset to zero.";};
	diag_log format ["DZAI Monitor :: %1/%2 (cur/max) active AI units. %3 active static triggers. %4/%5 (active/total) dynamic triggers. %6 groups queued for respawn.",DZAI_numAIUnits,DZAI_maxAIUnits,DZAI_actTrigs,DZAI_actDynTrigs,DZAI_curDynTrigs,(count DZAI_respawnQueue)];
	sleep DZAI_monitorRate;
};
