private["_object","_targetSkill","_skillIncrease","_current_experience","_calc_SkillPoints","_skillChange","_experience_change"];
_object = (_this select 0);
_targetSkill = (_this select 1);
_skillIncrease = (_this select 2);
if( !(_targetSkill in DZU_rpg_skillsList) )exitWith{0};

_current_experience = [_object,"Experience"] call DZU_fnc_getVariable;
_calc_SkillPoints = getNumber (configFile >> "CfgRPG" >> "CfgConfig" >> "Experiences" >> "Experience" >> "skillPoints");

if (_current_experience < _calc_SkillPoints ) exitWith{0};

_skillIncrease = ((floor(_current_experience /_calc_SkillPoints)) min _skillIncrease);

_skillChange=[_object,_targetSkill,_skillIncrease] call DZU_fnc_setVariable;

_experience_change=[_object,"Experience",-(_skillChange*_calc_SkillPoints)] call DZU_fnc_setVariable;

_skillChange
