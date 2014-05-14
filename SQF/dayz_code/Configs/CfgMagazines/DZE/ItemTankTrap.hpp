	class ItemTankTrap : CA_Magazine {
		scope = public;
		count = 1;
		type = 256;
		displayName = $STR_EQUIP_NAME_22;
		model = "\dayz_equip\models\tank_trap_kit.p3d";
		picture = "\dayz_equip\textures\equip_tanktrap_kit_CA.paa";
		descriptionShort = $STR_EQUIP_DESC_22;
		
		class ItemActions {
			class Build {
				text = $STR_ACTION_BUILD;
				script = "spawn DZE_player_build;";
				require[] = {"ItemToolbox"};
				create = "Hedgehog_DZ";
			};
			
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};
				input[] = {{"ItemTankTrap",1}};
			};
		};
	};
	
		class ItemWire : CA_Magazine {
		scope = public;
		count = 1;
		type = 256;
		displayName = $STR_EQUIP_NAME_23;
		model = "\dayz_equip\models\Fence_wire_kit.p3d";
		picture = "\dayz_equip\textures\equip_fencewire_kit_CA.paa";
		descriptionShort = $STR_EQUIP_DESC_23;
		
		class ItemActions {
			class Build {
				text = $STR_ACTION_BUILD;
				script = "spawn DZE_player_build;";
				require[] = {"ItemToolbox"};
				create = "Wire_cat1";
			};
		};
	};
	