private ["_target", "_caller", "_id"];
 
_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_args = _this select 3;
_amount = _args select 0;
_amount2 = _args select 1;
 
if (isNil "ib_refueling_in_progress") then { ib_refueling_in_progress = false; };
 
if (!ib_refueling_in_progress) then {
 
        ib_refueling_in_progress = true;
 
        titleText ["Refueling and Repairing", "PLAIN DOWN", 3];
 
        while {(vehicle _caller == _target) and (local _target)} do {
                private ["_velocity", "_cfcust","_cfcust2"];
   
                _velocity = velocity _target;
                _cfcust = fuel _target;
				_cfcust2 = damage _target;
 
                if ((_velocity select 0 > 1) or (_velocity select 1 > 1) or (_velocity select 2 > 1)) exitWith {
                        titleText ["Refueling and Repairs Stopped", "PLAIN DOWN", 3];
                };
                if (_cfcust >= 1.0 and _cust2 <= 0) exitWith {
                        titleText ["Refueling and Repairs Finished", "PLAIN DOWN", 3];
                };
 
                sleep 0.5;
 
                _cfcust = _cfcust + _amount;

                if (_cfcust >= 1.0) then { _cfcust = 1.0; };
 
                _target setFuel _cfcust;
				
				_cfcust2 = _cfcust2 - _amount2;
				if (_cfcust2 <= 0.0) then { _cfcust2 = 0.0; };
				_target setDamage _cfcust2;
        };
 
        titleFadeOut 1;
 
        ib_refueling_in_progress = false;
};