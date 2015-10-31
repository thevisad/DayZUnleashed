/*
	DZAI Dynamic Spawn Manager
	
	Last updated: 7:23 PM 1/25/2014
*/

if (DZAI_debugLevel > 0) then {diag_log "Starting DZAI Dynamic Spawn Manager in 5 minutes.";};
sleep 300;
//sleep 30; //FOR DEBUGGING
if (DZAI_debugLevel > 0) then {diag_log "DZAI V2 Dynamic Spawn Manager started.";};

//Maximum chance to be selected for spawn condition check. Prevents unfairly high probability when few players are online.
#define CHANCE_CAP 0.4

//Maximum number of players to select each cycle. If number of online players is less than SPAWN_MAX, all online players will be selected.
#define SPAWN_MAX 10 

//Proportion of online players to select each cycle.
#define SELECT_RATIO 0.3

//Frequency of each cycle
#define SLEEP_DELAY 300
//#define SLEEP_DELAY 60 //FOR DEBUGGING

//Cycle frequency variance.
#define SLEEP_VARY 240
//#define SLEEP_VARY 30 //FOR DEBUGGING

_playerUIDs = [];		//Array of all collected playerUIDs
_timestamps = [];		//Array of timestamps for each corresponding playerUID
//_playerData = [];
_maxSpawnTime = 3600; //Time required for maximum % spawn probability.
//_maxSpawnTime = 1; //FOR DEBUGGING

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
					//_playerData set [_index,[time,getPosATL _x,0]]
				};
				//diag_log format ["DZAI Debug: Found a player at %1 (%2).",mapGridPosition _x,name _x];
			};
			sleep 0.05;
		} forEach playableUnits;
		
		_activeDynamicSpawns = (count DZAI_dynTriggerArray);
		_playerCount = (count _allPlayers);
		_maxSpawnsPossible = (((ceil (SELECT_RATIO * _playerCount)) min SPAWN_MAX) - _activeDynamicSpawns);
		_chanceAdjust = (((_maxSpawnsPossible/_playerCount)/CHANCE_CAP) max 1);
		
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Preparing to spawn dynamic triggers using selection probability limit %1, %2 dynamic spawns are possible.",(1/_chanceAdjust),_maxSpawnsPossible];};

		while {((_maxSpawnsPossible - _activeDynamicSpawns) > 0) && ((count _allPlayers) > 0)} do {	//_spawns: Have we created enough spawns? _allPlayers: Are there enough players to create spawns for?
			_time = diag_tickTime;
			_player = _allPlayers call BIS_fnc_selectRandom2;
			_playername = name _player;
			//[_player,"DEBUG :: Selected for dynamic spawn."] call DZAI_radioSend;
			if ((!isNull _player) && {((random _chanceAdjust) < 1)}) then {
				_index = _playerUIDs find (getPlayerUID _player);
				_lastSpawned = _timestamps select _index;
				_spawnChance = (((time - _lastSpawned) / _maxSpawnTime) min 0.95);
				if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Player %1 has %2 probability of generating dynamic spawn.",_playername,_spawnChance];};
				if ((random 1) < _spawnChance) then {
					_playerPos = getPosATL _player;
					if (
						(((vehicle _player) isKindOf "Man") or ((vehicle _player) isKindOf "Land")) &&	//Player must be on foot or in land vehicle
						{(!(_playerPos in (nearestLocation [_playerPos,"Strategic"])))} &&				//Player must not be in blacklisted area
						{(!(surfaceIsWater _playerPos))} && 											//Player must not be on water position
						{((_playerPos distance getMarkerpos "respawn_west") > 2000)} &&					//Player must not be in debug area
						{((count (_playerPos nearObjects ["Plastic_Pole_EP1_DZ",100])) == 0)}			//Player must not be near a plot pole
					) then {
						_timestamps set [_index,time];
						_trigger = createTrigger ["EmptyDetector",getPosATL _player];
						_trigger setTriggerArea [600, 600, 0, false];
						_trigger setTriggerActivation ["ANY", "PRESENT", true];
						_trigger setTriggerTimeout [3, 3, 3, true];
						_triggerText = format ["Dynamic Trigger (Target: %1)",_playername];
						_trigger setTriggerText _triggerText;
						_trigger setVariable ["targetplayer",_player];
						_trigActStatements = format ["0 = [225,thisTrigger,%1] call fnc_spawnBandits_dynamic;",_spawnChance];
						_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;",_trigActStatements, "[thisTrigger] spawn fnc_despawnBandits_dynamic;"];
						if (!isNil "DZAI_debugMarkers") then {
							private ["_markername","_marker"];
							_markername = format["trigger_%1",_trigger];
							_marker = createMarker[_markername,(getPosATL _trigger)];
							_marker setMarkerShape "ELLIPSE";
							_marker setMarkerType "Flag";
							_marker setMarkerBrush "SOLID";
							_marker setMarkerSize [600, 600];
							_marker setMarkerAlpha 0;
						};
						if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Created dynamic trigger at %1. Target player: %2.",(mapGridPosition _trigger),_playername];};
						DZAI_dynTriggerArray set [count DZAI_dynTriggerArray,_trigger];
					} else {
						if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Dynamic spawn conditions failed for player %1.",_playername];};
					};
				} else {
					if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Dynamic spawn probability check failed for player %1.",_playername];};
				};
			} else {
				if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Cancel dynamic spawn check for player %1 (Reason: Probability reduction or Player logout).",_playername]};
			};
			_allPlayers = _allPlayers - [_player];
			if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Processed a spawning probability check in %1 seconds.",diag_tickTime - _time]};
			sleep 5;
		};
	} else {
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: No players online. Dynamic spawn manager is entering sleep state.";};
	};
	_nextSpawn = SLEEP_DELAY + random(SLEEP_VARY);
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Dynamic spawn manager is sleeping for %1 seconds.",_nextSpawn];};
	sleep (_nextSpawn);
};
