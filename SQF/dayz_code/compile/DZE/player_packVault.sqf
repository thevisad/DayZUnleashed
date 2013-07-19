/*
[_obj] spawn player_packVault;
*/
private["_obj","_ownerID","_objectID","_objectUID","_alreadyPacking","_location1","_location2","_dir","_pos","_bag","_holder","_weapons","_magazines","_backpacks","_objWpnTypes","_objWpnQty","_countr"];

if(CodeInProgress) exitWith { cutText ["That Safe is already being packed." , "PLAIN DOWN"]; };
CodeInProgress = true;

_obj = _this;

// Silently exit if object no longer exists
if(isNull _obj or !(alive _obj)) exitWith { CodeInProgress = false; };

// Test cannot lock while another player is nearby
_playerNear = {isPlayer _x} count (player nearEntities ["CAManBase", 12]) > 1;
if(_playerNear) exitWith { CodeInProgress = false; cutText ["Cannot pack vault while another player is nearby." , "PLAIN DOWN"];  };

_ownerID = _obj getVariable["CharacterID","0"];
_objectID 	= _obj getVariable["ObjectID","0"];
_objectUID	= _obj getVariable["ObjectUID","0"];

player removeAction s_player_packvault;
s_player_packvault = 1;

if((_ownerID != dayz_combination) and (_ownerID != dayz_playerUID)) exitWith { CodeInProgress = false; s_player_packvault = -1; cutText ["You cannot pack this Safe, you do not know the combination.", "PLAIN DOWN"];};

_alreadyPacking = _obj getVariable["packing",0];

if (_alreadyPacking == 1) exitWith {CodeInProgress = false; s_player_packvault = -1; cutText ["That Safe is already being packed." , "PLAIN DOWN"]};
_obj setVariable["packing",1];

cutText ["Packing Safe move from this position to cancel within 5 seconds.", "PLAIN DOWN"];
sleep 1; 
_location1 = getPosATL player;
sleep 5;
_location2 = getPosATL player;
	
if(_location1 distance _location2 > 0.1) exitWith {
	cutText ["Packing Safe canceled." , "PLAIN DOWN"];
	_obj setVariable["packing",0];
};


_dir = direction _obj;
_pos = _obj getVariable["OEMPos",(getposATL _obj)];

if(!isNull _obj and alive _obj) then {

	player playActionNow "Medic";
	[player,"tentpack",0,false] call dayz_zombieSpeak;
	sleep 3;

	_weapons = 		getWeaponCargo _obj;
	_magazines = 	getMagazineCargo _obj;
	_backpacks = 	getBackpackCargo _obj;
	
	// Set down vault "take" item
	_bag = createVehicle ["WeaponHolder_ItemVault",_pos,[], 0, "CAN_COLLIDE"];
	_bag setdir _dir;
	player reveal _bag;
	
	// Remove from database
	PVDZ_obj_Delete = [_objectID,_objectUID];
	publicVariableServer "PVDZ_obj_Delete";
	if (isServer) then {
		PVDZ_obj_Delete call server_deleteObj;
	};
	
	// Delete original
	deleteVehicle _obj;

	// Empty weapon holder 
	_holder = "WeaponHolder" createVehicle _pos; 
	
	//Add weapons
	_objWpnTypes = 	_weapons select 0;
	_objWpnQty = 	_weapons select 1;
	_countr = 0;
	{
		_holder addweaponcargoGlobal [_x,(_objWpnQty select _countr)];
		_countr = _countr + 1;
	} forEach _objWpnTypes;
	
	//Add Magazines
	_objWpnTypes = _magazines select 0;
	_objWpnQty = _magazines select 1;
	_countr = 0;
	{
		_holder addmagazinecargoGlobal [_x,(_objWpnQty select _countr)];
		_countr = _countr + 1;
	} forEach _objWpnTypes;

	//Add Backpacks
	_objWpnTypes = _backpacks select 0;
	_objWpnQty = _backpacks select 1;
	_countr = 0;
	{
		_holder addbackpackcargoGlobal [_x,(_objWpnQty select _countr)];
		_countr = _countr + 1;
	} forEach _objWpnTypes;
	
	cutText ["Your Safe has been packed", "PLAIN DOWN"];

	s_player_packvault = -1;
};
CodeInProgress = false;