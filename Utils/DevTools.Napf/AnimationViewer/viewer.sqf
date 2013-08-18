/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***      V1.3b       ***
***                  ***
************************
*** ...by Clayman
*** 02.07.2010
************************/


disableSerialization;

CLAY_Dialog = false;
CLAY_AnimStartPos = [(getPos player select 0) + (5 * (sin getDir player)), (getPos player select 1) + (5 * (cos getDir player)), 0];

CLAY_CamOffsetX = -1;
CLAY_CamOffsetY = 0;
CLAY_CamZoomX = 0;
CLAY_CamZoomY = 3.5;
CLAY_CamDir = 1;

private ["_unit", "_mags", "_weap"];
_side = side player;
switch (_side) do
{
	case WEST:
	{
		_unit = "US_Soldier_LAT_EP1";
		_mags = "15Rnd_9x19_M9";
		_weap = "M9";
	};
	case EAST:
	{
		_unit = "TK_Soldier_AT_EP1";
		_mags = "8Rnd_9x18_Makarov";
		_weap = "Makarov";
	};
	case RESISTANCE:
	{
		_unit = "TK_GUE_Soldier_AT_EP1";
		_mags = "8Rnd_9x18_Makarov";
		_weap = "Makarov";
	};
	case CIVILIAN:
	{
		_unit = "TK_GUE_Soldier_AT_EP1";
		_mags = "8Rnd_9x18_Makarov";
		_weap = "Makarov";
	};
};

_grp = createGroup _side;
CLAY_Animator = _grp createUnit [_unit, CLAY_AnimStartPos, [], 0, "NONE"];
CLAY_Animator addMagazine _mags;
CLAY_Animator addWeapon _weap;
CLAY_Animator setBehaviour "CARELESS";


CLAY_Dialog = createDialog "DlgViewer";
#include <controls.h>
#include <animations.h>
[] execVM "AnimationViewer\refresh.sqf";


_cam = "Camera" camCreate [0, 0, 0];
_cam cameraEffect ["internal", "front"];

while {dialog} do
{
	showCinemaBorder false;
	_cam camSetTarget [(getPos CLAY_Animator select 0) + CLAY_CamOffsetX, (getPos CLAY_Animator select 1) + CLAY_CamOffsetY, 1];
	_cam camSetRelPos [CLAY_CamZoomX, CLAY_CamZoomY, 0];
	_cam camCommit 0;
	sleep 0.01;
};

_cam cameraEffect ["terminate", "front"];
camDestroy _cam;

deleteVehicle CLAY_Animator;
deleteGroup _grp;
