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

class ItemJerrycan: CA_Magazine
        {
                scope = 2;
                count = 1;
                fuelQuantity = 20;
                type = 256;
                displayName = $STR_EQUIP_NAME_19;
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = $STR_EQUIP_DESC_19;
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
	
	class PartFueltank: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EQUIP_NAME_8;
                model = "\dayz_equip\models\fueltank.p3d";
                picture = "\dayz_equip\textures\equip_fueltank_ca.paa";
                descriptionShort = $STR_EQUIP_DESC_8;
                class ItemActions {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_212;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"workshop"};
                                requiretools[] = {"ItemToolbox","ItemCrowbar"};
                                output[] = {{"PartGeneric",1}};
                                input[] = {{"PartFueltank",1}};
                        };
                };
        };
		
		class ItemJerryMixed: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Mixed Gas Full";
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = "20 liters of Mixed Gas.";
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Fill Chainsaw";
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"CSGAS",1},{"ItemJerryMixed4",1}};
                                input[] = {{"ItemJerryMixed",1}};
                        };
                };
        };
        class ItemJerryMixed4: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Mixed Gas 16l";
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = "16 liters of Mixed Gas.";
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Fill Chainsaw";
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"CSGAS",1},{"ItemJerryMixed3",1}};
                                input[] = {{"ItemJerryMixed4",1}};
                        };
                };
        };
        class ItemJerryMixed3: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Mixed Gas 12l";
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = "12 liters of Mixed Gas.";
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Fill Chainsaw";
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"CSGAS",1},{"ItemJerryMixed2",1}};
                                input[] = {{"ItemJerryMixed3",1}};
                        };
                };
        };
        class ItemJerryMixed2: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Mixed Gas 8l";
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = "8 liters of Mixed Gas.";
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Fill Chainsaw";
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"CSGAS",1},{"ItemJerryMixed1",1}};
                                input[] = {{"ItemJerryMixed2",1}};
                        };
                };
        };
        class ItemJerryMixed1: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Mixed Gas 4l";
                model = "\dayz_equip\models\jerrycan.p3d";
                picture = "\dayz_equip\textures\equip_jerrycan_ca.paa";
                descriptionShort = "4 liters of Mixed Gas.";
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Fill Chainsaw";
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"CSGAS",1},{"ItemJerrycanEmpty",1}};
                                input[] = {{"ItemJerryMixed1",1}};
                        };
                };
        };