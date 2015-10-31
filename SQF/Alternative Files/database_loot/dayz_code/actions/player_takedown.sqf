_unit = _this select 0;

zod_stakedown_minifunction = {
  _message = _this select 0;
  hint _message;
};

if (_unit getVariable ["zod_stakedown_usesalute", true]) then {
  _unit action["SALUTE", _unit];
};

sleep (_unit getVariable ["zod_stakedown_killtime", 1.5]);

_target = cursorTarget;

if ((_target isKindOf "Man")&&((_target distance _unit) < 3)) then {
  if ((random 1)<(_unit getVariable ["zod_stakedown_killchance", 1])) then {
      _message = format ["%1 was knifed by %2", name _target, name _unit];

      if (zod_stakedown_showhint) then {
		[[_message],"zod_stakedown_minifunction",true,false] spawn BIS_fnc_MP;
	};
      _target setDamage 1;
  } else {
	if ((getDammage _target)<(_unit getVariable ["zod_stakedown_mindamage", 0.5])) then {
		_target setDamage (_unit getVariable ["zod_stakedown_mindamage", 0.5]);
		};
 	_target setUnitPos "Middle";
	sleep 1.5;
	_target setUnitPos "AUTO";
	_target reveal [_unit, 1.5];
  };

};