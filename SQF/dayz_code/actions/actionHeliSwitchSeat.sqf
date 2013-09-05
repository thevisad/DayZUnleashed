//Script: actionHeliSwitchSeat.sqf
private["_vehicle"];
_vehicle = vehicle (_this select 0);
if (!isNull(driver _vehicle)) exitWith {cutText ["You may not move to the pilot seat until it is vacant.", "PLAIN DOWN"]};
moveOut player;
player moveInDriver _vehicle;
if ( (getPos player)select 2 > 0 )then {_vehicle engineOn true;};
