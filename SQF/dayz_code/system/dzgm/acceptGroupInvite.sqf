private ["_callerID","_targetID","_friendlies","_rfriendlies","_groupExists","_inviterUID","_inviter"];

_groupExists = false;
{
	if (getPlayerUID player == _x select 1) then {
    	_inviterUID = _x select 0;
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";
	};
} forEach currentInvites;

{
	if (!isNull _x) then {
		if (getPlayerUID _x == _inviterUID) then {
			_inviter = _x;
			_groupExists = true;	    
		};
	};
} count playableUnits;

if (_groupExists) then {
	[player] join (group _inviter);
	
	_callerID = getPlayerUID player;
	{
		if (!isNull _x) then {
			if ((getPlayerUID _x != "") && (alive _x)) then {
				_targetID = getPlayerUID _x;
				
				_friendlies = player getVariable ["friendlies", []];
				_friendlies set [count _friendlies, _targetID];
				player setVariable ["friendlies", _friendlies, true];
				
				_rfriendlies = _x getVariable ["friendlies", []];
				_rfriendlies set [count _rfriendlies, _callerID];
				_x setVariable ["friendlies", _rfriendlies, true];
			};
		};
	} count units group player;
	systemChat "You have accepted the invite";
	systemChat "You are now friends with all group members";
	systemChat "Press windows key to toggle player icons";
} else {
	systemChat "The group no longer exists";    
};