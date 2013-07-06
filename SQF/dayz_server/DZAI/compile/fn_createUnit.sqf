/*
	fnc_createUnit
	
	Description: Spawns an independent AI unit. Called internally by spawnBandits_random, respawnBandits_random, spawnBandits_bldgs, respawnBandits_bldgs, spawnBandits_markers, respawnBandits_markers.
	
	Usage: [_unitGroup,_spawnPos,_patrolDist,_trigger,_respawnLoc,_respawnType] call fnc_createUnit;
	
	_unitGroup: Group to spawn AI unit. (Building-spawned AI: side 'resistance', Random/Marker-spawned AI: side 'east')
	_spawnPos: Position to create AI unit.
	_trigger: The trigger object responsible for spawning the AI unit.
	_respawnType: 2 (Respawn at a building near the trigger), 3 (Respawn randomly at a randomly selected marker)
	_gradeChances: weapongrade probabilities to be used for generating equipment
	
	Last updated: 1:24 PM 6/26/2013
	
*/
private ["_totalAI","_spawnPos","_unitGroup","_trigger","_gradeChances"];
if (!isServer) exitWith {};

_totalAI = _this select 0;
_unitGroup = _this select 1;
_spawnPos = _this select 2;
_trigger = _this select 3;
_gradeChances = if ((count _this) > 4) then {_this select 4} else {DZAI_gradeChancesDyn};

for "_i" from 1 to _totalAI do {
	private ["_type","_unit","_weapongrade"];
	_type = DZAI_BanditTypes call BIS_fnc_selectRandom;									// Select skin of AI unit
	_unit = _unitGroup createUnit [_type, _spawnPos, [], 0, "FORM"];					// Spawn the AI unit
	[_unit] joinSilent _unitGroup;														// Add AI unit to group

	_unit setVariable ["trigger",_trigger];												// Record the trigger from which the AI unit was spawned
	if ((count _this) < 4) then {
		//Dynamic AI
		_unit addEventHandler ["Killed",{_this spawn fnc_updateDead;}];					// Remove corpse after specified time.
	} else {
		//Static AI
		_unit addEventHandler ["Killed",{_this spawn fnc_banditAIRespawn;}];			// Respawns AI using the same parameters they were spawned with.
		_unit setVariable ["unitGroup",_unitGroup];
	};

	if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then {
		_unit addEventHandler ["Fired", {_this spawn ai_fired;}];};						// Unit firing causes zombie aggro in the area, like player. Called only if zombies are enabled, and zombie hostility is enabled.
	_unit addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];					// Handle incoming damage. Note: AI durability can be modified in dayz_ai_variables.sqf
	_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; 	// Killing this unit will increment player's bandit kill count.
	_unit addEventHandler ["Killed",{_this spawn fnc_spawn_deathFlies;}];				// Spawn flies around AI bandit corpse.
	_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];					// Update current AI count and generate additional loot on death.
	_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];					// "People die if they are killed" - Shirou Emiya
		
	_unit setVehicleInit "if (isServer) then {[this] spawn fnc_aiBrain;};";			// Background-running script that automatically reloads ammo when depleted, and sets hostility to nearby zombies
	_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
	[_unit, _weapongrade] call fnc_unitSelectWeapon;									// Add rifle
	0 = [_unit, _weapongrade] spawn fnc_unitInventory;									// Add backpack and chance of binoculars
	0 = [_unit, _weapongrade] spawn fnc_setSkills;										// Set AI skill

	_unit enableAI "TARGET";
	_unit enableAI "AUTOTARGET";
	_unit enableAI "MOVE";
	_unit enableAI "ANIM";
	_unit enableAI "FSM";
	_unit allowDammage true;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Spawned AI Type %1 with weapongrade %2 (fn_createUnit).",_type,_weapongrade];};
};

_unitGroup selectLeader ((units _unitGroup) select 0);
_unitGroup allowFleeing 0;
processInitCommands;
