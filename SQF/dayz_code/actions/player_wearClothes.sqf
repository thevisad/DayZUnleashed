/*
_item spawn player_wearClothes;
TODO: female
*/
private["_item","_onLadder","_hasclothesitem","_config","_text","_isFemale","_myModel","_humanity","_isBandit","_isHero","_itemNew","_model","_femaleSkins"];

_item = _this;
call gear_ui_init;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};
if (vehicle player != player) exitWith {cutText ["You may not change clothes while in a vehicle", "PLAIN DOWN"]};
_hasclothesitem = _this in magazines player;

_config = configFile >> "CfgMagazines";
_configVehicles = configFile >> "CfgVehicles";
_text = getText (_config >> _item >> "displayName");                //Name of clothing parcel
_model = getText (_config >> _item >> "skinModel");                 //Name of the model we will set the player to
_myModel = (typeOf player);                                         //Name of the players existing model
_mySkin = getText ( _configVehicles >> _myModel >> "clothingDZ");   //Players existing skin
if(_mySkin=="")then{
  _mySkin=""; 
};
_isFemale = false;                                                  //Is this player female
//Check if the player is female and set the package to the alternative skin if so
if (getNumber(_configVehicles >> _myModel >> "isFemaleDZ") == 1) then {
    _isFemale = true;
    _model = getText (_config >> _item >> "skinModelAlt");
};
//Check if the player still has the item in their inventory
if (!_hasclothesitem) exitWith {cutText [format[(localize "str_player_31"),_text,(localize "str_player_31_wear")] , "PLAIN DOWN"]};
    
//_isFemale = ((typeOf player == "CivilianW1_DZ")||(typeOf player == "SniperW1_DZ")||(typeOf player == "CivilianW2_DZ")||(typeOf player == "CivilianW3_DZ")||(typeOf player == "CivilianW4_DZ")||(typeOf player == "CivilianW5_DZ")||(typeOf player == "Banditwl11_DZ")||(typeOf player == "Banditwl21_DZ")||(typeOf player == "Banditwl31_DZ")||(typeOf player == "Banditwl32_DZ")||(typeOf player == "Banditwl41_DZ")||(typeOf player == "Banditwl42_DZ")||(typeOf player == "Banditwl51_DZ")||(typeOf player == "Banditwl52_DZ")||(typeOf player == "Herowl11_DZ")||(typeOf player == "Herowl21_DZ")||(typeOf player == "Herowl31_DZ")||(typeOf player == "Herowl32_DZ")||(typeOf player == "Herowl41_DZ")||(typeOf player == "Herowl42_DZ")||(typeOf player == "Herowl51_DZ")||(typeOf player == "Herowl52_DZ"));
//if (_isFemale) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};



_humanity = player getVariable ["humanity",0];
_isBandit = _humanity < -2000;
_isHero = _humanity > 5000;
_itemNew = "Skin_" + _myModel;


if (!(isClass(_configVehicles >> _model)) )  then {
    _itemNew = if (!) then {"Skin_Survivor2_DZ"} else {"Skin_SurvivorW2_DZ"};
}
/*
if ( !(isClass(_config >> _itemNew)) ) then {
	_itemNew = if (!) then {"Skin_Survivor2_DZ"} else {"Skin_SurvivorW2_DZ"};
};
*/
switch (_item) do {
	case "Skin_Sniper1_DZ": {
		_model = "Sniper1_DZ";
	};
	case "Skin_Camo1_DZ": {
		_model = "Camo1_DZ";
	};
	
	// Unleashed Skins
	case "Skin_SniperW1_DZ": {
		_model = "";
	};
	case "Skin_BAF_Soldier_MTP": {
		_model = "BAF_Soldier_MTP";
	};
	case "Skin_BAF_Soldier_DDPM": {
		_model = "BAF_Soldier_DDPM";
	};
	case "Skin_BAF_Soldier_L_MTP": {
		_model = "BAF_Soldier_L_MTP";
	};
	case "Skin_BAF_Soldier_L_DDPM": {
		_model = "BAF_Soldier_L_DDPM";
	};
	case "Skin_BAF_Soldier_Officer_MTP": {
		_model = "BAF_Soldier_Officer_MTP";
	};
	case "Skin_BAF_Soldier_Officer_DDPM": {
		_model = "BAF_Soldier_Officer_DDPM";
	};
	case "Skin_BAF_Soldier_Sniper_MTP": {
		_model = "BAF_Soldier_Sniper_MTP";
	};
	case "Skin_BAF_Soldier_SniperH_MTP": {
		_model = "BAF_Soldier_SniperH_MTP";
	};
	case "Skin_BAF_Soldier_SniperN_MTP": {
		_model = "BAF_Soldier_SniperN_MTP";
	};
	case "Skin_CZ_Soldier_DES_EP1": {
		_model = "CZ_Soldier_DES_EP1";
	};
	case "Skin_TK_INS_Soldier_EP1": {
		_model = "TK_INS_Soldier_EP1";
	};
	case "Skin_US_Soldier_EP1": {
		_model = "US_Soldier_EP1";
	};
	case "Skin_TK_INS_Soldier_EP1": {
		_model = "TK_INS_Soldier_EP1";
	};
	case "Skin_TK_CIV_Takistani05_EP1": {
		_model = "TK_CIV_Takistani05_EP1";
	};
	case "Skin_TK_CIV_Takistani01_EP1": {
		_model = "TK_CIV_Takistani01_EP1";
	};
	
	case "Skin_Civilian1_DZ": {
		_model = "Civilian2_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};
	
	case "Skin_Civilian2_DZ": {
		_model = "Civilian2_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};
	
	case "Skin_Civilian3_DZ": {
		_model = "Civilian3_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};
	
	case "Skin_Civilian4_DZ": {
		_model = "Civilian4_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};
	
	case "Skin_Civilian5_DZ": {
		_model = "Civilian5_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Hero1_DZ";
		};
	};

	case "Skin_Civilian6_DZ": {
		_model = "Civilian6_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};

	case "Skin_Civilian7_DZ": {
		_model = "Civilian7_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};

	case "Skin_Civilian8_DZ": {
		_model = "Civilian8_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};

	case "Skin_Civilian9_DZ": {
		_model = "Civilian9_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};

	case "Skin_Civilian10_DZ": {
		_model = "Civilian10_DZ";
		if (_isBandit) then {
			_model = "Banditl11_DZ";
		};
		if (_isHero) then {
			_model = "Herol11_DZ";
		};
	};

	case "Skin_CivilianW1_DZ": {
		_model = "CivilianW1_DZ";
		if (_isBandit) then {
			_model = "Banditwl11_DZ";
		};
		if (_isHero) then {
			_model = "Herowl11_DZ";
		};
	};

	case "Skin_CivilianW2_DZ": {
		_model = "CivilianW2_DZ";
		if (_isBandit) then {
			_model = "Banditwl11_DZ";
		};
		if (_isHero) then {
			_model = "Herowl11_DZ";
		};
	};

	case "Skin_CivilianW3_DZ": {
		_model = "CivilianW3_DZ";
		if (_isBandit) then {
			_model = "Banditwl11_DZ";
		};
		if (_isHero) then {
			_model = "Herowl11_DZ";
		};
	};

	case "Skin_CivilianW4_DZ": {
		_model = "CivilianW4_DZ";
		if (_isBandit) then {
			_model = "Banditwl11_DZ";
		};
		if (_isHero) then {
			_model = "Herowl11_DZ";
		};
	};

	case "Skin_CivilianW5_DZ": {
		_model = "SurvivorW2_DZ";
		if (_isBandit) then {
			_model = "Banditwl11_DZ";
		};
		if (_isHero) then {
			_model = "Herowl11_DZ";
		};
	};	
	// End Unleashed Skins
	
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
};

_femaleSkins = ((_model == "CivilianW1_DZ")||(_model == "SniperW1_DZ")||(_model == "CivilianW2_DZ")||(_model == "CivilianW3_DZ")||(_model == "CivilianW4_DZ")||(_model == "CivilianW5_DZ")||(_model == "Banditwl11_DZ")||(_model == "Banditwl21_DZ")||(_model == "Banditwl31_DZ")||(_model == "Banditwl32_DZ")||(_model == "Banditwl41_DZ")||(_model == "Banditwl42_DZ")||(_model == "Banditwl51_DZ")||(_model == "Banditwl52_DZ")||(_model == "Herowl11_DZ")||(_model == "Herowl21_DZ")||(_model == "Herowl31_DZ")||(_model == "Herowl32_DZ")||(_model == "Herowl41_DZ")||(_model == "Herowl42_DZ")||(_model == "Herowl51_DZ")||(_model == "Herowl52_DZ"));
if (!_isFemale && _femaleSkins) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};
if (_isFemale && !_femaleSkins) exitWith {cutText ["You need a Skin for your Gender.", "PLAIN DOWN"]};

if (_model != _myModel) then {
	player removeMagazine _item;
	player addMagazine _itemNew;
	[dayz_playerUID, dayz_characterID, _model] spawn player_humanityMorph;
};