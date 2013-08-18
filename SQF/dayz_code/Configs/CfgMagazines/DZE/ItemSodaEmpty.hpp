class ItemSodaEmpty: HandGrenade
{
	scope = 2;
	displayName = "$STR_EQUIP_NAME_35";
	model = "\dayz_equip\models\soda_coke_e.p3d";
	picture = "\dayz_equip\textures\equip_soda_empty_ca.paa";
	descriptionShort = "$STR_EQUIP_DESC_35";
	ammo = "SodaCan";
	class ItemActions
	{
		class Crafting
		{
			text = "Melt into Bars";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemAluminumBar",1}};
			input[] = {{"ItemSodaEmpty",6}};
		};
	};
};