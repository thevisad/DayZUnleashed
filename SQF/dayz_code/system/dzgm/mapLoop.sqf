private ["_mrkr","_name","_pos"];

while {true} do {
	if (visibleMap) then {
		{
			if (!isNull _x) then {
				if ((getPlayerUID _x != "") && ((driver (vehicle _x)) == _x)) then {
					_name = name _x;
					if (group _x == group player) then {
						_pos = getPosATL _x;
						if (surfaceIsWater _pos) then {_pos = getPosASL _x;};
						if (_name == name player) then {_name = "I am here";};
						deleteMarkerLocal _name;
						_mrkr = createMarkerLocal [_name,_pos];
						_mrkr setMarkerTypeLocal "DestroyedVehicle";
						_mrkr setMarkerTextLocal format ["%1",_name];
					} else {
						deleteMarkerLocal _name;
					};
				};
			};
		} count playableUnits;
	};
	uiSleep 1;
};