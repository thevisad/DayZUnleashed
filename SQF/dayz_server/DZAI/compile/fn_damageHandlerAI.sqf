private["_unit","_selection","_damage","_dmgSource","_projectile","_headShots","_damageOrg","_gethit"];
/*
	Damage Handler script modified for DZAI
	Original credits: Celery, modifications by Nullkigan (for Body Armor script), Rocket (for original zombie damage handler script).
*/
_unit = 		_this select 0;				//Object the event handler is assigned to. (the unit taking damage)
_selection = 	_this select 1;				//Name of the selection where the unit was damaged. "" for over-all structural damage, "?" for unknown selections. 
_damage = 		_this select 2;				//Resulting level of damage for the selection. (Received damage)
_dmgSource = 	_this select 3;				//The source unit that caused the damage. 
_projectile = 	_this select 4;				//Classname of the projectile that caused inflicted the damage. ("" for unknown, such as falling damage.) 

if (_unit == _dmgSource) then {_damage = (_damage/5)};	//Reduce collision damage in case unit falls from a building or struck by a vehicle.
if (((_damage > 2) || ((_damage > 0.5) && (_selection == "head_hit"))) && !(_unit getVariable ["unconscious",false])) then {_nul = [_unit] spawn DZAI_unconscious; _unit setVariable ["unconscious",true];};

if (isNil {_unit getVariable "gethit"}) then {_unit setVariable ["gethit",[0,0,0,0]]};                            	// Fresh unit starts at full health
_gethit=_unit getVariable "gethit"; 		// Retrieve unit's health statistics

switch (_selection) do {                                                                                           		// Depending on which part of body is damaged
    case "":{                                                                                                         	// Overall structure damage
        _damage = (damage _unit) + _damage * (DZAI_dmgFactors select 0)                                             	// Total damage to unit + percentage of incoming damage
    };
    
    case "head_hit":{                                                                                                	// damage applied to head
        _damage = (_gethit select 0) + (_damage - (_gethit select 0))*(DZAI_dmgFactors select 1);
		_gethit set [0,_damage]        // damage dealt to head so far + damage from current shot (minus existing damage) * factor; essentially, damage accumulates with the number of shots you take
    };
    
    case "body":{
        _damage = (_gethit select 1) + (_damage - (_gethit select 1))*(DZAI_dmgFactors select 2);
		_gethit set [1,_damage]        //As previously
    };    
    
    case "hands":{                                                                                                      // cannot kill a unit on own, only affect aim
        _damage = (_gethit select 2) + (_damage - (_gethit select 2))*(DZAI_dmgFactors select 3);
		_gethit set [2,_damage];
		if (_damage < 1) then {_damage = 0};	//Break hands only if cumulative damage to hand is > 1
    };        
    
    case "legs":{                                                                                                      // cannot kill a unit on own, only affect movement
        _damage = (_gethit select 3) + (_damage - (_gethit select 3))*(DZAI_dmgFactors select 4);
		_gethit set [3,_damage];
		if (_damage < 1) then {_damage = 0};	//Break legs only if cumulative damage to legs is > 1
    }; 
};      

if (_damage > 1 and _projectile != "") then {
	//Record deliberate critical damages
	switch (_selection) do {
		case "head_hit": {
			if (!(_unit getVariable["hitRegistered",false])) then {
				_headShots = _dmgSource getVariable["headShots",0];
				_dmgSource setVariable["headShots",(_headShots + 1),true];
				_unit setVariable["hitRegistered",true];
			};
		};
	};
	if (_projectile isKindOf "Bolt") then {
		_damageOrg = _dmgSource getVariable["firedDamage",0]; //_unit getVariable["firedSelection",_selection];
		if (_damageOrg < _damage) then {
			_dmgSource setVariable["firedHit",[_unit,_selection],true];
			_dmgSource setVariable["firedDamage",_damage,true];
		};
	};
};

_damage