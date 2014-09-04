
class ItemPoppy : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Poppy Plants";
	descriptionShort = "Good for crafting a pain killer";
	picture = "\z\addons\unleashed_pack\pictures\poppy.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft painpills";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemOpium",1}};
			input[] = {{"ItemPoppy",1}};
				
		};
	};
};

class ItemOpium : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Opium";
	descriptionShort = "Good for a pain killer";
	picture = "\z\addons\unleashed_pack\pictures\opium.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft painpills";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemPainkiller",1}};
			input[] = {{"ItemOpium",1}};
				
		};
		class Crafting1
		{
			text = "Roll spiked joints";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemKnife"};
			output[] = {{"ItemPainkiller",2}};
			input[] = {{"ItemKiloHemp",1},{"ItemPapers",1},{"ItemOpium",1}};
		};
	};
};

class ItemKiloHemp : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Kilo of Hemp";
	descriptionShort = "Kilo of Hemp";
	weight = 1;
	model = "z\addons\dayz_epoch\models\kilohemp.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_kilohemp_CA.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_269b;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemCanvas",1}};
			input[] = {{"ItemKiloHemp",1}};
		};
		
		class Crafting1
		{
			text = "Roll joints";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemKnife"};
			output[] = {{"ItemPainkiller",2}};
			input[] = {{"ItemKiloHemp",1},{"ItemPapers",1}};
		};
	};
};

class ItemPapers: CA_Magazine {
	scope = 2;
	count = 1;
	weight = 1;
	type = 256;
	displayName = "Snarky Lions";
	model = = "\z\addons\unleashed_pack\models\papers\snarkyLion.paa";
	picture = "\z\addons\unleashed_pack\pictures\snarkylion.paa";
	descriptionShort = "Some papers for rolling joints";
};