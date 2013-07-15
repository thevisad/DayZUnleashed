//Script: actionHeliSwitchSeat.sqf
private["_vehicle","_vehDriver","_player","_actionId","_position"];
_vehicle = vehicle (_this select 0);
_vehDriver = driver _vehicle;
_player = _this select 1;
_actionId = _this select 2;
//_isPilotAvalible = !isNull _vehDriver; 
if(!isNull _vehDriver) then {   //Kick Pilot
    dzuSwapPilot = [_vehicle,_vehDriver];
    publicVariable "dzuSwapPilot";
};

_vehicle removeAction _actionId;
s_pilot_swapObj = objNull;
s_pilot_swap = -1;

moveOut player;

waitUntil {vehicle player == player};
_position = _vehicle worldToModel (getposATL player);

sleep 0.01;
player attachTo [_vehicle,_position];

waitUntil {isNull (driver _vehicle)};
sleep 0.01;
detach player;    
player moveInDriver _vehicle;
_vehicle engineon true;