#include "functions.hpp"

clearRadio;


// we're still scanning, so don't start another search
if (DXSP_Searching) exitWith {};
DXSP_Searching = true;


// the position around which to check
_orgpos = _this select 0;
_orgpos set [2,0];
_showinfo = if (count _this>1) then {_this select 1} else {false};
_findlakes = if (count _this>2) then {_this select 2} else {false};


"mrk_player" setMarkerPos _orgpos;

_radius = 1000;
// find all buildings nearby
_buildings = nearestObjects [_orgpos,["HouseBase"],_radius];

// delete any existing markers
_idx = 0;
while {true} do {
	_idx = _idx + 1;
	_marker = format["mrk_%1",_idx];
	if (getMarkerPos _marker select 0==0) exitWith {};
	deleteMarker _marker;
};

// delete any existing indicator cubes
{deleteVehicle _x}forEach (allMissionObjects "CubeHelper");



_dirTo = {
	private ["_pos1","_pos2","_ret"];
	
	_pos1 = _this select 0;
	_pos2 = _this select 1;
	
	if(typename _pos1 == "OBJECT") then {_pos1 = getpos _pos1};
	if(typename _pos2 == "OBJECT") then {_pos2 = getpos _pos2};
	
	_ret = ((_pos2 select 0) - (_pos1 select 0)) atan2 ((_pos2 select 1) - (_pos1 select 1));
	_ret = _ret % 360; 
	if (_ret < 0) then {_ret = 360 + _ret};
	_ret
};
	
	
// go through all found buildings
titleText ["Searching for buildings...","plain"];

_playerdir = 999;
_waterFound = false;
_idx = 1;
{
	_bldg = _x;
	_pos = getPos _bldg;
	_bldgType = typeOf _bldg;

	_bbox = boundingBox _bldg;
	_height = ((_bbox select 1) select 2) - ((_bbox select 0) select 2);

	// indicate water pumps
	if ((_bldgType isKindOf "Land_pumpa") || (_bldgType isKindOf "Land_water_tank")) then {
		_idx = [_pos,"START","ColorBlue",1,"",_idx] call _makeMarker;	
		_nul = [_bldg,[_pos select 0,_pos select 1,_height+10],"ColorBlue"] spawn _markHouse;
		_waterFound = true;
	};

	// indicate fuel sources (later)
	//if (_bldgType isKindOf "Land_Ind_TankSmall") || (_bldgType isKindOf "Land_fuel_tank_big") || (_bldgType isKindOf "Land_fuel_tank_stairs") || (_bldgType isKindOf "Land_wagon_tanker")) then {};

	
	// get the DayZ configuration entries for the building
	_config = configFile>>"CfgBuildingLoot">>_bldgType;

	_zombieChance = 0;
	if (isNumber (_config>>"zombieChance")) then {
		_zombieChance = getNumber (_config>>"zombieChance");
	};
	_maxRoaming = 0;
	if (isNumber (_config>>"maxRoaming")) then {
		_maxRoaming = getNumber (_config>>"maxRoaming");
	};
	if (_maxRoaming==0) then {
		_zombieChance = 0;
	};
	_lootChance = 0;
	if (isNumber (_config>>"lootChance")) then {
		_lootChance = getNumber (_config>>"lootChance");
	};
	_lootPos = [];
	if (isArray (_config>>"lootPos")) then {
		_lootPos = getArray (_config>>"lootPos");
	};
	if (count _lootPos==0) then {
		_lootChance = 0;
	};

	// if there's a chance of zombies or loot for the buildings,
	// then create a marker and indicators
	if ((_zombieChance>0) || (_lootChance>0)) then {
		// point the player towards the closest building
		if (_playerdir==999) then {
			_playerdir = [player,_bldg] call _dirTo;
			player setDir _playerdir;
		};

		// create a marker for each building with the zombie/loot chances
		_color = "ColorGreen";
		if (count _lootPos>10) then {_color = "ColorYellow"};
		if (count _lootPos>20) then {_color = "ColorRed"};
		_text = "";
		if (_showinfo) then {
			//_text = format["%1/%2 - %3/%4",_zombieChance,_maxRoaming,_lootChance,count _lootPos];
			_text = format["%1",_bldgType];
		};
		_idx = [_pos,"DOT",_color,2,_text,_idx] call _makeMarker;	

		// create cubes to indicate the loot places
		if (count _LootPos>0) then {
			_xCenter = 0;
			_yCenter = 0;
			_obj = objNull;
			{
				_xPos = _bldg modelToWorld _x;
				_obj = "CubeHelper" createVehicle _xPos;
				_xCenter = _xCenter + (_x select 0);
				_yCenter = _yCenter + (_x select 1);
				_obj setPos _xPos;
			}forEach _lootPos;
			// find the center of the loot places
			_xCenter = _xCenter / count _lootPos;
			_yCenter = _yCenter / count _lootPos;
			
			// create a beam to indicate the lootable buildings
			_nul = [_obj,_bldg modelToWorld [_xCenter,_yCenter,_height+10],_color] spawn _markHouse;
		};
	};
	
}forEach _buildings;


// find lakes
if (_findLakes) then {
	titleText ["Searching for loot...","plain"];
	_objects = nearestObjects [_orgpos,[],1000];
	_total = count _objects;
	_start = time;
	for "_i" from 0 to _total-1 do {
		_object = _objects select _i;
		if ([str _object,"pond"] call KRON_StrInStr) then {
			_nul = [_object,getPos _object,"ColorBlue"] spawn _markHouse;
			_idx = [getPos _object,"START","ColorBlue",1,"",_idx] call _makeMarker;	
		};
		if (time-_start>2) then {
			titleText [format["Searching for loot, %1%2 done",round (_i*100/_total),"%"],"plain"];
			_start = time;
		};
	};
};


LootLastPos = _orgpos;
player setPos _orgpos;

DXSP_Searching = false;

titleText ["","plain"];
