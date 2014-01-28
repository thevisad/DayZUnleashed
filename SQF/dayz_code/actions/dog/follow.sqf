private["_array","_handle","_whistle","_dog"];
_array = _this select 3;
_handle = _array select 0;
_whistle = _array select 1;
diag_log("Follow: _array " + str(_array));
diag_log("Follow: _handle " + str(_handle));
diag_log("Follow: _whistle " + str(_whistle));

_dog = _handle getFSMVariable "_dog";
diag_log("Follow: _dog " + str(_dog));
if(_whistle) then {
	[nil,player,rSAY,["dog_callBack", 120]] call RE;
};

sleep 1;

if (_dog distance player <= 900) then {
_handle setFSMVariable ["_command","return"];
};

