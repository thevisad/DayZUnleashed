private["_player","_vehicle","_inVehicle","_isPilot","_vehDriver"];
_vehicle = _this select 0;
_player = _this select 1;
if (_player == player) then {
moveOut player;
sleep 0.01;
waitUntil {vehicle player == player};
sleep 0.01;
player moveInCargo _vehicle;
};