private ["_position","_targetPos2","_type","_radius","_method","_zombieLoopCounter","_amountOfSpawns","_targetPos","_unitTypes","_tempSpawnAmount","_randomMath","_xt","_yt","_randomOffsetX","_randomOffsetY","_agent1","_idZombie","_playerOldAggroRank","_zombies"];
_position = [getMarkerPos "center",0,9000,10,0,200,0] call BIS_fnc_findSafePos;
_targetPos2 = [getMarkerPos "center",0,9000,10,0,200,0] call BIS_fnc_findSafePos;
_type = [];
_radius = 50;
_method = "NONE";
_zombieLoopCounter = 0;
_amountOfSpawns = 0;
_targetPos = [];
_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");
_tempSpawnAmount = dayz_zombiehordeMaximum - dayz_zombiehordeMinimum;
_amountOfSpawns=(floor(random _tempSpawnAmount) + dayz_zombiehordeMinimum);
dayz_zombiehordeData set [count dayz_zombiehordeData, [dayz_zombiehorde, _targetPos2]];
for "_x" from 0 to _amountOfSpawns do {
		_randomMath=floor(random 1);
		_xt = _position select 0;
		_yt = _position select 1;
		_randomOffsetX = floor(random _radius);
		_randomOffsetY = floor(random _radius);
		if (_randomMath == 1)  then
		{
			_targetPos = [_xt + _randomOffsetX, _yt + _randomOffsetY, 0];
		} else {
			_targetPos = [_xt - _randomOffsetX, _yt - _randomOffsetY, 0];
		};

		
        _type = _unitTypes call BIS_fnc_selectRandom;
        _agent1 = createAgent [_type, _position, [], _radius, _method];
		
		_markerNumber = floor(random 9999999999);
		_markername = "markername" + str(_markerNumber);
		_markerstr = createMarker[_markername,position _agent1];
		_markerstr setMarkerShape "ICON";
		_markername setMarkerType "DOT";
		
        _idZombie = [_position,_agent1] execFSM "\z\AddOns\dayz_code\system\zombie_horde.fsm";
		_agent1 setVariable ["hordedest",_targetPos2];
		_agent1 setVariable ["zombiehorde",dayz_zombiehorde];
		_agent1 setVariable ["markername",_markername];
		_agent1 setVariable ["myDest",_markername];
		[getMarkerPos "center",0,9000,10,0,200,0] call _makeMarker;
        _agent1 forceSpeed 2;
        _agent1 moveTo _targetPos2;
		diag_log(format["DSH: Spawned %1 in horde %3 at %2 moving to positon %4",_type,_targetPos,dayz_zombiehorde, _targetPos2 ]);
        _amountOfSpawns = _amountOfSpawns + 1;
        dayz_zombiehordes set [count dayz_zombiehordes, _agent1];
        sleep 0.1;
};
dayz_zombiehorde = dayz_zombiehorde + 1;
_zombies = str(count dayz_zombiehordes);

