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

class ItemSodaCokeEmpty : ItemSodaEmpty{
	model = "\dayz_equip\models\soda_coke_e.p3d";
	picture = "\dayz_equip\textures\equip_soda_empty_ca.paa";
};
class ItemSodaPepsiEmpty : ItemSodaEmpty{
	model = "\dayz_equip\models\soda_pepsi_e.p3d";
	picture = "\dayz_equip\textures\equip_soda_empty_ca.paa";
};
class ItemSodaMdewEmpty : ItemSodaEmpty{
	model = "\dayz_equip\models\soda_mdew_e.p3d";
	picture = "\dayz_equip\textures\equip_soda_empty_ca.paa";
};
class ItemSodaMtngreenEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_mtngreen_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_mtngreen_clean_empty_ca.paa";
};
class ItemSodaR4z0rEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_r4z0r_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_r4z0r_clean_empty_ca.paa";
};
class ItemSodaClaysEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_clays_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_clays_clean_empty_ca.paa";
};
class ItemSodaSmashtEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_smasht_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_smasht_clean_empty_ca.paa";
};

class ItemSodaDrwasteEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_drwaste_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_drwaste_clean_empty_ca.paa";
};
/*
class ItemSodaFrankaEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_franka_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_franka_clean_empty_ca";
	//ammo = "SodaCanMtngreen";
};
*/
class ItemSodaLemonadeEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_lemonade_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_lemonade_clean_empty_ca.paa";
};
/*
class ItemSodaLirikEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_lirik_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_lirik_clean_empty_ca.paa";
};
*/
class ItemSodaLvgEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_lvg_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_lvg_clean_empty_ca.paa";
};
class ItemSodaMzlyEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_mzly_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_mzly_clean_empty_ca.paa";
};
/*
class ItemSodaPeppsyEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_peppsy_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_peppsy_clean_empty_ca.paa";
};
*/
class ItemSodaRabbitEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_rabbit_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_rabbit_clean_empty_ca.paa";

};
/*
class ItemSodaSacriteEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_sacrite_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_sacrite_clean_empty_ca.paa";
};
*/
class ItemSodaRocketFuelEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_rocket_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_rocket_clean_empty_ca.paa";
};
class ItemSodaGrapeDrinkEmpty : ItemSodaEmpty{
	model = "z\addons\dayz_communityassets\models\soda_grape_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_soda_grape_clean_empty_ca.paa";
};