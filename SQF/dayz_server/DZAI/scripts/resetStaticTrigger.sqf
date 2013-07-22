/*
	resetStaticTrigger
	
	Description: Resizes trigger area to zero dimensions to allow it to reset.
	
	Last updated: 11:16 PM 6/15/2013
*/
private ["_trigger"];
_trigger = _this select 0;

_trigger setTriggerArea [0, 0, 0, false];	//Shrink trigger to allow it to deactivate
sleep 180;
_trigger setTriggerArea [600, 600, 0, false];	//Restore original dimensions
