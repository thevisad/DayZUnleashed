/*
_item spawn player_wearClothes;
*/
private["_item","_onLadder","_hasclothesitem","_config","_text","_myModel","_humanity","_isBandit","_isHero","_itemNew","_model","_femaleSkins"];
_item = _this;
call gear_ui_init;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};
if (vehicle player != player) exitWith {cutText ["You may not change clothes while in a vehicle", "PLAIN DOWN"]};
_hasclothesitem = _this in magazines player;
_config = configFile >> "CfgMagazines";
_configVehicles = configFile >> "CfgVehicles";
_text = getText (_config >> _item >> "displayName");                //Name of clothing parcel
_location = "skinModel";                                            //Name of the class parm that we will look for the unit name
_myModel = (typeOf player);                                         //Name of the players existing model
_itemNew = getText ( _configVehicles >> _myModel >> "clothingDZ");  //Players existing skin package, the one we drop

if (!_hasclothesitem) exitWith {cutText [format[(localize "str_player_31"),_text,(localize "str_player_31_wear")] , "PLAIN DOWN"]};    
if(getNumber(_config >> _item >> "isHumanitySkin") == 1) then {     //Does this skin pack humanity features
   _humanity = player getVariable ["humanity",0];  
   if (_humanity < -2000) then {_location = "banditSkin";};
   if (_humanity > 5000) then {_location = "heroSkin";};        
}; 

if(getText(_configVehicles >> _myModel >> "TextPlural") == "Women") then {_location = _location+"ALT";};
   _model = getText (_config >> _item >> _location);    
if (!isClass(_configVehicles >> _model)) exitWith {cutText [format["Something broke and went to shit, sorry but '%1' wont work",_model], "PLAIN DOWN"]};
if (_model != _myModel) then {
	player removeMagazine _item;
	if(_itemNew != "") then {player addMagazine _itemNew;};
	[dayz_playerUID, dayz_characterID, _model] spawn player_humanityMorph;
};
