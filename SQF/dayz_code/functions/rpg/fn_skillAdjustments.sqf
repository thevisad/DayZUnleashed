private["_object","_experience_type","_experience_penalty","_skillList","_current_level","_experience_config","_experience_reward","_calc_LevelCurve","_value"];
_object = (_this select 0);
_experience_type = (_this select 1);
_experience_penalty = 0;

_current_level =  ([_object,TRUE] call DZU_fnc_getLevel);

_experience_config     = configFile >> "CfgRPG" >> "CfgEXP" >> _experience_type;
_experience_reward     = getNumber(_experience_config >> "Experience");
_experience_reward_min = getNumber(_experience_config >> "MiniumGain");
_calc_LevelCurve       = getNumber(configFile >> "CfgRPG" >> "CfgConfig" >> "Experiences" >> "Experience" >> "levelCurve");

if(_current_level >= _calc_LevelCurve) then {
    _experience_reward = ((_experience_reward - floor(_current_level / _calc_LevelCurve)) max _experience_reward_min);
};

_value= [_object,"Experience",_experience_reward] call DZU_fnc_setVariable;

if(_value !=0) then{
    _experience_Name = getText(_experience_config >> "Name");
    _experience_Message = getText(_experience_config >> "Message");
    cutText [format[_experience_Message,_value,_experience_Name], "PLAIN DOWN"];        
};

_value
