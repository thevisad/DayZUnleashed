//Function: DZU_fnc_KeyMapADD;
private["_array","_key","_value","_needle"];
_array=[[],[],0];                           //Server sync packet including checksum in 3 data position. [@0==@1==@2] == valid packet
_key = _this select 0;
_value = _this select 1;

if((count _this) > 2) then {                //Update existing KeyMap
    _array= (_this select 2);
};

   _needle = ((_array select 0) find _key); //Search for existing key
if(_needle > -1) then{                      //Key already exists, update value.
  (_array select 1) set [_needle,_value];          
} else{                                     //Create new Key and Value.
  (_array select 1) set [count (_array select 0),_value];
  (_array select 0) set [count (_array select 0),_key];
};

_array set [2,(count (_array select 0))]; //Update Checksum

_array 
