/*
		fnc_banditAIKilled
		
		Description: Adds loot to AI corpse if killed by a player. Script is shared between AI spawned from static and dynamic triggers.
		
        Usage: [_unit,_killer] spawn fnc_banditAIKilled;
		
		Last updated: 2:52 AM 11/9/2013
*/

private["_victim","_killer","_unitGroup","_groupSize"];
_victim = _this select 0;
_killer = _this select 1;
_unitGroup = _this select 2;

//Remove temporary NVGs.
if ((_victim getVariable["removeNVG",0]) == 1) then {_victim removeWeapon "NVGoggles";}; //Remove temporary NVGs from AI.

//Update AI count
_groupSize = _unitGroup getVariable "GroupSize";
_groupSize = _groupSize - 1;
DZAI_numAIUnits = DZAI_numAIUnits - 1;
_unitGroup setVariable ["GroupSize",_groupSize];
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size: %2.",_unitGroup,_groupSize];};

if (isPlayer _killer) then {
	private ["_trigger","_equipType","_weapongrade"];

	_unitGroup reveal [vehicle _killer,4];
	_unitGroup setFormDir ([(leader _unitGroup),_killer] call BIS_fnc_dirTo);
	_trigger = _unitGroup getVariable ["trigger",objNull];
	if (DZAI_findKiller) then {_unitGroup setBehaviour "AWARE"; 0 = [_trigger,_killer,_unitGroup] spawn DZAI_huntKiller} else {_unitGroup setBehaviour "COMBAT"};

	//_gradeChances = if (!isNil "_trigger") then {_trigger getVariable ["gradeChances",DZAI_gradeChances1]} else {DZAI_gradeChances1};
	_equipType = if (!isNil "_trigger") then {_trigger getVariable ["equipType",1]} else {1};
	
	//_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
	_weapongrade = _equipType call DZAI_getWeapongrade;
	0 = [_victim,_weapongrade] spawn DZAI_addLoot;
	0 = [_killer,_victim,"banditKills"] call DZAI_countKills;
} else {
	if (_killer != _victim) then {
		{
			_victim removeMagazines _x;
		} forEach (magazines _victim);
	};
};

if !((_victim getVariable ["CanGivePistol",true]) && (_victim getVariable ["unconscious",false])) then {
	private ["_anim"];
	_anim = if ((animationState _victim) in ["amovppnemrunsnonwnondf","amovppnemstpsnonwnondnon","amovppnemstpsraswrfldnon","amovppnemsprslowwrfldf","aidlppnemstpsnonwnondnon0s","aidlppnemstpsnonwnondnon01"]) then {"adthppnemstpsraswpstdnon_2"} else {"adthpercmstpslowwrfldnon_4"};
	_nul = [objNull, _victim, rSWITCHMOVE, _anim] call RE; 
};

//Set study_body variables.
_victim setVariable ["bodyName",_victim getVariable ["bodyName","unknown"],true];		//Broadcast the unit's name (was previously a private variable).
_victim setVariable ["deathType",_victim getVariable ["deathType","bled"],true];
_victim setVariable ["DZAI_deathTime",time];
_victim setVariable ["unconscious",true];

_nul = _victim spawn DZAI_deathFlies;
_victim enableSimulation false;

true
