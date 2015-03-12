/*
finds classes that match the specifications

_baseclass="cfgVehicles" // root class name
_showclass=["vbs2_Civilian","Civilian"] // either single string or array of strings
_scopelst=[0,1,2];	// scope of class (either a number or an array)
_hasname=true;		// must have display name 
_hasmodel=false;	// must have model 

_classlist = [_baseclass,_showclass,_scopelst,_hasname,_hasmodel] call KRON_getClass;
returns array with maching class names

Import into calling script via: 
  #include "showclass.sqf";
*/

KRON_getClass = {
	private ["_baseclass","_listclass","_clslist","_found","_match","_class","_thisclass","_dn","_scope","_model"];
	_baseclass = _this select 0;
	_listclass = _this select 1;
	if (typeName _listclass=="STRING") then {_listclass=[_listclass]};
	_scopelst = _this select 2;
	if (typeName _scopelst=="SCALAR") then {_scopelst=[_scopelst]};
	_hasname = _this select 3;
	_hasmodel = _this select 4;
	_clslist = configFile >> _baseclass;
	_found=[];
	for "_i" from 0 to (count _clslist)-1 do {
		_class = _clslist select _i;
		_className = configName(_class);
		if (isClass _class) then {
			_match=false;
			_parentName = "x";
			_thisclass = _class;
			if ({_x==_className} count _listclass>0) then {
				_match=true;
			} else {
				while {(!_match) && (_parentName!="AllVehicles") && (_parentName!="All") && (_parentName!="")} do {
					_parent = inheritsFrom _thisclass;
					_parentName = configName(_parent);
					if ({_x==_parentName} count _listclass>0) then {
						_match=true;
					} else {
						_thisclass = _parent;
					};
				};
			};
		};
		if (_match) then {	
			_dname = getText (_class >> "displayName");
			_scope = getNumber(_class >> "scope");
			_model = getText (_class >> "model");
			if ((!_hasname || _dname!="") && (_scope in _scopelst) && (!_hasmodel || _model!="")) then {
				_found = _found + [configName _class];
			};
		};
	};
	_found
};
