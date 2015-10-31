// Created by [GEEK SQUAD]Churchie and heavily modified by TheVisad
// Contributors to getting it working are:| cyrq | Manatee Hunter | Deasil | Seaweeduk | OnlyblackSurvivor |Thank you!
private ["_body","_model","_SomesOnesClothing","_rnd","_result","_position","_dir","_currentAnim","_weapons","_primweapon","_secweapon","_magazines","_newBackpackType","_backpackWpn","_backpackMag","_currentWpn","_muzzles","_oldUnit","_xt","_yt","_dx","_ammoboxPos","_grave","_ammobox","_backpackmag"];
player removeAction s_clothes;
s_clothes = -1;
_body = _this select 3;
_model = typeOf _body;
_SomesOnesClothing = getText ( configFile >> "CfgVehicles" >> (typeOf _body) >> "clothingDZ");
	
if( _SomesOnesClothing != "") then 
{ 
	_nameBody = _body getVariable["bodyName","unknown"];	
	_method = _body getVariable["deathType","unknown"];
	_nameKillerP = _body getVariable ["nameKillerP","unknown"];
	_typedeP = _body getVariable ["typedeP","unknown"];
	
	_model = "Skin_" + _model;
	_rnd = random 1;
	if (_rnd > 0.4) then {
		_result = [player,_model] call BIS_fnc_invAdd;
	}
	else {
		_model = "Skin_Survivor2_DZ";
		_result = [player,_model] call BIS_fnc_invAdd;
		cutText ["The clothing tears as you try to remove it from the corpse", "PLAIN DOWN"];
	};
	if (_result) then 
	{ 
		player playActionNow "PutDown";
		sleep 1;
		_position = getPosATL _body;
		_dir = getDir _body;
		_currentAnim = animationState _body; 
		private ["_weapons","_magazines","_primweapon","_secweapon"];
		_weapons = weapons _body;
		_primweapon = primaryWeapon	_body; 
		_secweapon = secondaryWeapon _body;
		if(!(_primweapon in _weapons) && _primweapon != "") then { _weapons = _weapons + [_primweapon]; };
		if(!(_secweapon in _weapons) && _secweapon != "") then { _weapons = _weapons + [_secweapon]; };
		_magazines = magazines _body;
		private ["_newBackpackType","_backpackWpn","_backpackMag"]; 
		dayz_myBackpack = unitBackpack _body;
		_newBackpackType = (typeOf dayz_myBackpack);
		if(_newBackpackType != "") then { 
			_backpackWpn = getWeaponCargo unitBackpack _body;
			_backpackMag = getMagazineCargo unitBackpack _body; 
		};
		_currentWpn = currentWeapon _body;
		_muzzles = getArray(configFile >> "cfgWeapons" >> _currentWpn >> "muzzles");
		if (count _muzzles > 1) then { _currentWpn = currentMuzzle _body; };
		
		diag_log ("CTC: Position: " + str(_position));
		diag_log ("CTC: Weapons: " + str(_weapons));
		diag_log ("CTC: Magazines: " + str(_magazines));
		diag_log ("CTC: Backpack Weapons: " + str(_backpackWpn));
		diag_log ("CTC: BackPack Magazines: " + str(_backpackMag));
		_body setPosATL dayz_spawnPos;
		_oldUnit = _body;
		ClearWeaponCargo _oldUnit; 
		ClearMagazineCargo _oldUnit; 
		
		_oldUnit removeAllMPEventHandlers "mpkilled";
		_oldUnit removeAllMPEventHandlers "mphit";
		_oldUnit removeAllMPEventHandlers "mprespawn";
		_oldUnit removeAllEventHandlers "FiredNear";
		_oldUnit removeAllEventHandlers "HandleDamage";
		_oldUnit removeAllEventHandlers "Killed";
		_oldUnit removeAllEventHandlers "Fired";
		_oldUnit removeAllEventHandlers "GetOut";
		_oldUnit removeAllEventHandlers "GetIn";
		_oldUnit removeAllEventHandlers "Local";
	
		deleteVehicle _oldUnit;
		[_position] spawn PVDZ_del_Flies;
		_xt = _position select 0;
		_yt = _position select 1;
		_dx = _xt - 1;
		_ammoboxPos = [_dx,_yt, 0];
		_grave = createVehicle ["Body", _position, [], 0, "CAN_COLLIDE"];
		_wpn = createVehicle ["WeaponHolder", _ammoboxPos, [], 1, "CAN_COLLIDE"];
		_grave modelToWorld _position;
		
		ClearWeaponCargo _ammobox; 
		ClearMagazineCargo _ammobox; 
		_ammobox addWeaponCargo _weapons;
		diag_log("CTC: Count Weapons: " + str(count _weapons));
		diag_log("CTC: Count BackPack Weapons: " + str(count _backpackWpn));
		diag_log("CTC: Count Magazines: " + str(count _magazines));
		diag_log("CTC: Count Backpack Magazines: " + str(count _backpackMag));
		{
		} foreach _weapons;
		
		if (count _weapons > 0) then { 
			//_countr = 0;
			{
				_wpn addweaponcargoGlobal [_x,1];
				//_countr = _countr + 1;
			} forEach _weapons;
		};
		
		/*
		if (count _backpackWpn > 0) then { 
			//_wpn addWeaponCargoGlobal _backpackWpn;
			//_countr = 0;
			{
				_wpn addWeaponCargoGlobal [_x,1];
				//_countr = _countr + 1;
			} forEach _backpackWpn;
			
		};
		*/
		
		for "_i" from 0 to ((count (_backpackWpn select 0)) - 1) do
		{
			_wpn addWeaponCargoGlobal
				[((_backpackWpn select 0) select _i), ((_backpackWpn select 1) select _i)];
		};
		
		if (count _magazines > 0) then { 
			//_wpn addMagazineCargoGlobal _magazines;
			{
				_wpn addMagazineCargoGlobal [_x,1];
				//_countr = _countr + 1;
			} forEach _magazines;
		};
		/*
		if (count _backpackmag > 0) then 
		{ 
			//_wpn addMagazineCargoGlobal _backpackMag;
			{
				_wpn addMagazineCargoGlobal [_x,1];
				//_countr = _countr + 1;
			} forEach _backpackMag;
		};
		*/
		for "_i" from 0 to ((count (_backpackMag select 0)) - 1) do
		{
			_wpn addMagazineCargoGlobal
				[((_backpackMag select 0) select _i), ((_backpackMag select 1) select _i)];
		};
		
		if (_newBackpackType != "") then 
		{ 
			_wpn addBackpackCargoGlobal [_newBackpackType,1]; 
		};

	} else {
		cutText ["You need a free slot to take clothing.", "PLAIN DOWN"];
	};
};