/*
	File : fn_craftable.sqf
	Desc: Craft walls and floors directly from lumber / ply packs
	Auth: JakeHekesFists[DMD]
*/
private["_toolBox","_crowBar","_option"];

_option = _this select 0;
_toolBox =		"ItemToolbox" in items player;
_crowBar =		"ItemCrowbar" in items player;

_dmdLumber = {_x == "PartPlankPack"} count magazines player;
_dmdPlywood = {_x == "PartPlywoodPack"} count magazines player;
 
if (!_toolBox) exitWith {cutText [format["You need a toolbox to craft"], "PLAIN DOWN"];};
if (!_crowBar) exitWith {cutText [format["You need a crowbar to craft"], "PLAIN DOWN"];};

if (dayz_combat == 1) exitWith {cutText [format["you cannot craft while you are in combat!"], "PLAIN DOWN"];};

switch (_option) do 
	{
		case "thirdwall": 
		{ 
			if ((_dmdLumber >= 1) && (_dmdPlywood >= 1)) then 
				{
					player playActionNow "Medic";
					r_interrupt = false;
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlywoodPack";
					_dis=10;
					_sfx = "repair";
					[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
					[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
				   	sleep 6;				   
					player addMagazine "ItemWoodWallThird";
					cutText [format["You have crafted a 1/3 Wood Wall."], "PLAIN DOWN"];				   
					r_interrupt = false;
					player switchMove "";
					player playActionNow "stop";
				} 
				else
				{
					cutText [format["You need 1 Lumber Pack and 1 Plywood Pack to craft a 1/3 Wood Wall"], "PLAIN DOWN"];
				};
		};
		case "wall": 
		{
			if ((_dmdLumber >= 3) && (_dmdPlywood >= 3)) then 
				{
					player playActionNow "Medic";
					r_interrupt = false;
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					_dis=10;
					_sfx = "repair";
					[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
					[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
				   	sleep 6;				   
					player addMagazine "ItemWoodWall";
					cutText [format["You have crafted a Wood Wall."], "PLAIN DOWN"];				   
					r_interrupt = false;
					player switchMove "";
					player playActionNow "stop";
				} 
				else
				{
					cutText [format["You need 3 Lumber Pack and 3 Plywood Pack to craft a Wood Wall"], "PLAIN DOWN"];
				};
		};
		case "quartfloor": 
		{
			if ((_dmdLumber >= 1) && (_dmdPlywood >= 1)) then 
				{
					player playActionNow "Medic";
					r_interrupt = false;
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlywoodPack";
					_dis=10;
					_sfx = "repair";
					[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
					[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
				   	sleep 6;				   
					player addMagazine "ItemWoodFloorQuarter";
					cutText [format["You have crafted a 1/4 Wood Floor."], "PLAIN DOWN"];				   
					r_interrupt = false;
					player switchMove "";
					player playActionNow "stop";
				} 
				else
				{
					cutText [format["You need 1 Lumber Pack and 1 Plywood Pack to craft a 1/4 Wood Floor"], "PLAIN DOWN"];
				};
		};
		case "halffloor": 
		{
			if ((_dmdLumber >= 2) && (_dmdPlywood >= 2)) then 
				{
					player playActionNow "Medic";
					r_interrupt = false;
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					_dis=10;
					_sfx = "repair";
					[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
					[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
				   	sleep 6;				   
					player addMagazine "ItemWoodFloorHalf";
					cutText [format["You have crafted a 1/2 Wood Floor."], "PLAIN DOWN"];				   
					r_interrupt = false;
					player switchMove "";
					player playActionNow "stop";
				} 
				else
				{
					cutText [format["You need 2 Lumber Pack and 2 Plywood Pack to craft a 1/2 Wood Floor"], "PLAIN DOWN"];
				};
		};
		case "floor": 
		{
			if ((_dmdLumber >= 4) && (_dmdPlywood >= 4)) then 
				{
					player playActionNow "Medic";
					r_interrupt = false;
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlankPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					player removeMagazine "PartPlywoodPack";
					_dis=10;
					_sfx = "repair";
					[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
					[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
				   	sleep 6;				   
					player addMagazine "ItemWoodFloor";
					cutText [format["You have crafted a Wood Floor."], "PLAIN DOWN"];				   
					r_interrupt = false;
					player switchMove "";
					player playActionNow "stop";
				} 
				else
				{
					cutText [format["You need 4 Lumber Pack and 4 Plywood Pack to craft a Wood Floor/Ceiling"], "PLAIN DOWN"];
				};
		};
		case default {hint "Error! nothing selected!!!"};
	};