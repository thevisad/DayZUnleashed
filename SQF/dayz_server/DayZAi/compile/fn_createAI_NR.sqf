/*
	fn_createAI_NR
	
	Spawns a non-respawning AI unit. Called internally by spawnBandits_random, spawnBandits_bldgs, spawnBandits_markers.
	Usage: [_unitGroup,_spawnPos,_gradeChances] call fn_createAI;
	
	_unitGroup: Group to spawn AI unit. (Building-spawned AI: side 'resistance', Random/Marker-spawned AI: side 'east')
	_spawnPos: Position to create AI unit.
	_trigger: The trigger object responsible for spawning the AI unit.
	_gradeChances: weapongrade probabilities to be used for generating equipment
	
	Last updated: 4:36 PM 6/8/2013
	
*/
private ["_spawnPos","_type","_unit","_weapongrade","_unitGroup","_trigger"];
if (!isServer) exitWith {};

_unitGroup = _this select 0;
_spawnPos = _this select 1;
_trigger = _this select 2;

_type = DZAI_BanditTypes call BIS_fnc_selectRandom;							// Select skin of AI unit
_unit = _unitGroup createUnit [_type, _spawnPos, [], 0, "FORM"];					// Spawn the AI unit
[_unit] joinSilent _unitGroup;														// Add AI unit to group

_unit setVariable["gethit",[0,0,0,0]];												// Set unit's initial health statistics. (Structural, Body, Hands, Legs)
_unit setVariable["trigger",_trigger];

if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then {
	_unit addEventHandler ["Fired", {_this spawn ai_fired;}];};						// Unit firing causes zombie aggro in the area, like player. Called only if zombies are enabled, and zombie hostility is enabled.
_unit addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];					// Handle incoming damage. Note: AI durability can be modified in dayz_ai_variables.sqf
_unit addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;}]; 	// Killing this unit will increment player's bandit kill count.
_unit addEventHandler ["Killed",{_this spawn fnc_spawn_deathFlies;}];				// Spawn flies around AI bandit corpse.
_unit addEventHandler ["Killed",{_this call fnc_banditAIKilled;}];					// Update current AI count and generate additional loot on death.
_unit addEventHandler ["Killed",{_this spawn fnc_updateDead;}];						// Remove corpse after specified time.
_unit addEventHandler ["Killed",{(_this select 0) setDamage 1;}];					// "People die if they are killed" - Shirou Emiya
	
_unit setVehicleInit "[this] spawn fnc_aiBrain;";			// Background-running script that automatically reloads ammo when depleted, and sets hostility to nearby zombies.
_weapongrade = [DZAI_weaponGrades,DZAI_gradeChancesDyn] call fnc_selectRandomWeighted;
[_unit, _weapongrade] call fnc_unitSelectWeapon;									// Add rifle
[_unit, _weapongrade] call fnc_unitInventory;										// Add backpack and chance of binoculars
[_unit, _weapongrade] call fnc_setSkills;											// Set AI skill

_unit enableAI "TARGET";
_unit enableAI "AUTOTARGET";
_unit enableAI "MOVE";
_unit enableAI "ANIM";
_unit enableAI "FSM";
_unit allowDammage true;

processInitCommands;
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Spawned AI Type %1 with weapongrade %2 (fn_createAI).",_type,_weapongrade];};

_unit