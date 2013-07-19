class ItemCanvas: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Canvas";
	model = "\z\addons\dayz_epoch\models\canvas.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_canvas_ca.paa";
	descriptionShort = "Canvas Parcel";
	class ItemActions
	{
		class Crafting
		{
			text = "Craft Tent";
			script = "DZE_Crafting = ['Crafting','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemTent",1}};
			input[] = {{"ItemCanvas",2},{"ItemPole",2}};
		};
		class Crafting1
		{
			text = "Craft Domed Tent";
			script = "DZE_Crafting = ['Crafting1','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemDomeTent",1}};
			input[] = {{"ItemCanvas",3},{"ItemPole",3}};
		};
		class Crafting2
		{
			text = "Craft Sun Shade";
			script = "DZE_Crafting = ['Crafting2','CfgMagazines']; spawn DZE_player_craftItem;;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"sun_shade_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemCanvas",1},{"PartWoodLumber",4}};
		};
		class Crafting3
		{
			text = "Craft Burlap";
			script = "DZE_Crafting = ['Crafting3','CfgMagazines']; spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemBurlap",1}};
			input[] = {{"ItemCanvas",2}};
		};
	};
};