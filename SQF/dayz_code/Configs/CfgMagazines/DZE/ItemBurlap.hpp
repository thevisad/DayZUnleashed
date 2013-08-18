class ItemBurlap: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Burlap";
	model = "\z\addons\dayz_epoch\models\burlap.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_burlap_ca.paa";
	descriptionShort = "Burlap: A strong cloth like material used for building sandbags";
	class ItemActions
	{
		class Crafting
		{
			text = "Craft Sandbag";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"sand"}; // todo add sand requirement
			requiretools[] = {"ItemEtool","ItemToolbox"};
			output[] = {{"ItemSandbag",1}};
			input[] = {{"ItemBurlap",3}};
		};
	};
};