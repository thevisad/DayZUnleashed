private ["_unitGroup","_nearUnits","_detectBase","_detectFactor","_detectRange","_heli"];
_unitGroup = _this select 0;

_heli = vehicle (leader _unitGroup);
_detectRange = if (_unitGroup getVariable ["DetectPlayersWide",false]) then {_unitGroup setVariable ["DetectPlayersWide",false]; 350} else {250};
_nearUnits = (waypointPosition [_unitGroup,(currentWaypoint _unitGroup)]) nearEntities [["AllVehicles","CAManBase"],_detectRange];
if ((count _nearUnits) > 0) then {
	private ["_nearPlayerUnits"];
	_nearPlayerUnits = [];
	{
		if (isPlayer _x) then {
			_nearPlayerUnits set [count _nearPlayerUnits,_x];
		};
	} forEach _nearUnits;
	
	if ((count _nearPlayerUnits) > 0) then {
		{
			if (isPlayer _x) then {
				private ["_heliAimPos","_playerAimPos"];
				_heliAimPos = aimPos _heli;
				_playerAimPos = aimPos _x;
				if !(terrainIntersectASL [_heliAimPos,_playerAimPos]) then {
					if !(lineIntersects [_heliAimPos,_playerAimPos,_heli,_x]) then {
						_unitGroup reveal [_x,3];
					};
				};
			};
			sleep 0.1;
		} forEach _nearPlayerUnits;
	};
};