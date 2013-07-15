class WeaponHolder_ItemVault: WeaponHolderBase
{
	scope = 2;
	displayName = "Safe";
	model = "\z\addons\dayz_epoch\models\safe.p3d";
	class eventHandlers
	{
		init = "[(_this select 0),'cfgMagazines','ItemVault'] execVM '\z\addons\dayz_code\init\object_pickupAction.sqf';";
	};
};