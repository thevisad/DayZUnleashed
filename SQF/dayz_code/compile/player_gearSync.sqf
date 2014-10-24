private ["_objects"];
{
	PVDZ_veh_Save = [_x,"gear"];
	publicVariableServer "PVDZ_veh_Save";
	if (unleashed_bug == 1) then {
		diag_log(format["SGS: Updating nearby objects: %1",_x]);
	};
} forEach nearestObjects [getPosATL player, dayz_updateObjects, 10];



private["_dialog","_magazineArray","_control","_item","_val","_max"];

disableSerialization;
_dialog = _this select 0;
_magazineArray = [];

//Primary Mags
for "_i" from 109 to 120 do
{
	_control = _dialog displayCtrl _i;
	_item = gearSlotData _control;
	_val = gearSlotAmmoCount _control;
	_max = getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (_item != "") then {
		if (_item == "BoltSteel") then { _item = "WoodenArrow" };
		if (_val != _max) then {
			_magazineArray set [count _magazineArray,[_item,_val]];
		} else {
			_magazineArray set [count _magazineArray,_item];
		};
	};
};

//Secondary Mags
for "_i" from 122 to 129 do
{
	_control = _dialog displayCtrl _i;
	_item = gearSlotData _control;
	_val = gearSlotAmmoCount _control;
	_max = getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (_item != "") then {
		if (_val != _max) then {
			_magazineArray set [count _magazineArray,[_item,_val]];
		} else {
			_magazineArray set [count _magazineArray,_item];
		};
	};
};
dayz_unsaved = true;
dayz_Magazines = _magazineArray;