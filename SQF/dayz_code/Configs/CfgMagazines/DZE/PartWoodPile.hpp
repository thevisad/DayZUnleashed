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
		class Crafting
		{
			text = "Craft Lumber";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"PartWoodLumber",1}};
			input[] = {{"PartWoodPile",2}};
		};
		class Crafting1
		{
			text = "Craft Arrows";
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemKnife"};
			output[] = {{"WoodenArrow",3}};
			input[] = {{"PartWoodPile",1},{"ItemTrashRazor",1}};
			
		};
		/*
		class Crafting2
		{
			text = "Craft Stick Fence";
			script = "spawn player_craftItem2;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"stick_fence_kit",1}};
			input[] = {{"PartWoodPile",6}};
			
		};
		*/
	};
};