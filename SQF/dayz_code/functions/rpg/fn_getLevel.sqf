private["_object","_skillList","_calc_SkillPoints","_current_experience","_current_level"];
   _current_level = 0;
          _object = (_this select 0); //Typically a player
        _skillList= (_this select 1); //Skill Array
_includeExperience= (_this select 2); //Include experience points in calculations

  _calc_SkillPoints = getNumber (configFile >> "CfgRPG" >> "CfgConfig" >> "Experiences" >> "Experience" >> "skillPoints");

_current_experience = [_object,"Experience"] call DZU_fnc_getVariable;
     
if (_includeExperience && (_current_experience >= _calc_SkillPoints)) then {
     _current_level = floor(_current_experience / _calc_SkillPoints);
};

for "_i" from 0 to ((count _skillList) - 1) do {
     _current_level = _current_level + ([_object,(_skillList select _i)] call DZU_fnc_getVariable);    
};

_current_level
 