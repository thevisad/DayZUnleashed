/*
		fnc_banditAIKilled
		
		Description: Adds loot to AI corpse if killed by a player. Script is shared between AI spawned from static and dynamic triggers.
		
        Usage: [_unit,_weapongrade] spawn fnc_banditAIKilled;
		
		Last updated: 5:27 PM 6/25/2013
*/

private["_weapongrade","_victim","_killer","_trigger","_gradeChances","_unitGroup","_groupSize"];
_victim = _this select 0;
_killer = _this select 1;

//Remove temporary NVGs.
if ((_victim getVariable["removeNVG",0]) == 1) then {_victim removeWeapon "NVGoggles";}; //Remove temporary NVGs from AI.

//Set study_body variables.
_victim setVariable["bodyName","DZAI Unit",true];
_victim setVariable["deathType","bled",true];

//Update AI count
_unitGroup = (group _victim);
_groupSize = _unitGroup getVariable "groupSize";
_groupSize = _groupSize - 1;
DZAI_numAIUnits = DZAI_numAIUnits - 1;
_unitGroup setVariable ["groupSize",_groupSize];
if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Group %1 has group size: %2.",_unitGroup,_groupSize];};

if (!isPlayer _killer) exitWith {};

_unitGroup setBehaviour "COMBAT";

_trigger = _victim getVariable "trigger";
_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances2];

if (DZAI_findKiller) then {0 = [_victim,_killer,_unitGroup] spawn fnc_findKiller;};

_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI killed by player. Generating loot with weapongrade %1 (fn_banditAIKilled).",_weapongrade];};
0 = [_victim, _weapongrade] spawn fnc_unitSelectPistol;				// Add sidearm
0 = [_victim] spawn fnc_unitConsumables;							// Add food, medical, misc, skin
0 = [_victim, _weapongrade] spawn fnc_unitTools;					// Add tools and gadget
