/*
[_objectID,_objectUID] call server_deleteObj;
*/
private["_id","_uid","_key"];
_id 	= _this select 0;
_uid 	= _this select 1;

if (isServer) then {
	_key = format["CHILD:643:%1:",_id];
	if (unleashed_debug == 1) then { diag_log format["SDO: Child 643 Deleted ID: %1",_id];};
	_key call server_hiveWrite;
};