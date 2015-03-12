disableSerialization;
				
private ["_dialog","_playerListBox","_namestr","_index"];
	
_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
lbClear _playerListBox;
{
	if (!isNull _x) then {
		if (getPlayerUID _x != "") then {
			_namestr = name _x;
			_index = _playerListBox lbAdd _namestr;
			_playerListBox lbSetData [_index,str(_x)];
		};
	};
} count playableUnits;