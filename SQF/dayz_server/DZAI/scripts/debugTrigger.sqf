/*
	debugTrigger
	
	Description: Used to debug state of trigger (Yellow: Inactive, Orange: Active, Red: Error/Null object)
	
	Last updated: 2:00 PM 7/11/2013
*/
private ["_trigger","_markername","_marker"];
_trigger = _this select 0;

_markername = format["trigger_%1",_trigger];
_marker = createMarker[_markername,(getPosATL _trigger)];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerType "Flag";
_marker setMarkerBrush "SOLID";
_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
_marker setMarkerColor "ColorOrange";
_marker setMarkerAlpha 0.5;		//Dark yellow = Trigger in ready state.

while {!isNull _trigger} do {
	if (triggerActivated _trigger) then {
		_marker setMarkerColor "ColorOrange";
	} else {
		_marker setMarkerColor "ColorYellow";
	};
	sleep 15;
};
_marker setMarkerColor "ColorRed";
_marker setMarkerAlpha 1.0;	
diag_log format ["ERROR :: Trigger is now %1.",_trigger];
