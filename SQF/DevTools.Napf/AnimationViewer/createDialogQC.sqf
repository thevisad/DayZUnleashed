_ok = createDialog "DlgMoves";
if (!_ok) exitWith {hint "Dialog error"}; 
player removeAction dlgaction;
if (KRON_QCON) then {player removeAction dlgactionqc};
player removeAction dlgactionf;
player removeAction dlgactionm;

_index = lbAdd [104, ""];
_index = lbAdd [104,"ActsPercMrunSlowWrflDf_TumbleOver"];
_index = lbAdd [104,"ActsPercMrunSlowWrflDf_FlipFlopPara"];

_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_Listening"];
_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_ListeningOrdersUnderFire"];
_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_Lolling"];
_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_Talking1"];
_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_Talking2"];
_index = lbAdd [104,"ActsPercMstpSlowWrflDnon_ThingPassingMoving"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_ArrestingMan"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_ArrestingManLoop"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_ArrestingManLoopActions"];
_index = lbAdd [104,"ActsPercMstpSnonWrflDnon_ArrestingSoldier"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_DancingDuoIvan"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_DancingDuoStefan"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_DancingStefan"];

_index = lbAdd [104,"ActsPercMstpSnonWpstDnon_InterrogationSoldier"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_InterrogationVictim"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Listening"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Talking1"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Talking2"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking1"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking2"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking3"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking4"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking5"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking6"];
_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_Panicking7"];

_index = lbAdd [104,"ActsPercMstpSnonWnonDnon_ThingPassingStill"];

_index = lbAdd [104,"ActsPercMwlkSlowWrflDnon_PatrolingBase1"];
_index = lbAdd [104,"ActsPercMwlkSlowWrflDnon_PatrolingBase2"];
_index = lbAdd [104,"ActsPercMwlkSlowWrflDnon_PatrolingBase3"];
_index = lbAdd [104,"ActsPercMwlkSlowWrflDnon_PatrolingBase4"];
_index = lbAdd [104,"ActsPknlMstpSlowWrflDnon_ThingPassingMoving"];

_index = lbAdd [104,"ActsPpneMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_Injured3"];
_index = lbAdd [104,"ActsPpneMstpSnonWnonDnon_Injured1"];
_index = lbAdd [104,"ActsPpneMstpSnonWnonDnon_Injured2"];
_index = lbAdd [104,"ActsPpneMstpSnonWnonDnon_Panicking"];
_index = lbAdd [104,"ActsPknlMstpSnonWnonDnon_ThingPassingStill"];
_index = lbAdd [104,"ActsPknlMstpSnonWnonDnon_TreatingInjured"];
_index = lbAdd [104,"ActsPknlMstpSnonWrflDnon_TreatingSoldier"];

_index = lbAdd [104,"AmovPercMstpSlowWrflDnon_ActsPpneMstpSlowWrflDr_GrenadeEscape"];
_index = lbAdd [104,"AmovPercMstpSlowWrflDnon_ActsPercMstpSlowWrflDr_HideFromFire"];

_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_AmovPlieMstpSnonWnonDnon"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking1in"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking1loop"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking1out"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking2in"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking2loop"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking2out"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking3in"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking3loop"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking3out"];
_index = lbAdd [104,"AmovPercMstpSnonWnonDnon_Panicking1loopActions"];

_index = lbAdd [104,"AmovPercMwlkSlowWrflDf_ActsPercMstpSlowWrflDnon_HitLeg"];
_index = lbAdd [104,"AsigPercMstpSlowWrflDnon_AmovPercMrunSlowWrflDnon_GoGo"];
_index = lbAdd [104,"AsigPercMstpSlowWrflDnon_GoGo"];
_index = lbAdd [104,"AsigPercMstpSlowWrflDnon_SendMenInAction"];

_index = lbAdd [104,"AmovPlieMstpSnonWnonDnon"];
_index = lbAdd [104,"AmovPlieMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon"];


_index = lbAdd [104,"m1s1pedros"];
_index = lbAdd [104,"m1s1wicks"];
_index = lbAdd [104,"m1s2lamb"];
_index = lbAdd [104,"m1s2wicks"];
_index = lbAdd [104,"m1s2zold1"];
_index = lbAdd [104,"m1s2zold2"];

_index = lbAdd [104,"m2s1kancler"];
_index = lbAdd [104,"m2s1pobocnik"];
_index = lbAdd [104,"m2s1wicks"];
_index = lbAdd [104,"m2s2bodyguard"];
_index = lbAdd [104,"m2s2bodyguard_centered"];
_index = lbAdd [104,"m2s2kancler"];
_index = lbAdd [104,"m2s2kancler_centered"];
_index = lbAdd [104,"m2s2lamb"];
_index = lbAdd [104,"m2s2lamb_centered"];
_index = lbAdd [104,"m2s2orlando"];
_index = lbAdd [104,"m2s2orlando_centered"];
_index = lbAdd [104,"m2s2wicks"];
_index = lbAdd [104,"m2s2wicks_centered"];
_index = lbAdd [104,"m2s2zoldak1"];
_index = lbAdd [104,"m2s2zoldak2"];
_index = lbAdd [104,"m2s3lamb"];
_index = lbAdd [104,"m2s3orlando"];
_index = lbAdd [104,"m2s3wicks"];

_index = lbAdd [104,"m5s1gonzales"];
_index = lbAdd [104,"m5s1lamb"];
_index = lbAdd [104,"m5s1orlando"];

_index = lbAdd [104,"m6as1gonzales"];
_index = lbAdd [104,"m6as1lamb"];
_index = lbAdd [104,"m6as1orlando"];
_index = lbAdd [104,"m6as2gonzales"];
_index = lbAdd [104,"m6as2lamb"];
_index = lbAdd [104,"m6as2orlando"];
_index = lbAdd [104,"m6bs1zoldak1"];
_index = lbAdd [104,"m6bs1zoldak2"];
_index = lbAdd [104,"m6bs2gonzales"];
_index = lbAdd [104,"m6bs2lamb"];
_index = lbAdd [104,"m6bs2zoldak1"];
_index = lbAdd [104,"m6bs2zoldak2"];
_index = lbAdd [104,"m6bs3gonzales"];
_index = lbAdd [104,"m6bs3lamb"];
_index = lbAdd [104,"m6bs3zoldak1"];
_index = lbAdd [104,"m6bs3zoldak2"];

_index = lbAdd [104,"x01lamb"];
_index = lbAdd [104,"x01wicks"];
_index = lbAdd [104,"x01zoldak1"];
_index = lbAdd [104,"x01zoldak2"];

_index = lbAdd [104,"x03lamb"];
_index = lbAdd [104,"x03orlando"];

_index = lbAdd [104,"x04gonzales"];
_index = lbAdd [104,"x04lamb"];
_index = lbAdd [104,"x04orlando"];

_index = lbAdd [104,"x05s1gonzales"];
_index = lbAdd [104,"x05s1lamb"];
_index = lbAdd [104,"x05s1orlandotv"];
_index = lbAdd [104,"x05s2gonzales"];
_index = lbAdd [104,"x05s2lamb"];
_index = lbAdd [104,"x05s2zoldak1"];
_index = lbAdd [104,"x05s2zoldak2"];
_index = lbAdd [104,"x05s3lamb"];
_index = lbAdd [104,"x05s3zoldak1"];
_index = lbAdd [104,"x05s3zoldak2"];
_index = lbAdd [104,"x05s4gonzales"];
_index = lbAdd [104,"x05s4lamb"];
_index = lbAdd [104,"x05s4zoldak"];
_index = lbAdd [104,"x05s5a2lamb"];
_index = lbAdd [104,"x05s5a2zoldak1"];
_index = lbAdd [104,"x05s5a2zoldak2"];
_index = lbAdd [104,"x05s5alamb"];
_index = lbAdd [104,"x05s5azoldak1"];
_index = lbAdd [104,"x05s5azoldak2"];
_index = lbAdd [104,"x05s5b2lamb"];
_index = lbAdd [104,"x05s5b2zoldak1"];
_index = lbAdd [104,"x05s5b2zoldak2"];
_index = lbAdd [104,"x05s5bgonzales"];
_index = lbAdd [104,"x05s5blamb"];

_index = lbAdd [104,"xoutrolamb"];
_index = lbAdd [104,"xoutroorlando"];
_index = lbAdd [104,"xoutrozoldak1"];
_index = lbAdd [104,"xoutrozoldak2"];


if ((lbSize 104)>= idx) then {lbSetCurSel [104, idx]};

MOVENAME = lbText[104, idx];


while {ctrlVisible 104} do {
	_indexold = lbCurSel 104;
	waitUntil {(_indexold != lbCurSel 104) || !ctrlVisible 104};
	soldier setPos getPos pp;
	if (accTime==1) then {sleep 1};
	_index = lbCurSel 104;
	if (_index>=0) then {idx=_index};
	MOVENAME = lbText [104, _index];
	ctrlSetText [105, MOVENAME];
	soldier switchMove MOVENAME;
};

dlgaction = player addAction ["Open Animations", "AnimationViewer\createDialog.sqf"];
if (KRON_QCON) then {dlgactionqc = player addAction ["Open Animations (QG)", "AnimationViewer\createDialogQC.sqf"]};
dlgactionf = player addAction ["Open Faces", "AnimationViewer\createDialogF.sqf"];
dlgactionm = player addAction ["Open Music", "AnimationViewer\createDialogm.sqf"];