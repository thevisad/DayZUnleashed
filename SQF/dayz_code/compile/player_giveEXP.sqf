private["_player","_type"];
_player = (_this select 0);
if(_player == player) then {
    _type = (_this select 1);
    [player,_type] call DZU_fnc_giveEXP;    
};
