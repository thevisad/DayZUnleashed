/*
	fnc_updateDead
	
	Description:
	
	Usage:
	
	Last Updated: 1:27 PM 6/8/2013
*/

private ["_victim","_unitsAlive","_trigger","_deadGroups","_grpCount","_grpArray","_unitGroup","_dummy"];

_victim = _this select 0;
_trigger = _victim getVariable "trigger";
_deadGroups = -1;
_unitGroup = (group _victim);

_unitsAlive = {alive _x} count (units _unitGroup);

if (_unitsAlive == 0) then {	//Continue only when all units of the group have died.
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All units in group %1 are dead. (fn_updateDead).",_unitGroup];};

	//Create temporary dummy unit, will be deleted during despawn process.
	//diag_log format ["DEBUG :: Creating temporary dummy unit for Group %1.",_unitGroup];
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";
	
	_deadGroups = _trigger getVariable ["deadGroups",0];
	_deadGroups = _deadGroups + 1;
	_trigger setVariable ["deadGroups",_deadGroups];

	_grpArray = _trigger getVariable ["GroupArray",[_unitGroup]];
	_grpCount = (count _grpArray);

	if (_deadGroups >= _grpCount) then {	//Continue only when all groups of the trigger have died
		if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: All groups spawned by trigger %1 are dead. Starting force respawn. (fn_updateDead).",_trigger];};
		_trigger setVariable ["forceDespawn",true];
		[_trigger] spawn fnc_despawnBandits_NR;	//force despawning even if players are present in trigger area.
	};
};

if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: AI killed, deleting body in %1 seconds. (fn_updateDead).",DZAI_dynRemoveDeadWait];};
sleep DZAI_dynRemoveDeadWait;

deleteVehicle _victim;
