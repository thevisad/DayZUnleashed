/*
	Get Loot Position
	Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
*/
private ["_target","_type","_ppos","_veh","_worldPos"];

_new = (_this select 3) select 0;

if (isNil "Base_Z_height") then {
	Base_Z_height = 0.5;
};

if(_new == "select") then {
	if(!isnull(cursortarget)) then {
		DZE_target = cursortarget;
		hintsilent str(typeOf DZE_target);
	};
};

if (isnil "DZE_target") then {
	_target = nearestObject [player, "Building"];
} else {
	_target = DZE_target;
};

_type = toLower(typeOf _target);

_zheightChanged = false;

switch (_new) do
{
	case "up":			{Base_Z_height = Base_Z_height + 0.1; _zheightChanged = true;};
	case "down":		{Base_Z_height = Base_Z_height - 0.1; _zheightChanged = true;};
	case "up_small":	{Base_Z_height = Base_Z_height + 0.01; _zheightChanged = true;};
	case "down_small":	{Base_Z_height = Base_Z_height - 0.01; _zheightChanged = true;};
};

if(_new == "preview") then {
	DZE_vehTarget = createVehicle ["Sign_arrow_down_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
	DZE_vehTarget attachto [player,[0,1.5,Base_Z_height]];
};

if(_new == "preview_off") then {
	detach DZE_vehTarget;
	deleteVehicle DZE_vehTarget;
};

if (!isnull(DZE_vehTarget) and _zheightChanged) then {
	detach DZE_vehTarget;
	DZE_vehTarget attachto [player,[0,1.5,Base_Z_height]];
};

_pos = player modeltoworld [0,1.5,Base_Z_height];
_ppos = _target worldToModel _pos;
_worldPos = _pos;

diag_log text format ["DEBUG %1 : %2", _type,_worldPos];

_veh = createVehicle ["Sign_arrow_down_EP1", _worldPos, [], 0, "CAN_COLLIDE"];
_veh setPos _worldPos;

diag_log text format ["%1 : %2", _type,_ppos];

copyToClipboard format ["%1 : %2", _type,_ppos];

hintsilent "SAVED";

sleep 5;

deleteVehicle _veh;