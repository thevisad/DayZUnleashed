private["_item","_hasKnife","_hasKnifeBlunt","_type","_hasHarvested","_config","_isListed","_text","_dis","_sfx","_qty","_array","_string"];
_item = _this select 3;
_hasKnife = "ItemKnife" in items player;
_hasKnifeBlunt = "ItemKnifeBlunt" in items player;
_type = typeOf _item;
_hasHarvested = _item getVariable["meatHarvested",false];
_config = configFile >> "CfgSurvival" >> "Meat" >> _type;

player removeAction s_player_butcher;
s_player_butcher = -1;


if ((_hasKnife or _hasKnifeBlunt) and !_hasHarvested) then {
	//Get Animal Type
	_isListed = isClass (_config);
	_text = getText (configFile >> "CfgVehicles" >> _type >> "displayName");

	player playActionNow "Medic";

	_dis=10;
	_sfx = "gut";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

	_item setVariable ["meatHarvested",true,true];

	_qty = 2;
	if (_isListed) then {
		_qty = getNumber (_config >> "yield");
	};
	
	if (hunter_skill_server > 900 ) then {
		_qty = _qty + 4;
	};

	if (hunter_skill_server > 700 and hunter_skill_server < 899 ) then {
		_qty = _qty + 2;
	};

	if (hunter_skill_server > 500 and hunter_skill_server < 699 ) then {
		_qty = _qty + 1;
	};


	if (_hasKnifeBlunt) then { _qty = round(_qty / 2); };

	_array = [_item,_qty];

	if (local _item) then {
		_array spawn local_gutObject;
	} else {
		PVDZ_obj_GutBody = _array;
		publicVariable "PVDZ_obj_GutBody";
	};

	sleep 6;
	_string = format[localize "str_success_gutted_animal",_text,_qty];
	//[player,2,2] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
    [player,"Generic_Hunting"] call DZU_fnc_giveEXP;
	cutText [_string, "PLAIN DOWN"];
};