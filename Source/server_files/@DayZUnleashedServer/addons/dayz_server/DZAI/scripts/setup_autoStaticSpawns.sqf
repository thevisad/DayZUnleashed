//Generates static spawns for maps that DZAI is not configured to support

waitUntil {sleep 3; !isNil "DZAI_locations_ready"};

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: DZAI is generating static spawns..."];};

{
	private ["_placeName","_placePos","_placeType"];
	_placeName = _x select 0;
	_placePos = _x select 1;
	_placeType = _x select 2;
	
	if (_placeType != "NameLocal") then {
		private["_trigger","_statements","_aiCount","_equipType","_patrolRad","_blacklist"];
		_blacklist = createLocation ["Strategic",_placePos,600,600];
		_trigger = createTrigger ["EmptyDetector", _placePos];
		_trigger setTriggerArea [600, 600, 0, false];
		_trigger setTriggerActivation ["ANY", "PRESENT", true];
		_trigger setTriggerTimeout [10, 15, 20, true];
		_trigger setTriggerText _placeName;
		switch (_placeType) do {
			case "NameCityCapital":
			{
				_aiCount = [2,1];
				_equipType = 1;
				_patrolRad = 200;
			};
			case "NameCity":
			{
				_aiCount = [1,2];
				_equipType = 0;
				_patrolRad = 175;
			};
			case "NameVillage":
			{
				_aiCount = [0,2];
				_equipType = -1;
				_patrolRad = 150;
			};
		};
		_statements = format ["0 = [%1,%2,%3,thisTrigger,[],%4] call fnc_spawnBandits;",_aiCount select 0,_aiCount select 1,_patrolRad,_equipType];
		_trigger setTriggerStatements ["{isPlayer _x} count thisList > 0;", _statements, "0 = [thisTrigger] spawn fnc_despawnBandits;"];
	};
} forEach DZAI_locations;

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: DZAI has finished generating static spawns."];};
