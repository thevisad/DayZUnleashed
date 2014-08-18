scriptName "Functions\arrays\fn_selectRandom.sqf";
/************************************************************
	Random Select
	By Andrew Barron

Parameters: array

This returns a randomly selected element from the passed array.

Example: [1,2,3] call BIS_fnc_selectRandom
Returns: 1, 2, or 3
************************************************************/
_ret=[];
if(count _this > 0) then
{
	_retCount = count _this;           //number of elements in the array
	_retRandom = floor random _retCount;
	_ret = _this select _retRandom;           //get the element, return it

};
_ret