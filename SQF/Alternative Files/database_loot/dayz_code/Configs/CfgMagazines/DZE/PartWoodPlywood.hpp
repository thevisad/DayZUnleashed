class PartWoodPlywood: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Plywood";
	model = "\z\addons\dayz_epoch\models\plywood.p3d";
	picture="\z\addons\dayz_epoch\pictures\equip_plywood_CA.paa";
	descriptionShort = "Plywood: Used for building many structures.";
	class ItemActions {
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_260;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"workbench_kit",1}};
			input[] = {{"PartWoodPlywood",1},{"PartWoodLumber",2}};
				
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_261;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"wood_shack_kit",1}};
			input[] = {{"PartWoodPlywood",4},{"PartWoodLumber",4}};
		};
		class Crafting2
		{
			text = $STR_EPOCH_PLAYER_262;
			script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"ItemWoodFloorQuarter",1}};
			input[] = {{"PartWoodPlywood",3},{"PartWoodLumber",3}};
		};
		class Crafting3
		{
			text = $STR_EPOCH_PLAYER_263;
			script = ";['Crafting3','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"ItemWoodWallThird",1}};
			input[] = {{"PartWoodPlywood",3},{"PartWoodLumber",3}};
		};
		class Crafting4
		    {
		            text = $STR_EPOCH_PLAYER_264;
		            Script = ";['Crafting4','CfgMagazines', _id] spawn DZE_player_craftItem;";
		            neednearby[] = {"workshop"};
		            requiretools[] = {"ItemToolbox"};
		            output[] = {{"PartPlywoodPack",1}};
		            input[] = {{"PartWoodPlywood",3}};
		    };
			
	};
};
class PartPlywoodPack: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Plywood Pack";
	model = "\z\addons\dayz_epoch\models\plywood_pack.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_plywood_pack_CA.paa";
	descriptionShort = "Plywood in a stack";
	weight = 12;
	class ItemActions {
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_251;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"sawmill"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"PartWoodPlywood",3}};
			input[] = {{"PartPlywoodPack",1}};
		};
			
	};
};
	