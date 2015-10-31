private["_object","_skill_points","_calc_SkillPoints","_current_experience"];
          _object = (_this select 0); //Typically a player
_current_experience = [_object,"Experience"] call DZU_fnc_getVariable;

_current_experience
