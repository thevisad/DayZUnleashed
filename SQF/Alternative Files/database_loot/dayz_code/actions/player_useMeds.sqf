private["_item","_onLadder","_hasmeditem","_config","_text","_id"];

_item = _this;
call gear_ui_init;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_hasmeditem = _this in magazines player;

_config = configFile >> "CfgMagazines" >> _item;
_text = getText (_config >> "displayName");

if (!_hasmeditem) exitWith {cutText [format[(localize "str_player_31"),_text,(localize "str_player_31_use")] , "PLAIN DOWN"]};

switch (_item) do {
	case "ItemBandage": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\medical\bandage.sqf";
	};
	case "ToiletBandage": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\medical\toiletbandage.sqf";
	};
	case "ItemMorphine": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\medical\morphine.sqf";
	};
	case "ItemPainkiller": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\medical\painkiller.sqf";
	};
	case "ItemAntibiotic": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\medical\antibiotics.sqf";
	};
	case "ItemBloodbag": {
		_id = [0,0,0,[player]] execVM "\z\addons\dayz_code\actions\player_selfbloodbag.sqf";
	};
	case "ItemHeatPack": {
		player removeMagazine "ItemHeatPack";
		dayz_temperatur = (dayz_temperatur + 5) min dayz_temperaturmax;
		cutText [localize "str_player_27", "PLAIN DOWN"];
	};
};