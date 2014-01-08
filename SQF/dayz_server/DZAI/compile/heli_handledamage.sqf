private["_unit","_hit","_damage","_source","_ammo","_partdamage","_durability"];
_unit = 		_this select 0;				//Object the event handler is assigned to. (the unit taking damage)
_hit = 			_this select 1;				//Name of the selection where the unit was damaged. "" for over-all structural damage, "?" for unknown selections. 
_damage = 		_this select 2;				//Resulting level of damage for the selection. (Received damage)
_source = 		_this select 3;				//The source unit that caused the damage. 
_ammo = 		_this select 4;				//Classname of the projectile that caused inflicted the damage. ("" for unknown, such as falling damage.) 

_durability = _unit getVariable "durability";

if ((_ammo != "")&&(!isNil "_durability")) then {
	switch (_hit) do {
		case "": {	//Structural damage
			_partdamage = (_durability select 0) + _damage;
			_durability set [0,_partdamage];
			if (((_partdamage >= 0.9) or {((_durability select 1) >= 0.9)}) && {(alive _unit)}) then {
				0 = [_unit] call DZAI_heliGetOut; 
				_unit removeAllEventHandlers "HandleDamage"; _unit removeAllEventHandlers "GetOut"; _unit removeAllEventHandlers "Killed";
				_nul = _unit spawn {
					sleep 3;
					_this setDamage ([0.9,1] select (floor (random 2)));	//Add some variability to the helicopter destruction
				};
			};
		};
		case "motor": {	//Engine damage
			_partdamage = (_durability select 1) + _damage;
			_durability set [1,_partdamage];
			if ((_partdamage > 0.89) && (alive _unit)) then {
				_damage = 0.89;	//Intercept fatal damage to helicopter engine - next hit will destroy the helicopter.
			};
		};
	};
};

_damage
