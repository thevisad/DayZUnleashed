/*
_item spawn player_wearClothes;
TODO: female
*/
private["_item","_onLadder","_hasclothesitem","_config","_text","_isFemale","_myModel","_humanity","_isBandit","_isHero","_itemNew","_model","_femaleSkins"];

_item = _this;
call gear_ui_init;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_hasclothesitem = _this in magazines player;
_config = configFile >> "CfgMagazines";
_text = getText (_config >> _item >> "displayName");

if (!_hasclothesitem) exitWith {cutText [format[(localize "str_player_31"),_text,(localize "str_player_31_wear")] , "PLAIN DOWN"]};

if (vehicle player != player) exitWith {cutText ["You may not change clothes while in a vehicle", "PLAIN DOWN"]};

_isFemale = ((typeOf player == "SurvivorW1_DZ")||(typeOf player == "SurvivorW2_DZ")||(typeOf player == "SurvivorW3_DZ")||(typeOf player == "SurvivorW4_DZ")||(typeOf player == "SurvivorW5_DZ")||(typeOf player == "BanditW1_DZ")||(typeOf player == "BanditW2_DZ")||(typeOf player == "BanditW3_DZ")||(typeOf player == "HeroW1_DZ")||(typeOf player == "HeroW2_DZ")||(typeOf player == "HeroW3_DZ"));
//if (_isFemale) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};

_myModel = (typeOf player);
_humanity = player getVariable ["humanity",0];
_isBandit = _humanity < -2000;
_isHero = _humanity > 5000;
_itemNew = "Skin_" + _myModel;

if ( !(isClass(_config >> _itemNew)) ) then {
	_itemNew = if (!_isFemale) then {"Skin_Survivor2_DZ"} else {"Skin_SurvivorW2_DZ"};
};

switch (_item) do {
	case "Skin_SurvivorW2_DZ": {
		_model = "SurvivorW2_DZ";
	};
	case "Skin_SurvivorWO_DZ": {
		_model = "SurvivorWO_DZ";
	};
	case "Skin_SurvivorWO2_DZ": {
		_model = "SurvivorWO2_DZ";
	};
	case "Skin_SurvivorWO3_DZ": {
	_model = "SurvivorWO3_DZ";
	};
	case "Skin_SniperW1_DZ": {
		_model = "SniperW1_DZ";
	};
	case "Skin_Sniper1_DZ": {
		_model = "Sniper1_DZ";
	};
	case "Skin_Camo1_DZ": {
		_model = "Camo1_DZ";
	};
	case "Skin_Soldier1_DZ": {
		_model = "Soldier1_DZ";
	};
	case "Skin_Survivor2_DZ": {
		_model = "Survivor2_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};
	
	case "Skin_Civilian1_DZ": {
		_model = "Civilian2_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};
	
	case "Skin_Civilian2_DZ": {
		_model = "Civilian2_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};
	
	case "Skin_Civilian3_DZ": {
		_model = "Civilian3_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};
	
	case "Skin_Civilian4_DZ": {
		_model = "Civilian4_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};
	
	case "Skin_Civilian5_DZ": {
		_model = "Civilian5_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian6_DZ": {
		_model = "Civilian6_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian7_DZ": {
		_model = "Civilian7_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian8_DZ": {
		_model = "Civilian8_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian9_DZ": {
		_model = "Civilian9_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian10_DZ": {
		_model = "Civilian10_DZ";
		if (_isBandit) then {
			_model = "Bandit1_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_SurvivorW1_DZ": {
		_model = "SurvivorW2_DZ";
		if (_isBandit) then {
			_model = "BanditW1_DZ";
		};
		if (_isHero) then {
			_model = "HeroW1_DZ";
		};
	};

	case "Skin_SurvivorW2_DZ": {
		_model = "SurvivorW2_DZ";
		if (_isBandit) then {
			_model = "BanditW1_DZ";
		};
		if (_isHero) then {
			_model = "HeroW1_DZ";
		};
	};

	case "Skin_SurvivorW3_DZ": {
		_model = "SurvivorW3_DZ";
		if (_isBandit) then {
			_model = "BanditW1_DZ";
		};
		if (_isHero) then {
			_model = "HeroW1_DZ";
		};
	};

	case "Skin_SurvivorW4_DZ": {
		_model = "SurvivorW4_DZ";
		if (_isBandit) then {
			_model = "BanditW1_DZ";
		};
		if (_isHero) then {
			_model = "HeroW1_DZ";
		};
	};

	case "Skin_SurvivorW5_DZ": {
		_model = "SurvivorW5_DZ";
		if (_isBandit) then {
			_model = "BanditW1_DZ";
		};
		if (_isHero) then {
			_model = "HeroW1_DZ";
		};
	};	
};

_femaleSkins = ((_model == "SurvivorW1_DZ")||((_model == "SurvivorW2_DZ")||((_model == "SurvivorW3_DZ")||((_model == "SurvivorW4_DZ")||((_model == "SurvivorW5_DZ")||(_model == "BanditW1_DZ")||(_model == "BanditW2_DZ")||(_model == "BanditW3_DZ")||(_model == "HeroW1_DZ")||(_model == "HeroW2_DZ")||(_model == "HeroW3_DZ"));
if (!_isFemale && _femaleSkins) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};
if (_isFemale && !_femaleSkins) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};

if (_model != _myModel) then {
	player removeMagazine _item;
	player addMagazine _itemNew;
	[dayz_playerUID, dayz_characterID, _model] spawn player_humanityMorph;
};