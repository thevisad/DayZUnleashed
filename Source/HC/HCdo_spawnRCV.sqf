private ["_type","_inVehicle","_onTheMove","_dateNow","_maxWildZombies","_age","_radius","_position","_nearbyplayers","_dayz_CurrentZombies","_dayz_maxGlobalZombies","_actors","_nearByObj","_handle","_looted","_cleared","_zombied","_config","_canLoot","_dis","_nearby","_nearbyCount"];
//_t1 = diag_tickTime;


_type = _this select 0;
_inVehicle = _this select 1;
_onTheMove = _this select 2;
_dateNow = _this select 3;
_maxWildZombies = _this select 4;
_age = _this select 5;
_radius = _this select 6; 
_position = _this select 7;
_nearbyplayers = 0;
hint ("handling valid HCdo_spawnRCV" + str _this);
diag_log ("--HCdospawnRCV:" + str _this);

_dayz_CurrentZombies = 0;
_dayz_maxGlobalZombies = 0;

_actors = _position nearEntities ["CAManBase",_radius+200];
_dayz_maxGlobalZombies = dayz_maxGlobalZombiesInit;
{
	if(isPlayer _x) then {
		_dayz_maxGlobalZombies = _dayz_maxGlobalZombies + dayz_maxGlobalZombiesIncrease;
		_nearbyplayers = _nearbyplayers + 1;
	} else {
		if (_x isKindof "zZombie_Base") then {

			_dayz_CurrentZombies = _dayz_CurrentZombies + 1;
		};
	};
} foreach _actors;
	

_nearby = _position nearObjects ["building",_radius];
_nearbyCount = count _nearby;
if (_nearbyCount < 1) then
{
	if (_dayz_CurrentZombies < (_maxWildZombies * _nearbyplayers ) and !_inVehicle)  then {
		[_position] call wild_spawnZombiesHC;
		diag_log "called wild_spawnZombiesHC:" + str _position;
	};
} else {
	{
		_type = typeOf _x;
		_config = 		configFile >> "CfgBuildingLoot" >> _type;
		_canLoot = 		isClass (_config);
		
		if(_canLoot) then {

			_dis = _x distance _position;

			//Loot
			if ((_dis < 120) and (_dis > 30) and !_inVehicle) then {
				_looted = (_x getVariable ["looted",-0.1]);
				_cleared = (_x getVariable ["cleared",true]);
				_dateNow = (DateToNumber date);
				_age = (_dateNow - _looted) * 525948;
				//diag_log ("SPAWN LOOT: " + _type + " Building is " + str(_age) + " old" );
				if ((_age > 10) and (!_cleared)) then {
					_nearByObj = nearestObjects [(getPosATL _x), ["WeaponHolder","WeaponHolderBase"],((sizeOf _type)+5)];
					{deleteVehicle _x} forEach _nearByObj;
					_x setVariable ["cleared",true,true];
					_x setVariable ["looted",_dateNow,true];
				};
				if ((_age > 10) and (_cleared)) then {
					//Register
					_x setVariable ["looted",_dateNow,true];
					//cleanup
					hint "building_spawnloot";
					diag_log "spawned building_spawnLoot";
					_handle = [_x] spawn building_spawnLoot;
					waitUntil{scriptDone _handle};
				};
			};

			// do not spawn zeds if player is moving faster then 10kmh
			if (!_onTheMove) then {
				//Zeds
				if ((time - dayz_spawnWait) > dayz_spawnDelay) then {
					if (({alive _x} count entities "zZombie_Base") < dayz_maxZeds) then {
						if (_dayz_CurrentZombies < _dayz_maxGlobalZombies) then {
								_zombied = (_x getVariable ["zombieSpawn",-0.1]);
								_dateNow = (DateToNumber date);
								_age = (_dateNow - _zombied) * 525948;
								if (_age > 3) then {
									_x setVariable ["zombieSpawn",_dateNow,true];
									hint "building_spawnZombiesHC";
									diag_log "called building_spawnZombiesHC";
									[_x] call building_spawnZombiesHC;
								}; 
						} else {
								dayz_spawnWait = time;
						};
					};
				};
			};
		};
	} forEach _nearby;
};