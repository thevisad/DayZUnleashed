if (unleashed_PerroDebug == 1) then { diag_log("PAC: Spawn Animals"); };
private ["_list","_animalssupported","_type","_root","_favouritezones","_randrefpoint","_PosList","_PosSelect","_Pos","_agent","_id"];
_list = getposATL player nearEntities [["CAAnimalBase"],dayz_animalDistance];
_skill_value = [player,"Hunting"] call DZU_fnc_getVariable;
_tempAnimalIncrease = 0;
if ((_skill_value > 0) AND (_skill_value <= 25)) then {
	_tempAnimalIncrease = 2;
}; 
if ((_skill_value > 25) AND (_skill_value <= 50)) then {
	_tempAnimalIncrease = 4;
}; 
if ((_skill_value > 50) AND (_skill_value <= 75)) then {
	_tempAnimalIncrease = 6;
}; 
if ((_skill_value > 75) AND (_skill_value <= 100)) then {
	_tempAnimalIncrease = 8;
}; 
_maxAnimals = dayz_maxAnimals + _tempAnimalIncrease;

if (count _list < dayz_maxAnimals) then {
	//Find where animal likes
	_animalssupported = ["Chicken","Cow","Sheep","WildBoar","WildBoar","WildBoar","Goat","Rabbit","Rabbit","Dog","Dog","Dog","Dog","Dog","Dog","Dog","Dog","Dog"];
	
	_type =  (_animalssupported select floor(random(count _animalssupported)));
	if (_type == "Cow") then {
		_animalssupported = ["Cow01","Cow02","Cow03","Cow04","Cow01_EP1"];
		_type =  (_animalssupported select floor(random(count _animalssupported)));
	};
	if (_type == "Goat") then {
		_animalssupported = ["Goat01_EP1","Goat02_EP1","Goat"];
		_type =  (_animalssupported select floor(random(count _animalssupported)));
	};
	if (_type == "Sheep") then {
		_animalssupported = ["Sheep","Sheep02_EP1","Sheep01_EP1"];
		_type =  (_animalssupported select floor(random(count _animalssupported)));
	};
	if (_type == "Chicken") then {
		_animalssupported = ["Hen","Cock"];
		_type =  (_animalssupported select floor(random(count _animalssupported)));
	};
	if (_type == "Dog") then {
		
		
		if (dayz_SpawnZDogs < unleashed_maxDogs) then {
			_animalssupported = ["DZ_FinZombie","DZ_PastorZombie"];
			dayz_SpawnZDogs = dayz_SpawnZDogs + 1;
		} else {
			_animalssupported = ["DZ_Fin","DZ_Pastor"];
		};  
		
		
		//_animalssupported = ["DZ_FinZombie","DZ_PastorZombie"];
		_type =  (_animalssupported select floor(random(count _animalssupported)));
	};
	/*
	if (_type == "WildBoar") then {
		_type =  "DZ_Boar";
	};
	*/

	_root = configFile >> "CfgVehicles" >> _type;
	_favouritezones = getText ( _root >> "favouritezones");
	//_randrefpoint = [position player, 10, dayz_animalDistance, 1, 0, 50, 0] call BIS_fnc_findSafePos;
	_randrefpoint = getposATL player;
	_PosList = 		selectbestplaces [_randrefpoint,dayz_animalDistance,_favouritezones,10,5];
	_PosSelect = 	_PosList select (floor random (count _PosList));
	_Pos =  		_PosSelect select 0;
	//diag_log("PAC: Position " + str(_Pos));
	_list = 		_Pos nearEntities [["CAAnimalBase","Man"],50];
	
	
	if (player distance _Pos < dayz_animalDistance and NOT surfaceIsWater _Pos and (count _list <= 1)) then {
		if (_type == "DZ_PastorZombie" || _type == "DZ_FinZombie") then {
		if (unleashed_PerroDebug == 1) then { diag_log(format["PAC: Spawn Attack Animal: %1", _type]); };
			
			_agent = createAgent [_type, _Pos, [], 0, "NONE"]; 
			_agent setpos _Pos;
			_id = [_pos,_agent,_type] execFSM "\z\addons\dayz_code\system\zombie_dog_agent.fsm";
		}
		else 
		{ 
			_agent = createAgent [_type, _Pos, [], 0, "FORM"]; 
			_agent setpos _Pos;
			_id = [_pos,_agent] execFSM "\z\addons\dayz_code\system\animal_agent.fsm";
		};
	};
	sleep 1;
};