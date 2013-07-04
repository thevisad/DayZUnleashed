/*
	fnc_updateDead
	
	Description: Begins force despawn for dynamic AI when the entire group has been killed.
	
	Usage:
	
	Last Updated: 3:05 PM 6/24/2013
*/

private ["_victim","_unitsAlive","_trigger","_grpCount","_grpArray","_unitGroup","_dummy"];

_victim = _this select 0;
_trigger = _victim getVariable "trigger";
_unitGroup = (group _victim);

//Add unit to group's list of dead units.
_deadUnits = _unitGroup getVariable ["deadUnits",[]];
_deadUnits set [(count _deadUnits),_victim];
_unitGroup setVariable ["deadUnits",_deadUnits];

_unitsAlive = {alive _x} count (units _unitGroup);

//If all units in the group have died, create dummy AI unit to preserve group, then begin force despawn process.
if (_unitsAlive == 0) then {
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All units in group %1 are dead. Spawning temporary dummy unit for group. (fn_updateDead).",_unitGroup];};

	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";
	
	//_unitGroup setVariable ["groupKIA",true];

	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All groups spawned by trigger %1 are dead. Starting force respawn. (fn_updateDead).",_trigger];};
	_trigger setVariable ["forceDespawn",true];
	[_trigger] spawn fnc_despawnBandits_dynamic;	//force despawning even if players are present in trigger area.
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI group %1 killed, %2 units left alive in group. (fn_updateDead).",_unitGroup,_unitsAlive];};
