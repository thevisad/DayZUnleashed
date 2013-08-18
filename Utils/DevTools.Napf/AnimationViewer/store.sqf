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


switch (_this select 0) do
{
	case 1:
	{
		_anim = lbText [203, lbCurSel 203];
		_index = lbAdd [228, format ["%1", _anim]];
		lbSetData [228, _index, _anim];
	};
	case 2:
	{
		lbDelete [228, lbCurSel 228];
	};
	case 3:
	{
		_savedAnims = [];
		for "_i" from 0 to ((lbSize 228) - 1) do
		{
			_anim = lbData [228, _i];
			_savedAnims = _savedAnims + [_anim];
		};
		copyToClipboard format ["%1", _savedAnims];
	};
};
