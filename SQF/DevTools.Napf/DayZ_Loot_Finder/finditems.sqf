disableSerialization;

#include "functions.hpp"

clearRadio;

if (DXSP_Searching) exitWith {};
DXSP_Searching = true;


createDialog "SelectObject";
waitUntil {dialog};

_display = findDisplay 16700;
_typelist = _display displayCtrl 16700;
_objlist = _display displayCtrl 16701;
_objhead = _display displayCtrl 16702;
_objpic = _display displayCtrl 16703;
_objdesc = _display displayCtrl 16704;


_objTypes = [
	["Objects",["military","generic","object","magazine"]],
	["Weapons","weapon"]
];

_getObjInfo = {
	private ["_class","_type","_configSource","_config","_dName","_preview","_desc"];
	_class = _this select 0;
	_type = _this select 1;
	if (typeName _type=="ARRAY") then {
		_type = _type select 1;
	};
	_configSource = "CfgVehicles";
	switch (_type) do {
		case "weapon": {
			_configSource = "CfgWeapons";
		};
		case "generic": {
			_configSource = "CfgWeapons";
		};
		case "military": {
			_configSource = "CfgWeapons";
		};
		case "magazine": {
			_configSource = "CfgMagazines";
		};
	};
	_config = configFile>>_configSource>>_class;
	_dName = getText (_config>>"displayName");	
	if (_dName=="") then {
		_dName = format["[%1]",_class];
	};
	_preview = getText (_config>>"picture");	
	if (_preview=="picturestaticobject") then {
		_preview = "";
	};
	_desc = getText (_config>>"descriptionShort");	
	[_dName,_preview,_desc]
};


_weapons = [];
_objects = [];
_objectTypes = [];
for "_i" from 0 to (count (configFile>>"CfgBuildingLoot"))-1 do {
	_config = (configFile>>"CfgBuildingLoot") select _i;
	if (isArray (_config>>"ItemType")) then {
		_items = getArray (_config>>"ItemType");
		{
			_itemclass = _x select 0;
			_itemtype = _x select 1;
			if (_itemtype=="weapon") then {
				if ((_itemclass!="") && !(_itemclass in _weapons)) then {
					_idx = _objlist lbAdd _itemclass;
					_weapons = _weapons + [_itemclass];
				};
			} else {
				if ((_itemclass!="") && !(_itemclass in _objects)) then {
					_idx = _objlist lbAdd _itemclass;
					_objects = _objects + [_itemclass];
					_objectTypes = _objectTypes + [_itemtype];
				};
			};
		}forEach _items;
	};		
};
for "_i" from 0 to (count (configFile>>"CfgLoot"))-1 do {
	_config = (configFile>>"CfgLoot") select _i;
	_items = (getArray _config) select 0;
	{
		_itemclass = _x;
		if !(_itemclass in _objects) then {
			_objects = _objects + [_itemclass];
			_objectTypes = _objectTypes + [[configName _config,"magazine"]];
		};
	}forEach _items;
};

		
lbClear _typelist;
lbClear _objlist;
sleep .1;
{
	_idx = _typelist lbAdd (_x select 0);
}forEach _objTypes;
_typelist lbSetCurSel 0;


_type = [];
_lasttype = -1;
_itemtype = "";
_itemclass = "";
_itemname = "";
_lastobj = -1;
_objtype = "";
findit = false;

while {dialog} do {
	
	// a new object type has been selected
	_typeIdx = lbCurSel _typelist;
	if (_typeIdx!=_lasttype) then {
		_lasttype = _typeIdx;
		_type = (_objTypes select _typeIdx) select 1;
		lbClear _objlist;
		if (typeName _type=="ARRAY") then {
			for "_i" from 0 to (count _objects)-1 do {
				_name = ([_objects select _i,_objectTypes select _i] call _getObjInfo) select 0;
				_idx = _objlist lbAdd _name;
				_objlist lbSetData [_idx,str _i];
				_objtype = "object";
			};
		} else {
			_classlist = switch (_type) do {case "weapon": {_weapons}; case "vehicle": {_vehicles}; case "animal": {_animals}};
			for "_i" from 0 to (count _classlist)-1 do {
				_name = ([_classlist select _i,_type] call _getObjInfo) select 0;
				_idx = _objlist lbAdd _name;
				_objlist lbSetData [_idx,str _i];
				_objtype = _type;
			};
		};
		lbSort _objlist;
		_lastobj = -1;
		_objlist lbSetCurSel 3;
	};

	// an object name has been clicked in the listbox, so show the picture and description
	_objIdx = lbCurSel _objlist;
	if (_objIdx!=_lastobj) then {
		_lastobj = _objIdx;
		_idx = parseNumber (_objlist lbData _objIdx);
		if (_lasttype==0) then {
			_itemclass = _objects select _idx;
			_itemtype = _objectTypes select _idx;
			_objtype = _itemtype;
		} else {
			_classlist = switch (_objtype) do {case "weapon": {_weapons}; case "vehicle": {_vehicles}; case "animal": {_animals}};
			_itemclass = _classlist select _idx;
			_itemtype = _objtype;
		};
		_info = [_itemclass,_itemtype] call _getObjInfo;
		_objhead ctrlSetText (_info select 0);
		_itemname = _info select 0;
		_objpic ctrlSetText (_info select 1);
		_objdesc ctrlSetStructuredText parseText (_info select 2);
		
	};

	// spawn the selected object
	if (findit) then {
		if (_itemclass=="") exitWith {};
		closeDialog 16700;
	};
	sleep .1;
};


// determine which buildings contain the selected item

// get all DayZ buildings classes
_buildingTypes = configFile>>"CfgBuildingLoot";

// go through all of them, and remember the ones that might contain the item we're looking for
_buildings = [];
_buildingNames = [];
for "_i" from 0 to (count _buildingTypes)-1 do {
	_config= _buildingTypes select _i;
	_bldgClass = configName _config;
	_bldgName = getText (_config>>"displayName");
	if (_bldgName=="") then {
		_bldgName = _bldgClass;
	};
	
	if (isArray (_config>>"itemType")) then {
		_items = getArray (_config>>"itemType");
		_lootPos = [];
		if (isArray (_config>>"lootPos")) then {
			_lootPos = getArray (_config>>"lootPos");
		};		
		if (count _lootPos>0) then {
			for "_j" from 0 to (count _items)-1 do {
				_item = _items select _j;
				_match = false;
				if (typeName _itemType=="STRING") then {
					_match = (_item select 0==_itemClass);
				} else {
					_match = (_item select 1==_itemType select 0);
				};
				if (_match) exitWith {
					if !(_bldgClass in _buildings) then {
						_buildings = _buildings + [_bldgClass];
						_buildingNames = _buildingNames + [_bldgName];
					};
				};
			};
		};
	};
};

// nothing found, nothing to mark
if (count _buildings==0) exitWith {
	_info = format["No buildings found that contain '%1'.\n",_itemName];
	_info = _info + "(Object might only spawn in dynamically created structures.)\n";
	if (count _buildingNames>0) then {
		_info = _info + "The following building types have been searched for:\n";
		{
			_info = format["%1  %2\n",_info,_x];
		}forEach _buildingNames;
	};
	hint _info;
	DXSP_Searching = false;
};

_bldgCount = count _buildings;
player sidechat format["%1 building type%2 can contain%3 '%4'.",_bldgCount,if (_bldgCount==1) then {""} else {"s"},if (_bldgCount!=1) then {""} else {"s"},_itemName];

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

// indicate the selected objects on the map

// find all matching buildings on the map
_buildingObjects = nearestObjects [[8000,8000],_buildings,6000];

// create a marker for each building
_idx = 1;
{
	_idx = [getPos _x,"DOT","ColorBlack",1,"",_idx] call _makeMarker;	
}forEach _buildingObjects;


DXSP_Searching = false;
