/*
	Helicopter Resupply (Debug Version)
	
	Description: Handles automatic refueling and resupplying ammo for AI helicopter. Destroys helicopter if pilot is killed and allows another AI helicopter to be respawned.
	
	Last updated: 7:23 PM 7/9/2013
	
*/

if (!isServer) exitWith {};

private ["_helicopter","_heliWeapons","_markername","_marker","_startTime","_timePatrolled","_unitGroup","_wpmarkername","_wpmarker"];

_helicopter = _this select 0;
_heliWeapons = weapons _helicopter;
_unitGroup = _helicopter getVariable "unitGroup";

//Create debug position markers. Helicopter position: Red, Current waypoint position: Blue.
_markername = format["Helicopter_%1",_helicopter];
_marker = createMarker[_markername,(getposATL _helicopter)];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerType "Dot";
_marker setMarkerColor "ColorRed";
_marker setMarkerBrush "SolidBorder";
_marker setMarkerSize [50, 50];

diag_log format ["Helicopter is part of group %1.",_unitGroup];
_wpmarkername = format ["HeliWP_%1",_helicopter];
_wpmarker = createMarker[_wpmarkername,(getWPPos [_unitGroup,0])];
_wpmarker setMarkerShape "ELLIPSE";
_wpmarker setMarkerType "Dot";
_wpmarker setMarkerColor "ColorBlue";
_wpmarker setMarkerBrush "SolidBorder";
_wpmarker setMarkerSize [100, 100];

//Wait until helicopter has pilot and script has finished finding helicopter's weapons.
waitUntil {sleep 0.01; (!isNil "_heliWeapons" && !isNull (driver _helicopter))};
diag_log format ["Helicopter driver is %1.",(driver _helicopter)];
_startTime = time;

while {alive _helicopter} do {
	//Check if helicopter ammunition needs to be replenished
	{
		if ((_helicopter ammo _x) < 20) then {
			_helicopter setVehicleAmmo 1;
			if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Reloaded ammo for AI patrol helicopter.";};
		};
	} forEach _heliWeapons;
	
	//Check if helicopter fuel is low
	if (fuel _helicopter < 0.20) then {
		_helicopter setFuel 1;
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: Refueled AI patrol helicopter.";};
	};
	
	//Update helicopter position and waypoint markers
	_marker setMarkerPos (getposATL _helicopter);
	_wpmarker setMarkerPos (getWPPos [_unitGroup,0]);
	
	//Destroy helicopter if pilot is killed
	if (!alive (driver _helicopter)) exitWith {
		if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Patrol helicopter pilot killed, helicopter is going down!";};
		_helicopter removeAllEventHandlers "LandedStopped";
		_helicopter setDamage 1;
	};

	//Periodically vary the helicopter's altitude
	if ((random 1) < 0.3) then {
		_helicopter flyInHeight (90 + (random 40));
	};
	
	//Uncomment to test despawn/respawn process. Destroys helicopter after ~60 seconds of flight
	/*
	if ((time - _startTime) > 60) then {
		_helicopter setDamage 1;
	};
	*/
	
	sleep DZAI_refreshRate;
};
deleteMarker _marker;
deleteMarker _wpmarker;

//Report length of time helicopter patrol was active. Add a warning entry to RPT log if helicopter was destroyed unusually early (< 30 seconds), likely due to the server admin forgetting to edit the server_cleanup.fsm.
_timePatrolled = time - _startTime;
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: AI helicopter patrol destroyed after %1 seconds of flight.",_timePatrolled];};
if (_timePatrolled < 30) then {
	diag_log "DZAI Warning: An AI helicopter was destroyed less than 30 seconds after being spawned. Please check if server_cleanup.fsm was edited properly.";
};
