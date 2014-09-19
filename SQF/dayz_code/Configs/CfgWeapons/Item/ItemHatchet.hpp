class ItemHatchet : ItemCore {
		scope = 2;
		displayName = $STR_EQUIP_NAME_HATCHET;
		model = "\dayz_equip\models\hatchet.p3d";
		picture = "\dayz_equip\textures\equip_hatchet_CA.paa";
		descriptionShort = $STR_EQUIP_DESC_HATCHET;
	
		class ItemActions {
			class Use
			{
				text = "$STR_ACTIONS_CHOPWOOD";
				script = "spawn player_chopWood;";
			};
			class Toolbelt
			{
				text = "Remove from Toolbelt";
				script="spawn player_addToolbelt;";
				use[]=
				{
					"ItemHatchet"
				};
				output[]=
				{
					"MeleeHatchet"
				};
			};
			class ToBack
			{
				text=$STR_ACTIONS_2BACK;
				script="spawn player_addtoBack;";
				use[]=
				{
					"ItemHatchet"
				};
				output[]=
				{
					"MeleeHatchet"
				};
			};
		};
	};