#include "def_wepsel.hpp"
player removeAction dlgactionw;
_weaponsList = [];
_namelist = [];
_cfgweapons = configFile >> "cfgWeapons";
for "_i" from 0 to (count _cfgweapons)-1 do {
	_weapon = _cfgweapons select _i;
	if (isClass _weapon) then {
		_wCName = configName(_weapon);
		_wDName = getText(configFile >> "cfgWeapons" >> _wCName >> "displayName");
		_wModel = getText(configFile >> "cfgWeapons" >> _wCName >> "model");
		_wType = getNumber(configFile >> "cfgWeapons" >> _wCName >> "type");
		_wPic =  getText(configFile >> "cfgWeapons" >> _wCName >> "picture");
		_wDesc = getText(configFile >> "cfgWeapons" >> _wCName >> "Library" >> "libTextDesc");		

		_isFake = false;
		_wHits=0;
		_mags=[];
		_muzzles = getArray(configfile >> "cfgWeapons" >> _wCName >> "muzzles");
		if ((_muzzles select 0)=="this") then {
			_muzzles=[_wCName];
			_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> "magazines");
		} else {
			{
				_muzzle=_x;
				_mags = getArray(configfile >> "cfgWeapons" >> _wCName >> _muzzle >> "magazines");
			}forEach _muzzles;
		};
		{
			_ammo = getText(configfile >> "cfgMagazines" >> _x >> "ammo");
			_hit = getNumber(configfile >> "cfgAmmo" >> _ammo >> "hit");
			_wHits = _wHits + _hit;
		}forEach _mags;
		if ("vbs2_mag_canon_xl1" in _mags) then {_wCName=""};	// can't catch the video camera any other way...
		if ((_wCName!="") && (_wDName!="") && (_wModel!="") && (_wType<6) && (_wHits>1) && !("fake" in _mags)) then {
			if !(_wDName in _namelist) then {
				_weaponsList = _weaponsList + [[_wCName,_wDName,_wPic,_wDesc]];
					_namelist = _namelist + [_wDName];
			};
		};
	};
	if (_i % 10==0) then {
		hint format["Loading Weapons List... (%1)",count _weaponsList];
		sleep .0001;
};
};
hint "";
_namelist=nil;


#ifndef VBS
 disableSerialization;
#endif

// fill dialog with weapon names
createDialog "SelectWeapon";
sleep .1;
_ctrlList = findDisplay DLG_WEP_IDD displayCtrl DLG_WEP_LIST;

for "_i" from 0 to (count _weaponsList)-1 do {
	_weapon = _weaponsList select _i;
	lbAdd [DLG_WEP_LIST,format["%1",_weapon select 1]];
	lbSetPicture [DLG_WEP_LIST, _i, _weapon select 2];
	lbSetValue [DLG_WEP_LIST, _i, _i];
};
lbSort (findDisplay DLG_WEP_IDD displayCtrl DLG_WEP_LIST); 

// highlight player's current one
_index=0;
for "_i" from 0 to (lbSize DLG_WEP_LIST)-1 do {
	lbSetCurSel [DLG_WEP_LIST,_i];
	if (_index==0) then {
		{
			if ((_weaponsList select lbValue [DLG_WEP_LIST, _i]) select 0==_x) then {
				_index=_i;
			};
		}forEach weapons player;
	};
};
// put the selection somewhat in the middle of the displayed listing
_i=(_index -9) max 0;
lbSetCurSel [DLG_WEP_LIST, _i];
lbSetCurSel [DLG_WEP_LIST, _index];

// preview controls
_ctrlPic = findDisplay DLG_WEP_IDD displayCtrl DLG_WEP_PIC;
_ctrlName = findDisplay DLG_WEP_IDD displayCtrl DLG_WEP_NAME;
_ctrlDesc = findDisplay DLG_WEP_IDD displayCtrl DLG_WEP_DESC;

_wepidx=lbValue [DLG_WEP_LIST, _index];
_lstidx=_index;
_lstpos=-1;
DLG_WEP_SELECTED=false;
while {ctrlVisible DLG_WEP_LIST} do {
	_index = lbCurSel DLG_WEP_LIST;
	_posidx = _index;
#ifdef VBS	
	if !(isNil "DLG_WEP_SEL") then {
		if (DLG_WEP_SEL select 3) then {
			_posidx = _ctrlList lbPosIndex [DLG_WEP_SEL select 1,DLG_WEP_SEL select 2];
		};
	};
#endif	
	if (DLG_WEP_SELECTED) then {
		_wepidx=lbValue [DLG_WEP_LIST, _index];
		closeDialog DLG_WEP_IDD;
	};
	if (_posidx==-1) then {
		_posidx = _index;
	};
	if (_lstpos!=_posidx) then {
		_lbidx = lbValue [DLG_WEP_LIST, _posidx];
		_wDName = (_weaponsList select _lbidx) select 1;
		_wPic = (_weaponsList select _lbidx) select 2;
		_wDesc = (_weaponsList select _lbidx) select 3;
		_ctrlPic ctrlSetText _wPic;
		_ctrlName ctrlSetText _wDName;
		_ctrlDesc ctrlSetStructuredText parseText (_wDesc);
		_lstpos=_posidx;
	};
	sleep .1;
};
_wepsel=(_weaponsList select _wepidx) select 0;

// equip player with selected weapon, and all compatible mags
KRON_MAGS=[];
{player removeMagazine _x} forEach magazines player;
_muzzles = getArray(configfile >> "cfgWeapons" >> _wepsel >> "muzzles");
{
	if (_x=="this") then {
		_mags = getArray(configfile >> "cfgWeapons" >> _wepsel >> "magazines");
		{
			KRON_MAGS=KRON_MAGS+[_x];
			player addMagazine _x;
		}forEach _mags;
	} else {
		_mags = getArray(configfile >> "cfgWeapons" >> _wepsel >> _x >> "magazines");
		{
			KRON_MAGS=KRON_MAGS+[_x];
			player addMagazine _x;
		}forEach _mags;
	};
}forEach _muzzles;

player addWeapon _wepsel;
{if (_x!=_wepsel) then {player removeWeapon _x}} forEach weapons player;


dlgactionw = player addAction ["Select Weapon","WeaponSelector\selectweapon.sqf"];