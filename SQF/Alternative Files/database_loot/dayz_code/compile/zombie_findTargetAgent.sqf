private["_agent","_target","_targets","_targetDis","_c","_man","_manDis","_targets","_agent","_agentheight","_nearEnts","_rnd","_assigned","_range","_objects","_manAgr"];
_agent = _this;
_target = objNull;
_targets = [];
_targetDis = [];
_range = 150;
_manDis = 0;
_manAgr =0;
_targets = _agent getVariable ["targets",[]];
//diag_log ("ZFTA: Agent " + str(_agent) + " Checking Targets: "+str(_targets));

if (isNil "_targets") exitWith {};
//Search for objects
if (count _targets == 0) then {
	_objects = nearestObjects [_agent,["ThrownObjects","GrenadeHandTimedWest","SmokeShell"],_range];
	{
		private["_dis"];
		if (!(_x in _targets)) then {
			_targets set [count _targets,_x];
			_targetDis set [count _targetDis,_dis];
		};
		//diag_log("ZFTA: Agent: " + str(_agent) + " object target:" + str(_x));
	} forEach _objects;

};

//Find best target
if (count _targets > 0) then {
	_man = _targets select 0;
	_manDis = _man distance _agent;
    _manAgr = _man getVariable ["aggroRank",0];
	//diag_log("ZFTA: Agent: " + str(_agent) + " Man: " + str(_man) + " Man Distance: " + str(_manDis));
	{
		private["_dis","_agg"];
		_dis = _x distance _agent;
        _agg = _x getVariable ["aggroRank",0];
		if (_dis < _manDis && _agg >= _manAgr) then {
			_man = _x;
			_manDis = _dis;
            _manAgr = _agg;
		};
		if (_x isKindOf "SmokeShell") then {
			_man = _x;
			_manDis = _dis;
            _manAgr = 10;
		};
	} forEach _targets;
	_target = _man;
	//diag_log("ZFTA: Agent " + str(_agent) + " is findtargetAgent target:" + str(_target));
};

//Check if too far
//if(_manAgr == 0) then {_range = _range /2;}; //cut range in half if this guy manged to keep 0 aggro?
if (_manDis > _range ) then {
	_targets = _targets - [_target];
	_target = objNull;
};
_target;