﻿//OLD FASHION AUTOMATED BUILD RECIPE LIST

_recipeBook = [];
{
	// _requirements  = _x select 0;
    
    // _requirements_string="";
    // _i =0;
    // {
        // _letters=["T","S","W","L","M","G"];
        // _qty="";
        // _letter="";
        // _qty_letter="";
        // if (_x != 0) then {
            // _qty = format["%1",_x];
            // _letter= _letters select _i;
            // _qty_letter=","+_qty+_letter;
        // };
        // _requirements_string = format["%1%2",_requirements_string,_qty_letter];
        // _i = _i + 1;
    // } foreach(_requirements);
    
	_classname = _x select 1;
    
    _row = _classname; //+":"+ _requirements_string;
    _recipeBook=_recipeBook + [_row];
	//_recipeBook = _recipeBook + _classname;
    
} foreach(allbuildables);

_buildRecipeBook = _recipeBook;



//"[TankTrap, SandBags, Wires, Logs, Scrap Metal, Grenades]" hintC buildRecipeBook;
//[] call BIS_fnc_GUIeditor;


{
    with uiNamespace do {
        (Build_Recipe_List_Dialog displayCtrl 2500) lbAdd _x;
    }
}foreach(_buildRecipeBook);