class bulk: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Supply Crate";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "12 x Random Item";
};
class bulk_empty: bulk
{
	descriptionShort = "Empty Supply Crate";
	class ItemActions
	{
		class Crafting
		{
			text = "Pack 6 Coke";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"bulk_ItemSodaCoke",1}};
			input[] = {{"bulk_empty",1},{"ItemSodaCoke",6}};
		};
		class Crafting1
		{
			text = "Pack 6 Pepsi";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"bulk_ItemSodaPepsi",1}};
			input[] = {{"bulk_empty",1},{"ItemSodaPepsi",6}};
		};
	};
};
class bulk_ItemSodaCoke: bulk
{
	descriptionShort = "6 x ItemSodaCoke";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"ItemSodaCoke",6,"magazine"};
		};
	};
};
class bulk_ItemSodaPepsi: bulk
{
	descriptionShort = "6 x ItemSodaPepsi";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"ItemSodaPepsi",6,"magazine"};
		};
	};
};
class bulk_30Rnd_9x19_MP5SD: bulk
{
	descriptionShort = "12 x 30Rnd_9x19_MP5SD";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"30Rnd_9x19_MP5SD",12,"magazine"};
		};
	};
};
class bulk_15Rnd_9x19_M9SD: bulk
{
	descriptionShort = "12 x 15Rnd_9x19_M9SD";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"15Rnd_9x19_M9SD",12,"magazine"};
		};
	};
};
class bulk_30Rnd_556x45_StanagSD: bulk
{
	descriptionShort = "12 x 30Rnd_556x45_StanagSD";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"30Rnd_556x45_StanagSD",12,"magazine"};
		};
	};
};
class bulk_ItemSandbag: bulk
{
	descriptionShort = "12 x SandBag";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"ItemSandbag",12,"magazine"};
		};
	};
};
class bulk_17Rnd_9x19_glock17: bulk
{
	descriptionShort = "12 x 17Rnd_9x19_glock17";
	class ItemActions
	{
		class CreateMags
		{
			text = "Open %1";
			script = "spawn player_loadCrate;";
			output[] = {"17Rnd_9x19_glock17",12,"magazine"};
		};
	};
};

