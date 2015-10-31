class ItemGoldBar: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "1oz Gold";
	model = "\z\addons\dayz_epoch\models\gold_bar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_gold_bar_CA.paa";
	descriptionShort = "1oz Gold Bar";
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_210;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemGoldBar10oz",1}};
			input[] = {{"ItemGoldBar",10}};
			
		};
	};
};
class ItemGoldBar10oz: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "10oz Gold";
	model = "\z\addons\dayz_epoch\models\gold_bar_10oz.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_gold_bar_10oz_CA.paa";
	descriptionShort = "10oz Gold Bar";
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_211;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemGoldBar",10}};
			input[] = {{"ItemGoldBar10oz",1}};
		};
	};
};
class ItemSilverBar: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "1oz Silver";
	model = "\z\addons\dayz_epoch\models\silver_bar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_silver_bar_CA.paa";
	descriptionShort = "1oz Silver Bar";
	class ItemActions
	{
		class Crafting
		{
			 text = $STR_EPOCH_PLAYER_210;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemSilverBar10oz",1}};
			input[] = {{"ItemSilverBar",10}};
		};
	};
};
class ItemSilverBar10oz: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "10oz Silver";
	model = "\z\addons\dayz_epoch\models\silver_bar_10oz.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_silver_bar_10oz_CA.paa";
	descriptionShort = "10oz Silver Bar";
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_211;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemSilverBar",10}};
			input[] = {{"ItemSilverBar10oz",1}};
		};
	};
};
class ItemCopperBar: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "1oz Copper";
	model = "\z\addons\dayz_epoch\models\copper_bar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_copper_bar_CA.paa";
	descriptionShort = "1oz Copper Bar";
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_210;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemCopperBar10oz",1}};
			input[] = {{"ItemCopperBar",10}};
		};
	};
};
class ItemCopperBar10oz: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "10oz Copper";
	model = "\z\addons\dayz_epoch\models\copper_bar_10oz.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_copper_bar_10oz_CA.paa";
	descriptionShort = "10oz Copper Bar";
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_211;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemCopperBar",10}};
			input[] = {{"ItemCopperBar10oz",1}};
		};
	};
};
class ItemBronzeBar: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Bronze";
                model = "\z\addons\dayz_epoch\models\bronze_bar.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_bar_bronze_CA.paa";
                descriptionShort = "Bronze Bar";
        };
		
class ItemAluminumBar: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "1oz Aluminum";
	model = "\z\addons\dayz_epoch\models\aluminum_bar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_alum_bar_CA.paa";
	descriptionShort = "1oz Aluminum Bar";
	class ItemActions {			
		class Crafting
		{
			text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartGeneric",1}};
			input[] = {{"ItemAluminumBar",4}};
		};
	};
	
};
class ItemAluminumBar10oz: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "10oz Aluminum";
                model = "\z\addons\dayz_epoch\models\aluminum_bar.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_alum_bar_10oz_CA.paa";
                descriptionShort = "10oz Aluminum Bar";
                class ItemActions
                {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_211;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {};
                                output[] = {{"ItemAluminumBar",10}};
                                input[] = {{"ItemAluminumBar10oz",1}};
                        };
                };
        };
		
class ItemTinBar: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "1oz Tin";
	model = "\z\addons\dayz_epoch\models\tin_bar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_tin_bar_CA.paa";
	descriptionShort = "1oz Tin Bar";
	class ItemActions {			
		class Crafting
		{
			text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartGeneric",1}};
			input[] = {{"ItemTinBar",4}};
		};
	};
};
class ItemTinBar10oz: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "10oz Tin";
                model = "\z\addons\dayz_epoch\models\tin_bar.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_tin_bar_10oz_CA.paa";
                descriptionShort = "10oz Tin Bar";
                class ItemActions
                {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_211;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"fire"};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"ItemTinBar",10}};
                                input[] = {{"ItemTinBar10oz",1}};
                        };
                };
        };
