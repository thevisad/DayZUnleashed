/*
	resetStaticTrigger
	
	Description: Resizes trigger area to zero dimensions to allow it to reset.
	
	Last updated: 11:16 PM 6/15/2013
*/
private ["_trigger","_dimensions"];
_trigger = _this select 0;

_dimensions = triggerArea _trigger;
_trigger setTriggerArea [0, 0, 0, false];	//Shrink trigger to allow it to deactivate
sleep DZAI_despawnWait;
_trigger setTriggerArea [(_dimensions select 0), (_dimensions select 1), 0, false];	//Restore original dimensions
