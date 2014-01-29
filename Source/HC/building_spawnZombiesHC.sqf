private ["_obj","_type","_config","_canLoot","_unitTypes","_min","_max","_num","_zombieChance","_rnd","_position","_positions","_iPos","_nearBy","_noOneNear"];
//_t1 = diag_tickTime;

_obj = _this select 0;
_type = 		typeOf _obj;
_config = 		configFile >> "CfgBuildingLoot" >> _type;
_canLoot = 		isClass (_config);

if (_canLoot) then {
	
	//Get zombie class
	_zombieChance =	getNumber (_config >> "zombieChance");
	_rnd = random 1;

	//Get zombie class
	_unitTypes = 	getArray (_config >> "zombieClass");
	_min = 			getNumber (_config >> "minRoaming");
	_max = 			getNumber (_config >> "maxRoaming");
	
	//Walking Zombies
	_num = (round(random _max)) max _min;
	
	_position = getPosATL _obj;		
		
	_noOneNear = (count (_position nearEntities ["CAManBase",30])) == 0;
	
	if (_noOneNear) then {
	
		_positions =	getArray (_config >> "lootPosZombie");
		
		if (count _positions > 0) then {
			
			{
				if (random 1 < _zombieChance) then {
					_iPos = _obj modelToWorld _x;
					_nearBy =  count (_iPos nearEntities ["zZombie_Base",1]) > 0;
					if (!_nearBy) then {
						hint "zombie_generateHC";
						diag_log "called zombie_generateHC:" + str [_iPos,true,_unitTypes];
						[_iPos,true,_unitTypes] call zombie_generateHC;
					};
				};
			} forEach _positions;
			
		} else {

			for "_i" from 1 to _num do
			{
				if (random 1 < _zombieChance) then {
					hint "zombie_generateHC";
					diag_log "called zombie_generateHC:" + str [_position,true,_unitTypes];
					[_position,true,_unitTypes] call zombie_generateHC;
				};
			};
		};
	};

//	dayz_buildingMonitor set [count dayz_buildingMonitor,_obj];
// actually dayz_buildingMonitor looks unused
};
//["building_spawnZombies.sqf",(diag_tickTime - _t1)] call fnc_dump;