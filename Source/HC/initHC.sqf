player_spawn_2 = compile preprocessFileLineNumbers "fixes\player_spawn_2.sqf";
call compile preprocessFileLineNumbers "HCsignals.sqf"; // passing signals;
nearest_player = compile preprocessFileLineNumbers "nearest_player.sqf";
zombie_loiterHC = compile preprocessFileLineNumbers "zombie_loiterHC.sqf";
zombie_generateHC = compile preprocessFileLineNumbers "zombie_generateHC.sqf";
building_spawnZombiesHC = compile preprocessFileLineNumbers "building_spawnZombiesHC.sqf";
wild_spawnZombiesHC = compile preprocessFileLineNumbers "wild_spawnZombiesHC.sqf";
player_spawnCheck = compile preprocessFileLineNumbers "player_spawnCheck.sqf";
HCdo_spawnRCV = compile preprocessFileLineNumbers "HCdo_spawnRCV.sqf";
call compile preprocessFileLineNumbers "handle_HCdo_spawnRCV.sqf";

