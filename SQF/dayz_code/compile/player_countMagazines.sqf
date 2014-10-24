private ["_objects"];
{
	PVDZ_veh_Save = [_x,"gear"];
	publicVariableServer "PVDZ_veh_Save";
	if (unleashed_bug == 1) then {
		diag_log(format["SGS: Updating nearby objects: %1",_x]);
	};
} forEach nearestObjects [getPosATL player, dayz_updateObjects, 10];


private ["_dialog","_created","_magazineArray"];
disableSerialization;
disableUserInput true;

_dialog = findDisplay 106;
_created = false;

if ( isNull _dialog ) then {
	//startLoadingScreen [""];
	createGearDialog [player, "RscDisplayGear"];
	_dialog = findDisplay 106;
	_created = true;
};

_magazineArray = [];
_magazineArray1 = [];
_magazineArray2 = [];

for "_i" from 109 to 120 do
{
	_control = _dialog displayCtrl _i;
	_item = gearSlotData _control;
	_val = gearSlotAmmoCount _control;
	_max = getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (unleashed_bug == 1) then {
		diag_log(format["PCM: MAGAZINES1 ITEM:%1 VAL:%2 MAX:%3",_item,_val,_max]);
	};
	if (_item != "") then {
		if (_val != _max) then {
			_magazineArray1 set [count _magazineArray1,[_item,_val]];
			if (unleashed_bug == 1) then {
					diag_log(format["PCM: MAGAZINES1 IF ITEM:%1",_item]);
				};
		} else {
			_magazineArray1 set [count _magazineArray1,_item];
			if (unleashed_bug == 1) then {
				diag_log(format["PCM: MAGAZINES1 ELSE ITEM:%1",_item]);
			};
		};
	};
};

if (unleashed_bug == 1) then {
	diag_log(format["PCM: MAGAZINES1: %1",_magazineArray1]);
};
for "_i" from 122 to 129 do
{
	_control = _dialog displayCtrl _i;
	_item = gearSlotData _control;
	_val = gearSlotAmmoCount _control;
	_max = getNumber (configFile >> "CfgMagazines" >> _item >> "count");
	if (unleashed_bug == 1) then {
		diag_log(format["PCM: MAGAZINES2 ITEM:%1 VAL:%2 MAX:%3",_item,_val,_max]);
	};
	if (_item != "") then {
		if (_val != _max) then {
			_magazineArray2 set [count _magazineArray2,[_item,_val]];
				if (unleashed_bug == 1) then {
					diag_log(format["PCM: MAGAZINES2 IF ITEM:%1",_item]);
				};
		} else {
			_magazineArray2 set [count _magazineArray2,_item];
			if (unleashed_bug == 1) then {
				diag_log(format["PCM: MAGAZINES2 ELSE ITEM:%1",_item]);
			};
		};
	};
};

if (unleashed_bug == 1) then {
	diag_log(format["PCM: MAGAZINES2: %1",_magazineArray2]);
};

if ( _created ) then {
	closeDialog 0;
	//endLoadingScreen;
};
_magazineArray = _magazineArray1 + _magazineArray2;
disableUserInput false;
dayz_unsaved = true;
dayz_Magazines = _magazineArray;
_magazineArray