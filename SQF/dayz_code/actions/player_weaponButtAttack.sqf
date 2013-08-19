_man = _this select 3;

_playerPositon = getposATL player;
_attackerPosition = getposATL _man;
_angle=(((_attackerPosition select 0) - (_playerPositon select 0)) atan2 ((_attackerPosition select 1)-(_playerPositon select 1)));
player setdir _angle;

if (primaryWeapon player == "" && secondaryWeapon player == "") then 
{
	player playActionNow "AmelPercMstpSlowWrflDnon_StrokeGun";
	sleep 3;
	_man_damag = getdammage _man;
	_man_damag = _man_damag + 0.05;
	[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah2"] call RE;
	_man setdamage _man_damag;
} else
{
	_randomLoon = ["AmelPercMstpSnonWnonDnon_amaterUder1","AmelPercMstpSnonWnonDnon_amaterUder2","AmelPercMstpSnonWnonDnon_amaterUder3"] call BIS_fnc_selectRandom;
	player playActionNow _randomLoon;
	sleep 3;
	_man_damag = getdammage _man;
	_man_damag = _man_damag + 0.10;
	[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah2"] call RE;
	_man setdamage _man_damag;
};