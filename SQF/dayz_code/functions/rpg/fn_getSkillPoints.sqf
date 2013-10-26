private["_object","_skill_points","_calc_SkillPoints","_current_experience"];
    _skill_points = 0;
          _object = (_this select 0); //Typically a player

  _calc_SkillPoints = getNumber (configFile >> "CfgRPG" >> "CfgConfig" >> "Experiences" >> "Experience" >> "skillPoints");

_current_experience = [_object,"Experience"] call DZU_fnc_getVariable;
     
if (_current_experience >= _calc_SkillPoints) then {
     _skill_points = floor(_current_experience / _calc_SkillPoints);
};

_skill_points
