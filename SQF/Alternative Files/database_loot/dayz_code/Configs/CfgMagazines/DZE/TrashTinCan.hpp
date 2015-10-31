class TrashTinCan: HandGrenade
{
	scope = 2;
	displayName = $STR_EQUIP_NAME_33;
	model = "\dayz_equip\models\trash_tincan.p3d";
	picture = "\dayz_equip\textures\equip_tincan_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_33;
	ammo = "TinCan";
	class ItemActions
	{
		class Crafting
		{
			text = "Melt into Bars";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemTinBar",1}};
			input[] = {{"TrashTinCan",6}};
		};
	};
};