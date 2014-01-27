class ItemApple : FoodEdible {
	scope = public;
	count = 1;
	displayName = "Apple";
	descriptionShort = "An apple, edible fruit";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	bloodRegen = 100;
	
};
	
class ItemCherry : FoodEdible {
	scope = public;
	count = 1;
	displayName = "Cherry";
	descriptionShort = "A cherry, edible fruit";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	bloodRegen = 100;
};

class ItemElderberry : FoodEdible {
	scope = public;
	count = 1;
	displayName = "Elderberries";
	descriptionShort = "An elderberry, edible fruit";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	bloodRegen = 100;
};

class ItemHazelnut : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Hazelnuts";
	descriptionShort = "Useful for making antibiotics";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft antibiotics";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemAntibiotic",1}};
			input[] = {{"ItemHazelnut",1}};
				
		};
	};
};

class ItemNettle : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Nettle";
	descriptionShort = "Used to make medicine to deal with pain";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft antibiotics";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemAntibiotic",1}};
			input[] = {{"ItemNettle",1}};
				
		};
	};
};

class ItemPear : FoodEdible {
	scope = public;
	count = 1;
	displayName = "Pear";
	descriptionShort = "A pear, edible fruit";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	bloodRegen = 100;
};

class ItemRosehips : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Rosehips";
	descriptionShort = "Good for use in a antibiotic";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft antibiotics";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemAntibiotic",1}};
			input[] = {{"ItemRosehips",1}};
				
		};
	};
};

class ItemThistle : CA_Magazine {
	scope = public;
	count = 1;
	displayName = "Thistle";
	descriptionShort = "Good for use in an antibiotic";
	model = "z\addons\dayz_communityassets\models\razor.p3d";
	picture = "z\addons\unleashed_pack\pictures\apple.paa";
	type = 256;
	class ItemActions
	{
		class Crafting
		{
			text = "Craft antibiotics";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			output[] = {{"ItemAntibiotic",1}};
			input[] = {{"ItemThistle",1}};
				
		};
	};
};