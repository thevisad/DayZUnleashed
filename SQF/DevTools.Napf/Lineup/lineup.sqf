#include "getclass.sqf";
_relPos = {private["_p","_d","_a","_x","_y","_xout","_yout"];_p=_this select 0; _x=_p select 0; _y=_p select 1; _d=_this select 1; _a=_this select 2; _xout=_x + sin(_a)*_d; _yout=_y + cos(_a)*_d;[_xout,_yout,0]};

player removeAction KRON_AID;
if !(isNil('KRON_AIDD')) then {player removeAction KRON_AIDD};

if (typeName (_this select 0)=="OBJECT") then {
	_this=_this select 3;
};

_objclass = _this select 0;	
_distance = _this select 1;	
_orientation = _this select 2;	
_maxobj = _this select 3;	

_batch = 0;
if ((count _this)>5) then {
	_batch=_this select 5;
};
if ((count _this)>6) then {
	if (_this select 6) then {
		{deleteVehicle _x}forEach KRON_OBJLIST;
	};
};
KRON_OBJLIST=[];

_objlist = ["cfgVehicles",_objclass,2,true,true] call KRON_getClass;
_total = (count _objlist);
if (_batch==0) then {
	player sidechat format["%1 objects found",_total];
};

_pos = position player;
_dir = direction player;
_obj = objNull;

_min=_batch*_maxobj;
_max=_min+_maxobj;
if (_max>_total) then {_max=_total};
if ((_max<_total) || (_batch>0)) then {
	player sidechat format["Listing object #%1 to #%2",_min+1,_max];
};
_count=0;
for "_i" from 0 to _total-1 do {
	if ((_i>=_min) && (_count<_max)) then {
		_clsname = _objlist select _i;
	
		_pos = [_pos,_distance,_dir] call _relPos;
		_watchpos = [_pos,100,_dir+_orientation] call _relPos;
		_isMan = getNumber (configFile >> "cfgVehicles" >> _clsname >> "isman");
		
		if (_isMan==1) then {
			// create a man
			_group = createGroup west;
			_obj = _group createUnit [_clsname, _pos,[],0,""];
			_obj setCombatMode "blue";
			_obj playMove "AmovPercMstpSnonWnonDnon";
			_obj setUnitPos "up";
			_obj doWatch _watchpos;
		} else {
			// create an object
			_obj = _clsname createVehicle _pos;
		};
		_obj setDir _dir+_orientation;
		_obj setPos _pos;
		KRON_OBJLIST=KRON_OBJLIST+[_obj];
		
		_ypos = _ypos + _distance;
		sleep .1;	
	
	/* put a man into vehicle	
		_group = createGroup west;
		_man = _group createUnit ["Civilian", [_xpos,_ypos],[],0,""];
		_man moveInCargo _obj;	
		KRON_OBJLIST=KRON_OBJLIST+[_man];
	*/
	};
	_count = _count + 1;
};

if (_total>_max) then {
	_batch=_batch+1;
	KRON_AID = player addAction[format["Create Objects (batch #%1 - delete old)",_batch+1],"Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj,_labelsettings,_batch,true]];
	KRON_AIDD = player addAction[format["Create Objects (batch #%1 - keep old)",_batch+1],"Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj,_labelsettings,_batch,false]];
} else {
	KRON_AID = player addAction["Create Objects (delete old)","Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj,_labelsettings,0,true]];
	KRON_AIDD = player addAction["Create Objects (keep old)","Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj,_labelsettings,0,false]];
};