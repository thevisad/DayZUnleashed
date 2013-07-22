/*
	heli_despawn
	
	Description:
	
	Last updated: 7:25 PM 7/9/2013
	
*/

if (!isServer) exitWith {};

private ["_helicopter","_unitGroup","_dummy","_deleteQueue"];

_helicopter = _this select 0;
_unitGroup = _helicopter getVariable "unitGroup";

_dummy = _unitGroup createUnit ["Survivor2_DZ",[0,0,0],[],0,"FORM"];
[_dummy] joinSilent _unitGroup;
_dummy setVehicleInit "this hideObject true;this allowDamage false;"; processInitCommands;
_dummy disableAI "FSM";
_dummy disableAI "ANIM";
_dummy disableAI "MOVE";
_dummy disableAI "TARGET";
_dummy disableAI "AUTOTARGET";

if (DZAI_debugLevel > 1) then {
	diag_log format ["DZAI Extended Debug: Helicopter %1 is in group %2.",_helicopter,_unitGroup];
	diag_log format ["DZAI Extended Debug: Dummy unit placed in group %1.",_unitGroup];
};

_deleteQueue = [];
//Kill any surviving helicopter crew members (but not the dummy unit) and add them to a queue for deletion
{
	if (_x != _dummy) then {
		if (alive _x) then {_x setDamage 1};
		_deleteQueue set [(count _deleteQueue),_x];
	};
	sleep 0.1;
} forEach (units _unitGroup);

if (DZAI_debugLevel > 0) then {
	diag_log format ["DZAI Debug: AI helicopter patrol destroyed. Deleting %1 units (1 dummy unit) in group %2 in %3 seconds.",count (units _unitGroup),_unitGroup,DZAI_respawnTime];
	//diag_log format ["DZAI Debug: Units to delete: %1. Vehicle to delete: %2.",_deleteQueue,_helicopter];
};

DZAI_curHeliPatrols = DZAI_curHeliPatrols - 1;
sleep 300;

//DZAI_actHeliGroups = DZAI_actHeliGroups - [_unitGroup];
{
	deleteVehicle _x;
	sleep 0.1;
} forEach _deleteQueue;
deleteVehicle _dummy;
deleteVehicle _helicopter;
deleteGroup _unitGroup;
	
if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: AI helicopter wreck and crew bodies cleaned up.";};
