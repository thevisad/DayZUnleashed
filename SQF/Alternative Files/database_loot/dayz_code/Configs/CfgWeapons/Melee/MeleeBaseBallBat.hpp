class MeleeBaseBallBat: MeleeWeapon
	{
		scope=2;
		melee= "true";
		autoreload=1;
		magazineReloadTime=0;
		model="\z\addons\dayz_communityassets\models\baseball_bat_weaponized.p3d";
		picture="\z\addons\dayz_communityassets\pictures\equip_baseball_bat_ca.paa";
		displayName="$STR_EQUIP_NAME_BASEBALLBAT";
		droppeditem= "MeleeBaseBallBat";
		magazines[]=
		{
			"Bat_Swing"
		};
		handAnim[]=
		{
			"OFP2_ManSkeleton",
			"\dayz_weapons\anim\melee_hatchet_holding.rtm"
		};
		class Library
		{
			libTextDesc="$STR_EQUIP_DESC_BASEBALLBAT";
		};
		descriptionShort="$STR_EQUIP_DESC_BASEBALLBAT";
		class ItemActions
		{
			class Crafting
			{
				text = "Craft Barbed Bat";
				script = ";['Crafting','CfgWeapons',_id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox","ItemKnife"};
				output[] = {};
				outputweapons[] = {"MeleeBaseBallBatBarbed"};
				input[] = {{"ItemWire",1}};
				inputweapons[] = {"MeleeBaseBallBat"};
			};
			class Crafting1
			{
				text = "Craft Nailed Bat";
				script = ";['Crafting1','CfgWeapons',_id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox","ItemKnife"};
				output[] = {};
				outputweapons[] = {"MeleeBaseBallBatNails"};
				input[] = {{"equip_nail",2}};
				inputweapons[] = {"MeleeBaseBallBat"};
			};
		};
	};