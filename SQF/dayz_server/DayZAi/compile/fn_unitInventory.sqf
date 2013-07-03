/*
	fnc_unitInventory
       
	Description: Adds a random backpack to AI unit, and a chance to add binoculars/NVGoggles. If unit has weapongrade 2 or higher, assigns temporary unlootable NVGs if not previously given one and DZAI_tempNVGs is set to true.
	
	Usage: [_unit,_weapongrade] call fnc_unitInventory;
	
	Last updated: 6/2/2013
*/
    private ["_unit","_bag","_weapongrade","_bags","_gadgetsArray"];
    _unit = _this select 0;
	_weapongrade = _this select 1;
	
	//Generate random backpack based on weapongrade
	switch (_weapongrade) do {
	  case 0: {		//Beginner backpacks
		_bags = DZAI_Backpacks0;
	  };
	  case 1: {		//Residential/Supermarket/Military-grade backpacks
		_bags = DZAI_Backpacks1;
	  };
	  case 2: {		//Military-Grade Backpacks
		_bags = DZAI_Backpacks2;
	};
	  case 3: {		//Coyote Backpack
		_bags = DZAI_Backpacks3;
	 };
	  default {		//Default
	    _bags = ["DZ_Patrol_Pack_EP1"];
	  };
	};
	
	_gadgetsArray = [];
	if (_weapongrade < 2) then {
		_gadgetsArray = DZAI_gadgets0;
	} else {
		_gadgetsArray = DZAI_gadgets1;
	};
	
	_bag = _bags call BIS_fnc_selectRandom;
	_unit addBackpack _bag;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack: %1 for AI.",_bag];};

	private ["_chance","_gadget"];
	//diag_log format ["DEBUG :: Counted %1 tools in _gadgetsArray.",(count _gadgetsArray)];
	for "_i" from 0 to ((count _gadgetsArray) - 1) do {
		_chance = ((_gadgetsArray select _i) select 1);
		//diag_log format ["DEBUG :: %1 chance to add gadget.",_chance];
		if ((random 1) < _chance) then {
			_gadget = ((_gadgetsArray select _i) select 0);
			_unit addWeapon _gadget;
			//diag_log format ["DEBUG :: Added gadget %1 as loot to AI inventory.",_gadget];
		};
	};
	
	//If unit has weapongrade 2 or 3 and was not given NVGs, give the unit temporary NVGs which will be removed at death. Set DZAI_tempNVGs to true in variables config to enable temporary NVGs.
	if ((_weapongrade > 1) && !(_unit hasWeapon "NVGoggles") && (DZAI_tempNVGs)) then {
		_unit addWeapon "NVGoggles";
		_unit setVariable["removeNVG",1,false];
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Generated temporary NVGs for AI.";};
	};
	