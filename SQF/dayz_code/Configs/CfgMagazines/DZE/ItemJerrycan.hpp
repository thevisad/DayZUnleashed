class ItemJerrycanEmpty : CA_Magazine {
	scope = public;
	fullcan = "ItemJerrycan";
	count = 1;
	type = 256;
	displayName = $STR_ITEM_NAME_equip_scrap_metal;
	model = "\dayz_equip\models\tank_trap_kit.p3d";
	picture = "\dayz_equip\textures\equip_tanktrap_kit_CA.paa";
	descriptionShort = $STR_ITEM_DESC_equip_scrap_metal;
	
	class ItemActions {			
		class Crafting
		{
			text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartGeneric",1}};
			input[] = {{"ItemJerrycanEmpty",2}};
		};
	};
};

class ItemJerrycan : CA_Magazine {
	emptycan = "ItemJerrycanEmpty";
	displayName = $STR_ITEM_NAME_JERRYCAN;
	descriptionShort = $STR_ITEM_DESC_JERRYCAN;
}; 


class ItemFuelcanEmpty : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	fullcan = "ItemFuelcan";
	displayName = $STR_ITEM_NAME_equip_scrap_metal;
	model = "\dayz_equip\models\tank_trap_kit.p3d";
	picture = "\dayz_equip\textures\equip_tanktrap_kit_CA.paa";
	descriptionShort = $STR_ITEM_DESC_equip_scrap_metal;
	
	class ItemActions {			
		class Crafting
		{
			text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartGeneric",1}};
			input[] = {{"ItemFuelcanEmpty",4}};
		};
	};
};

class ItemFuelcan : CA_Magazine {
		scope = public;
		count = 1;
		fuelQuantity = 5;
		emptycan = "ItemFuelcanEmpty";
		type = 256;
		displayName = $STR_ITEM_NAME_FUELCAN;
		descriptionShort = $STR_ITEM_DESC_FUELCAN;
		model = "z\addons\dayz_communityassets\models\fuelcan.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_fuelcan_CA.paa";
	};