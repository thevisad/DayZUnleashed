private["_refObj","_size","_vel","_speed","_hunger","_thirst","_array","_unsaved","_timeOut","_changeTime","_result","_lastSave","_wpnType","_isOK","_skin","_skin2"];
disableSerialization;
_timeOut = 0;
_messTimer = 0;
_lastSave = 0;
_lastTemp = dayz_temperatur;
_debug = getMarkerpos "respawn_west";

player setVariable ["temperature",dayz_temperatur,true];

dayz_myLoad = (((count dayz_myBackpackMags) * 0.2) + (count dayz_myBackpackWpns)) +  (((count dayz_myMagazines) * 0.1) + (count dayz_myWeapons * 0.5));

	//player addMagazine "Hatchet_swing";
	//player addWeapon "MeleeHatchet";

while {true} do {
	//Initialize
	_refObj = vehicle player;
	_size = (sizeOf typeOf _refObj) * 0.6;
	_vel = velocity player;
	_speed = round((_vel distance [0,0,0]) * 3.5);
	_saveTime = (playersNumber west * 2) + 10;
	_isBandit = typeOf player == "Bandit1_DZ" || typeOf player == "BanditW1_DZ";
	_isHero = typeOf player == "Survivor3_DZ";

	//reset position
	_randomSpot = true;
	_tempPos = getPosATL player;
	_distance = _debug distance _tempPos;
	if (_distance < 2000) then {
		_randomSpot = false;
	};
	_distance = [0,0,0] distance _tempPos;
	if (_distance < 500) then {
		_randomSpot = false;
	};
	if (!isNil "_mylastPos") then {
		_distance = _mylastPos distance _tempPos;
		if (_distance > 400) then {
			_randomSpot = false;
		};
	};
	if (_randomSpot) then {
		_mylastPos = _tempPos;
	};

	if (!isNil "_mylastPos") then {
		dayz_mylastPos = _mylastPos;
	};
	dayz_areaAffect = _size;

	//CheckVehicle
	/*
	if (_refObj != player) then {
		_isSync =_refObj getVariable ["ObjectID",0] > 0;
		if (!_isSync) then {
			_veh allowDamage true;
			_veh setDamage 1;
			player setDamage 1;
		};
	};
	*/

	if (_speed > 0.1) then {
		_timeOut = _timeOut + 1;
	};
	_timeOut = _changeTime;
	_humanity = player getVariable ["humanity",0];
	if (_timeOut > 150) then {
		_timeOut = 0;
		if (_humanity < 2500) then {
			_humanity = _humanity + 150;
			_humanity = _humanity min 2500;
			player setVariable ["humanity",_humanity,true];
		};
	};

	
	_allskins_male = ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
					  "Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
					  "Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"];
	
	_bandit5_male = ["Banditl51_DZ","Banditl52_DZ"];
	_bandit4_male = ["Banditl41_DZ","Banditl42_DZ"];
	_bandit3_male = ["Banditl31_DZ","Banditl32_DZ"];
	_bandit2_male = ["Banditl21_DZ"];
	_bandit1_male = ["Bandit1_DZ","Banditl11_DZ"];
	_normal_male = ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ"];
	_hero1_male = ["Herol11_DZ","Survivor3_DZ"];
	_hero2_male = ["Herol21_DZ"];
	_hero3_male = ["Herol31_DZ","Herol32_DZ"];
	_hero4_male = ["Herowl41_DZ","Herowl42_DZ"];
	_hero5_male = ["Herowl51_DZ","Herowl52_DZ"];
	
	_allskins_female = ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"];
	_bandit5_female = ["Banditwl51_DZ","Banditwl52_DZ"];
	_bandit4_female = ["Banditwl41_DZ","Banditwl42_DZ"];
	_bandit3_female = ["Banditwl31_DZ","Banditwl32_DZ"];
	_bandit2_female = ["Banditwl21_DZ"];
	_bandit1_female = ["BanditW1_DZ","Banditwl11_DZ"];
	_normal_female = ["SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"];
	_hero1_female = ["Herowl11_DZ"];
	_hero2_female = ["Herowl21_DZ"];
	_hero3_female = ["Herowl31_DZ","Herowl32_DZ"];
	_hero4_female = ["Herowl41_DZ","Herowl42_DZ"];
	_hero5_female = ["Herowl51_DZ","Herowl52_DZ"];
	
	//Humanity Sytem by Skaronator

	//BANDIT LEVEL 5
	if (_humanity > -80000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in (_allskins_male - _bandit5_male)) then {
			_toModel = _bandit5_male call BIS_fnc_selectRandom;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in (_allskins_female - _bandit5_female)) then {
			_toModel = _bandit5_female call BIS_fnc_selectRandom;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};	
	};

	//BANDIT LEVEL 4
	if (_humanity < -80000 and _humanity >= -40000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Banditl41_DZ","Banditl42_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Banditwl41_DZ","Banditwl42_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};	
	};

	//BANDIT LEVEL 3
	if (_humanity < -40000 and _humanity >= -20000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Banditl31_DZ","Banditl32_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Banditwl31_DZ","Banditwl32_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//BANDIT LEVEL 2
	if (_humanity < -20000 and _humanity >= -10000 and _changeTime > 5) then {
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Banditl21_DZ"];
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Banditwl21_DZ"];
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//BANDIT LEVEL 1
	if (_humanity < -10000 and _humanity >= -2500 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Bandit1_DZ","Banditl11_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["BanditW1_DZ","Banditwl11_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};
	
	//SURVIVOR LVL
	if (_humanity > 0 and _humanity <= 5000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ"] select floor random 11;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ"]) then {
			_toModel = ["SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"] select floor random 6;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//HERO LVL 1
	if (_humanity > 5000 and _humanity <= 7500 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ"]) then {
			_toModel = ["Herol11_DZ","Survivor3_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Herowl11_DZ"];
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//HERO LVL 2
	if (_humanity > 7500 and _humanity <= 10000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Herol21_DZ"];
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Herowl21_DZ"];
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//HGRO LVL 3
	if (_humanity > 10000 and _humanity <= 12500 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Herol31_DZ","Herol32_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Herowl31_DZ","Herowl32_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//HERO LVL 4
	if (_humanity > 12500 and _humanity <= 15000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol51_DZ","Herol52_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Herol41_DZ","Herol42_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl51_DZ","Herowl52_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Herowl41_DZ","Herowl42_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//HERO LVL 5
	if (_humanity > 15000 and _changeTime > 5) then {
		_currentModel = typeOf player;
		if (_currentModel in ["Civilian1_DZ","Civilian2_DZ","Civilian3_DZ","Civilian4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","Civilian10_DZ","Civilian11_DZ",
							"Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ",
							"Herol11_DZ","Herol21_DZ","Herol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Survivor2_DZ","Survivor3_DZ"]) then {
			_toModel = ["Herol51_DZ","Herol52_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
		if (_currentModel in ["BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Banditwl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ",
							"Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ",
							"SurvivorW2_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ"]) then {
			_toModel = ["Herowl51_DZ","Herowl52_DZ"] select floor random 2;
			_changeTime = 0;
			[dayz_playerUID,dayz_characterID,_toModel] spawn player_humanityMorph;
		};
	};

	//Has infection?
	//if (r_player_infected) then {
	//	[player,"cough",8,false] call dayz_zombieSpeak;
	//};

	//Record Check
	_lastUpdate = time - dayZ_lastPlayerUpdate;
	if (_lastUpdate > 8) then {
		//POSITION?
		_distance = dayz_myPosition distance player;
		if (_distance > 10) then {
			//Player has moved
			dayz_myPosition = getPosATL player;
			player setVariable["posForceUpdate",true,true];
			dayz_unsaved = true;
			dayZ_lastPlayerUpdate = time;
		};
	};

	//Hunger
	_hunger = +((((r_player_bloodTotal - r_player_blood) / r_player_bloodTotal) * 5) + _speed + dayz_myLoad) * 3;
	if (time - dayz_panicCooldown < 120) then {
		_hunger = _hunger * 2;
	};
	dayz_hunger = dayz_hunger + (_hunger / 60);

	//Thirst
	_thirst = 2;
	if (_refObj == player) then {
		_thirst = (_speed + 4) * 3;
	};
	dayz_thirst = dayz_thirst + (_thirst / 60) * (dayz_temperatur / dayz_temperaturnormal);	//TeeChange Temperatur effects added Max Effects: -25% and + 16.6% waterloss

	//Temperatur
	2 call player_temp_calculation; //2 = sleep time of this loop //TeeChange
	if ((_lastTemp - dayz_temperatur) > 0.75 or (_lastTemp - dayz_temperatur) < -0.75 ) then {
		player setVariable ["temperature",dayz_temperatur,true];
		_lastTemp = dayz_temperatur;
	};

	//can get nearby infection
	if (!r_player_infected) then {
		//	Infectionriskstart
		if (dayz_temperatur < ((80 / 100) * (dayz_temperaturnormal - dayz_temperaturmin) + dayz_temperaturmin)) then { //TeeChange
			_listTalk = _mylastPos nearEntities ["CAManBase",8];
			{
				if (_x getVariable["USEC_infected",false]) then {
					_rnd = (random 1) * (((dayz_temperaturnormal - dayz_temperatur) * (100 /(dayz_temperaturnormal - dayz_temperaturmin)))/ 50);	//TeeChange
					if (_rnd < 0.1) then {
						_rnd = random 1;
						if (_rnd > 0.7) then {
							r_player_infected = true;
							//player setVariable["USEC_infected",true];
						};
					};
				};
			} forEach _listTalk;
			if (dayz_temperatur < ((50 / 100) * (dayz_temperaturnormal - dayz_temperaturmin) + dayz_temperaturmin)) then { //TeeChange
				_rnd = (random 1) * (((dayz_temperaturnormal - dayz_temperatur) * (100 /(dayz_temperaturnormal - dayz_temperaturmin)))/ 25);	//TeeChange
				if (_rnd < 0.05) then {
					_rnd = random 1;
					if (_rnd > 0.95) then {
						r_player_infected = true;
						//player setVariable["USEC_infected",true];
					};
				};
			};
		};
	};

	//If has infection reduce blood cough and add shake
	if (r_player_infected) then {
		if !(player getVariable["USEC_infected",false]) then {
			player setVariable["USEC_infected",true,true];
		};

		if (!r_player_unconscious) then {
			_rnd = 10; //_rnd = ceil (random 8);
			[player,"cough",_rnd,false,9] call dayz_zombieSpeak;

			if (_rnd < 3) then {
				addCamShake [2, 1, 25];
			};
		};
		//if (r_player_blood > 100) then {
		//	r_player_blood = r_player_blood - 3;
		//	player setVariable["USEC_BloodQty",r_player_blood];
		//};
		_result = r_player_blood - 3;
		if (_result < 0) then {
			_id = [player,"sick"] spawn player_death;
		} else {
			//r_player_blood = _result;
			//player setVariable["USEC_BloodQty",r_player_blood];
		};
	};

	//Pain Shake Effects
	if (r_player_inpain and !r_player_unconscious) then {
		playSound "breath_1";
		addCamShake [2, 1, 25];
	};

	//Hunger Effect
	_foodVal = dayz_statusArray select 0;
	_thirstVal = dayz_statusArray select 1;
	if (_thirstVal <= 0) then {
		_result = r_player_blood - 10;
		if (_result < 0) then {
			_id = [player,"dehyd"] spawn player_death;
		} else {
			r_player_blood = _result;
		};
	};
	if (_foodVal <= 0) then {
		_result = r_player_blood - 10;
		if (_result < 0) then {
			_id = [player,"starve"] spawn player_death;
		} else {
			r_player_blood = _result;
		};
	};

	//Record low bloow
	_lowBlood = player getVariable ["USEC_lowBlood", false];
	if ((r_player_blood < r_player_bloodTotal) and !_lowBlood) then {
		player setVariable["USEC_lowBlood",true,true];
	};

	//Broadcast Hunger/Thirst
	_messTimer = _messTimer + 1;
	if (_messTimer > 15) then {
		_messTimer = 0;
		player setVariable ["messing",[dayz_hunger,dayz_thirst],true];
	};

	//check if can disconnect
	if (!dayz_canDisconnect) then {
		if ((time - dayz_damageCounter) > 180) then {
			if (!r_player_unconscious) then {
				dayz_canDisconnect = true;
				//["PVDZ_plr_Discorem",getPlayerUID player] call callRpcProcedure;
				PVDZ_plr_Discorem = getPlayerUID player;
				publicVariableServer "PVDZ_plr_Discorem";

				//Ensure Control is hidden
				_display = uiNamespace getVariable 'DAYZ_GUI_display';
				_control = _display displayCtrl 1204;
				_control ctrlShow false;
			};
		};
	};

	//Save Checker
	if (dayz_unsaved) then {
		if ((time - dayz_lastSave) > _saveTime) then {
			//["PVDZ_plr_Save",[player,dayz_Magazines,false]] call callRpcProcedure;

			PVDZ_plr_Save = [player,dayz_Magazines,false];
			publicVariableServer "PVDZ_plr_Save";

			if (isServer) then {
				PVDZ_plr_Save call server_playerSync;
			};

			dayz_lastSave = time;
			dayz_Magazines = [];
		};
		_lastSave = _lastSave + 2;
	} else {
		dayz_lastSave = time;
		_lastSave = 0;
	};

	if (!dayz_unsaved) then {
		dayz_lastSave = time;
	};

	// sort out pickup actions
	_isOK = (pickupInit and !canPickup) or (!pickupInit and canPickup);

	if (_isOK) then {
		if (pickupInit and !canPickup) then {
			canPickup = true;
			pickupInit = false;
		};
	} else {
		// reset
		canPickup = false;
		pickupInit = true;
	};

	//Attach Trigger Current Object
	//dayz_playerTrigger attachTo [_refObj,[0,0,0]];
	//dayz_playerTrigger setTriggerArea [_size,_size,0,false];

	// If in combat, display counter and restrict logout
	_startcombattimer = player getVariable["startcombattimer",0];
	if (_startcombattimer == 1) then {
		player setVariable["combattimeout", time + 30, true];
		player setVariable["startcombattimer", 0];
		dayz_combat = 1;
	};

	_combattimeout = player getVariable["combattimeout",0];
	if (_combattimeout > 0) then {
		_timeleft = _combattimeout - time;
		if (_timeleft > 0) then {
			//hintSilent format["In Combat: %1",round(_timeleft)];
		} else {
			//hintSilent "Not in Combat";
			player setVariable["combattimeout", 0, true];
			dayz_combat = 0;
			_combatdisplay = uiNamespace getVariable 'DAYZ_GUI_display';
			_combatcontrol = _combatdisplay displayCtrl 1307;
			_combatcontrol ctrlShow true;
		};
	} else {
		//hintSilent "Not in Combat";
		dayz_combat = 0;
		_combatdisplay = uiNamespace getVariable 'DAYZ_GUI_display';
		_combatcontrol = _combatdisplay displayCtrl 1307;
		_combatcontrol ctrlShow true;
	};

	/*
	setGroupIconsVisible [false,false];
	clearGroupIcons group player;
	*/
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1 min (4*r_player_blood/3/r_player_bloodTotal)],  [1, 1, 1, 0.0]];
	"colorCorrections" ppEffectCommit 0;
	sleep 2;

	_myPos = player getVariable["lastPos",[]];
	if (count _myPos > 0) then {
		player setVariable["lastPos",_mylastPos, true];
		player setVariable["lastPos",[]];
	};

	_lastPos = getPosATL player;
	if (!isNil "_mylastPos") then {
		if (player == vehicle player) then {
			if (_mylastPos distance _lastPos > 200) then {
				if (alive player) then {
					player setPosATL _mylastPos;
				};
			};
		} else {
			if (_mylastPos distance _lastPos > 800) then {
				if (alive player) then {
					player setPosATL _mylastPos;
				};
			};
		};
	};
	//nul = [player] execVM "\z\addons\dayz_code\actions\player_takedown.sqf"; // doesn't work properly, just causes player to salute repeatedly.
	//Melee Weapons ammo fix
	if(isNil {login_ammochecked}) then {
		login_ammochecked = true;
		 _wpnType = primaryWeapon player;
		_ismelee = (gettext (configFile >> "CfgWeapons" >> _wpnType >> "melee"));
		if (_ismelee == "true") then {
			call dayz_meleeMagazineCheck;
		};
	};

	//Crowbar ammo fix
	//"MeleeCrowbar" call dayz_meleeMagazineCheck;

};
