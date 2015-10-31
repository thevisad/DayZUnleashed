private ["_lootMaxRadius","_type","_iPos","_iPosZ","_random","_key1","_data1","_result1","_status1","_lootCount","_lootArray1","_lootArray2","_val","_data","_status","_adminArray","_x0","_x1"];

_lootMaxRadius = 0.2;
_type = _this select 0;
_iPos = _this select 1;
_iPosZ = _iPos select 2;
/*
diag_log ("SSL: _type " + str(_type));
diag_log ("SSL: _iPos " + str(_iPos));
diag_log ("SSL: _iPosZ " + str(_iPosZ));
*/
_lootArray = [];
_lootArray1 = [];
_lootArray2 = [];

if((isNil "_iPosZ") OR {( _iPosZ < 0)}) then { _iPos = [_iPos select 0,_iPos select 1,0]; };

if(isServer) then {
	_random = (floor(random 4) + 1);
	_key1 = format["CHILD:230:%1::::%2:", _type,_random ];
	_data1 = "HiveEXT" callExtension _key1;

	_result1 = call compile format ["%1", _data1];
	_status1 = _result1 select 0;
	_lootCount = 0;

	if (_status1 == "LootStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
			_lootArray1 set [count _lootArray1, _result1];
			//_lootArray2 = _lootArray2 + _result1;
			_lootCount = _lootCount + 1;
		};
		diag_log ("SSL: Found " + str(_lootCount) + " Loot!");
	};
	{
		[_x select 0, _x select 1, _iPos, _lootMaxRadius] call spawn_loot;
	} forEach _lootArray1;
};
