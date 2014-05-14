class ItemWaterbottle: FoodDrink {
	scope = 2;
	refillable = 1;
	sfx = "drink";
	wateroz = 10;
	displayName = "$STR_EQUIP_NAME_12";
	model = "\dayz_equip\models\waterbottle_gear.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle10oz_ca.paa";
	descriptionShort = "$STR_EQUIP_DESC_12";
};
class ItemWaterbottleUnfilled: CA_Magazine {
	scope = 2;
	count = 1;
	type = 256;
	displayName = "$STR_EQUIP_NAME_13";
	model = "\dayz_equip\models\waterbottle_gear.p3d";
	picture = "\dayz_equip\textures\equip_waterbottle_empty_ca.paa";
	descriptionShort = "$STR_EQUIP_DESC_13";
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottleBoiled : ItemWaterbottle {
	displayName = $STR_ITEMWATERBOTTLEBOILED_CODE_NAME;
	descriptionShort = $STR_ITEMWATERBOTTLEBOILED_CODE_DESC;
};

class ItemWaterbottle1oz : ItemWaterbottle {
	displayName = "Water Bottle (1oz)";
	descriptionShort = "Watter Bottle with 1oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_1oz_ca.paa";
	wateroz = 1;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle2oz : ItemWaterbottle {
	displayName = "Water Bottle (2oz)";
	descriptionShort = "Watter Bottle with 2oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_2oz_ca.paa";
	wateroz = 2;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle3oz : ItemWaterbottle {
	displayName = "Water Bottle (3oz)";
	descriptionShort = "Watter Bottle with 3oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_3oz_ca.paa";
	wateroz = 3;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle4oz : ItemWaterbottle {
	displayName = "Water Bottle (4oz)";
	descriptionShort = "Watter Bottle with 4oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_4oz_ca.paa";
	wateroz = 4;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle5oz : ItemWaterbottle {
	displayName = "Water Bottle (5oz)";
	descriptionShort = "Watter Bottle with 5oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_5oz_ca.paa";
	wateroz = 5;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle6oz : ItemWaterbottle {
	displayName = "Water Bottle (6oz)";
	descriptionShort = "Watter Bottle with 6oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_6oz_ca.paa";
	wateroz = 6;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle7oz : ItemWaterbottle {
	displayName = "Water Bottle (7oz)";
	descriptionShort = "Watter Bottle with 7oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_7oz_ca.paa";
	wateroz = 7;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle8oz : ItemWaterbottle {
	displayName = "Water Bottle (8oz)";
	descriptionShort = "Watter Bottle with 8oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_8oz_ca.paa";
	wateroz = 8;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};
class ItemWaterbottle9oz : ItemWaterbottle {
	displayName = "Water Bottle (9oz)";
	descriptionShort = "Watter Bottle with 9oz of water";
	picture = "\z\addons\dayz_epoch\pictures\equip_waterbottle_9oz_ca.paa";
	wateroz = 9;
	class ItemActions {
		class Fill {
			text = "$STR_ACTIONS_FILL_W";
			script = "spawn player_fillWater;";
		};
	};
};