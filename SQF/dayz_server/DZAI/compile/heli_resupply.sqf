/*
	Helicopter Resupply
	
	Description: Handles automatic refueling and resupplying ammo for AI helicopter. Destroys helicopter if pilot is killed and allows another AI helicopter to be respawned.
	
	Last updated: 4:44 PM 8/2/2013
	
*/

if (!isServer) exitWith {};

private ["_helicopter","_heliWeapons","_markername","_marker","_startTime","_timePatrolled","_unitGroup","_wpmarkername","_wpmarker"];

_helicopter = _this select 0;
_heliWeapons = weapons _helicopter;
_unitGroup = _helicopter getVariable "unitGroup";

waitUntil {sleep 0.1; (!isNil "_heliWeapons" && !isNull (driver _helicopter))};
_startTime = time;

while {(alive _helicopter)&&(!(isNull _helicopter))} do {	
	{
		if ((_helicopter ammo _x) < 20) then {
			_helicopter setVehicleAmmo 1;
			if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Reloaded ammo for AI patrol helicopter.";};
		};
	} forEach _heliWeapons;
	if (fuel _helicopter < 0.20) then {
		_helicopter setFuel 1;
		if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Refueled AI patrol helicopter.";};
	};
	
	if (!alive (driver _helicopter)) exitWith {
		if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Patrol helicopter pilot killed, helicopter is going down!";};
		_helicopter removeAllEventHandlers "LandedStopped";
		_helicopter setFuel 0;
		_helicopter setDamage 1;
	};

	if ((random 1) < 0.3) then {
		_helicopter flyInHeight (100 + (random 40));
	};
	
	sleep DZAI_refreshRate;
};

_timePatrolled = time - _startTime;
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: AI helicopter patrol crash-landed at %1 after %2 seconds of flight.",(getPosATL _helicopter),_timePatrolled];};
if (_timePatrolled < 30) then {
	diag_log "DZAI Warning: An AI helicopter was destroyed less than 30 seconds after being spawned. Please check if server_cleanup.fsm was edited properly.";
};
