class PartWoodPlywood: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Plywood";
	model = "\z\addons\dayz_epoch\models\plywood.p3d";
	picture="\z\addons\dayz_epoch\pictures\equip_plywood_CA.paa";
	descriptionShort = "Plywood: Used for building many structures.";
	class ItemActions {
		class Crafting
		{
			text = "Craft Workbench";
			script = "DZE_Crafting = ['Crafting','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"workbench_kit",1}};
			input[] = {{"PartWoodPlywood",1},{"PartWoodLumber",2}};
			
		};
		/*
		class Crafting1
		{
			text = "Craft Shack";
			script = "DZE_Crafting = ['Crafting1','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"wood_shack_kit",1}};
			input[] = {{"bulk_empty",1},{"PartWoodPlywood",4},{"PartWoodLumber",4}};
			
		};
		*/
	};
};
