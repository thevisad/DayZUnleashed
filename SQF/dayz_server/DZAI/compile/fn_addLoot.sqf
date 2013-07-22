/*
	fnc_addLoot
	
	Description:
	
	Last updated: 11:43 PM 7/10/2013
	
*/

	//Add pistol
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	private ["_unit","_pistol","_pistols","_weapongrade","_magazine","_currentWeapon","_toolselect","_chance","_tool","_toolsArray","_trigger","_gradeChances"];
	_unit = _this select 0;

	_trigger = _unit getVariable "trigger";
	_gradeChances = _trigger getVariable ["gradeChances",DZAI_gradeChances1];
	if (isNil "_gradeChances") then {_gradeChances = DZAI_gradeChances1};

	_weapongrade = [DZAI_weaponGrades,_gradeChances] call fnc_selectRandomWeighted;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: AI killed by player. Generating loot with weapongrade %1 (fn_banditAIKilled).",_weapongrade];};

	_currentWeapon = currentWeapon _unit;
	waitUntil {sleep 0.002; !isNil "_currentWeapon"};
	if ((getNumber (configFile >> "CfgWeapons" >> _currentWeapon >> "type")) != 2) then {
		switch (_weapongrade) do {
		  case 0: {
			_pistols = DZAI_Pistols0;
		  };
		  case 1: {
			_pistols = DZAI_Pistols1;
		  };
		  case 2: {
			_pistols = DZAI_Pistols2;
		  };
		  case 3: {
			_pistols = DZAI_Pistols3;
		  };
		  default {
			_pistols = ["revolver_EP1"];
		  };
		};
		
		_pistol = _pistols call BIS_fnc_selectRandom;
		_magazine = getArray (configFile >> "CfgWeapons" >> _pistol >> "magazines") select 0;
		_unit addMagazine _magazine;	
		_unit addWeapon _pistol;
		
		if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated pistol weapon: %1 for AI.",_pistol];};
	};
	sleep 0.05;
	
	//Add consumables, medical items, and miscellaneous items
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//Add one guaranteed Bandage to inventory
	_unit addMagazine "ItemBandage";

	//Chance to add miscellaneous item (Small) to backpack
	for "_i" from 1 to DZAI_numMiscItemS do {
		if ((random 1) < DZAI_chanceMiscItemS) then {
			private ["_miscItemS"];
			_miscItemS = DZAI_MiscItemS call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_miscItemS,1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Misc Item (Small): %1 for AI.",_miscItemS];};
		};
	};
	
	//Chance to add miscellaneous item (Large) to backpack
	for "_i" from 1 to DZAI_numMiscItemL do {
		if ((random 1) < DZAI_chanceMiscItemL) then {
			private["_miscItemL"];
			_miscItemL = DZAI_MiscItemL call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_miscItemL,1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Misc Item (Large): %1 for AI.",_miscItemL];};
		};
	};

	//Add medical items to backpack
	for "_i" from 1 to DZAI_bpmedicals do {
		if ((random 1) < DZAI_chanceMedicals) then {
			private["_bpmedical"];
			_bpmedical = DZAI_Medicals2 call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_bpmedical, 1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack Medical Item: %1 for AI.",_bpmedical];};
		};
	};

	//Add edible items to backpack
	for "_i" from 1 to DZAI_bpedibles do {
		if ((random 1) < DZAI_chanceEdibles) then {
			private["_bpedible"];
			_bpedible = DZAI_Edibles call BIS_fnc_selectRandom;
			(unitBackpack _unit) addMagazineCargoGlobal [_bpedible, 1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Backpack Edible Item: %1 for AI.",_bpedible];};
		};
	};
	
	//Add medical items to inventory
	for "_i" from 1 to DZAI_invmedicals do {
		if ((random 1) < DZAI_chanceMedicals) then {
			private["_invmedical"];
			_invmedical = DZAI_Medicals1 call BIS_fnc_selectRandom;
			_unit addMagazine [_invmedical, 1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Inventory Medical Item: %1 for AI.",_invmedical];};
		};
	};
	
	//Add edible items to inventory
	for "_i" from 1 to DZAI_invedibles do {
		if ((random 1) < DZAI_chanceEdibles) then{
			private["_invedible"];
			_invedible = DZAI_Edibles call BIS_fnc_selectRandom;
			_unit addMagazine [_invedible, 1];
			if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Generated Inventory Edible Item: %1 for AI.",_invedible];};
		};
	};
	
	if (DZAI_modName == "epoch") then {
		private ["_itemBar","_index","_chance","_metalBarCount"];
		_metalBarCount = (count DZAI_metalBars);
		//diag_log format ["DEBUG :: Counted %1 bars in DZAI_metalBars.",_metalBarCount];
		for "_i" from 0 to DZAI_metalBarNum do {
			_index = floor (random _metalBarCount);
			_chance = ((DZAI_metalBars select _index) select 1);
			//diag_log format ["DEBUG :: %1 chance to add bar.",_chance];
			if ((random 1) < _chance) then {
				_itemBar = ((DZAI_metalBars select _index) select 0);
				_unit addMagazine _itemBar;
				//diag_log format ["DEBUG :: Added bar %1 as loot to AI corpse.",_itemBar];
			};
		};
	};
	
	sleep 0.05;
	
	//Add tool items
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	if (_weapongrade < 2) then {
		_toolsArray = DZAI_tools0;
	} else {
		_toolsArray = DZAI_tools1;
	};

	//diag_log format ["DEBUG :: Counted %1 tools in _toolsArray.",(count _toolsArray)];
	for "_i" from 0 to ((count _toolsArray) - 1) do {
		_chance = ((_toolsArray select _i) select 1);
		//diag_log format ["DEBUG :: %1 chance to add tool.",_chance];
		if ((random 1) < _chance) then {
			_tool = ((_toolsArray select _i) select 0);
			_unit addWeapon _tool;
			//diag_log format ["DEBUG :: Added tool %1 as loot to AI corpse.",_tool];
		};
};
	
	