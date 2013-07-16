class PartWoodLumber: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Lumber";
	model = "\z\addons\dayz_epoch\models\planks.p3d";
	picture="\z\addons\dayz_epoch\pictures\equip_wood_planks_CA.paa";
	descriptionShort = "Lumber: Used for building many structures and can also be used to make plywood.";
	class ItemActions {
		class Build {
			text = "Build Wood Gate";
			script = "spawn player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodGate_DZ";
		};
		class Crafting
		{
			text = "Craft Plywood";
			script = "DZE_Crafting = ['Crafting','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"sawmill"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartWoodPlywood",1}};
			input[] = {{"PartWoodLumber",2}};
			
		};
		class Crafting1
		{
			text = "Craft Supply Crate";
			script = "DZE_Crafting = ['Crafting1','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"sawmil"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"bulk_empty",1}};
			input[] = {{"PartWoodLumber",4},{"PartGeneric",1}};
			
		};
		class Crafting2
		{
			text = "Craft Deer Stand";
			script = "DZE_Crafting = ['Crafting2','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"deer_stand_kit",1}};
			input[] = {{"bulk_empty",1},{"PartWoodLumber",8},{"PartWoodPile",2}};
			
		};
	};
};
