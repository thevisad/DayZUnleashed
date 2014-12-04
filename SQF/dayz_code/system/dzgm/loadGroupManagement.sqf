disableSerialization;
				
private ["_i","_dialog","_playerListBox","_groupListBox","_namestr","_index","_groupInvite","_groupKick","_groupDisband","_groupLeaveButton","_name","_units"];

closeDialog 0;
_i="createDialog";createDialog "GroupManagement";			
_dialog = findDisplay 55510;
groupManagmentActive = true;
_playerListBox = _dialog displayCtrl 55511;
_groupListBox = _dialog displayCtrl 55512;
_groupInvite = _dialog displayCtrl 55514;
_groupKick = _dialog displayCtrl 55515;
_groupDisband = _dialog displayCtrl 55516;
_groupLeaveButton = _dialog displayCtrl 55517;
_groupAcceptInvite = _dialog displayCtrl 55518;
_groupDeclineInvite = _dialog displayCtrl 55519;
_groupInviteText = _dialog displayCtrl 55520;
_groupInvite ctrlShow false;
_groupKick ctrlShow false;
_groupDisband ctrlShow false;
_groupLeaveButton ctrlShow false;
_groupDeclineInvite ctrlShow false;
_groupAcceptInvite ctrlShow false;
_hasInvite = false;
{
	if (!isNull _x) then {
		if (getPlayerUID _x != "") then {
			_namestr = name _x;             
			_index = _playerListBox lbAdd _namestr;
			_playerListBox lbSetData [_index,str(_x)];
		};
	};	    
} count playableUnits;

while {groupManagmentActive} do {
    {if (_x select 1 == getPlayerUID player) then {_hasInvite = true};} forEach currentInvites;
    
	_units = units group player;
    if (count _units > 1) then {
        if (player == leader group player) then {
			_groupDisband ctrlShow true;
            _groupKick ctrlShow true;
			_groupLeaveButton ctrlShow true;  		
        } else {
			_groupLeaveButton ctrlShow true;    
        };
    } else {
    	_groupKick ctrlShow false;
		_groupDisband ctrlShow false;
		_groupLeaveButton ctrlShow false;  	
    };
    
    if (_hasInvite) then {
        _groupInviteText ctrlShow true;
        _groupAcceptInvite ctrlShow true;
        _groupDeclineInvite ctrlShow true;
        {
			_invite = _x;
			if (_invite select 1 == getPlayerUID player) then {
				{
					if (!isNull _x) then {
						if (_invite select 0 == getPlayerUID _x) then {_name = name _x;};
					};
				} count playableUnits;
			};
		} forEach currentInvites;
        _groupInviteText ctrlSetStructuredText parseText (format ["Group Invite From<br/>%1",_name]);
    } else {
    	_groupAcceptInvite ctrlShow false;
        _groupDeclineInvite ctrlShow false;
        _groupInviteText ctrlShow false; 
    };
    {
		if (!isNull _x) then {
			if ((getPlayerUID _x != "") && (alive _x)) then {
				_namestr = name _x;             
				_index = _groupListBox lbAdd _namestr;
				_groupListBox lbSetData [_index,str(_x)];
			};
		};
    } count _units;
     
	uiSleep 0.5;
    _hasInvite = false;
    lbClear _groupListBox;
	if (!dialog) then {groupManagmentActive = false;};
};