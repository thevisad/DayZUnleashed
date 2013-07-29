private["_total_increase","_total_decay","_total_min_aggro","_playerOldAggroRank","_playerNewAggroRank","_new_aggro_value","_veh","_inVehicle"];
_total_increase = 0;
_total_decay = 1;
_total_min_aggro = 0;
_new_aggro_value = 0;
_veh = vehicle player;
_inVehicle = (_veh != player);
_
if(dayz_aggro_value < 550) then {
_total_increase = _total_increase + dayz_aggro_move_rate;
};

if(_inVehicle) then {
    if (isEngineOn _veh) then {
        _total_min_aggro = _total_min_aggro + 15;
        _total_decay = _total_decay - 2;
        if(dayz_aggro_value < 750) then {
            _total_increase = _total_increase + 1;
            };
    } else {
        _total_min_aggro = _total_min_aggro - 15;
        _total_decay = _total_decay + 1;
    };
};

_total_increase      = (_total_increase max 0);                                    //Total ensure positive
dayz_aggro_decay     = (_total_decay + dayz_aggro_move_decay) max 0;               //Assign new decay total, ensure positive
dayz_aggro_value_min = floor(_total_min_aggro + dayz_aggro_move_min) max 0;        //Total ensure positive
_new_aggro_value     = dayz_aggro_value - dayz_aggro_decay;                        //Only place were allowing negative's
_new_aggro_value     = (_new_aggro_value + _total_increase) min dayz_aggro_limit;  //limit upper total
_new_aggro_value     = _new_aggro_value max dayz_aggro_value_min;                  //limit lower total
dayz_aggro_value     = _new_aggro_value;                                           //Assign to Global
//Aggro Ranking Code
_playerOldAggroRank = player getVariable ["aggroRank",0];
_playerNewAggroRank = floor(dayz_aggro_value/dayz_aggro_rank_formula);
if (_playerOldAggroRank != _playerNewAggroRank) then {
    player setVariable ["aggroRank",_playerNewAggroRank,true];
    //player setVariable ["aggroUpdateEvent",true];
};

