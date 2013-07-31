#define VSoft		0
#define VArmor		1
#define VAir		2

#define private		0
#define protected		1
#define public		2

#define ReadAndWrite		0
#define ReadAndCreate		1
#define ReadOnly		2
#define ReadOnlyVerified		3

#define EAST 0 // (Russian)

#include "Configs\basicDefines.hpp"

//Weight System
#include "R3F_CfgWeight.h" 

//#include "Configs\CfgWorlds.hpp"
#include "Configs\CfgFaction.hpp"
#include "Configs\rscTitles.hpp"
#include "Configs\CfgMoves.hpp"
#include "Configs\CfgVehicles.hpp"
#include "Configs\CfgWeapons.hpp"
#include "Configs\CfgMagazines.hpp"
#include "Configs\CfgLoot\CfgBuildingLoot.hpp"
#include "Configs\CfgMarkers.hpp"
#include "Configs\CfgAmmo.hpp"
#include "Configs\CfgObjectCompositions.hpp"
#include "Configs\CfgTownGenerator\CfgTownGeneratorUnleashed.hpp"
#include "Configs\build_recipe_dialog.hpp"
#include "Configs\build_recipe_list_dialog.hpp"

class CfgPatches {
	class dayz_code {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"dayz_equip","dayz_weapons","CAMisc3","CABuildingParts","CABuildingParts_Signs","CAStructuresHouse","CAStructuresLand_Ind_Stack_Big","CAStructures_Misc_Powerlines","CAStructures","CABuildings","CABuildings2","Ind_MalyKomin","CAStructures_A_CraneCon","CAStructures_Mil","CAStructures_Nav","CAStructures_Rail","A_Crane_02","A_TVTower","CAStructures_Railway","CAStructuresHouse_HouseBT","BB_OA_Female"};
	};
	class DZ_DebriefingRemoved	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAUI"};
	};
};

class CfgMods
{
	class DayZ
	{
		dir = "@DayZUnleashed";
		name = "Arma 2: DayZ Unleashed";
		picture = "z\addons\dayz_code\gui\mod.paa";
		hidePicture = 0;
		hideName = 0;
		action = "http://www.dayzunleashed.com";
		version = "1.0-Devbuild-200713";
		hiveVersion = 0.96;
	};
	class DZ_InitWorld
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"napf"};
	};
};
/*
class CfgMissions
{
	 class Cutscenes
	 {
	  class ChernarusIntro1
		  {
			directory = "z\addons\dayz_code\Configs\CfgWorlds\intro.NAPF";
		  };
	 };
};
*/
class CfgWorlds
{
        initWorld = "napf";
        demoWorld = "napf";
};

class CfgAddons
{
	access = 1;
	class PreloadBanks
	{
	};
	class PreloadAddons
	{
		class dayz
		{
			list[] = {
						"dayz_code","dayz","dayz_equip","dayz_weapons","dayz_sfx","dayz_communityassets",
						"KPFS_UAZ451","SWM_SwissArms","SWM_Misc","unleashed_equip","unleashed_skins",
						"unleashed_vehicles","KPFS_G36","KPFS_G3","KPFS_P38","KPFS_MPi74","KPFS_SKS",
						"KPFS_STG","KPFS_P99","KPFS_MP2","KPFS_Weapons","dayz_epoch","unleashed_pack",
						"BB_OA_Female"
			};
		};
	};
};

class CfgActions {
	class None; // External class reference

	class Rearm : None {
		show = 0;
	};
	
	class TakeBag : None {
		show = 0;
	};
	
};
class CfgAISkill {
	aimingaccuracy[] = {0, 0, 1, 1};
	aimingshake[] = {0, 0, 1, 1};
	aimingspeed[] = {0, 0, 1, 1};
	commanding[] = {0, 0, 1, 1};
	courage[] = {0, 1, 1, 1};
	endurance[] = {0, 0, 1, 1};
	general[] = {0, 0, 1, 1};
	reloadspeed[] = {0, 0, 1, 1};
	spotdistance[] = {0, 0, 1, 0.6};
	spottime[] = {0, 0, 1, 1};
};

class CfgInGameUI
{
    class PeripheralVision
    {
        cueColor[] = {0,0,0,0};
        cueFriendlyColor[] = {0,0,0,0};
        cueEnemyColor[] = {0,0,0,0};
    };
	
	
	class MPTable
	{
		color[] = {0,0,0,0}; //{0.7,0.7,0.7,1};
		colorTitleBg[] = {0,0,0,0}; //{0.1,0.15,0.15,1};
		colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.9};
		colorSelected[] = {0,0,0,0}; //{0.7,0.7,0.7,0.4};
		colorWest[] = {0,0,0,0}; //{0.7,0.95,0.7,1};
		colorEast[] = {0,0,0,0}; //{0.95,0.7,0.7,1};
		colorCiv[] = {0,0,0,0}; //{0.8,0.8,0.8,1};
		colorRes[] = {0,0,0,0}; //{0.7,0.7,0.95,1};
		font = "EtelkaNarrowMediumPro";
		size = "0"; //"( 21 / 408 )";
		class Columns
		{
			class Order
			{
				width = 0; //0.046;
				colorBg[] = {0,0,0,0}; //{0.1,0.27,0.1,0.8};
				doubleLine = 0;
			};
			class Player
			{
				width = 0; //0.25;
				colorBg[] = {0,0,0,0}; //{0.1,0.23,0.1,0.8};
				doubleLine = 0;
			};
			class KillsInfantry
			{
				width = 0; //0.11;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; //"\ca\ui\data\stats_infantry_ca.paa";
			};
			class KillsSoft
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; //"\ca\ui\data\stats_soft_ca.paa";
			};
			class KillsArmor
			{
				width = 0; //0.11;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; //"\ca\ui\data\stats_armored_ca.paa";
			};
			class KillsAir
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; //"\ca\ui\data\stats_air_ca.paa";
			};
			class Killed
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.15,0.1,0.8};
				picture = ""; //"\ca\ui\data\stats_killed_ca.paa";
			};
			class KillsTotal
			{
				width = 0; //0.1;
				doubleLine = 0;
				colorBg[] = {0,0,0,0}; //{0.1,0.35,0.1,0.9};
				picture = ""; //"\ca\ui\data\stats_total_ca.paa";
			};
		};
	};
}; 

class CfgVoice {
	class NoVoice {
		protocol = "RadioProtocolBase";
		variants[] = {1};
		directories[] = {"", ""};
		identityTypes[] = {"Default", "Zombie1", "Zombie2", "Zombie3"};
	};
};

class CfgIdentities {
	class Zombie1 {
		name = "Zombie";
		face = "Zombie1";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie2 {
		name = "Zombie";
		face = "Zombie2";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie3 {
		name = "Zombie";
		face = "Zombie3";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	// player zombie
	class PZombie1
	{
		name = "PZombie";
		face = "PZombie1";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class PZombie2
	{
		name = "PZombie";
		face = "PZombie2";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class TheVisad
    {
        name="Survivor";
        face="TheVisad";
        glasses="none";
        speaker="Male04_GB_EN_PMC";
        pitch=1.000000;
    };
	class XyberViri
    {
        name="Survivor";
        face="XyberViri";
        glasses="none";
        speaker="Male04_GB_EN_PMC";
        pitch=1.000000;
    };
};

class CfgFaces {
	class Default;	// External class reference
	
	class Man : Default {
		class Default;	// External class reference
		class Zombie1 : Default {
			name = "Zombie 1";
			texture = "\dayz\textures\faces\zombie_03_co.paa";
			identityTypes[] = {"Zombie1"};
			disabled = 0;
		};
		
		class Zombie2 : Default {
			name = "Zombie 2";
			texture = "\dayz\textures\faces\zombie_03_co.paa";
			identityTypes[] = {"Zombie2"};
			disabled = 0;
		};
		
		class Zombie3 : Default {
			name = "Zombie 3";
			texture = "z\addons\dayz_communityassets\faces\zombie_03_co.paa";
			material = "z\addons\dayz_communityassets\faces\zombie_03.rvmat";
			identityTypes[] = {"Zombie3"};
			disabled = 0;
		};
		
        	class TheVisad : Default {
            	name = "TheVisad";
           	texture = "\z\addons\unleashed_pack\textures\thevisad_skin.paa";
           	identityTypes[] = {"TheVisad"};
            	disabled = 0;
            	};
            	
		class XyberViri : Default {
            	name = "XyberViri";
            	texture = "\z\addons\unleashed_pack\textures\xyberviri_skin.paa";
            	identityTypes[] = {"XyberViri"};
            	disabled = 0;
            	};	
	};
	// player zombie
	class ZFaces
	{	
		class Default
		{
			name = "PZombie 1";
			texture = "\dayz\textures\faces\zombie_03_co.paa";
			identityTypes[] = {"PZombie1"};
			disabled = 0;
			material = "\ca\characters\heads\male\defaulthead\data\hhl_white.rvmat"; 
            head = "defaultHead"; 
		};
		class Zombie1 : Default
		{
			name = "PZombie 1";
			texture = "\dayz\textures\faces\zombie_03_co.paa";
			identityTypes[] = {"PZombie1"};
			disabled = 0;
		};
		class Zombie2 : Default
		{
			name = "PZombie 2";
			texture = "\dayz\textures\faces\zombie_03_co.paa";
			identityTypes[] = {"PZombie2"};
			disabled = 0;
		};
	};
	
};

class CfgSurvival {
	class Inventory {
		class Default {
			RandomMagazines = 3;
			//weapons[] = {"Makarov"}; //8Rnd_9x18_Makarov
			GuaranteedMagazines[] = {"ItemBandage","HandRoadFlare"};
			RandomPossibilitieMagazines[] = {"ItemBandage","ItemPainkiller"};
			//weapons[] = {"HandRoadFlare"};
			backpackWeapon = "";
			//backpack = "DZ_Patrol_Pack_EP1";
		};
	};
	class Meat {
		class Default {
			yield = 2;
			rawfoodtype = "FoodmeatRaw";
		};
		class Cow: Default {
			yield = 6;
			rawfoodtype = "FoodbeefRaw";
		};
		class Cow01: Cow {};
		class Cow02: Cow {};
		class Cow03: Cow {};
		class Cow04: Cow {};
		class Goat: Default {
			yield = 4;
			rawfoodtype = "FoodgoatRaw";
		};
		class Sheep: Default {
			yield = 4;
			rawfoodtype = "FoodmuttonRaw";
		};
		class WildBoar: Default {
			yield = 4;
			rawfoodtype = "FoodbaconRaw";
		};
		class Hen: Default {
			yield = 2;
			rawfoodtype = "FoodchickenRaw";
		};
		class Rabbit: Default {
			yield = 2;
			rawfoodtype = "FoodrabbitRaw";
		};
	};
};
