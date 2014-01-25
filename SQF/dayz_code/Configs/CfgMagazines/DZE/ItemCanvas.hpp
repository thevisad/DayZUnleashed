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
			text = $STR_EPOCH_PLAYER_190;
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemTentOld",1}};
			input[] = {{"ItemCanvas",2},{"ItemPole",2}};
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_191;
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemDomeTent",1}};
			input[] = {{"ItemCanvas",3},{"ItemPole",3}};
		};
		class Crafting2
		{
				text = $STR_EPOCH_PLAYER_192;
				script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox","ItemKnife"};
				output[] = {{"ItemTentDomed2",1}};
				input[] = {{"ItemCanvas",3},{"ItemPole",3}};
		};
		class Crafting3
		{
			text = $STR_EPOCH_PLAYER_193;
			script = ";['Crafting2','CfgMagazines'] spawn DZE_player_craftItem;;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"sun_shade_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemCanvas",1},{"PartWoodLumber",4}};
		};
		class Crafting4
		{
			text = $STR_EPOCH_PLAYER_194;
			script = ";['Crafting3','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"ItemBurlap",1}};
			input[] = {{"ItemCanvas",2}};
		};
	};
};