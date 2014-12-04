class ExtraRc {
	class PartPlankPack {//http://epochmod.com/forum/index.php?/topic/28585-craft-walls-and-floors-directly-from-packs/
		class thirdwall {
			text = "Craft 1/3 Wood Wall";
			script = "['thirdwall'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class wall {
			text = "Craft Wood Wall";
			script = "['wall'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class quartfloor {
			text = "Craft 1/4 Wood Floor";
			script = "['quartfloor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class halffloor {
			text = "Craft 1/2 Wood Floor";
			script = "['halffloor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class floor {
			text = "Craft Wood Floor";
			script = "['floor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
	};
	
	class PartPlywoodPack {
		class thirdwall {
			text = "Craft 1/3 Wood Wall";
			script = "['thirdwall'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class wall {
			text = "Craft Wood Wall";
			script = "['wall'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class quartfloor {
			text = "Craft 1/4 Wood Floor";
			script = "['quartfloor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class halffloor {
			text = "Craft 1/2 Wood Floor";
			script = "['halffloor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
		class floor {
			text = "Craft Wood Floor";
			script = "['floor'] execVM '\z\addons\dayz_code\fn_craftable.sqf';";
		};
	};
	  class ItemRadio {
		class ItemActions {
			 class GroupManagement {
				text = "Group Management";
				script = "execVM '\z\addons\dayz_code\system\dzgm\loadGroupManagement.sqf'";
			 };
		 };
	  };
	class Pistolcore {
			class ItemActions {
				class Suicide
				{
					text = "Commit Suicide";
					script = "spawn \z\addons\dayz_code\actions\player_suicide.sqf";
				};
		};
	};
	class AK_107_GL_Kobra {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_107_GL_Kobra"}};
			};
		};
	};
	class AK_107_Kobra {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_107_Kobra"}};
			};
		};
	};
	class AK_107_PSO {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {{"AK_107_PSO",1}};
				inputweapons[] = {{"AK_107_PSO"}};
			};
		};
	};
	class AK_47_M {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_47_M"}};
			};
		};
	};
	class AK_47_S {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_47_S"}};
			};
		};
	};
	class AK_74 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_74"}};
			};
		};
	};
	class AK_74_GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_74_GL"}};
			};
		};
	};
	class AK_74_GL_Kobra {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AK_74_GL_Kobra"}};
			};
		};
	};
	class AKS_74_kobra {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AKS_74_kobra"}};
			};
		};
	};
	class AKS_74_U {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AKS_74_U"}};
			};
		};
	};
	class BAF_AS50_Scoped {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_AS50_Scoped"}};
			};
		};
	};
	class BAF_L110A1_Aim {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L110A1_Aim"}};
			};
		};
	};
	class BAF_L7A2_GPMG {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L7A2_GPMG"}};
			};
		};
	};
	class BAF_L85A2_RIS_ACOG {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_RIS_ACOG"}};
			};
		};
	};
	class BAF_L85A2_RIS_CWS {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_RIS_CWS"}};
			};
		};
	};
	class BAF_L85A2_RIS_Holo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_RIS_Holo"}};
			};
		};
	};
	class BAF_L85A2_RIS_SUSAT {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_RIS_SUSAT"}};
			};
		};
	};
	class BAF_L85A2_UGL_ACOG {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_UGL_ACOG"}};
			};
		};
	};
	class BAF_L85A2_UGL_Holo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_UGL_Holo"}};
			};
		};
	};
	class BAF_L85A2_UGL_SUSAT {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L85A2_UGL_SUSAT"}};
			};
		};
	};
	class BAF_L86A2_ACOG {
		class ItemActions {
		class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_L86A2_ACOG"}};
			};
		};
	};
	class BAF_LRR_scoped {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_LRR_scoped"}};
			};
		};
	};
	class BAF_LRR_scoped_W {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_LRR_scoped_W"}};
			};
		};
	};
	class bizon {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"bizon"}};
			};
		};
	};
	class bizon_silenced {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"bizon_silenced"}};
			};
		};
	};
	class Colt1911 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Colt1911"}};
			};
		};
	};
	class FN_FAL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"FN_FAL"}};
			};
		};
	};
	class FN_FAL_ANPVS4 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"FN_FAL_ANPVS4"}};
			};
		};
	};
	class G36_C_SD_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36_C_SD_camo"}};
			};
		};
	};
	class G36_C_SD_eotech {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36_C_SD_eotech"}};
			};
		};
	};
	class G36a {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36a"}};
			};
		};
	};
	class G36A_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36A_camo"}};
			};
		};
	};
	class G36C {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36C"}};
			};
		};
	};
	class G36K {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"G36K"}};
			};
		};
	};
	class glock17_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"glock17_EP1"}};
			};
		};
	};
	class hecate2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"hecate2"}};
			};
		};
	};
	class Huntingrifle {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Huntingrifle"}};
			};
		};
	};
	class KPfs_g36a1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g36a1"}};
			};
		};
	};
	class KPfs_g36a2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g36a2"}};
			};
		};
	};
	class KPfs_g36a4 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g36a4"}};
			};
		};
	};
	class KPfs_g36k {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g36k"}};
			};
		};
	};
	class KPfs_g36ksk {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g36ksk"}};
			};
		};
	};
	class kpfs_g3a2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"kpfs_g3a2"}};
			};
		};
	};
	class KPfs_G3a3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_G3a3"}};
			};
		};
	};
	class KPfs_g3a3zf {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g3a3zf"}};
			};
		};
	};
	class KPfs_g3a4 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g3a4"}};
			};
		};
	};
	class KPfs_g3dmr {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_g3dmr"}};
			};
		};
	};
	class kpfs_glock17 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"kpfs_glock17"}};
			};
		};
	};
	class KPfs_hk32 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPfs_hk32"}};
			};
		};
	};
	class KPFS_HK4 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_HK4"}};
			};
		};
	};
	class KPFS_HK416_Aim {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_HK416_Aim"}};
			};
		};
	};
	class KPFS_HKP30 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_HKP30"}};
			};
		};
	};
	class KPFS_HKP7 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_HKP7"}};
			};
		};
	};
	class KPFS_KarS {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_KarS"}};
			};
		};
	};
	class KPFS_Makarov {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Makarov"}};
			};
		};
	};
	class KPFS_Mauser_Hsc {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Mauser_Hsc"}};
			};
		};
	};
	class KPFS_MG3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MG3"}};
			};
		};
	};
	class KPFS_MG3_eot {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MG3_eot"}};
			};
		};
	};
	class KPFS_MG42 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MG42"}};
			};
		};
	};
	class KPFS_MP2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP2"}};
			};
		};
	};
	class KPFS_MP2A1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP2A1"}};
			};
		};
	};
	class KPFS_MP44 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP44"}};
			};
		};
	};
	class KPFS_MP5A3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP5A3"}};
			};
		};
	};
	class KPFS_MP5A3SD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP5A3SD"}};
			};
		};
	};
	class KPFS_MPi_AK_74 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_AK_74"}};
			};
		};
	};
	class KPFS_MPi_AKS_74 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_AKS_74"}};
			};
		};
	};
	class KPFS_MPi_AKS_74K {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_AKS_74K"}};
			};
		};
	};
	class KPFS_MPi_KM_72 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_KM_72"}};
			};
		};
	};
	class KPFS_MPi_KMKIX {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_KMKIX"}};
			};
		};
	};
	class KPFS_MPi_KMS_72 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MPi_KMS_72"}};
			};
		};
	};
	class KPFS_P1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P1"}};
			};
		};
	};
	class KPFS_P12 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P12"}};
			};
		};
	};
	class KPFS_P12SD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P12SD"}};
			};
		};
	};
	class KPFS_P2000 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P2000"}};
			};
		};
	};
	class KPFS_P220 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P220"}};
			};
		};
	};
	class KPFS_P225 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P225"}};
			};
		};
	};
	class KPFS_P226 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P226"}};
			};
		};
	};
	class KPFS_P38 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P38"}};
			};
		};
	};
	class KPFS_P38k {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P38k"}};
			};
		};
	};
	class KPFS_P5 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P5"}};
			};
		};
	};
	class KPFS_P8 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P8"}};
			};
		};
	};
	class KPFS_P88 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P88"}};
			};
		};
	};
	class KPFS_P99QA {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_P99QA"}};
			};
		};
	};
	class KPFS_PM63 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_PM63"}};
			};
		};
	};
	class KPFS_PSL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_PSL"}};
			};
		};
	};
	class KPFS_PZF60 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_PZF60"}};
			};
		};
	};
	class KPFS_Sauer_38h {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Sauer_38h"}};
			};
		};
	};
	class KPFS_TT33 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_TT33"}};
			};
		};
	};
	class KPFS_Walther_M9 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Walther_M9"}};
			};
		};
	};
	class KPFS_Walther_PP {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Walther_PP"}};
			};
		};
	};
	class ksvk {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"ksvk"}};
			};
		};
	};
	class LeeEnfield {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"LeeEnfield"}};
			};
		};
	};
	class M1014 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M1014"}};
			};
		};
	};
	class M14_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M14_EP1"}};
			};
		};
	};
	class M16A2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M16A2"}};
			};
		};
	};
	class M16A2GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M16A2GL"}};
			};
		};
	};
class m16a4 {
	class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m16a4"}};
			};
		};
	};
	class M16A4_ACG {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M16A4_ACG"}};
			};
		};
	};
	class M16A4_ACG_GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M16A4_ACG_GL"}};
			};
		};
	};
	class M16A4_GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M16A4_GL"}};
			};
		};
	};
	class M24 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M24"}};
			};
		};
	};
	class M24_des_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M24_des_EP1"}};
			};
		};
	};
	class M240 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M240"}};
			};
		};
	};
	class M240_DZ {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M240_DZ"}};
			};
		};
	};
	class m240_scoped_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m240_scoped_EP1"}};
			};
		};
	};
	class M249 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M249"}};
			};
		};
	};
	class M249_DZ {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M249_DZ"}};
			};
		};
	};
	class M249_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M249_EP1"}};
			};
		};
	};
	class M249_m145_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M249_m145_EP1"}};
			};
		};
	};
	class M40A3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M40A3"}};
			};
		};
	};
class M4A1 {
	class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1"}};
			};
		};
	};
	class M4A1_Aim {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_Aim"}};
			};
		};
	};
	class M4A1_Aim_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_Aim_camo"}};
			};
		};
	};
	class M4A1_AIM_SD_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_AIM_SD_camo"}};
			};
		};
	};
	class M4A1_HWS_GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_HWS_GL"}};
			};
		};
	};
	class M4A1_HWS_GL_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_HWS_GL_camo"}};
			};
		};
	};
	class M4A1_HWS_GL_SD_Camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_HWS_GL_SD_Camo"}};
			};
		};
	};
	class M4A1_RCO_GL {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A1_RCO_GL"}};
			};
		};
	};
	class M4A3_CCO_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A3_CCO_EP1"}};
			};
		};
	};
	class M4A3_RCO_GL_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4A3_RCO_GL_EP1"}};
			};
		};
	};
	class M4SPR {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M4SPR"}};
			};
		};
	};
	class M60A4_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M60A4_EP1"}};
			};
		};
	};
	class M9 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M9"}};
			};
		};
	};
	class M9SD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M9SD"}};
			};
		};
	};
	class Makarov {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Makarov"}};
			};
		};
	};
	class MakarovSD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MakarovSD"}};
			};
		};
	};
	class MG36 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MG36"}};
			};
		};
	};
	class Mk_48_DES_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Mk_48_DES_EP1"}};
			};
		};
	};
	class Mk_48_DZ {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Mk_48_DZ"}};
			};
		};
	};
	class MP5A5 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MP5A5"}};
			};
		};
	};
	class mp5a5_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5a5_acog"}};
			};
		};
	};
	class mp5a5_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5a5_aimpoint"}};
			};
		};
	};
	class mp5a5_reflex {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5a5_reflex"}};
			};
		};
	};
	class mp5a5n {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5a5n"}};
			};
		};
	};
	class mp5k {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5k"}};
			};
		};
	};
	class MP5SD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MP5SD"}};
			};
		};
	};
	class mp5sd6 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5sd6"}};
			};
		};
	};
	class mp5sd6_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5sd6_acog"}};
			};
		};
	};
	class mp5sd6_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5sd6_aimpoint"}};
			};
		};
	};
	class mp5sd6_reflex {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mp5sd6_reflex"}};
			};
		};
	};
	class MR43 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MR43"}};
			};
		};
	};
	class p220 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"p220"}};
			};
		};
	};
	class p226 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"p226"}};
			};
		};
	};
	class p226_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"p226_sd"}};
			};
		};
	};
	class p226sf {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"p226sf"}};
			};
		};
	};
	class p226sf_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"p226sf_sd"}};
			};
		};
	};
	class Pecheneg {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Pecheneg"}};
			};
		};
	};
	class PK {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"PK"}};
			};
		};
	};
	class Remington870_lamp {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Remington870_lamp"}};
			};
		};
	};
	class revolver_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"revolver_EP1"}};
			};
		};
	};
	class revolver_gold_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"revolver_gold_EP1"}};
			};
		};
	};
	class RPK_74 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"RPK_74"}};
			};
		};
	};
	class Sa58P_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Sa58P_EP1"}};
			};
		};
	};
	class Sa58V_CCO_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Sa58V_CCO_EP1"}};
			};
		};
	};
	class Sa58V_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Sa58V_EP1"}};
			};
		};
	};
	class Sa58V_RCO_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Sa58V_RCO_EP1"}};
			};
		};
	};
	class Sa61_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Sa61_EP1"}};
			};
		};
	};
	class Saiga12K {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Saiga12K"}};
			};
		};
	};
	class sapr_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sapr_aimpoint"}};
			};
		};
	};
	class sapr_aimpoint_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sapr_aimpoint_sd"}};
			};
		};
	};
	class sapr_hensoldt {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sapr_hensoldt"}};
			};
		};
	};
	class sapr_hensoldt_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sapr_hensoldt_sd"}};
			};
		};
	};
	class sg550 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550"}};
			};
		};
	};
	class sg550_commando_hensoldt {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_commando_hensoldt"}};
			};
		};
	};
	class sg550_kern {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_kern"}};
			};
		};
	};
	class sg550_lg97 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_lg97"}};
			};
		};
	};
	class sg550_lg97_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_lg97_aimpoint"}};
			};
		};
	};
	class sg550_lg97_aimpoint_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_lg97_aimpoint_camo"}};
			};
		};
	};
	class sg550_sniper {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg550_sniper"}};
			};
		};
	};
	class sg551 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551"}};
			};
		};
	};
	class sg551_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_acog"}};
			};
		};
	};
	class sg551_acog_lg97 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_acog_lg97"}};
			};
		};
	};
	class sg551_commando_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_commando_acog"}};
			};
		};
	};
	class sg551_commando_aim {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_commando_aim"}};
			};
		};
	};
	class sg551_commando_lg97_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_commando_lg97_acog"}};
			};
		};
	};
	class sg551_commando_lg97_aim {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_commando_lg97_aim"}};
			};
		};
	};
	class sg551_commando_lg97_aim_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_commando_lg97_aim_camo"}};
			};
		};
	};
	class sg551_lg97 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg551_lg97"}};
			};
		};
	};
	class sg552 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552"}};
			};
		};
	};
	class sg552_commando {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_commando"}};
			};
		};
	};
	class sg552_commando_mg {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_commando_mg"}};
			};
		};
	};
	class sg552_commando_mg_eotech {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_commando_mg_eotech"}};
			};
		};
	};
	class sg552_commando_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_commando_sd"}};
			};
		};
	};
	class sg552_mp_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_mp_aimpoint"}};
			};
		};
	};
	class sg552_mp_aimpoint_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_mp_aimpoint_sd"}};
			};
		};
	};
	class sg552_reflex {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552_reflex"}};
			};
		};
	};
	class sg552lb {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552lb"}};
			};
		};
	};
	class sg552lb_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552lb_acog"}};
			};
		};
	};
	class sg552lb_aimpoint {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552lb_aimpoint"}};
			};
		};
	};
	class sg552lb_commando_acog {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552lb_commando_acog"}};
			};
		};
	};
	class sg552lb_commando_reflex {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552lb_commando_reflex"}};
			};
		};
	};
	class sg552sd_reflex {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"sg552sd_reflex"}};
			};
		};
	};
	class SVD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"SVD"}};
			};
		};
	};
	class SVD_CAMO {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"SVD_CAMO"}};
			};
		};
	};
	class SVD_des_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"SVD_des_EP1"}};
			};
		};
	};
	class SVD_NSPU_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"SVD_NSPU_EP1"}};
			};
		};
	};
	class trg42 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"trg42"}};
			};
		};
	};
	class trg42_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"trg42_camo"}};
			};
		};
	};
	class trg42_t8m {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"trg42_t8m"}};
			};
		};
	};
	class trg42_t8m_camo {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"trg42_t8m_camo"}};
			};
		};
	};
	class UZI_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"UZI_EP1"}};
			};
		};
	};
	class UZI_SD_EP1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"UZI_SD_EP1"}};
			};
		};
	};
	class Winchester1866 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Winchester1866"}};
			};
		};
	};
	class AA12_PMC {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};				input[] = {};
				inputweapons[] = {{"AA12_PMC"}};
			};
		};
	};
	class AKS_GOLD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"AKS_GOLD"}};
			};
		};
	};
	class BAF_AS50_scoped_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_AS50_scoped_Large"}};
			};
		};
	};
	class BAF_AS50_TWS {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_AS50_TWS"}};
			};
		};
	};
	class BAF_AS50_TWS_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"BAF_AS50_TWS_Large"}};
			};
		};
	};
	class Javelin {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Javelin"}};
			};
		};
	};
	class KPFS_CG84 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_CG84"}};
			};
		};
	};
	class KPFS_Fliegerfaust_2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Fliegerfaust_2"}};
			};
		};
	};
	class KPFS_G22 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_G22"}};
			};
		};
	};
	class KPFS_G22_desert {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_G22_desert"}};
			};
		};
	};
	class KPFS_G27_scoped {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_G27_scoped"}};
			};
		};
	};
	class KPFS_G3DMR2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_G3DMR2"}};
			};
		};
	};
	class KPFS_G3SG1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_G3SG1"}};
			};
		};
	};
	class kpfs_G82 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"kpfs_G82"}};
			};
		};
	};
	class kpfs_glock17SD {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"kpfs_glock17SD"}};
			};
		};
	};
	class KPFS_MBB_Armbrust {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MBB_Armbrust"}};
			};
		};
	};
	class KPFS_MG2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MG2"}};
			};
		};
	};
	class KPFS_MG4 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MG4"}};
			};
		};
	};
	class KPFS_MP5A1 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_MP5A1"}};
			};
		};
	};
	class kpfs_p2104 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"kpfs_p2104"}};
			};
		};
	};
	class KPFS_Pzf3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"KPFS_Pzf3"}};
			};
		};
	};
	class m107_TWS_EP1_DZ {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m107_TWS_EP1_DZ"}};
			};
		};
	};
	class M134 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M134"}};
			};
		};
	};
	class M134_2 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"M134_2"}};
			};
		};
	};
	class m8_carbine_pmc {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_carbine_pmc"}};
			};
		};
	};
	class m8_compact_pmc {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_compact_pmc"}};
			};
		};
	};
	class m8_holo_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_holo_sd"}};
			};
		};
	};
	class m8_SAW_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_SAW_Large"}};
			};
		};
	};
	class m8_tws {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_tws"}};
			};
		};
	};
	class m8_tws_sd {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"m8_tws_sd"}};
			};
		};
	};
	class MG36_camo_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MG36_camo_Large"}};
			};
		};
	};
	class MG36_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"MG36_Large"}};
			};
		};
	};
	class mg51 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mg51"}};
			};
		};
	};
	class mg51_eotech {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"mg51_eotech"}};
			};
		};
	};
	class panzerfaust3 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"panzerfaust3"}};
			};
		};
	};
	class PMC_AS50_scoped {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"PMC_AS50_scoped"}};
			};
		};
	};
	class PMC_AS50_scoped_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"PMC_AS50_scoped_Large"}};
			};
		};
	};
	class PMC_AS50_TWS {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"PMC_AS50_TWS"}};
			};
		};
	};
	class PMC_AS50_TWS_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"PMC_AS50_TWS_Large"}};
			};
		};
	};
	class Remington870 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Remington870"}};
			};
		};
	};
	class RPG18 {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"RPG18"}};
			};
		};
	};
	class RPG7V {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"RPG7V"}};
			};
		};
	};
	class RPK_74_Large {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"RPK_74_Large"}};
			};
		};
	};
	class Stinger {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Stinger"}};
			};
		};
	};
	class Strela {
		class ItemActions {
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','ExtraRc', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"Strela"}};
			};
		};
	};
};