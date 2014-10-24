#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

private ["_playerObj","_myGroup","_id","_playerUID","_playerName","_characterID","_playerIDtoarray","_timeout"];
_playerUID = _this select 0;
_playerName = _this select 1;
_playerObj = nil;

{
	if (getPlayerUID _x == _playerUID) exitWith { _playerObj = _x; };
} forEach 	playableUnits;

if (isNil "_playerObj") exitWith {
	diag_log format["SOPD: %1: nil player object, _this:%2", __FILE__, _this];
};

if (!isNull _playerObj) then {
// log disconnect
#ifdef LOGIN_DEBUG
	_characterID = _playerObj getVariable["characterID", "?"];
	_timeout = _playerObj getVariable["combattimeout",0];
//	diag_log format ["%1 ", ];
	_timeout = _timeout - time;
	diag_log format["SOPD: Player UID#%1 CID#%2 %3 as %4, logged off at %5%6", 
		getPlayerUID _playerObj, _characterID, _playerObj call fa_plr2str, typeOf _playerObj, 
		(getPosATL _playerObj) call fa_coor2str,
		if ((!isNil "_timeout") AND {(_timeout > 0)}) then {" while in combat"} else {""}
	]; 
#endif
//Update Vehicle
	if (vehicle _playerObj != _playerObj) then {
		_playerObj action ["eject", vehicle _playerObj];
		diag_log format ["SOPD: Ejecting Player %1 from Vehicle", _playerObj];
	};
	{
		[_x,"gear"] call server_updateObject;
		if (unleashed_bug == 1) then {
			diag_log(format["SGS: Updating nearby objects: %1",_x]);
		};
	} forEach nearestObjects [getPosATL _playerObj, dayz_updateObjects, 10];
		
	if (alive _playerObj) then {
		diag_log format ["SOPD: Alive Player %1 being deleted ", _playerObj];
		[_playerObj,[],true] call server_playerSync;
		_myGroup = group _playerObj;
		deleteVehicle _playerObj;
		deleteGroup _myGroup;
	};
};
