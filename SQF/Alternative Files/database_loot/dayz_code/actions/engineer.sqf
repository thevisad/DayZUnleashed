private ["_array","_location","_dir","_classname","_magazine","_weapon"];

_array = _this select 3;
_location = player modeltoworld [0,0.5,0];
_dir = (getDir player) + 180;
_classname = _array select 0;
_magazine = _array select 1;
player removeMagazine _magazine;
player playActionNow "Medic";
call fnc_usec_engineer_removeActions;
r_action_engineer = false;
sleep 8;
[player,"Build"] call DZU_fnc_giveEXP;
_weapon = _classname createVehicle _location;
_weapon setDir _dir;
_weapon setpos _location;
player reveal _weapon;