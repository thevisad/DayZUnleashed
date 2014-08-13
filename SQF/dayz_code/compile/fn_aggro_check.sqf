private["_total_increase","_total_decay","_playerOldAggroRank","_playerNewAggroRank","_new_aggro_value","_veh","_inVehicle"];
_total_increase = 0;
_total_decay = 0;
_new_aggro_value = 0;

//Vehicle aggro
_veh = vehicle player;
_inVehicle = (_veh != player);
_dayz_aggro_vehicle_rate=0;
_dayz_aggro_vehicle_decay=0;
_dayz_aggro_vehicle_min=0;

if(_inVehicle  and !(_veh isKindOf "ParachuteBase")) then {
    if (isEngineOn _veh) then {
        if (_veh isKindOf "Air") then {
         _dayz_aggro_vehicle_min = 60;
         _dayz_aggro_vehicle_decay =_dayz_aggro_vehicle_decay-5;
        _dayz_aggro_vehicle_rate = 2;
        } else {
         _dayz_aggro_vehicle_min = 15;
         _dayz_aggro_vehicle_decay =_dayz_aggro_vehicle_decay-2;
        _dayz_aggro_vehicle_rate = 1;            
        };    
    } else {
        _dayz_aggro_vehicle_min = _dayz_aggro_vehicle_min - 15;
        _dayz_aggro_vehicle_decay = _dayz_aggro_vehicle_decay + 1;
    };
};
//
if(isNil "unleashed_agroMeterEnabled") then { unleashed_agroMeterEnabled = 0;};


//sum up total values
_total_increase      = ( _total_increase + _dayz_aggro_vehicle_rate + dayz_aggro_move_rate) max 0;    //Total aggro generated per second
_total_decay         = ( dayz_aggro_decay +_dayz_aggro_vehicle_decay + dayz_aggro_move_decay) max 0;  //Total decay per second
dayz_aggro_value_min = floor(_dayz_aggro_vehicle_min + dayz_aggro_move_min) max 0;                    //Total minium amount aggro
//done

//do math 
_new_aggro_value     = dayz_aggro_value - _total_decay;                        //get current aggro rating, subtract for decay, allow negatives
_new_aggro_value     = (_new_aggro_value + _total_increase) min dayz_aggro_limit;  //add newly generated decay and limit to dayz_aggro_limit value
dayz_aggro_value     = _new_aggro_value max dayz_aggro_value_min;                  //limit lower total
//done

//update rank code
_playerOldAggroRank = player getVariable ["aggroRank",0];
_playerNewAggroRank = floor(dayz_aggro_value/dayz_aggro_rank_formula);
if (_playerOldAggroRank != _playerNewAggroRank) then {
    player setVariable ["aggroRank",_playerNewAggroRank,true];
    //player setVariable ["aggroUpdateEventNeeded",1,false];
};

if (unleashed_agroMeterEnabled == 1) then {
	hintsilent format["Current Agro: %1\nMinimum Gained: %2\nOld Agro Rank: %3\nNew Agro Rank: %4\n",dayz_aggro_value,dayz_aggro_value_min,_playerOldAggroRank,_playerNewAggroRank];
};