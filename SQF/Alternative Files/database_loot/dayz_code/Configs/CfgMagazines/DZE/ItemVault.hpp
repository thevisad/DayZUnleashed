class ItemVault: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Safe";
	model = "\z\addons\dayz_epoch\models\safe_onside.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_safe_ca.paa";
	descriptionShort = "Personal Safe: A placeable object that is used for very secure storage. WARNING!!! Placing your safe will give you a 4 digit number that is used to open the safe, save that number!";
	class ItemActions
	{
		class Build {
			text = "Place Safe";
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "VaultStorageLocked";
		};
	};
};
class ItemLockbox: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Lockbox";
	model = "\z\addons\dayz_epoch\models\lockbox_mag.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_lockbox_CA.paa";
	descriptionShort = "Semi secure lockbox";
	class ItemActions
	{
		class Build {
			text = "Place Lockbox";
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "LockboxStorageLocked";
		};
	};
};