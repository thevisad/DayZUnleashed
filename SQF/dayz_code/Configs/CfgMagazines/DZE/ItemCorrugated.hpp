class ItemCorrugated : CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Corrugated Fence";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Corrugated Fence: A buildable object used for fortification purposes.";
	class ItemActions {
		class Build {
			text = "Build Corrugated Fence";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "Fence_corrugated_DZ";
		};
		class Crafting
		{
			text = "Craft Wooden Shed";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"wooden_shed_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemCorrugated",2},{"PartWoodPlywood",4},{"PartWoodLumber",4}};
		};
		class Crafting1
		{
			text = "Craft Outhouse";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"outhouse_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemCorrugated",1},{"PartWoodPlywood",3},{"PartWoodLumber",3},{"ItemTrashToiletpaper",1}};
		};
		class Crafting2
		{
			text = "Craft Storage Shed";
			script = ";['Crafting2','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"storage_shed_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemCorrugated",4},{"PartWoodPlywood",2},{"PartWoodLumber",2}};
		};
	};
};
