class ItemHatchet : ItemCore {
		scope = 2;
		displayName = $STR_EQUIP_NAME_HATCHET;
		model = "\dayz_equip\models\hatchet.p3d";
		picture = "\dayz_equip\textures\equip_hatchet_CA.paa";
		descriptionShort = $STR_EQUIP_DESC_HATCHET;
	
		class ItemActions {
			
			class Toolbelt
			{
				text=$STR_EPOCH_PLAYER_295;
				script="spawn player_addToolbelt;";
				use[]=
				{
					"ItemHatchet_DZE"
				};
				output[]=
				{
					"MeleeHatchet_DZE"
				};
			};
		};
	};