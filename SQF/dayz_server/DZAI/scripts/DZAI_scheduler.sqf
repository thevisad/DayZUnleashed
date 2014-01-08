/*
	DZAI Scheduler
	
	Description:
	
	Last updated: 2:21 PM 8/27/2013
*/

diag_log "DZAI Scheduler is running required script files...";

_vehiclesEnabled = ((DZAI_maxHeliPatrols > 0) or (DZAI_maxLandPatrols > 0));

[] call compile preprocessFileLineNumbers format ["%1\scripts\buildWeightedTables.sqf",DZAI_directory];

//If serverside object patch enabled, then spawn in serverside objects.
if (DZAI_objPatch) then {
	_nul = [] execVM format ['%1\scripts\buildingpatch_all.sqf',DZAI_directory];
};

//Build DZAI weapon classname tables from CfgBuildingLoot data if DZAI_dynamicWeapons = true;
if (DZAI_dynamicWeaponList) then {
	_weaponlist = [DZAI_banAIWeapons] execVM format ['%1\scripts\buildWeaponArrays.sqf',DZAI_directory];
	//waitUntil {sleep 0.005; scriptDone _weaponlist};
};

if (DZAI_verifyTables) then {
	_verify = [] execVM format ["%1\scripts\verifyTables.sqf",DZAI_directory];
	waitUntil {sleep 0.005; scriptDone _verify};
};

//Build map location list. If using an unknown map, DZAI will automatically generate basic static triggers at cities and towns.
_nul = [] execVM format ['%1\scripts\setup_locations.sqf',DZAI_directory];
sleep 0.1;

if (_vehiclesEnabled) then {
	_nul = [] execVM format ['%1\scripts\setup_veh_patrols.sqf',DZAI_directory];
};

if (DZAI_dynAISpawns) then {
	if ((count DZAI_dynAreaBlacklist) > 0) then {
		_nul = DZAI_dynAreaBlacklist execVM format ['%1\scripts\setup_blacklist_areas.sqf',DZAI_directory];
	};
	if (DZAI_modName == "epoch") then {
		_nul = [] execVM format ['%1\scripts\setup_trader_areas.sqf',DZAI_directory];
	};
	_dynManagerV2 = [] execVM format ['%1\scripts\dynamicSpawn_manager.sqf',DZAI_directory];
};

_refreshMarkers = (DZAI_debugMarkers > 1);
_cleanDead = time;
_monitorReport = time;

diag_log "DZAI Scheduler will continue tasks in 1 minute.";
sleep 60;

while {true} do {

	if ((time - _cleanDead) >= 900) then {
		{
			_deathTime = _x getVariable "DZAI_deathTime";
			if (!isNil "_deathTime") then {
				if ((time - _deathTime) > DZAI_cleanupDelay) then {
					if (({isPlayer _x} count (_x nearEntities [["CAManBase"], 10])) == 0) then {
						_soundFlies = _x getVariable "sound_flies";
						if (isNil "_soundFlies") then {
							deleteVehicle _soundFlies;
						};
						deleteVehicle _x;
					};
				};
			};
			sleep 0.005;
		} forEach allDead;
		_cleanDead = time;
	};
	
	if (((time - _monitorReport) >= DZAI_monitorRate)&&(DZAI_monitorRate > 0)) then {
		_uptime = [] call DZAI_getUptime;
		diag_log format ["DZAI Monitor :: Server Uptime - %1 d %2 hr %3 min %4 sec. Active AI Units - %5.",_uptime select 0, _uptime select 1, _uptime select 2, _uptime select 3,DZAI_numAIUnits];
		diag_log format ["DZAI Monitor :: Static Spawns - %1 active static triggers. %2 groups queued for respawn.",DZAI_actTrigs,(count DZAI_respawnQueue)];
		if (DZAI_dynAISpawns || _vehiclesEnabled) then {diag_log format ["DZAI Monitor :: Dynamic Spawns - %1/%2 (active/total). Air Patrols: %3/%4 (cur/max). Land Patrols: %5/%6.",DZAI_actDynTrigs,DZAI_curDynTrigs,DZAI_curHeliPatrols,DZAI_maxHeliPatrols,DZAI_curLandPatrols,DZAI_maxLandPatrols];};
		if (_refreshMarkers) then {
			{
				private["_marker"];
				_marker = format ["trigger_%1",_x];
				_marker setMarkerPos (getMarkerPos _marker);
				sleep 1;
			} forEach DZAI_dynTriggerArray;
		};
		_monitorReport = time;
	};
	
	sleep 30;
};
