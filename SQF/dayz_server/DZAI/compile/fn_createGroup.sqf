/*
	fnc_createGroup
	
	Description: Spawns an independent AI unit. Called internally by spawnBandits_random, respawnBandits_random, spawnBandits_bldgs, respawnBandits_bldgs, spawnBandits_markers, respawnBandits_markers.
	
	_unitGroup: Group to spawn AI unit. (Building-spawned AI: side 'resistance', Random/Marker-spawned AI: side 'east')
	_spawnPos: Position to create AI unit.
	_trigger: The trigger object responsible for spawning the AI unit.
	_gradeChances: weapongrade probabilities to be used for generating equipment
	
	Last updated: 2:22 AM 7/29/2013
	
*/
private ["_totalAI","_spawnPos","_unitGroup","_trigger","_gradeChances","_unitType","_attempts","_baseDist","_dummy"];
if (!isServer) exitWith {};
	
_totalAI = _this select 0;
_unitGroup = if (isNull (_this select 1)) then {createGroup (call DZAI_getFreeSide)} else {_this select 1};
_spawnPos = _this select 2;
_trigger = _this select 3;
_gradeChances = if ((count _this) > 4) then {_this select 4} else {DZAI_gradeChancesDyn};

_pos = [];
_attempts = 0;
_baseDist = 100;

while {((count _pos) < 1)&&(_attempts < 3)} do {
	_pos = _spawnPos findEmptyPosition [0.5,_baseDist,"Land_Ind_BoardsPack2"];
	if ((count _pos) > 1) then {
		_pos = _pos isFlatEmpty [0,0,0.75,5,0,false,ObjNull];
	};
	_baseDist = (_baseDist + 75);	_attempts = (_attempts + 1);
};

if ((count _pos) < 1) then {
	_pos = [_spawnPos,0,100,0.5,0,2000,0] call BIS_fnc_findSafePos;
	if ((_pos distance _spawnPos) > 200) then {_pos = _spawnPos;};
	_attempts = (_attempts + 1);
};

_pos set [2,0];

if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Found spawn position at %3 meters away at position %1 after %2 attempts.",_pos,_attempts,(_pos distance _spawnPos)]};

for "_i" from 1 to _totalAI do {
	private ["_type","_unit","_weapongrade"];
	_type = DZAI_BanditTypes call BIS_fnc_selectRandom2;								// Select skin of AI unit
	_unit = _unitGroup createUnit [_type, _pos, [], 0, "FORM"];							// Spawn the AI unit
	_unit setPosATL _pos;
	[_unit] joinSilent _unitGroup;														// Add AI unit to group

	_unit setVariable ["bodyName",(name _unit)];										// Set unit name
	_unit setVariable ["gethit",[0,0,0,0]];												// Set unit health
	_unit setVariable ["unconscious",false];											// Set unit consciousness

	if (DZAI_zAggro) then {
		_unit addEventHandler ["Fired", {_this spawn ai_fired;}];};						// Unit firing causes zombie aggro in the area, like player.
	if (DZAI_taserAI) then {
		_unit addEventHandler ["HandleDamage",{_this call DDOPP_taser_handleHit;_this call fnc_damageAI;}];
	} else {
		_unit addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];};
	_unit addEventHandler ["Killed",{_this call DZAI_unitDeath;[_this,"banditKills"] call local_eventKill;(_this select 0) setDamage 1;}];

	_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
	[_unit, _weapongrade] call fnc_unitLoadout;											// Assign unit loadout
	0 = [_unit, _weapongrade] spawn DZAI_setSkills;										// Set AI skill
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Spawned AI Type %1 with weapongrade %2 for group %3 (fnc_createGroup).",_type,_weapongrade,_unitGroup];};
};

//Delete dummy if it exists, and clear group's "dummy" variable.
_dummy = _unitGroup getVariable "dummyUnit";
if (!isNil "_dummy") then {
	[_dummy] joinSilent grpNull;
	deleteVehicle _dummy;
	_unitGroup setVariable ["dummyUnit",nil];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Deleted 1 dummy AI unit for group %1. (fnc_createGroup)",_unitGroup];};
};

_unitGroup selectLeader ((units _unitGroup) select 0);
_unitGroup setVariable ["groupSize",_totalAI];

{
	_nul = [_x] spawn fnc_unit_resupply;
} forEach (units _unitGroup);

_unitGroup
