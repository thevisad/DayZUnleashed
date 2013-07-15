// ### Base Building DayZ 1.2 Client init settings ###

diag_log "Started executing user settings file.";						// Log start

if (!isDedicated) then {
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\take_itemFix.sqf"; 	// Take item dupe fix
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\player_bomb.sqf";		// This activates booby traps "will not set off all grave types"
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\initWall.sqf";		// Doesnt allow players to get out of vehicle through specified walls
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\build_list.sqf";		// build_list for building the arrays for Base Building
	_null = [] execVM "\z\addons\dayz_code\external\dy_work\take_backPackfix.sqf"; //backpack dupe fix
	player setVariable ["BIS_noCoreConversations", true];
};

diag_log "Finished executing user settings file.";						// Log finish