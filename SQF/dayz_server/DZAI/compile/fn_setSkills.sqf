
/*
	fnc_setSkills
	
	Description: Based on a given weapongrade value, assigns skill parameters to a given AI unit. Units with higher weapongrade values have higher skill parameters.
	
	Usage: [_unit,_weapongrade] call fnc_setSkills;
	
	Last updated: 12:11 AM 6/24/2013
*/
private ["_unit", "_weapongrade"];
_unit = _this select 0;
_weapongrade = _this select 1;

switch (_weapongrade) do {
	case 0: {
		//Low-tier AI, has poor skills with the potential to reach up to 0.60 in several skills and 0.70 in non-combat skills.
		_unit setSkill ["aimingAccuracy",(0.20 + random 0.10)];
		_unit setSkill ["aimingShake",(0.40 + random 0.10)];
		_unit setSkill ["aimingSpeed",(0.40 + random 0.10)];
		_unit setSkill ["endurance",(0.40 + random 0.20)];
		_unit setSkill ["spotDistance",(0.30 + random 0.20)];
		_unit setSkill ["spotTime",(0.40 + random 0.20)];
		_unit setSkill ["courage",(0.40 + random 0.20)];
		_unit setSkill ["reloadSpeed",(0.40 + random 0.20)];
		_unit setSkill ["commanding",(0.40 + random 0.20)];
		_unit setSkill ["general",(0.40 + random 0.20)];
	};
	case 1: {
		//Mid-tier AI, has average skills with the potential to reach up to 0.70 in several skills and 0.80 in non-combat skills.
		_unit setSkill ["aimingAccuracy",(0.25 + random 0.10)];
		_unit setSkill ["aimingShake",(0.50 + random 0.10)];
		_unit setSkill ["aimingSpeed",(0.65 + random 0.10)];
		_unit setSkill ["endurance",(0.55 + random 0.20)];
		_unit setSkill ["spotDistance",(0.45 + random 0.20)];
		_unit setSkill ["spotTime",(0.55 + random 0.20)];
		_unit setSkill ["courage",(0.55 + random 0.20)];
		_unit setSkill ["reloadSpeed",(0.55 + random 0.20)];
		_unit setSkill ["commanding",(0.55 + random 0.20)];
		_unit setSkill ["general",(0.55 + random 0.20)];
	};
	case 2: {
		//High-tier AI, potential to reach up to 0.90 in several skills
		_unit setSkill ["aimingAccuracy",(0.35 + random 0.10)];
		_unit setSkill ["aimingShake",(0.60 + random 0.10)];
		_unit setSkill ["aimingSpeed",(0.80 + random 0.10)];
		_unit setSkill ["endurance",(0.70 + random 0.20)];
		_unit setSkill ["spotDistance",(0.60 + random 0.20)];
		_unit setSkill ["spotTime",(0.70 + random 0.20)];
		_unit setSkill ["courage",(0.70 + random 0.20)];
		_unit setSkill ["reloadSpeed",(0.70 + random 0.20)];
		_unit setSkill ["commanding",(0.70 + random 0.20)];
		_unit setSkill ["general",(0.70 + random 0.20)];
	};
	case 3: {
		//Top-tier AI, has potential to reach 0.95 - 1.00 in several skills
		_unit setSkill ["aimingAccuracy",(0.50 + random 0.10)];
		_unit setSkill ["aimingShake",(0.70 + random 0.10)];
		_unit setSkill ["aimingSpeed",(0.85 + random 0.10)];
		_unit setSkill ["endurance",(0.80 + random 0.20)];
		_unit setSkill ["spotDistance",(0.75 + random 0.20)];
		_unit setSkill ["spotTime",(0.80 + random 0.20)];
		_unit setSkill ["courage",(0.80 + random 0.20)];
		_unit setSkill ["reloadSpeed",(0.80 + random 0.20)];
		_unit setSkill ["commanding",(0.80 + random 0.20)];
		_unit setSkill ["general",(0.80 + random 0.20)];
	};
};
