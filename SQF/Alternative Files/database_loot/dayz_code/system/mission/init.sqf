/*	
	INITILIZATION
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";					//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";					//Compile regular functions
progressLoadingScreen 1.0;

/* BIS_Effects_* fixes from Dwarden */
BIS_Effects_EH_Killed = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\killed.sqf";
BIS_Effects_AirDestruction = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestruction.sqf";
BIS_Effects_AirDestructionStage2 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestructionStage2.sqf";

BIS_Effects_globalEvent = {
	BIS_effects_gepv = _this;
	publicVariable "BIS_effects_gepv";
	_this call BIS_Effects_startEvent;
};

BIS_Effects_startEvent = {
	switch (_this select 0) do {
		case "AirDestruction": {
				[_this select 1] spawn BIS_Effects_AirDestruction;
		};
		case "AirDestructionStage2": {
				[_this select 1, _this select 2, _this select 3] spawn BIS_Effects_AirDestructionStage2;
		};
		case "Burn": {
				[_this select 1, _this select 2, _this select 3, false, true] spawn BIS_Effects_Burn;
		};
	};
};

"BIS_effects_gepv" addPublicVariableEventHandler {
	(_this select 1) call BIS_Effects_startEvent;
};

if ((!isServer) && (isNull player) ) then
{
	waitUntil {!isNull player};
	waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
	waitUntil {player == player};
	waitUntil {time > 3};
};

if (isServer) then {
	hiveInUse	=	true;
	_serverMonitor = [] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
	// "PVDZ_sec_atp" addPublicVariableEventHandler { diag_log format["%1", _this select 1];};
};

if (!isDedicated) then {
    "filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4];
    setToneMapping "Filmic";
    normcc_efx = ppEffectCreate ["colorCorrections",10]; 
    normcc_efx   ppEffectEnable true;
    normcc_efx   ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.4*2, 0.3*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
    normcc_efx   ppEffectCommit 0;
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = [] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
	"heliCrash" addPublicVariableEventHandler {
            _list = nearestObjects [_this select 1, ["CraterLong"], 100];
            {deleteVehicle _x;} foreach _list;
        };
	// [] execVM "\z\addons\dayz_code\system\antihack.sqf";
};

// Logo watermark: adding a logo in the bottom left corner of the screen with the server name in it
if (!isNil "dayZ_serverName") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText dayZ_serverName;
	};
};

waitUntil{!(isNil "BIS_fnc_init")};
[str ("Unleashed") ,  str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Napf")] spawn BIS_fnc_infoText;
execVM "\z\addons\dayz_code\R3F_ARTY_AND_LOG\init.sqf";
_nul = [] execVM "\z\addons\dayz_code\system\mission\DZAI_Client\dzai_initclient.sqf";