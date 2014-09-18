class ItemSledge: ItemCore
{
	scope=2;
	displayName=$STR_EQUIP_SLEDGE;
	model="\z\addons\dayz_epoch\models\sledge_mag.p3d";
	picture="\z\addons\dayz_epoch\pictures\equip_sledge_CA.paa";
	descriptionShort=$STR_EQUIP_SLEDGE_DESC;
	class ItemActions
	{
		class Toolbelt
		{
			text=$STR_EPOCH_PLAYER_295;
			script="spawn player_addToolbelt;";
			use[]=
			{
				"ItemSledge"
			};
			output[]=
			{
				"MeleeSledge"
			};	
		};
			class ToBack
			{
				text=$STR_ACTIONS_2BACK;
				script="spawn player_addtoBack;";
				use[]=
				{
					"ItemSledge"
				};
				output[]=
				{
					"MeleeSledge"
				};
			};
	};
};
