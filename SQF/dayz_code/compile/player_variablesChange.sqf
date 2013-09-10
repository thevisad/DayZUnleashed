private ["_object","_change","_variable","_engineer_rank","_hunter_rank","_medic_rank","_soldier_rank"];
//Set Variables
diag_log("UPVC: Calling player variables update.");
_object = _this select 0;
_change = _this select 1;
_variable = _this select 2;
diag_log("UPVC: Object: " + str(_object));
diag_log("UPVC: Change Amount: " + str(_change));
diag_log("UPVC: Variable Amount: " + str(_variable));
_maxamount = 1099;
//[player,25,3] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier

if (_object == player) then {

	if (_variable == 1) then {
		_engineer_rank = player getVariable["estot", 1];
		_engineer_rank1 = _engineer_rank + _change;
		if (_engineer_rank1 > _maxamount) then {
		_engineer_rank1 = _maxamount;
		engineer_skill_total = _maxamount;
		};
		if (_engineer_rank1 < 0) then {
			player setVariable["estot",_engineer_rank1,true];
			engineer_skill_total = _engineer_rank1;
		} else {
			player setVariable["estot",_engineer_rank1,true];
			engineer_skill_total = _engineer_rank1;
		};
		
		diag_log("UPVC: Engineer current: " + str(_engineer_rank) + " Changes to: " + str(_engineer_rank1));
	};

	if (_variable == 2) then {
		_hunter_rank = player getVariable["hstot", 1];
		_hunter_rank1 = _hunter_rank + _change;
		if (_hunter_rank1 > _maxamount) then {
			_hunter_rank1 = _maxamount;
			hunter_skill_total = _maxamount;
		};
		if (_hunter_rank1 < 0) then {
			player setVariable["hstot",_hunter_rank1,true];
			hunter_skill_total = _hunter_rank1;
		} else {
			player setVariable["hstot",_hunter_rank1,true];
			hunter_skill_total = _hunter_rank1;
		};
		diag_log("UPVC: Hunter current: " + str(_hunter_rank) + " Changes to: " + str(_hunter_rank1));
	};

	if (_variable == 3) then {
		_medic_rank = player getVariable["mstot", 1];
		_medic_rank1 = _medic_rank + _change;
		if (_medic_rank1 > _maxamount) then {
			_medic_rank1 = _maxamount;
			medic_skill_total = _maxamount;
		};
		if (_medic_rank1 < 0) then {
			player setVariable["mstot",_medic_rank1,true];
			medic_skill_total = _medic_rank1;
		} else {
			player setVariable["mstot",_medic_rank1,true];
			medic_skill_total = _medic_rank1;
		};
		diag_log("UPVC: Medic current: " + str(_medic_rank) + " Changes to: " + str(_medic_rank1));
	};

	if (_variable == 4) then {
		_soldier_rank = player getVariable["sstot", 1];
		_soldier_rank1 = _soldier_rank + _change;
		if (_soldier_rank1 > _maxamount) then {
			_soldier_rank1 = _maxamount;
			soldier_skill_total = _maxamount;
		};
		if (_soldier_rank1 < 0) then {
			player setVariable["sstot",_soldier_rank1,true];
			soldier_skill_total = _soldier_rank1;
		} else {
			player setVariable["sstot",_soldier_rank1,true];
			soldier_skill_total = _soldier_rank1;
		};
		diag_log("UPVC: Soldier current: " + str(_soldier_rank) + " Changes to: " + str(_soldier_rank1));
	};	
};