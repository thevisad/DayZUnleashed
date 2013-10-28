//[unit, selectionName, damage, source, projectile]
//will only run when local to the created object
//record any key hits to the required selection
private["_array","_zed","_killer","_type","_kills"];

_array = _this select 0;
_zed = _array select 0;
_killer = _array select 1;
_type = _this select 1;

if (local _zed) then {
	_kills = _killer getVariable[_type,0];
	_killer setVariable[_type,(_kills + 1),true];
    if(_killer == player) then {
        [player,"Combat_Zed"] call DZU_fnc_giveEXP;
    } else{ 
        PVDZ_plr_exp =[_killer,"Combat_Zed"];
        publicVariable "PVDZ_plr_exp";
    };
};