
// ======================================================================================
//  Vehicle Info
//  Version: 2.4.1
//  Author: Kronzky (www.kronzky.info / kronzky@gmail.com)
// ======================================================================================
//
//  Gives turret and user action information for nearest vehicle or objects,
//  and gives the option to activate it via the action menu.
//
//  Place into your mission folder, and call via:
//    nul=[] execVM "vehinfo.sqf"
//
//  By default, only vehicles are shown. If you also want to see information about
//  objects (e.g. buildings), initialize the script like this:
//    nul=["static"] execVM "vehinfo.sqf"
//
//  The included file "KRON_Strings.sqf" also has to be in the same folder.
//
// ======================================================================================

_sepline = "-----------------------------------------------------------------\n";

if (count _this>1) then {
	_args = _this select 3;
	_vehicle = _args select 0;
	{unassignVehicle _x; _x setPos [0,0]; deleteVehicle _x} forEach (crew _vehicle);
	_pos1 = _args select 1;
	_pos2 = _args select 2;
	if (_pos2==-1) then {
		player moveInTurret [_vehicle,[_pos1]];
		player sidechat format["player moveInTurret [_vehicle,%1]",_pos1];
	} else {
		if (_pos2==-2) then {
			_action = [_pos1,"_this","player"] call KRON_Replace;
			_action = [_action,"this","_vehicle"] call KRON_Replace;
			call compile _action;
			player sidechat _action;
		} else {
			player moveInTurret [_vehicle,[_pos1,_pos2]];
			player sidechat format["player moveInTurret [_vehicle,[%1,%2]]",_pos1,_pos2];
		};
	};

} else {
	
	_actionIDs = [];
	_lstveh = player;
	_lastpos = getPos player;
	_refresh = 0;

	_classes = ["AllVehicles"];
	if (typename (_this select 0)=="STRING") then {
		_classes = _classes + [_this select 0];
	};
	
	while {true} do {
		_vehlist = nearestObjects [player,_classes,20];
		_veh = objNull;
		{
			if (count (configFile >> "CfgVehicles" >> typeof _x >> "turrets")>0) exitWith {
				_veh = _x;
			};
			if (count (configFile >> "CfgVehicles" >> typeof _x >> "UserActions")>0) exitWith {
				_veh = _x;
			};
		}forEach _vehlist;

		if (!(isNull _veh) && (((velocity player select 0)>0) || (count _actionIDs==0))) then {
			{player removeAction _x} forEach _actionIDs;
			_actionIDs=[];

			_dn = getText (configFile >> "CfgVehicles" >> typeof _veh >> "displayName");
			_out = format["Vehicle: %1\n(%2)\n",typeof _veh,_dn];
			_out=_out+_sepline;
				
			_lstveh = _veh;
			_cfg = configFile >> "CfgVehicles" >> typeof _veh >> "turrets";
			_tc = count _cfg;
			if (_tc>0) then {
				_mtc = count _cfg; // number of main turrets
				_out = _out + format["Main Turrets: %1\n",count _cfg];
				
				for "_mti" from 0 to _mtc-1 do {
					_mt = (_cfg select _mti);
					_st = _mt >> "turrets";
					_stc = count _st; // sub-turrets in current main one
					_out = _out + format["Turret #%1, %2: [%1]\n",_mti,configName(_mt)];
					_weaps = getArray(_mt >> "weapons");
					_out = _out + format[" Weapons:\n"];
					{_out = _out + format["  %1\n",_x]}forEach _weaps;
					_aid = player addAction [format["MoveIn: %1 [%2]",configName(_mt),_mti],"vehinfo.sqf",[_veh,_mti,-1]];
					_actionIDs=_actionIDs + [_aid];
					for "_sti" from 0 to _stc-1 do {
						_stp = (_st select _sti);
						_out = _out + format["Turret #%1, %2: [%1,%3]\n",_mti,configName(_stp),_sti];
						_weaps = getArray(_stp >> "weapons");
						_out = _out + format[" Weapons:\n"];
						{_out = _out + format["  %1\n",_x]}forEach _weaps;
						_aid = player addAction [format["MoveIn: %1 [%2,%3]",configName(_stp),_mti,_sti],"vehinfo.sqf",[_veh,_mti,_sti]];
						_actionIDs=_actionIDs + [_aid];
					};
				};
			};

			_cfg = configFile >> "CfgVehicles" >> typeof _veh >> "UserActions";
			_ac = count _cfg;
			if (_ac>0) then {
				_mtc = count _cfg; // number of user actions
				if (_tc>0) then {_out=_out+_sepline};
				_out = _out + format["User Actions: %1\n",count _cfg];
				
				_neardist=9999;
				for "_mti" from 0 to _mtc-1 do {
					_mt = (_cfg select _mti);
					_st = _mt >> "UserActions";
					_selectionPos = _veh modelToWorld (_veh selectionPosition getText(_mt >> "position"));
					_dist = player distance _selectionPos;
					if (_dist<_neardist) then {
						_neardist=_dist;
					};
				};
				for "_mti" from 0 to _mtc-1 do {
					_mt = (_cfg select _mti);
					_st = _mt >> "UserActions";
					_stc = count _st; // available actions
					_statement = getText(_mt >> "statement");
					_displayname = getText(_mt >> "displayname");
					_selection = getText(_mt >> "position");
					_selectionPos = _veh modelToWorld (_veh selectionPosition _selection);
					_dist = player distance _selectionPos;
					if (abs(_dist-_neardist)<.5) then {
						_out = _out + format["%1: %2 [%3]\n",_mti+1,_displayname,_selection];
						_aid = player addAction [format["Action: %1",_displayname],"vehinfo.sqf",[_veh,_statement,-2]];
						_actionIDs=_actionIDs + [_aid];
					};
				};
			};			
			
			hint _out;
		} else {
			if (isNull _veh) then {
				hint "No objects/vehicles with turrets or user actions in range.";
			};
		};
		sleep 1;
		_refresh=_refresh+1;
		if (_refresh>20) then {_refresh=0; _lstveh=objNull};
	};
};