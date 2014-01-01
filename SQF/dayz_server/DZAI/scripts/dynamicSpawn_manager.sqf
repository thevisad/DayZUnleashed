/*
	DZAI Dynamic Spawn Manager
	
	Last updated: 8:44 PM 12/13/2013
*/

if (DZAI_debugLevel > 0) then {diag_log "Starting DZAI Dynamic Spawn Manager in 5 minutes.";};
sleep 300;
if (DZAI_debugLevel > 0) then {diag_log "DZAI V2 Dynamic Spawn Manager started.";};

_spawnMax = 10;			//Maximum number of players to select each cycle. If number of online players is less than _spawnMax, all online players will be selected.
_sleepDelay = 300;		//Frequency of each cycle
_sleepVary = 180;		//Cycle frequency variance.

_playerUIDs = [];		//Array of all collected playerUIDs
_timestamps = [];		//Array of timestamps for each corresponding playerUID

while {true} do {
	if (({isPlayer _x} count playableUnits) > 0) then {
		_allPlayers = [];		//Do not edit
		{
			if (isPlayer _x) then {
				_allPlayers set [count _allPlayers,_x];
				_playerUID = getPlayerUID _x;
				if (!(_playerUID in _playerUIDs)) then {
					_index = (count _playerUIDs);
					_playerUIDs set [_index,_playerUID];
					_timestamps set [_index,time];
				};
				//diag_log format ["DZAI Debug: Found a player at %1 (%2).",mapGridPosition _x,name _x];
			};
			sleep 0.05;
		} forEach playableUnits;
		
		_maxSpawnsPossible = ((ceil (0.25 * (count _allPlayers))) min _spawnMax) - DZAI_curDynTrigs;
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Preparing to spawn dynamic triggers, %1 dynamic spawns are possible.",_maxSpawnsPossible];};
		
		while {((_maxSpawnsPossible - DZAI_curDynTrigs) > 0) && ((count _allPlayers) > 0)} do {	//_spawns: Have we created enough spawns? _allPlayers: Are there enough players to create spawns for?
			_time = diag_tickTime;
			_player = _allPlayers call BIS_fnc_selectRandom2;
			if (!isNull _player) then {
				_index = _playerUIDs find (getPlayerUID _player);
				_lastSpawned = _timestamps select _index;
				_spawnChance = (((time - _lastSpawned) / (_sleepDelay*3)) min 0.95);
				if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Player %1 has %2 probability of generating dynamic spawn.",name _player,_spawnChance];};
				if ((random 1) < _spawnChance) then {
					_playerPos = getPosATL _player;
					_isLandUnit = (((vehicle _player) isKindOf "Man") or ((vehicle _player) isKindOf "Land"));
					_onLand = (!(surfaceIsWater _playerPos));
					_noNearbySpawns = (({(_playerPos distance _x) < (2*(DZAI_dynTriggerRadius - (DZAI_dynTriggerRadius*DZAI_dynOverlap)))} count DZAI_dynTriggerArray) == 0);
					_noNearbyTowns = (!(_playerPos in (nearestLocation [_playerPos,"Strategic"])));
					_notInDebug = ((_playerPos distance getMarkerpos "respawn_west") > 2000);
					_noPlotpole = ((count (_playerPos nearObjects ["Plastic_Pole_EP1_DZ",100])) == 0);
					if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Player %1 - isLandUnit: %2, onLand: %3, noNearbySpawns: %4, noNearbyTowns: %5, notInDebug: %6, noPlotpole: %7.",name _player,_isLandUnit,_onLand,_noNearbySpawns,_noNearbyTowns,_notInDebug,_noPlotPole]};
					//if (_isLandUnit && _onLand && _noNearbySpawns && _noNearbyTowns && _noPlotpole && _notInDebug) then {
					if (({!_x} count [_isLandUnit,_onLand,_noNearbySpawns,_noNearbyTowns,_noPlotpole,_notInDebug]) == 0) then {
						_timestamps set [_index,time];
						_trigger = createTrigger ["EmptyDetector",getPosATL _player];
						_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
						_trigger setTriggerActivation ["ANY", "PRESENT", true];
						_trigger setTriggerTimeout [3, 3, 3, true];
						_triggerText = format ["Dynamic Trigger (Target: %1)",name _player];
						_trigger setTriggerText _triggerText;
						_trigger setVariable ["targetplayer",_player];
						_trigActStatements = format ["0 = [225,thisTrigger,%1] call fnc_spawnBandits_dynamic;",_spawnChance];
						_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigActStatements, "[thisTrigger] spawn fnc_despawnBandits_dynamic;"];
						if (DZAI_debugMarkers > 0) then {
							private ["_markername","_marker"];
							_markername = format["trigger_%1",_trigger];
							_marker = createMarker[_markername,(getPosATL _trigger)];
							_marker setMarkerShape "ELLIPSE";
							_marker setMarkerType "Flag";
							_marker setMarkerBrush "SOLID";
							_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
							_marker setMarkerAlpha 0;
						};
						if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Created dynamic trigger at %1. Target player: %2.",(mapGridPosition _trigger),name _player];};
						DZAI_curDynTrigs = DZAI_curDynTrigs + 1;
						DZAI_dynTriggerArray set [count DZAI_dynTriggerArray,_trigger];
					};
				} else {
					if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Probability check failed for player %1.",name _player];};
				};
			};
			_allPlayers = _allPlayers - [_player];
			if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Processed a spawning probability check in %1 seconds.",diag_tickTime - _time]};
			sleep 5;
		};
	} else {
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: No players online. Dynamic spawn manager is entering sleep state.";};
	};
	_nextSpawn = _sleepDelay + random(_sleepVary);
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Dynamic spawn manager is sleeping for %1 seconds.",_nextSpawn];};
	sleep (_nextSpawn);
};
