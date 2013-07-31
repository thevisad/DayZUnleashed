_man = _this select 3;

_playerPositon = getposATL player;
_attackerPosition = getposATL _man;
_angle=(((_attackerPosition select 0) - (_playerPositon select 0)) atan2 ((_attackerPosition select 1)-(_playerPositon select 1)));
player setdir _angle;

if (primaryWeapon player == "" && secondaryWeapon player == "") then 
{
	_unit playActionNow "AmelPercMstpSnonWnonDnon_amaterUder3";
	sleep 1;
	_man_damag = getdammage _man;
	_man_damag = _man_damag + 0.20;
	 if (getdammage _man < 0.5) then 
	 { 
		[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah6hlava"] call RE;
	 };
	_man setdamage _man_damag;
} else
{
	sleep 1;
	_man_damag = getdammage _man;
	_man_damag = _man_damag + 0.6;
	if (getdammage _man < 0.5) then { 
		[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah6hlava"] call RE;
	};
	_man setdamage _man_damag;
};
