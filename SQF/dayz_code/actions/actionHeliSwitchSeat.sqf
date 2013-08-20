//Script: actionHeliSwitchSeat.sqf
private["_vehicle","_actionId"];
_vehicle = vehicle (_this select 0);
//_actionId = _this select 2;
if (!isNull(driver _vehicle)) exitWith {cutText ["You may not move to the pilots seat until it is vacant.", "PLAIN DOWN"]};
//_vehicle removeAction _actionId;
moveOut player;
player moveInDriver _vehicle;
if (isEngineOn _vehicle) then {_vehicle engineOn true;};
//s_pilot_swapObj = objNull;
//s_pilot_swap = -1;
