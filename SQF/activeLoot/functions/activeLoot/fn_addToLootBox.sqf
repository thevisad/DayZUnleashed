if (({isNil "_x"} count _this) != 0) exitWith {diag_log format["%1:ERROR> all parameters must be defined values!","DZU_fnc_addToLootBox"]; };
if((count _this)<5) exitWith {diag_log format["%1:ERROR> Requires %2 parameters!","DZU_fnc_addToLootBox",5]; };

_object             = (_this select 0);
_survivalSkill      = (_this select 1);
_lootMin            = (_this select 2);
_lootMax            = (_this select 3);
_lootTables          = (_this select 4);
_config             = configFile >> "cfgLoot";

_lootRand = (_lootMax - _lootMin) max 0;
if(_lootRand != 0) then {
   _lootRand = floor(_lootRand * (_survivalSkill / 100));
};

for "_x" from 1 to (_lootMin + _lootRand) do {
     _lootType = _lootTables call BIS_fnc_selectRandom;
    _CfgLootTable = getArray(_config >> _lootType);
    _iItem = (( _CfgLootTable call BIS_fnc_selectRandom) select 0);    
    
    //_text = Format["y%1 i%2 t%3 c%4",_lootType,_iItem,_CfgLootTable,isClass (configFile >> "CfgVehicles" >> _iItem)];
    //hintSilent _text;
    //diag_log _text;
    
    switch (true) do
	{
	    case (isClass (configFile >> "CfgMagazines" >> _iItem)) : { 
        //magazine
        _object addMagazineCargoGlobal [_iItem,1];
        };
	    case (isClass (configFile >> "CfgWeapons" >> _iItem)) : { 
        //weapon
        _object addWeaponCargoGlobal [_iItem,1];
        //Magazine for weapon..
	        _mags = [] + getArray (configFile >> "cfgWeapons" >> _iItem >> "magazines");
	        if (!(_iItem in MeleeWeapons) && ((count _mags) > 0)) then {
		          _object addMagazineCargoGlobal [(_mags select 0), (floor(random 3) + 1)];
	        };  
        };
	    case (isClass (configFile >> "CfgVehicles" >> _iItem)) : { 
        //backpack
        _object addBackpackCargoGlobal [_iItem,1]; 
        };
	    default {};
	};
    
};    

