/*
	DZAI Functions
	
	Last Updated: 12:51 PM 7/19/2013
*/

waituntil {!isnil "bis_fnc_init"};
diag_log "[DZAI] Compiling DZAI functions.";
// [] call BIS_fnc_help;
//Compile general functions.
if (isNil "SHK_pos_getPos") then {call compile preprocessFile "\z\addons\dayz_server\DZAI\SHK_pos\shk_pos_init.sqf";};
BIS_fnc_selectRandom = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandom.sqf";	//Altered version
fnc_unitInventory = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitInventory.sqf";
fnc_unitSelectWeapon = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_unitSelectWeapon.sqf";
fnc_addLoot = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_addLoot.sqf";
if (DZAI_zombieEnemy && (DZAI_weaponNoise > 0)) then { // Optional Zed-to-AI aggro functions
	ai_fired = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_fired.sqf";	//Calculates weapon noise of AI unit
	ai_alertzombies = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\ai_alertzombies.sqf"; //AI weapon noise attracts zombie attention
};
fnc_banditAIKilled = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIKilled.sqf";
fnc_banditAIRespawn = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_banditAIRespawn.sqf";
fnc_selectRandomWeighted = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_selectRandomWeighted.sqf";
fnc_createGroup = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_createGroup.sqf";
fnc_damageAI = 					compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_damageHandlerAI.sqf";
fnc_initTrigger = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_initTrigger.sqf";
fnc_BIN_taskPatrol = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\BIN_taskPatrol.sqf";
if (DZAI_debugMarkers < 1) then {
	fnc_unit_resupply = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\unit_resupply.sqf";
} else {
	fnc_unit_resupply = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\unit_resupply_debug.sqf";
};
fnc_DZAI_customPatrol = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\DZAI_customPatrol.sqf";
fnc_updateDead = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_updateDead.sqf";
if (DZAI_findKiller) then {
	fnc_findKiller = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_findKiller.sqf";};
fnc_seekPlayer =				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_seekPlayer.sqf";
fnc_randomizeTriggers = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\fn_randomizeTriggers.sqf";
	
//Compile spawn scripts
fnc_spawnBandits = 				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits.sqf";
fnc_respawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnBandits.sqf";
fnc_respawnHandler = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\respawnHandler.sqf";
fnc_despawnBandits = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits.sqf";
fnc_spawnBandits_dynamic = 		compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\spawnBandits_dynamic.sqf";
fnc_despawnBandits_dynamic = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\spawn_functions\despawnBandits_dynamic.sqf";

//Helicopter patrol scripts
fnc_heliDespawn =				compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\heli_despawn.sqf";
if (DZAI_debugMarkers < 1) then {
	fnc_heliResupply = 			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\heli_resupply.sqf";
} else {
	fnc_heliResupply =			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\heli_resupply_debug.sqf";
};
fnc_spawnHeliPatrol	=			compile preprocessFileLineNumbers "\z\addons\dayz_server\DZAI\compile\spawn_heliPatrol.sqf";

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
	_trigger setTriggerTimeout [9, 12, 15, true];
	_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigStatements,"0 = [thisTrigger] spawn fnc_despawnBandits;"];
	//diag_log format ["DEBUG :: %1",_trigStatements];
	
	deleteMarker _spawnMarker;
	
	true
};

// [marker, [minAI, addAI], patrol_radius,[spawn_points (optional)], equip_type (optional, default 1), number_groups (optional, default 1)] spawn DZAI_createStaticSpawns;
// Function used to quickly create multiple static triggers (UNUSED)
/*
DZAI_createStaticSpawns = {
	{
		private ["_equipType","_numGroups","_trigStatements","_trigger","_centerPos","_deleteMarker"];
		_equipType = if ((count _x) > 4) then {_x select 4} else {1};
		_numGroups = if ((count _x) > 5) then {_x select 5} else {1};

		_trigStatements = format ["0 = [%1,%2,%3,thisTrigger,%4,%5,%6] call fnc_spawnBandits;",((_x select 1) select 0),((_x select 1) select 1),(_x select 2),(_x select 3),_equipType,_numGroups];
		_centerPos = [0,0,0];
		_deleteMarker = true;
		if ((typeName (_x select 0)) == "STRING") then {
			_centerPos = getMarkerPos (_x select 0);	//If marker name is provided, get position of marker
		} else {
			_centerPos = (_x select 0);				//If position is explicitly stated.
			_deleteMarker = false;
		};
		
		_trigger = createTrigger ["EmptyDetector", _centerPos];
		_trigger setTriggerArea [600, 600, 0, false];
		_trigger setTriggerActivation ["ANY", "PRESENT", true];
		_trigger setTriggerTimeout [10, 15, 20, true];
		_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;", _trigStatements, "0 = [thisTrigger] spawn fnc_despawnBandits;"];
		
		if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Created static AI spawn location at %1.",(_x select 0)];};
		if (_deleteMarker) then {
			deleteMarker (_x select 0);
		};
		sleep 0.05;
	} forEach _this;
	
	true
};
*/

//Miscellaneous  functions 
//------------------------------------------------------------------------------------------------------------------------

//DZAI group side assignment function. Detects when East side has too many groups, then switches to Resistance side.
DZAI_getFreeSide = {
	private["_groupSide"];
	if (({(side _x) == east} count allGroups) <= 140) then {
		_groupSide = east;
	} else {
		_groupSide = resistance;
		//diag_log "DZAI Warning: East side has exceeded 140 groups. Using Resistance as AI side.";
	};
	//diag_log format ["Assigned side %1 to AI group",_groupSide];
	
	_groupSide
};

//Selects a random dynamic trigger to use as AI helicopter's next waypoint
DZAI_heliRandomPatrol = {
	private ["_unitGroup"];
	_unitGroup = _this select 0;

	[_unitGroup,0] setWPPos (DZAI_heliWaypoints call BIS_fnc_selectRandom); 
	_unitGroup setCurrentWaypoint [_unitGroup,0];
	true
};

//Sets skills for unit based on their weapongrade value.
DZAI_setSkills = {
	private["_unit","_weapongrade","_skillArray"];
	_unit = _this select 0;
	_weapongrade = _this select 1;

	switch (_weapongrade) do {
		case 0: {
			_skillArray = DZAI_skill0;
		};
		case 1: {
			_skillArray = DZAI_skill1;
		};
		case 2: {
			_skillArray = DZAI_skill2;
		};
		case 3: {
			_skillArray = DZAI_skill3;
		};
		case "helicrew": {
			_skillArray = DZAI_heliCrewSkills;
		};
	};
	{
		_unit setskill [_x select 0,((_x select 1) + random (_x select 2))];
	} foreach _skillArray;
};

//Spawns flies on AI corpse
DZAI_deathFlies = {
	private["_unit","_position"];
	_unit = _this select 0;
	_position = getPosATL _unit;
	_unit = [_position, 0.1, 1.5] call bis_fnc_flies;
	true
};

//Returns probabilities of generating different grades of weapons based on equipType value
DZAI_getGradeChances = {
	private ["_equipType", "_gradeChances"];
	_equipType = _this select 0;
	_gradeChances = [];

	switch (_equipType) do {
		case 0: {_gradeChances = DZAI_gradeChances0;};
		case 1: {_gradeChances = DZAI_gradeChances1;};
		case 2: {_gradeChances = DZAI_gradeChances2;};
		case 3: {_gradeChances = DZAI_gradeChances3;};
		case default {_gradeChances = DZAI_gradeChancesDyn};
	};

	_gradeChances
};

//Randomizes AI helicopter waypoint pool
DZAI_randomizeHeliWPs = {
	if (DZA_debugLevel > 0) then {diag_log "DZAI Debug: Generating waypoints for AI helicopter patrol.";};
	for "_i" from 0 to ((10 max DZAI_dynTriggersMax) - 1) do {
		private["_wp"];
		_wp = [(getMarkerPos DZAI_centerMarker),(300 + random(DZAI_centerSize)),random(360),false] call SHK_pos;
		DZAI_heliWaypoints set [_i,_wp];
		//diag_log format ["DEBUG :: Generated waypoint %1 of %2 for AI helicopter patrol at %3.",_i,(5 max DZAI_dynTriggersMax),_wp];
		sleep 0.01;
	};
	true
};

//Convert seconds to formatted time (days/hours/minutes/seconds)
DZAI_getUptime = {
	private ["_iS","_oS","_oM","_oH","_oD"];

	_iS = time;
	
	_oS = floor (_iS % 60);
	_oM = floor ((_iS % 3600)/60);
	_oH = floor ((_iS % 86400)/3600);
	_oD = floor ((_iS % 2592000)/86400);
	
	[_oD,_oH,_oM,_oS]
};

//Combines two arrays and returns the combined array. Does not add duplicate values. Second array is appended to first array.
DZAI_append = {
	{
		if !(_x in (_this select 0)) then {
			(_this select 0) set [(count (_this select 0)),_x];
		};
	} forEach (_this select 1);
	
	(_this select 0)
};
