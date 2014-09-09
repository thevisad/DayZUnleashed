if (isServer) exitWith {};
disableSerialization;
_display = findDisplay 20001;
_Levellist = _display displayCtrl 20004;
_queuelist = _display displayCtrl 20005;
_skillvalue = _display displayCtrl 20006;

_skillpoints = [player] call DZU_fnc_getSkillPoints;
_skillvalue ctrlSetText format["Current Points: %1",_skillpoints ];
_queuelist ctrlSetText format["Levels pending: %1",count unleashed_leveling_queue];

{
	_skill_value = [player,_x] call DZU_fnc_getVariable;
	_Levellist lbAdd _x;
	
} forEach DZU_rpg_skillsList;