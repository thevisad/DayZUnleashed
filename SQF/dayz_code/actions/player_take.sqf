_args = (_this select 3);
_object =  (_args select 0);
_item = (_args select 1);
_type = (_args select 2);
//hintSilent format["%1",_args];

switch (_type) do {
 case "WEAPON":{
 player action ["TakeWeapon", _object, _item];
 };  
 case "MAGAZINE": {
 player action ["TakeMagazine", _object, _item];
 }; 
 case "BACKPACK":{
 player action ["AddBag", _object, _item];
 };  
 case "ISBACKPACK":{
 player action ["TakeBag", _object];
 }; 
 default{}; 
};

{dayz_myCursorTarget2 removeAction _x} forEach s_player_cursorLoot;
s_player_cursorLoot = [];
dayz_myCursorTarget2 = objNull;