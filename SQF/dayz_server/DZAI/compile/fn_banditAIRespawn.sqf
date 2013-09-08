/*
	fnc_staticAIDeath

	Usage: _victim call fnc_staticAIDeath;
	
	Description: Script is called when an AI unit is killed, and waits for the specified amount of time before respawning the unit into the same group it was part of previously.
	If the killed unit was the last surviving unit of its group, a dummy AI unit is created to occupy the group until a dead unit in the group is respawned.
	
	Last updated: 3:05 PM 6/24/2013
*/

private ["_victim","_sleepTime","_unitGroup","_trigger","_dummy","_unitsAlive"];

_victim = _this select 0;
_unitGroup = _this select 1;

_trigger = _unitGroup getVariable "trigger";
_unitsAlive = {alive _x} count (units _unitGroup);
//diag_log format ["%1 units alive in group.",_unitsAlive];

if (_unitsAlive == 0) then {
	_unitGroup setBehaviour "AWARE";
	_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
	[_dummy] joinSilent _unitGroup;
	_dummy setVehicleInit "this hideObject true;this allowDamage false;this enableSimulation false;"; processInitCommands;
	_dummy disableAI "FSM";
	_dummy disableAI "ANIM";
	_dummy disableAI "MOVE";
	_dummy disableAI "TARGET";
	_dummy disableAI "AUTOTARGET";
	_unitGroup setVariable ["dummyUnit",_dummy];
	if (DZAI_debugLevel > 0) then {diag_log format["DZAI Debug: Spawned 1 dummy AI unit for group %1. (fnc_staticAIDeath)",_unitGroup];};
	
	0 = [(time + DZAI_respawnTime),_trigger,_unitGroup] spawn fnc_respawnHandler;
};
