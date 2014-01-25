
	class TrapBear : CA_Magazine {
		scope = public;
		count = 1;
		type = 256;
		displayName = $STR_EQUIP_NAME_BEARTRAP;
		model = "\dayz_equip\models\bear_trap_gear.p3d";
		picture = "\dayz_equip\textures\equip_bear_trap_ca.paa";
		descriptionShort = $STR_EQUIP_DESC_BEARTRAP;
		
		class ItemActions {
			class Build {
				text = $STR_ACTION_BUILD;
				script = "spawn player_setTrap; r_action_count = r_action_count + 1;";
				require = "ItemToolbox";
				create = "BearTrap_DZ";
			};
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};
				input[] = {{"TrapBear",1}};
			};
		};
	};
	
