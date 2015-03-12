private [];

PVDZ_plr_DeathB = [player];
publicVariableServer  "PVDZ_plr_DeathB";

waitUntil {!isNil "PVDZ_plr_DeathBResult"};

if((count PVDZ_plr_DeathBResult) > 0) then {
	// load death message board ui
	call EpochDeathBoardLoad;
} else {
	cutText [(localize "str_epoch_player_36"), "PLAIN DOWN"];
	PVDZ_plr_DeathBResult = nil;
};