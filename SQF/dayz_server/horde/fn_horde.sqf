private ["_position","_targetPos2","_type","_radius","_method","_zombieLoopCounter","_amountOfSpawns","_targetPos","_unitTypes","_tempSpawnAmount","_randomMath","_xt","_yt","_randomOffsetX","_randomOffsetY","_agent1","_idZombie","_zombies","_targetPosFirst","_targetPos1","_targetPosNorth","_targetPosSouth"];


_map = worldName;

_targetPos1 = getMarkerPos "center";

_startxchange = 500 - (floor(random 1000));

_finishxchange = 500 - (floor(random 1000));

if (_map == "emita") then {
	_targetPosNorth = [((_targetPos1 select 0)+_startxchange),((_targetPos1 select 1)+2000),_targetPos1 select 2];
	_targetPosSouth = [((_targetPos1 select 0)-_finishxchange),((_targetPos1 select 1)-2000),_targetPos1 select 2];
};
if (_map == "isoladicapraia") then {
	_targetPosNorth = [((_targetPos1 select 0)+_startxchange),((_targetPos1 select 1)+4000),_targetPos1 select 2];
	_targetPosSouth = [((_targetPos1 select 0)-_finishxchange),((_targetPos1 select 1)-4000),_targetPos1 select 2];
};
if (_map == "fata") then {
	_targetPosNorth = [((_targetPos1 select 0)+_startxchange),((_targetPos1 select 1)+4000),_targetPos1 select 2];
	_targetPosSouth = [((_targetPos1 select 0)-_finishxchange),((_targetPos1 select 1)-4000),_targetPos1 select 2];
};
if (_map == "queshkibrul") then {
	_targetPosNorth = [((_targetPos1 select 0)+_startxchange),((_targetPos1 select 1)+4000),_targetPos1 select 2];
	_targetPosSouth = [((_targetPos1 select 0)-_finishxchange),((_targetPos1 select 1)-4000),_targetPos1 select 2];
};
if (_map == "kulima") then {
	_targetPosNorth = [((_targetPos1 select 0)+_startxchange),((_targetPos1 select 1)+3000),_targetPos1 select 2];
	_targetPosSouth = [((_targetPos1 select 0)-_finishxchange),((_targetPos1 select 1)-3000),_targetPos1 select 2];
};


_position = [_targetPosNorth,random 200,random 360,false] call SHK_pos;
_finalPosition = [_targetPosSouth,random 200,random 360,false] call SHK_pos;

_type = [];
_radius = 50;
_method = "NONE";
_zombieLoopCounter = 0;
_amountOfSpawns = 0;
_targetPos = [];
_unitTypes = 	[]+ getArray (configFile >> "CfgBuildingLoot" >> "Default" >> "zombieClass");
_tempSpawnAmount = dayz_zombiehordeMaximum - dayz_zombiehordeMinimum;
_amountOfSpawns=(floor(random _tempSpawnAmount) + dayz_zombiehordeMinimum);
dayz_zombiehordeData set [count dayz_zombiehordeData, [dayz_zombiehorde, _finalPosition]];
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
		
        //_idZombie = [_position,_agent1] execFSM "\z\addons\dayz_server\hoard\zombie_horde.fsm";
		_targetPos2 = [_finalPosition,random 120,random 360,false] call SHK_pos;
		_agent1 setVariable ["hordedest",_targetPos2];
		_agent1 setVariable ["zombiehorde",dayz_zombiehorde];
        _agent1 forceSpeed 3;
        _agent1 moveTo _targetPos2;
		diag_log(format["HORDE: Spawned %1 in horde %3 at %2 moving to positon %4",_type,_targetPos,dayz_zombiehorde, _targetPos2 ]);
        _amountOfSpawns = _amountOfSpawns + 1;
        dayz_zombiehordes set [count dayz_zombiehordes, _agent1];
        sleep 0.1;
};
dayz_zombiehorde = dayz_zombiehorde + 1;
_zombies = str(count dayz_zombiehordes);







