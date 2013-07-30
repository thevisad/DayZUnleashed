private ["_modeldex","_nameKillerP","_typedeP","_nameBody","_cruse","_backpackHolder","_method","_body"];
diag_log("GRAVESTONES REPLACEMENT START");
_modeldex = "";
_nameKillerP = "unknown";
_body = _this select 3;
_typedeP = 0;

_modeldex = typeOf _body;
diag_log("_modeldex = "+str(_modeldex));
if (_modeldex in  ["AllPlayers","BAF_Soldier_DDPM","BAF_Soldier_L_DDPM","BAF_Soldier_L_MTP","BAF_Soldier_MTP","BAF_Soldier_Officer_DDPM","BAF_Soldier_Officer_MTP","BAF_Soldier_Sniper_MTP","BAF_Soldier_SniperH_MTP","BAF_Soldier_Sni","erN_MTP","Bandit1_DZ","Banditl11_DZ","Banditl21_DZ","Banditl31_DZ","Banditl32_DZ","Banditl41_DZ","Banditl42_DZ","Banditl51_DZ","Banditl52_DZ","BanditW1_DZ","Banditwl11_DZ","Banditwl21_DZ","Banditwl31_DZ","Band","twl32_DZ","Banditwl41_DZ","Banditwl42_DZ","Banditwl51_DZ","Banditwl52_DZ","Camo1_DZ","CamoWinter_DZN","CamoWinterW_DZN","Citizen3","Civilian1_DZ","Civilian10_DZ","Civilian11_DZ","Civilian2_DZ","Civilian3_DZ","Civili","n4_DZ","Civilian5_DZ","Civilian6_DZ","Civilian7_DZ","Civilian8_DZ","Civilian9_DZ","CivilianW1_DZ","CivilianW2_DZ","CivilianW3_DZ","CivilianW4_DZ","CivilianW5_DZ","CZ_Soldier_DES_EP1","Herol11_DZ","Herol21_DZ","H","rol31_DZ","Herol32_DZ","Herol41_DZ","Herol42_DZ","Herol51_DZ","Herol52_DZ","Herowl11_DZ","Herowl21_DZ","Herowl31_DZ","Herowl32_DZ","Herowl41_DZ","Herowl42_DZ","Herowl51_DZ","Herowl52_DZ","Rocket_DZ","Sniper1_DZ","Sniper1W_DZN","Soldier1_DZ","Survivor2_DZ","Survivor3_DZ","SurvivorW2_DZ","TK_CIV_Takistani01_EP1","TK_CIV_Takistani05_EP1","TK_INS_Soldier_EP1","US_Soldier_EP1","Villager1","Worker1"]) then 
{
	private ["_weapons", "_magazines", "_backpack", "_backpackWeapons", "_backpackMagazines", "_backpackType", "_position", "_holder", "_i", "_itemsCount", "_isZombie"];

	_weapons = weapons _body;
	_magazines = magazines _body;
	_backpack = unitBackpack _body;
	_body = _this select 3;
	_nameBody = _body getVariable["bodyName","unknown"];
	_method = _body getVariable["deathType","unknown"];
	_position = (_body modelToWorld [0.0, 0.0, 0.0]); 
	//_position2 = getPosATL _body;
	//_position3 = getPos _body;
	_nameKillerP = _body getVariable ["nameKillerP","unknown"];
	_typedeP = _body getVariable ["typedeP","unknown"];

	if (!isNull _backpack) then
	{
		_backpackWeapons = getWeaponCargo _backpack;
		_backpackMagazines = getMagazineCargo _backpack;
		_backpackType = typeOf _backpack;
	}
	else
	{
		_backpackWeapons = [[], []];
		_backpackMagazines = [[], []];
		_backpackType = "";
	};

	_isZombie = _body isKindOf "zZombie_Base";

	deleteVehicle _body;

	_itemsCount = (count _weapons) + (count _magazines) + (count (_backpackWeapons select 0)) + (count (_backpackMagazines select 0));

	if ((_itemsCount > 0) and (!_isZombie)) then
	{
		_holder =  createVehicle ["WeaponHolder", _position, [], 0, "CAN_COLLIDE"];
		_holder setPos _position;
		// createVehicle _position;
		_holder setVariable ["RepLoot", (time+3600), true];
		_cruse =  createVehicle ["GraveCrossHelmet", _position, [], 0, "CAN_COLLIDE"];
		_cruse setPos _position;
		//_cruse2 =  createVehicle ["GraveCrossHelmet", _position2, [], 0, "CAN_COLLIDE"];  
		// _cruse3 =  createVehicle ["GraveCrossHelmet", _position3, [], 0, "CAN_COLLIDE"];

		//createVehicle _position;


		_cruse setVariable ["RepBody", _nameBody, true];
		_cruse setVariable ["nameKillerP",_nameKillerP, true];
		_cruse setVariable ["typedeP", _typedeP, true];

		{ _holder addWeaponCargoGlobal [_body, 1]; } forEach _weapons;
		{ _holder addMagazineCargoGlobal [_body, 1]; } forEach _magazines;

		for "_i" from 0 to ((count (_backpackWeapons select 0)) - 1) do
		{
			_holder addWeaponCargoGlobal
				[((_backpackWeapons select 0) select _i), ((_backpackWeapons select 1) select _i)];
		};

		for "_i" from 0 to ((count (_backpackMagazines select 0)) - 1) do
		{
			_holder addMagazineCargoGlobal
				[((_backpackMagazines select 0) select _i), ((_backpackMagazines select 1) select _i)];
		};
	};

	if ((_backpackType != "") and (!_isZombie)) then
	{
		//_backpackHolder = "WeaponHolder" createVehicle _position;
		_backpackHolder = createVehicle [_backpackType, _position, [], 0, "CAN_COLLIDE"];
		_backpackHolder setVariable ["RepLoot", (time+3600), true];
		_backpackHolder setPos _position;
		//_holder addBackpackCargoGlobal [_backpackType, 1];
		//_backpackHolder addBackpackCargoGlobal [_backpackType, 1];
	};
	//_flys = count ( allMissionObjects "#dynamicsound");

   diag_log format ["Replaced Body (%4)-(%1 items, at %2), _backpackType=%3", _itemsCount, _position, _backpackType,_nameBody];
};

