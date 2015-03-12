// =========================================================================================================
//  Object Browser
//  Version: 1.2.0
//  Author: Kronzky (www.kronzky.info / kronzky@gmail.com)
// =========================================================================================================
//
// objects that are defective
_buggy = ["Land_parez_str_test","some_other_bad_object","etc"];

// =========================================================================================================

createDialog "Dlg1";
_ctrl1=60;
_ctrl2=61;
KRON_dddir=1;
_defclass="Default";
//allowMovementControlsInDialog true;


KRON_relpos = {private["_p","_d","_a","_x","_y","_xout","_yout"];_p=_this select 0; _x=_p select 0; _y=_p select 1; _z=_p select 2; _d=_this select 1; _a=_this select 2; _xout=_x + sin(_a)*_d; _yout=_y + cos(_a)*_d;[_xout,_yout,_z]};
KRON_addangle = {private["_a","_d"]; _a=_this select 0; _d=_this select 1; _a=_a+_d; if (_a<0) then {_a=_a+360}; _a=_a mod 360; _a};
_makeobj = {private["_o","_p","_x","_y","_z","_d","_o1"];_o=_this select 0; _p=_this select 1; _x=_p select 0; _y=_p select 1; _z=_p select 2; _d=_this select 2; _o1 = _o createVehicle [_x,_y,_z]; _o1 setDir _d; _o1 setPos [_x,_y,_z]; _o1 setVectorUp [0,0,1]; _o1};
//["cfgVehicles",_base]
_selection = _this select 3;
_newgroup = _selection select 0;
diag_log(format["CD: NewGroup : %1, KRON_rootclass: %2",_newgroup,KRON_rootclass]);
if ((_newgroup)!= KRON_rootclass) then {
	_defclass = switch (_newgroup) do	{case "cfgVehicles":{"All"}; case "cfgWeapons":{"Default"}; case "cfgNonAiVehicles": {"All"};};
};
diag_log(format["CD: Defclass : %1",_defclass]);
KRON_rootclass=_newgroup;

_chkobj = {
	_currclass=format["%1",_this select 0];
	_showclass=(configfile >> KRON_rootclass >> _currclass);
	titletext ["reading...","plain",0.1];
	sleep .3;
	_totobj = count (configfile >> KRON_rootclass);
	_grandparent=0;
	KRON_objlist=[];
	for [{_i=0}, {_i<_totobj}, {_i=_i+1}] do {
		_obj=(configfile >> KRON_rootclass) select _i;
		if (isClass (_obj)) then {
			_parent = inheritsFrom _obj;
				if (_parent==_showclass) then {
					_grandparent=inheritsFrom _parent;
					_haschildren=false;
					
					for [{_j=0}, {_j<_totobj}, {_j=_j+1}] do {
						_obj1=(configfile >> KRON_rootclass) select _j;
						if (isClass (_obj1)) then {
							_parent1 = inheritsFrom _obj1;
							if (_parent1==_obj) then {_haschildren=true};
						};
					};
					
					_dn = getText (_obj >> "displayName");
					_displayname = "";
					for [{_s=0}, {_s<count _obj}, {_s=_s+1}] do {
						if (isText(_obj select _s)) then {
							if (getText(_obj select _s)==_dn) then {_displayname=_dn};
						};
					};
					_scope = getNumber(_obj >> "scope");
					_model = getText (_obj >> "model");
					_hasmodel = if ((_scope!=0) && (_model!="") && (_model!="\core\default\default.p3d") && (_model!="bmp")) then {true} else {false};
					if (_haschildren || _hasmodel) then {
						KRON_objlist=KRON_objlist+[[configName _obj,_haschildren,_displayname,_hasmodel]];
					};
				};
			};
	};
	
	lbClear _ctrl1;
	lbAdd [_ctrl1,format["%1",configName _grandparent]];
	lbAdd [_ctrl1,format["%1",configName _showclass]];
	lbAdd [_ctrl1,""];
	{
		_more=if (_x select 1) then {"..."} else {""}; 
		lbAdd [_ctrl1,format["%1",(_x select 0)+_more]];
	} forEach KRON_objlist;
	sleep .1;
	titletext ["","plain"];
};

// ----------------------------------------------------------------------------------------------------

[_defclass] call _chkobj;
lbSetCurSel [_ctrl1, 1];

_lstidx=-1;
_base="";
while {ctrlVisible _ctrl1} do {
	_index = lbCurSel _ctrl1;
	if (_index!=_lstidx) then {
		KRON_clsname=lbText [_ctrl1, _index];
		if (_index>2) then {
			_sel = KRON_objlist select (_index-3);
			KRON_clsname = _sel select 0; 
			KRON_dname=KRON_clsname;
			_isclass = _sel select 1;
			if (_isclass) then {
				[KRON_clsname] call _chkobj;
				lbSetCurSel [_ctrl1, 1];
			};				
			if !(isNil("obj")) then {deleteVehicle obj};
			if (_sel select 3) then {
				if ((_buggy find KRON_clsname)==-1) then {
					if (KRON_rootclass!="cfgWeapons") then {
						obj=[KRON_clsname,getPos mm,getDir mm] call _makeobj;
					} else {
						obj=["weaponholder",getPos mm,getDir mm] call _makeobj;
						obj addweaponCargo [KRON_clsname,1];
						if (KRON_GIVEWEAPON) then {
							closeDialog 50;
							sleep .5;
							removeAllWeapons player;
							hint "You may have to switch or reload weapons to access the new one.";
							mag = (getArray(configfile >> KRON_rootclass >> KRON_clsname >> "magazines")) select 0;
							player addMagazine mag;
							player addMagazine mag;
							player addWeapon KRON_clsname;
						};
					};
				};
				if ((_sel select 2)!="") then {KRON_dname=KRON_clsname+" / """+(_sel select 2)+""""};
			};
		} else {
			if (KRON_clsname!="") then {
				[KRON_clsname] call _chkobj;
				lbSetCurSel [_ctrl1, 1];
			};
		};
		ctrlSetText [_ctrl2, KRON_dname];	
		_lstidx=lbCurSel _ctrl1;
	};
	_base=lbText [_ctrl1, 1];
	sleep .1;
};


