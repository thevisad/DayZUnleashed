//Script: heli_unlockControls.sqf
/*
private["_player","_vehicle","_ctrlLockState","_actionId"];
_vehicle = vehicle (_this select 0);
_player = _this select 1;
_actionId = _this select 2;
//_ctrlLockState = !(_vehicle getVariable["heliContrlsUnlocked",false]); 
_ctrlLockState = !(_this select 3);
_vehicle setVariable ["heliContrlsUnlocked", _ctrlLockState, true];
_vehicle removeAction _actionId;
s_pilot_lockObj = objNull;
s_pilot_lock = -1;
*/