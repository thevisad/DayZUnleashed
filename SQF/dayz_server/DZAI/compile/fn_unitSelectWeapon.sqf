/*
	fnc_unitSelectWeapon
	
	Description: Generates a random rifle weapon given a provided weapongrade value. If weapongrade is 0, a pistol may be generated instead.
	
	Usage: [_unit, _weapongrade] call fnc_unitSelectRifle;
	
	Last updated: 4:36 PM 6/8/2013
*/
	private ["_unit","_rifle","_rifles","_weapongrade","_magazine"];
	_unit = _this select 0;
	_weapongrade = _this select 1;
	
	switch (_weapongrade) do {
	  case 0: {		//Farm / Residential / Supermarket
		_rifles = DZAI_Rifles0;
	  };
	  case 1: {		//Military
		_rifles = DZAI_Rifles1;
	  };
	  case 2: {		//Military Special
		_rifles = DZAI_Rifles2;
	};
	  case 3: {		//HeliCrash
		_rifles = DZAI_Rifles3;
	 };
	  default {		//Default - Give a Winchester if weapongrade is not within 0-3 or not declared.
	    _rifles = ["Winchester1866"];
	  };
	};

	_rifle = _rifles call BIS_fnc_selectRandom;
	_magazine = getArray (configFile >> "CfgWeapons" >> _rifle >> "magazines") select 0;
	_unit addMagazine _magazine;
	_unit addWeapon _rifle;
	_unit selectweapon _rifle;
	if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Created weapon %1 for AI with weapongrade %2. (fn_unitSelectWeapon)",_rifle,_weapongrade];};
	