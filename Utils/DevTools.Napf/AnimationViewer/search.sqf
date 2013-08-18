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


_search = ctrlText 233;
_tArray = [];

lbClear 203;
player globalChat "PLEASE WAIT...";


for [{_i = 0}, {_i < count CLAY_AnimArray}, {_i = _i + 1}] do
{
	_actAnim = ((CLAY_AnimArray select _i) select 0);
	_search = toUpper _search;
	_actAnim = toUpper _actAnim;

	_result = [_actAnim, _search] call CBA_fnc_find;
	If (_result >= 0) Then
	{
		_tArray = _tArray + [_actAnim];
	};
};

for [{_i = 0}, {_i < count _tArray}, {_i = _i + 1}] do
{
	_index = lbAdd [203, (_tArray select _i)];
};

player globalChat format ["DONE! %1 Animations in List.", count _tArray];
