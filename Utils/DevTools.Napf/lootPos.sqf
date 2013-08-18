/*
	title: Loot Position Finder
	author: Pwnoz0r
	description: Find the loot positions within buildings and structures on any map.
	usage: Load this mission file up in the 2D editor.
		Once executed the output will simply copy the string to your clipboard. You may then paste that string anywhere.
		If you would like to change the map simply edit the mission.sqm file to included the addons of another map.
	version: 1.0
	
	Example output: Land_a_stationhouse :: {3.08496,1.78516,-9.47058};
*/
hint "Show Loot Position";

_building = nearestObject [player, "Building"];
_relPos = _building worldToModel (getPosATL player);
_getBuildingName = typeOf nearestBuilding position player;

_timeFactor = time;
player sideChat format ["Copied to clipboard! :: %1", _timeFactor];

x = _relPos select 0;
y = _relPos select 1;
z = _relPos select 2;

hint format ["%4 :: {%1,%2,%3};", x, y, z, _getBuildingName];

copyToClipboard format ["%4 :: {%1,%2,%3};", x, y, z, _getBuildingName];
if [true] then exitWith [];