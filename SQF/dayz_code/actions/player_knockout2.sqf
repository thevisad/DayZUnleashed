private["_body","_duration"];
_body = _this select 0;
_duration = _this select 1;

diag_log("Knockout attempt on:" + str(_body) + " and I am: " + str(player) );

if (_body == player) then {
	diag_log("Knocked the fuck out!");
	[player, _duration] call fnc_usec_damageUnconscious;
	cutText ["You've been knocked the fuck out, bitch!", "PLAIN DOWN"];
};