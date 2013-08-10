_man = _this select 3;
_chance = 0;
_playerPositon = getposATL player;
_attackerPosition = getposATL _man;
_angle=(((_attackerPosition select 0) - (_playerPositon select 0)) atan2 ((_attackerPosition select 1)-(_playerPositon select 1)));
player setdir _angle;
_chance = floor(random 100);

if (primaryWeapon player == "" && secondaryWeapon player == "") then 
{
	if (_chance < 0.10) then {
		_unit playMove "AmelPercMstpSnonWnonDnon_amaterUder3";
		sleep 1;
		[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah6hlava"] call RE;
		dayz_knockout = [_man,3.5];
		publicVariable "dayz_knockout";
	};
} else
{
	if (_chance < 0.50) then {
		_unit playMove "AmelPercMstpSnonWnonDnon_amaterUder3";
		sleep 1;
		[nil,_man,rSwitchmove, "AmelPercMstpSnonWnonDnon_zasah6hlava"] call RE;
		dayz_knockout = [_man,3.5];
		publicVariable "dayz_knockout";
	};
};
