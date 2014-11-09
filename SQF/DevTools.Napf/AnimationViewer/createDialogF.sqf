_ok = createDialog "DlgFaces";
if (!_ok) exitWith {hint "Dialog error"};
player removeAction dlgaction;
if (KRON_QCON) then {player removeAction dlgactionqc};
player removeAction dlgactionf;
player removeAction dlgactionm;

_cam = "camera" camcreate [0, 0, 0];
_cam cameraeffect ["internal", "back"];
_poss = getPos soldier;
_dir  = getDir soldier;
_dist = 0.7;
_posc = [(_poss select 0)+sin(_dir)+_dist, (_poss select 1)+cos(_dir)+_dist, 1.7];
_cam camSetPos _posc;
soldier doWatch _posc;
_cam camSetTarget soldier;
_cam camSetFov 1.0;
_cam camCommit 0;

for "_i" from 1 to 53 do {
	_face = format["Face%1", _i];
	_index = lbAdd [114, _face];
};

while {ctrlVisible 114} do {
	_indexold = lbCurSel 114;
	waitUntil {(_indexold != lbCurSel 114) || !ctrlVisible 114};
	_index = lbCurSel 114;
	_text = lbText [114, _index];
	ctrlSetText [115, _text];
	soldier setFace _text;
};

dlgaction = player addAction ["Open Animations", "AnimationViewer\createDialog.sqf"];
if (KRON_QCON) then {dlgactionqc = player addAction ["Open Animations (QG)", "AnimationViewer\createDialogQC.sqf"]};
dlgactionf = player addAction ["Open Faces", "AnimationViewer\createDialogF.sqf"];
dlgactionm = player addAction ["Open Music", "AnimationViewer\createDialogm.sqf"];
_cam cameraeffect ["terminate", "back"];
camDestroy _cam;
