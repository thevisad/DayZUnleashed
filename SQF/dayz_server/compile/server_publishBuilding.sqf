private ["_class","_uid","_charID","_building","_worldspace","_key","_playerUID"];
//[dayz_characterID,_tent,[_dir,_location],"TentStorage"]
_charID = _this select 0;
_building = _this select 1;
_worldspace = _this select 2;
_class = _this select 3;
_combination = _this select 4;
_callingScript = _this select 5;
_dayz_playerUID =	_this select 6;
_uid1 = _this select 7;
if (unleashed_debug == 1) then {diag_log(format["SPB: Calling script: %1 ", _callingScript]);};

_squad = 0;
#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"


if !((_building isKindOf "TentStorage") ||  (_building isKindOf "dayz_allowedObjects") || (_building isKindOf "BuiltItems") || (_building isKindOf "ModularItems") || (_building isKindOf "DZE_Housebase") || (_building isKindOf "DZE_Base_Object") || (_building isKindOf "Building") || (_building isKindOf "StaticWeapon") || (_building isKindOf "WeaponHolder") || (_building isKindOf "Strategic")) exitWith {
	deleteVehicle _building;
	if (unleashed_debug == 1) then {diag_log(format["SPB: Deleting Building : %1 ", _building]);};
};

//get UID
_uid = _worldspace call dayz_objectUID2;

if (_uid1 == "0") then {
	_uid1 = _uid;
};
//Send request
if (_building isKindOf "dzu_playerGarage") then {
	_key = format["CHILD:610:%1:%2:%3:%4:%5:",dayZ_instance,_class,_uid1,_worldspace,_dayz_playerUID];
	_key call server_hiveWrite;
} else {
	_key = format["CHILD:400:%1:%2:%3:%4:%5:%6:%7:%8:%9:",dayZ_instance,_class,_uid,_worldspace, [],[],_charID,_squad ,_combination];
	_key call server_hiveWrite;
};

if (_building isKindOf "TentStorage") then {
	_building addMPEventHandler ["MPKilled",{_this call vehicle_handleServerKilled;}];
};

dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_building];

if (unleashed_debug == 1) then { diag_log format["SPO: Created: %1 ID: %2 Combination: %3",_class,_uid,_combination];};