/*
[_objectID,_objectUID] call server_deleteObj;
*/
private["_id","_uid","_key"];
_id 	= _this select 0;
_uid 	= _this select 1;

if (isServer) then {
	//remove from database
	if (parseNumber _id > 0) then {

		_key = format["CHILD:643:%1:",_id];
		//_key = format["CHILD:304:%1:",_id];
		diag_log format["SDO: Child 643 Deleted ID: %1",_id];
		_key call server_hiveWrite;
		
	} else  {
		//Send request
		_key = format["CHILD:643:%1:",_id];
		//_key = format["CHILD:310:%1:",_uid];
		_key call server_hiveWrite;
		//diag_log format["SDO: Deleted by UID: %1",_uid];
	};
};