class PartWoodPile: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "$STR_EQUIP_NAME_40";
	model = "\dayz_equip\models\woodPile.p3d";
	picture = "\dayz_equip\textures\equip_woodPile_ca.paa";
	descriptionShort = "$STR_EQUIP_DESC_40";
	class ItemActions {
		class Build {
				text = $STR_EPOCH_PLAYER_241;
				script = "spawn player_build;";
				require[] = {"ItemMatchbox_DZE"};
				create = "Land_Fire_DZ";
		};
		class Crafting
		{
			text =  $STR_EPOCH_PLAYER_242;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"PartWoodLumber",1}};
			input[] = {{"PartWoodPile",2}};
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_243;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemKnife"};
			output[] = {{"WoodenArrow",3}};
			input[] = {{"PartWoodPile",1},{"ItemTrashRazor",1}};
			
		};
		class Crafting2
		{
				text = $STR_EPOCH_PLAYER_244;
				script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {};
				requiretools[] = {"ItemToolbox","ItemKnife"};
				output[] = {{"stick_fence_kit",1}};
				input[] = {{"PartWoodPile",6}};
				
		};
	};
};