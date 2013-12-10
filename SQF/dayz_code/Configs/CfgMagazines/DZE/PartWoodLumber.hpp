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
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_254;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"sawmill"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"PartWoodPlywood",1}};
			input[] = {{"PartWoodLumber",2}};
				
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_255;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"bulk_empty",1}};
			input[] = {{"PartWoodLumber",2},{"PartGeneric",1}};
				
		};
		class Crafting2
		{
			text = $STR_EPOCH_PLAYER_256;
			script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"deer_stand_kit",1}};
			input[] = {{"PartWoodLumber",8},{"PartWoodPile",2}};
				
		};
			
		class Crafting3
		{
			text = $STR_EPOCH_PLAYER_257;
			script = ";['Crafting3','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodStairs",1}};
			input[] = {{"PartWoodLumber",8}};
				
		};
		class Crafting4
		{
			text = $STR_EPOCH_PLAYER_258;
			script = ";['Crafting4','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodLadder",1}};
			input[] = {{"PartWoodLumber",8}};
				
		};
		class Crafting5
        	{
			    text = $STR_EPOCH_PLAYER_259;
			    Script = ";['Crafting5','CfgMagazines', _id] spawn DZE_player_craftItem;";
			    neednearby[] = {"workshop"};
			    requiretools[] = {"ItemToolbox"};
			    output[] = {{"PartPlankPack",1}};
			    input[] = {{"PartWoodLumber",3}};
        	};
        	class Crafting6
        	{
	        	text = $STR_EPOCH_PLAYER_277;
			    Script = ";['Crafting6','CfgMagazines', _id] spawn DZE_player_craftItem;";
			    neednearby[] = {"workshop"};
			    requiretools[] = {"ItemToolbox"};
			    output[] = {{"ItemGunRackKit",1}};
			    input[] = {{"PartWoodLumber",6}};
		};
	};
};
class PartPlankPack: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Lumber Pack";
	model = "\z\addons\dayz_epoch\models\plank_pack.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_lumber_pack_CA.paa";
	descriptionShort = "Lumber in a stack";
	weight = 6;
	class ItemActions {
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_251;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"sawmill"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"PartWoodLumber",3}};
			input[] = {{"PartPlankPack",1}};
		};
	};
};