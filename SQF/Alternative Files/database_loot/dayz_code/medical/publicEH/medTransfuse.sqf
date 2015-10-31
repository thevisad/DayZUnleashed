// animHealed.sqf
private["_array","_unit","_medic","_amount","_display","_control","_lowBlood"];
disableserialization;
_array = _this; //_this select 0;
_unit = _array select 0;
_medic = _array select 1;
_amount = _array select 2;
_classTransfusing = _array select 3;

_TransfusionInfection = false;
_rndInfection = (random 50);
_biotic_level    = [player,"biotics"] call DZU_fnc_getVariable;

if((_biotic_level > 0) && (_rndInfection > 25))then{
   _rndInfection = floor(random 25);
};

if (_rndInfection > _classTransfusing ) then {
	_TransfusionInfection = true;
};

if (_unit == player) then {
	if ((r_player_blood + _amount) >= r_player_bloodTotal) then {
		r_player_blood = r_player_bloodTotal;
		player setVariable["USEC_BloodQty",r_player_bloodTotal,true];
	} else {
		r_player_blood = r_player_blood + _amount;
		player setVariable["USEC_BloodQty",r_player_blood,true];
	};

	if (((r_player_blood / r_player_bloodTotal) >= 0.35) and (r_player_lowblood)) then {
		r_player_lowblood = false;
		player setVariable["USEC_lowBlood",false,true];
	};

	if (_TransfusionInfection) then {
		r_player_infected = true;
		player setVariable["USEC_infected",true,true];
	};

	//Ensure Control is visible
	_display = uiNamespace getVariable 'DAYZ_GUI_display';
	_control = _display displayCtrl 1300;
	_control ctrlShow true;
};
if (isServer) then {
	_unit setVariable["medForceUpdate",true];
};
