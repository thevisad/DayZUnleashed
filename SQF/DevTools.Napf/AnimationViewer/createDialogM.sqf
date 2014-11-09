_ok = createDialog "DlgTrack";
if (!_ok) exitWith {hint "Dialog error"};
player removeAction dlgaction;
if (KRON_QCON) then {player removeAction dlgactionqc};
player removeAction dlgactionf;
player removeAction dlgactionm;

for "_i" from 1 to 26 do {
	_track = format["ATrack%1", _i];
	_index = lbAdd [124, _track];
};

while {ctrlVisible 124} do {
	_indexold = lbCurSel 124;
	waitUntil {(_indexold != lbCurSel 124) || !ctrlVisible 124};
	_index = lbCurSel 124;
	_text = lbText [124, _index];
	ctrlSetText [125, _text];
	playmusic _text;
};

dlgaction = player addAction ["Open Animations", "AnimationViewer\createDialog.sqf"];
if (KRON_QCON) then {dlgactionqc = player addAction ["Open Animations (QG)", "AnimationViewer\createDialogQC.sqf"]};
dlgactionf = player addAction ["Open Faces", "AnimationViewer\createDialogF.sqf"];
dlgactionm = player addAction ["Open Music", "AnimationViewer\createDialogm.sqf"];