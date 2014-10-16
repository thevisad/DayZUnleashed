if(not local player) exitWith{};

disableSerialization;

_display = findDisplay 20001;
_listbox = _display displayCtrl 20004;
_sel = lbCurSel _listbox; if(_sel < 0) exitWith{};

_leveltype = DZU_rpg_skillsList select _sel;
_skillname = lbtext [20004,_sel];
//_skill_name  = [player,_leveltype] call DZU_fnc_getVariableName;



_update_queue = {
	_display = findDisplay 20001;
	_queuelist = _display displayCtrl 20005;
	_queuelist ctrlSetText format["Levels Queued: %1",count unleashed_leveling_queue];
};

_queuepos = 0;
_queuecount = count unleashed_leveling_queue;
if(_queuecount > 0) then {
	_queuepos = (unleashed_leveling_queue select (_queuecount - 1)) + 1;
	hint parseText format["<t size='1.0' font='Zeppelin33' color='#ef2525'>%1</t> leveled up.",_skillname];
};
unleashed_leveling_queue = unleashed_leveling_queue + [_queuepos];

[] call _update_queue;

WaitUntil{_queuepos == unleashed_leveling_queue select 0};
sleep (0.5 * (_queuepos min 1));
hint parseText format["Processing your <t size='1.0' font='Zeppelin33' color='#ffd800'>%1</t>.",_skillname];

sleep 0.5;

[player,_leveltype,1] call DZU_fnc_levelUp;

hint parseText format["Your <t size='1.0' font='Zeppelin33' color='#008aff'>%1</t> points have been added.",_skillname];
unleashed_leveling_queue = unleashed_leveling_queue - [_queuepos];

[] call _update_queue;

call updateUI2;