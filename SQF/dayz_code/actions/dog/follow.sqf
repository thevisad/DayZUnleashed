private["_array","_handle","_whistle","_dog"];
_array = _this select 3;
_handle = _array select 0;
_whistle = _array select 1;
_dog = _handle getFSMVariable "_dog";

if (unleashed_debug == 1) then {
	diag_log(format["DF: _dog:%1 _array:%2 _handle:%3 _whistle:%4",_dog, _array,_handle, _whistle]);
};

if(_whistle) then {
	[nil,player,rSAY,["dog_callBack", 120]] call RE;
};

sleep 1;

if (_dog distance player <= 900) then {
_handle setFSMVariable ["_command","return"];
};

