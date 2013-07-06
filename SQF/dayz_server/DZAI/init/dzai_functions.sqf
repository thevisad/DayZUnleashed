/*
	DZAI Functions
	
	Last Updated: 11:30 AM 6/28/2013
*/

waituntil {!isnil "bis_fnc_init"};
diag_log "[DZAI] Compiling DZAI functions.";
// [] call BIS_fnc_help;
//Compile general functions.
BIS_fnc_selectRandom = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandom.sqf";	//Altered version
fn_setSkills = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_setSkills.sqf";
fnc_spawn_deathFlies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_spawn_deathFlies.sqf";
fnc_unitConsumables = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitConsumables.sqf";
fnc_unitInventory = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitInventory.sqf";
fnc_unitTools = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitTools.sqf";
fnc_unitSelectWeapon = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectWeapon.sqf";
fnc_unitSelectPistol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectPistol.sqf";
if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then { // Optional AI-to-Z hostility
	ai_fired = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
	ai_alertzombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
};
fnc_banditAIKilled = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIKilled.sqf";
fnc_banditAIRespawn = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIRespawn.sqf";
fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandomWeighted.sqf";
fnc_createUnit = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createUnit.sqf";
fnc_damageAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_damageHandlerAI.sqf";
fnc_getGradeChances =			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_getGradeChances.sqf";
fnc_initTrigger = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_initTrigger.sqf";
fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\BIN_taskPatrol.sqf";
if (DZAI_debugMarkers < 1) then {
	fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain.sqf";
} else {
	fnc_aiBrain = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\aiBrain_debug.sqf";
};
fnc_DZAI_customPatrol = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\DZAI_customPatrol.sqf";
fnc_updateDead = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_updateDead.sqf";
if (DZAI_findKiller) then {
	fnc_findKiller = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_findKiller.sqf";};
fnc_seekPlayer =				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_seekPlayer.sqf";
	
//Compile spawn scripts
fnc_spawnBandits = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits.sqf";
fnc_respawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnBandits.sqf";
fnc_respawnHandler = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnHandler.sqf";
fnc_despawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits.sqf";
fnc_spawnBandits_dynamic = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_dynamic.sqf";
fnc_despawnBandits_dynamic = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_dynamic.sqf";

//Wrapper function for compatibility with old spawnBandits format. Uncomment the section below to enable.
/*
fnc_spawnBandits_bldgs = 	{
	private ["_equipType","_numGroups"];
	_equipType = if ((count _this) > 4) then {_this select 4} else {1};
	_numGroups = if ((count _this) > 5) then {_this select 5} else {1};
	0 = [_this select 0,_this select 1,_this select 2,_this select 3,[],_equipType,_numGroups] call fnc_spawnBandits;
	true
};
	
//Wrapper function for compatibility with old spawnBandits format.
fnc_spawnBandits_markers  = 	{
	private ["_equipType","_numGroups"];
	_equipType = if ((count _this) > 5) then {_this select 5} else {1};
	_numGroups = if ((count _this) > 6) then {_this select 6} else {1};
	0 = [_this select 0,_this select 1,_this select 2,_this select 3,_this select 4,_equipType,_numGroups] call fnc_spawnBandits;
	true
};
*/

//DZAI custom spawns function.
DZAI_spawn = {
	private ["_spawnMarker","_patrolRadius","_trigStatements","_trigger","_positionArray","_positions"];
	
	_spawnMarker = _this select 0;

	_spawnMarker setMarkerAlpha 0;
	_patrolRadius = ((getMarkerSize _spawnMarker) select 0) min ((getMarkerSize _spawnMarker) select 1);
	_positions = (1 + ceil (_patrolRadius/25));
	_positionArray = [];
	for "_i" from 1 to _positions do {
		private["_pos"];
		_pos = [_spawnMarker,false] call SHK_pos;
		_positionArray set [(count _positionArray),_pos];
	};
	
	_trigStatements = format ["0 = [%1,0,%2,thisTrigger,%4,%3] call fnc_spawnBandits;",(_this select 1),_patrolRadius,(_this select 2),_positionArray];
	_trigger = createTrigger ["EmptyDetector", getMarkerPos(_spawnMarker)];
	_trigger setTriggerArea [600, 600, 0, false];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerTimeout [15, 17, 20, true];
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigStatements,"0 = [thisTrigger] spawn fnc_despawnBandits;"];
	//diag_log format ["DEBUG :: %1",_trigStatements];
	
	true
};

DZAI_createGroup = {
	private["_unitGroup"];
	if (({(side _x) == EAST} count allGroups) <= 140) then {
		_unitGroup = createGroup east;
	} else {
		_unitGroup = createGroup resistance;
		diag_log "DZAI Warning: East side has exceeded 140 groups. Using Resistance as AI side.";
	};
	_unitGroup
};