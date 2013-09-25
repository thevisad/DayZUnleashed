private["_object","_experience_type","_experience_penalty","_skillList","_current_level","_experience_config","_experience_reward","_calc_LevelCurve","_value"];
_object = (_this select 0);
_experience_type = (_this select 1);
_experience_penalty = 0;

_skillList = ["Engineer","Hunting","Medical","Combat","Survival"];
_current_level = ((([_object,_skillList,TRUE] call DZU_fnc_getLevel) - 16) max 1);

_experience_config = configFile >> "CfgRPG" >> "CfgEXP" >> _experience_type;
_experience_reward = getNumber(_experience_config >> "Experience");
_calc_LevelCurve   = getNumber(configFile >> "CfgRPG" >> "CfgConfig" >> "Experiences" >> "Experience" >> "levelCurve");

if(_current_level >= _calc_LevelCurve) then {
_experience_reward = ((_experience_reward - floor(_current_level / _calc_LevelCurve)) max 1);
};

_value= [_object,"Experience",_experience_reward] call DZU_fnc_setVariable;

_value
