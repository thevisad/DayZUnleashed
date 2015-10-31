class ItemBloodbag: CA_Magazine
	{
		scope = 2;
		count = 1;
		type = 256;
		displayName = "$STR_EQUIP_NAME_16";
		model = "\dayz_equip\models\bloodbag.p3d";
		picture = "\dayz_equip\textures\equip_bloodbag_ca.paa";
		descriptionShort = "$STR_EQUIP_DESC_16";
		class ItemActions {
			class HealSelf {
				text = "Give Yourself Blood";
				script = "spawn player_useMeds";
			};
		};
	};