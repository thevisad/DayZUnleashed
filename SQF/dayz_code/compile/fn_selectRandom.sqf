scriptName "Functions\arrays\fn_selectRandom.sqf";
/************************************************************
	Random Select
	By Andrew Barron

Parameters: array

This returns a randomly selected element from the passed array.

Example: [1,2,3] call BIS_fnc_selectRandom
Returns: 1, 2, or 3
************************************************************/
dayz_Loop = dayz_Loop + 1;
_ret=nil;
if(count _this > 0) then
{
	_retCount = count _this;           //number of elements in the array
	diag_log (format["SR: count _this %1, loop: %2",_retCount, dayz_Loop]);
	diag_log (format["SR:  _this %1, loop: %2", _this, dayz_Loop]);
	_retRandom = floor random _retCount;
	diag_log (format["SR:  _retRandom %1, loop: %2", _retRandom, dayz_Loop]);
	_ret = _this select _retRandom;           //get the element, return it
	diag_log (format["SR:  _ret %1, loop: %2", _ret, dayz_Loop]);

};
_ret