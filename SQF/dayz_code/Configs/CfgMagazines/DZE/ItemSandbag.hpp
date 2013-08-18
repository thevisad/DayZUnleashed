class ItemSandbag : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	displayName = $STR_EQUIP_NAME_21;
	model = "\dayz_equip\models\sandbags.p3d";
	picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_21;
	
	class ItemActions {
		class Build {
			text = "Build Sandbag";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			create = "Sandbag1_DZ";
		};
		class Crafting
		{
			text = "Craft Large Sandbag";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemEtool","ItemToolbox"};
			output[] = {{"ItemSandbagLarge",1}};
			input[] = {{"ItemSandbag",3},{"ItemWire",1},{"ItemTankTrap",1}};
		};
		class Crafting1
		{
			text = "Craft Sandbag Nest";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemEtool","ItemToolbox"};
			output[] = {{"sandbag_nest_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemSandbag",4},{"PartWoodPlywood",2},{"PartWoodLumber",4}};
		};
	};
};

