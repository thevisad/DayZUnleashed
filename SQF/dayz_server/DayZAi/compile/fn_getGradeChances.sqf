/*
	fnc_gradeChances
	
	Description: Based on a given equipType value, returns an array of weapongrade probabilities.
	
	Usage: [_equipType] call fnc_getGradeChances;
	
	Last updated: 6/2/2013
*/
private ["_equipType", "_gradeChances"];
_equipType = _this select 0;
_gradeChances = [];

switch (_equipType) do {
	case 0: {_gradeChances = DZAI_gradeChances0;};
	case 1: {_gradeChances = DZAI_gradeChances1;};
	case 2: {_gradeChances = DZAI_gradeChances2;};
	case 3: {_gradeChances = DZAI_gradeChances3;};
};

_gradeChances