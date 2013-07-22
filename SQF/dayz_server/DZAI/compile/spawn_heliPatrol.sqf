/*
	spawn_heliPatrol
	
	Description:
	
	Last updated:	3:47 PM 7/10/2013
	
*/

_randomizeWPs = [] spawn DZAI_randomizeHeliWPs;
waitUntil {sleep 0.1; scriptDone _randomizeWPs};

if (DZAI_curHeliPatrols >= DZAI_maxHeliPatrols) exitWith {};

for "_i" from 1 to (DZAI_maxHeliPatrols - DZAI_curHeliPatrols) do {
	private ["_heliType","_startPos","_helicopter","_unitGroup","_pilot","_gunner1","_gunner2"];
	//_heliType = "UH1H_DZ";
	_heliType = DZAI_heliTypes call BIS_fnc_selectRandom;
	_startPos = [(getMarkerPos DZAI_centerMarker),(300 + random(DZAI_centerSize)),random(360),false] call SHK_pos;
	//_startPos = [7175.6,9482.49]; test position

	//Create the patrol group
	_unitGroup = createGroup (call DZAI_getFreeSide);
	//diag_log format ["Created group %1",_unitGroup];
	
	//Create helicopter crew
	_pilot = _unitGroup createUnit [(DZAI_BanditTypes call BIS_fnc_selectRandom), [0,0,0], [], 1, "NONE"];
	_gunner1 = _unitGroup createUnit [(DZAI_BanditTypes call BIS_fnc_selectRandom), [0,0,0], [], 1, "NONE"];
	_gunner2 = _unitGroup createUnit [(DZAI_BanditTypes call BIS_fnc_selectRandom), [0,0,0], [], 1, "NONE"];
	[_pilot,_gunner1,_gunner2] joinSilent _unitGroup;

	//Create the helicopter and set variables
	_helicopter = createVehicle [_heliType, [_startPos select 0, _startPos select 1, 180], [], 0, "FLY"];
	_helicopter setFuel 1;
	_helicopter engineOn true;
	_helicopter setVariable ["DZAI",1];
	_helicopter setVariable ["ObjectID",""];
	_helicopter setVehicleAmmo 1;
	_helicopter setVariable ["unitGroup",_unitGroup];
	if (DZAI_debugLevel > 0) then {diag_log format ["Spawned helicopter type %1 for group %2.",_heliType,_unitGroup];};

	//Add eventhandlers and init statement
	_helicopter addEventHandler ["Killed",{_this spawn fnc_heliDespawn;}];					//Begin despawn process when heli is destroyed.
	_helicopter addEventHandler ["LandedStopped",{(_this select 0) setDamage 1;}];			//Destroy helicopter if it is forced to land.
	_helicopter setVehicleInit "if (isServer) then {[this] spawn fnc_heliResupply;};";

	//Assign positions
	_pilot assignAsDriver _helicopter;
	_pilot action ["getInPilot",_helicopter];
	_gunner1 assignAsGunner _helicopter;
	_gunner1 action ["getInTurret",_helicopter,[0]];
	_gunner2 assignAsGunner _helicopter;
	_gunner2 action ["getInTurret",_helicopter,[1]];

	{
		0 = [_x,"helicrew"] spawn DZAI_setSkills;
		_x addWeapon "NVGoggles";
		_x addEventHandler ["HandleDamage",{_this call fnc_damageAI;}];
		_x addEventHandler ["Killed",{[_this,"banditKills"] call local_eventKill;(_this select 0) setDamage 1;(_this select 0) removeWeapon "NVGoggles";}];
	} forEach (units _unitGroup);

	//Set group behavior and waypoint
	_unitGroup allowFleeing 0;
	_unitGroup setBehaviour "AWARE";
	_unitGroup setSpeedMode "FULL";
	_unitGroup setCombatMode "RED";
	
	//AI behavior settings for testing
	/*
	_unitGroup allowFleeing 0;
	_unitGroup setBehaviour "SAFE";
	_unitGroup setSpeedMode "FULL";
	_unitGroup setCombatMode "BLUE";
	*/

	//diag_log format ["DEBUG :: Helicopter group: %1",(units _unitGroup)];

	//Set initial waypoint and begin patrol
	[_unitGroup,0] setWaypointType "MOVE";
	[_unitGroup,0] setWaypointTimeout [5,10,15];
	[_unitGroup,0] setWaypointCompletionRadius 75;
	[_unitGroup,0] setWaypointStatements ["true","[(group this)] call DZAI_heliRandomPatrol;"];
	[_unitGroup] call DZAI_heliRandomPatrol;
	processInitCommands;

	DZAI_curHeliPatrols = DZAI_curHeliPatrols + 1;
	//DZAI_actHeliGroups set [(count DZAI_actHeliGroups),_unitGroup];
	if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Created AI helicopter crew group %1 is now active and patrolling.",_unitGroup];};

	if (_i <= (DZAI_maxHeliPatrols - DZAI_curHeliPatrols)) then {sleep 20};
};
