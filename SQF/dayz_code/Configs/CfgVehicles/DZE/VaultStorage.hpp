class VaultStorage: Land_A_tent
{
	vehicleClass = "Survival";
	displayName = "Safe";
	model = "\z\addons\dayz_epoch\models\safe.p3d";
	destrType = "DestructNo";
	armor = 800;
	transportMaxMagazines = 200;
	transportMaxWeapons = 20;
	transportMaxBackpacks = 10;
};	
class VaultStorageLocked: Land_A_tent
{
	vehicleClass = "Survival";
	displayName = "Locked Safe";
	model = "\z\addons\dayz_epoch\models\safe.p3d";
	destrType = "DestructNo";
	armor = 800;
	transportMaxMagazines = 0;
	transportMaxWeapons = 0;
	transportMaxBackpacks = 0;
};