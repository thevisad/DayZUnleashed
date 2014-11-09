
// mark a lootable house via a particle beam
_markHouse = {
	private ["_obj","_off","_pos","_color","_rgb"];
	_obj = _this select 0;
	if (isNull _obj) exitWith {};
	_pos = _this select 1;
	_color = _this select 2;
	_rgb = switch (_color) do {
	  case "ColorBlack": {[0,0,0,1]}; 
	  case "ColorBlue": {[0,0,1,1]}; 
  	case "ColorRed": {[1,0,0,1]}; 
  	case "ColorYellow": {[1,1,0,1]}; 
	  default {[0,1,0,1]};
  };

	waitUntil {
		drop ["\ca\data\koulesvetlo","","Billboard",100,10, _pos,[0,0,0], 0,16.375,5,0, [1],[_rgb],[0], 0,0,"","",""];
		(isNull _obj)
	};
};


_makeMarker = {
	private ["_pos","_type","_color","_size","_idx","_marker"];
	_pos = _this select 0;
	_type = _this select 1;
	_color = _this select 2;
	_size = _this select 3;
	_text = _this select 4;
	_idx = _this select 5;
	
	_marker = format["mrk_%1",_idx];
	_marker = createMarker [_marker,_pos];
	_marker setMarkerShape "ICON";
	_marker setMarkerType _type;
	_marker setMarkerColor _color;
	_marker setMarkerSize [_size,_size];	
	if (_text!="") then {
		_marker setMarkerText _text;
	};
	_idx = _idx + 1;
	_idx
};