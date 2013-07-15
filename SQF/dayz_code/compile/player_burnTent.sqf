/*
[_obj] spawn player_packTent;
*/
private["_objectID","_objectUID","_obj","_ownerID","_dir","_pos","_bag","_holder","_weapons","_magazines","_backpacks","_objWpnTypes","_objWpnQty","_countr","_id"];
_obj = _this;
_ownerID 	= _obj getVariable["CharacterID","0"];
_objectID 	= _obj getVariable["ObjectID","0"];
_objectUID	= _obj getVariable["ObjectUID","0"];
canAbort = true;

	player playActionNow "Medic";
	sleep 7;
	
	player removeAction s_player_burntent;
	s_player_burntent = -1;

	[player,"tentpack",0,false] call dayz_zombieSpeak;
	//sleep 3;
	
	dayzFire = [_obj,5,time,false,true];
	publicVariable "dayzFire";
	_id = dayzFire spawn BIS_Effects_Burn;
	 
	_obj setDamage 2;
	
	["dayzDeleteObj",[_objectID,_objectUID]] call callRpcProcedure;	
	//deleteVehicle _obj;
	canAbort = false;