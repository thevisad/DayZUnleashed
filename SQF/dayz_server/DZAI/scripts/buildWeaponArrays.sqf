/*
	buildWeaponArrays
	
	Description: Do not edit anything in this file unless instructed by the developer.
	
	Last updated: 11:53 AM 6/25/2014
*/

private ["_bldgClasses","_lootItem","_aiWeaponBanList","_lootList","_cfgBuildingLoot","_startTime","_lootConfigFile"];

if (!isNil "DZAI_weaponsInitialized") exitWith {};

_startTime = diag_tickTime;

_lootConfigFile = if !((DZAI_customLootTables) && {(isClass (missionConfigFile >> "CfgBuildingLoot"))}) then {
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Building DZAI weapon arrays using CfgBuildingLoot data."};
	configFile
} else {
	if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Building DZAI weapon arrays using custom CfgBuildingLoot data."};
	missionConfigFile
};

_bldgClasses = [["civilian"],["Military"],["MilitarySpecial"],["hunt"]];
//Built-in weapon ban list for melee weapons and nonweapon items
_aiWeaponBanList = 
	[
		"Crossbow_DZ","Crossbow","MeleeHatchet","MeleeCrowbar","MeleeMachete","MeleeBaseball","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails","Chainsaw", //Melee weapons
		"ItemMap","Binocular","ItemWatch","ItemCompass","ItemFlashlight","ItemKnife","NVGoggles","ItemGPS","ItemEtool","Binocular_Vector","ItemMatchbox","ItemToolbox", //Non-weapon items
		"ItemKeyKit","ItemMatchbox_DZE" //Epoch items
	];

//Add user-specified banned weapons to DZAI weapon banlist.
{
	if !(_x in _aiWeaponBanList) then {
		_aiWeaponBanList set [count _aiWeaponBanList,_x];
	};
} count DZAI_banAIWeapons;
DZAI_banAIWeapons = nil;
//diag_log format ["DEBUG :: List of weapons to be removed from DZAI classname tables: %1",_aiWeaponBanList];

//Compatibility with Namalsk's selectable loot table feature.
if (isNil "dayzNam_buildingLoot") then {
	_cfgBuildingLoot = "cfgBuildingLoot";
	if (isClass (_lootConfigFile >> _cfgBuildingLoot >> "Barracks")) then {
		(_bldgClasses select 2) set [((_bldgClasses select 2) find "MilitarySpecial"),"Barracks"];
	};
} else {
	_cfgBuildingLoot = dayzNam_buildingLoot;
	(_bldgClasses select 3) set [((_bldgClasses select 3) find "Military"),"HeliCrashNamalsk"];
};
//diag_log format ["DEBUG :: _cfgBuildingLoot: %1",_cfgBuildingLoot];

//Compatibility with DayZ 1.7.7's new HeliCrash tables
if ((isClass (_lootConfigFile >> _cfgBuildingLoot >> "HeliCrashWEST")) && {(isClass (_lootConfigFile >> _cfgBuildingLoot >> "HeliCrashEAST"))}) then {
	_bldgClasses set [3,["HeliCrashWEST","HeliCrashEAST"]];
	//diag_log format ["DEBUG :: HeliCrash tables modified: %1",(_bldgClasses select 3)];
};

//Fix for CfgBuildingLoot structure change in DayZ 1.7.7
_lootList = "";
_lootListCheck = isArray (_lootConfigFile >> _cfgBuildingLoot >> "Default" >> "lootType");
//diag_log format ["DEBUG :: _lootListCheck: %1",_lootListCheck];
if (_lootListCheck) then {
	_lootList = "lootType"; //new
} else {
	_lootList = "itemType"; //old
};
//diag_log format ["DEBUG :: _lootList: %1",_lootList];

//Declare all temporary DZAI weapon arrays. DO NOT EDIT.
_DZAI_Pistols0_temp = [];
_DZAI_Pistols1_temp = [];
_DZAI_Pistols2_temp = [];
_DZAI_Pistols3_temp = [];

_DZAI_Rifles0_temp = [];
_DZAI_Rifles1_temp = [];
_DZAI_Rifles2_temp = [];
_DZAI_Rifles3_temp = [];

//Build the weapon arrays.
for "_i" from 0 to (count _bldgClasses - 1) do {					//_i = weapongrade
	for "_j" from 0 to (count (_bldgClasses select _i) - 1) do {	//If each weapongrade has more than 1 building class, investigate them all
		private["_bldgLoot"];
		_iItemTypes = [] + getArray (_lootConfigFile >> _cfgBuildingLoot >> ((_bldgClasses select _i) select _j) >> _lootList);
		_bldgLoot = [];
		for "_k" from 0 to (count _iItemTypes - 1) do {	
			_bldgLootItem = _iItemTypes select _k;	
			if (((_bldgLootItem select 0) == "hunt") || ((_bldgLootItem select 0) == "military") || ((_bldgLootItem select 0) == "militaryspecial")  || ((_bldgLootItem select 0) == "civilian")|| ((_bldgLootItem select 0) == "rarebuildingitems")) then {
				_bldgLoot = [] + getArray (configFile >> "cfgLoot" >> (_bldgLootItem select 0));
		};
		for "_k" from 0 to (count _bldgLoot - 1) do {				
			_lootItem = _bldgLoot select _k;
			if (((_lootItem select 0) != "cfglootweapon")) then {			//Build an array of "weapons", then categorize them as rifles or pistols, then sort them into the correct weapon grade.
				private ["_weaponItem","_weaponMags"];
				_weaponItem = _lootItem select 0;
				_weaponMags = count (getArray (configFile >> "cfgWeapons" >> _weaponItem >> "magazines"));
				if ((_weaponMags > 0) && {!(_weaponItem in _aiWeaponBanList)}) then {							//Consider an item as a "weapon" if it has at least one magazine type.
					if ((getNumber (configFile >> "CfgWeapons" >> _weaponItem >> "type")) == 1) then {
						call compile format ["_DZAI_Rifles%1_temp set [(count _DZAI_Rifles%1_temp),'%2'];",_i,_weaponItem];
					} else {
						if ((getNumber (configFile >> "CfgWeapons" >> _weaponItem >> "type")) == 2) then {
							call compile format ["_DZAI_Pistols%1_temp set [(count _DZAI_Pistols%1_temp),'%2'];",_i,_weaponItem];
						};
					};
				};
			} else {
				if ((_lootItem select 1) == "cfglootweapon") then {
					private ["_weapons"];
					_weapons = [] + getArray (_lootConfigFile >> "cfgLoot" >> (_lootItem select 0));
					{
						if (!(_x in _aiWeaponBanList)) then {
							if ((getNumber (configFile >> "CfgWeapons" >> _x >> "type")) == 1) then {
								call compile format ["_DZAI_Rifles%1_temp set [(count _DZAI_Rifles%1_temp),'%2'];",_i,_x];
							} else {
								if ((getNumber (configFile >> "CfgWeapons" >> _x >> "type")) == 2) then {
									call compile format ["_DZAI_Pistols%1_temp set [(count _DZAI_Pistols%1_temp),'%2'];",_i,_x];
								};
							};
						};
					} forEach (_weapons select 0);
				};
			};
		};
	};
};
};

//Redefine each prebuilt weapon array if new table is not empty
if ((count _DZAI_Pistols0_temp) > 0) then {DZAI_Pistols0 = _DZAI_Pistols0_temp};
if ((count _DZAI_Pistols1_temp) > 0) then {DZAI_Pistols1 = _DZAI_Pistols1_temp}; //else {DZAI_Pistols1 = [] + DZAI_Pistols0};
if ((count _DZAI_Pistols2_temp) > 0) then {DZAI_Pistols2 = _DZAI_Pistols2_temp}; //else {DZAI_Pistols2 = [] + DZAI_Pistols1};
if ((count _DZAI_Pistols3_temp) > 0) then {DZAI_Pistols3 = _DZAI_Pistols3_temp} else {DZAI_Pistols3 = [] + DZAI_Pistols2};
if ((count _DZAI_Rifles0_temp) > 0) then {DZAI_Rifles0 = _DZAI_Rifles0_temp};
if ((count _DZAI_Rifles1_temp) > 0) then {DZAI_Rifles1 = _DZAI_Rifles1_temp}; //else {DZAI_Rifles1 = [] + DZAI_Rifles0};
if ((count _DZAI_Rifles2_temp) > 0) then {DZAI_Rifles2 = _DZAI_Rifles2_temp}; //else {DZAI_Rifles2 = [] + DZAI_Rifles1};
if ((count _DZAI_Rifles3_temp) > 0) then {DZAI_Rifles3 = _DZAI_Rifles3_temp} else {DZAI_Rifles3 = [] + DZAI_Rifles2};

if (DZAI_debugLevel > 0) then {
	if (DZAI_debugLevel > 1) then {
		//Display finished weapon arrays
		diag_log format ["Contents of DZAI_Pistols0: %1",DZAI_Pistols0];
		diag_log format ["Contents of DZAI_Pistols1: %1",DZAI_Pistols1];
		diag_log format ["Contents of DZAI_Pistols2: %1",DZAI_Pistols2];
		diag_log format ["Contents of DZAI_Pistols3: %1",DZAI_Pistols3];
		diag_log format ["Contents of DZAI_Rifles0: %1",DZAI_Rifles0];
		diag_log format ["Contents of DZAI_Rifles1: %1",DZAI_Rifles1];
		diag_log format ["Contents of DZAI_Rifles2: %1",DZAI_Rifles2];
		diag_log format ["Contents of DZAI_Rifles3: %1",DZAI_Rifles3];
	};
	diag_log format ["DZAI Debug: Weapon classname tables created in %1 seconds.",(diag_tickTime - _startTime)];
};

DZAI_weaponsInitialized = true;
