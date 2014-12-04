private["_botActive","_int","_newModel","_doLoop","_wait","_hiveVer","_isHiveOk","_playerID","_playerObj","_randomSpot","_publishTo","_primary","_secondary","_key","_result","_charID","_playerObj","_playerName","_finished","_spawnPos","_spawnDir","_items","_counter","_magazines","_weapons","_group","_backpack","_worldspace","_direction","_newUnit","_score","_position","_isNew","_inventory","_backpack","_medical","_survival","_stats","_state"];
//Set Variables

#include "\z\addons\dayz_server\compile\server_toggle_debug.hpp"

if (unleashed_PlayerLoginDebug == 1) then {
	diag_log (format["SPL: STARTING LOGIN: %1",_this]);
};

_playerID = _this select 0;
_playerObj = _this select 1;
_playerName = name _playerObj;
_worldspace = [];

if (_playerName == '__SERVER__' || _playerID == '' || local player) exitWith {};

// Cancel any login until server_monitor terminates. 
// This is mandatory since all vehicles must be spawned before the first players spawn on the map.
// Otherwise, all vehicle event handlers won't be created on players' client side.
if (isNil "sm_done") exitWith { diag_log ("SPL: Login cancelled, server is not ready. " + str(_playerObj)); };


if (count _this > 2) then {
	dayz_players = dayz_players - [_this select 2];
};

//Variables
_inventory =	[];
_backpack = 	[];
_items = 		[];
_magazines = 	[];
_weapons = 		[];
_medicalStats =	[];
_survival =		[0,0,0];
_tent =			[];
_state = 		[];
_direction =	0;
_model =		"";
_newUnit =		objNull;
_botActive = false;

if (_playerID == "") then {
	_playerID = getPlayerUID _playerObj;
};

if ((_playerID == "") or (isNil "_playerID")) exitWith {
	if (unleashed_PlayerLoginDebug == 1) then {
		diag_log ("SPL: LOGIN FAILED: Player [" + _playerName + "] has no login ID");
	};
	
};


if (unleashed_PlayerLoginDebug == 1) then {
	diag_log ("SPL: LOGIN ATTEMPT: " + str(_playerID) + " " + _playerName);
};
/*
_playerFriends = [_playerID] call server_getFriends;
_playerCheckBans = [_playerID] call server_checkPlayer;

if (unleashed_PlayerLoginDebug == 1) then {
	diag_log(format["SPL: PLAYER GetFriends: %1",_playerFriends]);
	diag_log(format["SPL: PLAYER GetBans: %1",_playerCheckBans]);
};

_playerObj setVariable ["steamfriends",_playerFriends,[]];
_playerObj setVariable ["steamvacbans",_playerCheckBans,[]];

if (unleashed_PlayerLoginDebug == 1) then {
	_steamfriends =  player getVariable ["steamfriends","0"];
	_steamvacbans =  player getVariable ["steamvacbans","0"];
	diag_log(format["SPL: PLAYER Variable GetFriends: %1",_steamfriends]);
	diag_log(format["SPL: PLAYER Variable GetBans: %1",_steamvacbans]);
};
*/

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {
	_key = format["CHILD:101:%1:%2:%3:",_playerID,dayZ_instance,_playerName];
	_primary = _key call server_hiveReadWrite;
	if (count _primary > 0) then {
		if ((_primary select 0) != "ERROR") then {
			_doLoop = 9;
		};
	};
	_doLoop = _doLoop + 1;
};

if (isNull _playerObj or !isPlayer _playerObj) exitWith {
	if (unleashed_PlayerLoginDebug == 1) then {
		diag_log ("SPL: LOGIN RESULT: Exiting, player object null: " + str(_playerObj));
	};
	
};

if ((_primary select 0) == "ERROR") exitWith {	
	if (unleashed_PlayerLoginDebug == 1) then {
		diag_log format ["SPL: LOGIN RESULT: Exiting, failed to load _primary: %1 for player: %2 ",_primary,_playerID];
	};
    
};

//Process request
_newPlayer = 	_primary select 1;

_isNew = 		count _primary < 7; //_result select 1;
_charID = 		_primary select 2;
_randomSpot = false;
_isInfected = false;
//diag_log(format["SPL: _newPlayer: %1", _newPlayer]);

//diag_log(format["SPL: _isNew: %1", _isNew]);
//diag_log ("LOGIN RESULT: " + str(_primary));

/* PROCESS */
_hiveVer = 0;
//RETURNING CHARACTER		
if (unleashed_PlayerLoginDebug == 1) then {
	diag_log(format["SPL: count primary: %1", _isNew ]);
	diag_log(format["SPL: charID: %1", _charID ]);
	diag_log(format["SPL: newPlayer: %1", _newPlayer ]);
};


if (!_newPlayer) then {
	//RETURNING CHARACTER		
	_survival =		_primary select 4;
	_inventory = 	_primary select 5;
	_backpack = 	_primary select 6;
	_model =		_primary select 7;
	_hiveVer =		_primary select 8;
	
	if (!(_model in ["Survivor2_DZ","Survivor3_DZ","Bandit1_DZ","SurvivorW2_DZ","BanditW1_DZ","Camo1_DZ","Camo2_DZ","Soldier1_DZ","Soldier2_DZ","Rocket_DZ","Officer_DZ","Sniper1_DZ","Sniper2_DZ","TKSoldier1_DZ","TKCivil1_DZ","TKCivil2_DZ","TKWorker1_DZ","TKWorker2_DZ","CamoW1_DZ","SoldierW1_DZ","OfficerW1_DZ","SniperW1_DZ","SniperW2_DZ","TKWorkerW1_DZ","TKWorkerW2_DZ","TKSoldierW1_DZ","TKCivilW1_DZ","TKCivilW2_DZ"])) then {
	_model = "Survivor2_DZ";
	};
    
	if (unleashed_PlayerLoginDebug == 1) then {
		diag_log(format["SPL: _survival: %1", _survival ]);
		diag_log(format["SPL: _inventory: %1", _inventory ]);
		diag_log(format["SPL: _backpack: %1", _backpack ]);
		diag_log(format["SPL: _model: %1", _model ]);
		diag_log(format["SPL: _hiveVer: %1", _hiveVer ]);
	};
} else {
	//NEW CHARACTER
	_inventory = 	_primary select 3;
	_backpack = 	_primary select 4;
	_model =		_primary select 5;
	_hiveVer =		_primary select 6;
	
	if (isNil "_model") then {
		_model = "Survivor2_DZ";
	} else {
		if (_model == "") then {
			_model = "Survivor2_DZ";
		};
	};

	_randomSpot = true;
	
	if ((count _array) < 1) then {
		if (unleashed_PlayerLoginDebug == 1) then {
			diag_log (format["SPL: LOGIN: Inventory: %1 , Backpack: %2",unleashed_startingInventory,unleashed_startingBackpack]);
		};
		_inventory = unleashed_startingInventory;
		_backpack = unleashed_startingBackpack;
	};	
};

	if (unleashed_PlayerLoginDebug == 1) then {
		diag_log ("SPL: LOGIN LOADED: " + str(_playerObj) + " Type: " + (typeOf _playerObj));
	};

_isHiveOk = false;	//EDITED
if (_hiveVer >= dayz_hiveVersionNo) then {
	_isHiveOk = true;
};
//diag_log ("SERVER RESULT: " + str("X") + " " + str(dayz_hiveVersionNo));

//Server publishes variable to clients and WAITS
//_playerObj setVariable ["publish",[_charID,_inventory,_backpack,_survival,_isNew,dayz_versionNo,_model,_isHiveOk,_newPlayer],true];

dayzPlayerLogin = [_charID,_inventory,_backpack,_survival,_newPlayer,dayz_versionNo,_model,_isHiveOk,_newPlayer,_isInfected];
(owner _playerObj) publicVariableClient "dayzPlayerLogin";
