{
	if (getPlayerUID player == _x select 1) then {
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";       
	};
} forEach currentInvites;

systemChat "You have declined the invite";