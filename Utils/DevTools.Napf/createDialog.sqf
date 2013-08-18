createDialog "PP";

ctrlShow [108244, FALSE];
ctrlShow [108245, FALSE];

{lbAdd [108201, _x]} forEach BIS_PPTexts;
lbSetCurSel [108201,0];

_lastEffect = -1;

while {dialog} do {
	_ppEffect = BIS_PPList select (lbCurSel 108201);
	if (player getVariable _ppEffect) then {
		ctrlSetText [108202, "DISABLE EFFECT"];
	} else {
		ctrlSetText [108202, "ENABLE EFFECT"];
	};
	
	if (lbCurSel 108201 != _lastEffect) then {
		for [{_i = 0}, {_i < 15}, {_i = _i + 1}] do {
			ctrlShow [108218 + _i, TRUE];
			ctrlShow [108203 + _i, TRUE];
		};
		{ctrlSetText [108218 + _forEachIndex, _x]} forEach (BIS_PPParamTexts select (lbCurSel 108201));
		_paramsArray = BIS_lastParams select (lbCurSel 108201);
		{ctrlSetText [108203 + _forEachIndex, str _x]} forEach _paramsArray;
		for [{_i = 0}, {_i < (15 - count _paramsArray)}, {_i = _i + 1}] do {
			ctrlShow [108232 - _i, FALSE];
			ctrlShow [108217 - _i, FALSE];
		};
	};
	
	if ({player getVariable _x} count BIS_PPList > 3) then {
		ctrlSetText [108248, "DISABLE ALL EFFECTS"]
	} else {
		ctrlSetText [108248, "ENABLE ALL EFFECTS"]
	};

	_lastEffect = lbCurSel 108201;
	sleep 0.1
};