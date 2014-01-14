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

#define EAST 0       // (Russian)
//#define WEST 1       // Survivors
//#define RESISTANCE 2 // Zeds
//#define CIVILIAN 3   // Objects/Innocents

#include "Configs\basicDefines.hpp"

//Weight System
#include "R3F_Realism\R3F_Weight\R3F_CfgWeight.h" 

//#include "Configs\CfgWorlds.hpp"
#include "Configs\CfgFaction.hpp"
#include "Configs\rscTitles.hpp"

// Safe UI
#include "Configs\safegui.hpp"

#include "Configs\CfgMoves.hpp"
#include "Configs\CfgVehicles.hpp"
#include "Configs\CfgWeapons.hpp"
#include "Configs\CfgMagazines.hpp"
#include "Configs\CfgLoot\CfgBuildingLoot.hpp"
#include "Configs\CfgMarkers.hpp"
#include "Configs\CfgAmmo.hpp"
#include "Configs\CfgObjectCompositions.hpp"
#include "Configs\CfgTownGenerator\CfgTownGeneratorUnleashed.hpp"
#include "Configs\CfgRPG.hpp"
//HNGSpeedBoost
#include "Configs\CfgPlayerVariables.hpp"
#include "Configs\CfgFunctions.hpp"

class CfgPatches {
	class dayz_code {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAMisc3","CABuildingParts","CABuildingParts_Signs","CAStructuresHouse","CAStructuresLand_Ind_Stack_Big","CAStructures_Misc_Powerlines","CAStructures","CABuildings","CABuildings2","Ind_MalyKomin","CAStructures_A_CraneCon","CAStructures_Mil","CAStructures_Nav","CAStructures_Rail","A_Crane_02","A_TVTower","CAStructures_Railway","CAStructuresHouse_HouseBT"};
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
		name = "Arma 2: Unleashed";
		picture = "z\addons\dayz_code\gui\mod.paa";
		hidePicture = 0;
		hideName = 0;
		action = "http://www.dayzunleashed.com";
		version = "0.97-Devbuild-01142014";
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
						"aif_arma1buildings","BB_OA_Female","cwr2_Buildings_Data","cwr2_Buildings","cwr2_Furniture","dayz","dayz_anim","dayz_communityassets","dayz_epoch","dayz_equip","dayz_sfx","dayz_weapons","CAWheeled2_Kamaz","ibr_rn","KPFS_UAZ451","KPFSWaySigns","KPFS_Weapons","KPFS_Weapons_WW2","MAP_EU","MBG_Buildings_2","MBG_Buildings_3","mbg_african_buildings","MBG_Killhouses","OSShDY","st_collision","st_evasive","SWM_Misc","SWM_SwissArms","unleashed_pack","endworld_wrecks"
			};
		};
	};
};

class CfgVehicleClasses {
    class radsource {
        displayName = "Radiation Source";
    };    
    class survivor {
        displayName = "Survivors";
    };
    class zombie {
        displayName = "Zombie";
    };
    class distraction {
        displayName = "Distraction";
    };
    class Survival {
        displayName = "Survival";
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
	
    class IslandMap
    {
        colorFriendly[] = {0,0.5,0,0};
        colorEnemy[] = {0.5,0,0,0};//{0.5,0,0,1};
        colorNeutral[] = {1.0,0.5,0,0};//{1.0,0.5,0,1};
        colorCivilian[] = {0,0,1,0};
        colorUnknown[] = {1.0,0.5,0,0};//{1.0,0.5,0,0.8};
        shadow = 2;
        iconPlayer = "\ca\ui\data\map_player_ca.paa";
        iconPlayerDirection = "";//"\ca\ui\data\map_dir_ca.paa";
        iconCheckpoint = "\ca\ui\data\map_target_ca.paa";
        iconCamera = "\ca\ui\data\map_camera_ca.paa";
        iconSelect = "\ca\ui\data\map_select_ca.paa";
        iconSensor = "\ca\ui\data\map_trigger_ca.paa";
        sizeLeader = 24;
        size = 26;
        sizePlayer = 26;
        colorTracks[] = {0.2,0.13,0,1};
        colorRoads[] = {0.2,0.13,0,1};
        colorMainRoads[] = {0,0,0,1};
        colorTracksFill[] = {0,0,0,0};
        colorRoadsFill[] = {1,0.88,0.65,1};
        colorMainRoadsFill[] = {0.94,0.69,0.2,1};
        cursorLineWidth = 1;
        colorGrid[] = {0.05,0.1,0,0.6};
        colorGridMap[] = {0.05,0.1,0,0.4};
    };
    
    /*
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
    */
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
	class Zombie4 {
		name = "Zombie";
		face = "Zombie4";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie5 {
		name = "Zombie";
		face = "Zombie5";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie6 {
		name = "Zombie";
		face = "Zombie6";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie7 {
		name = "Zombie";
		face = "Zombie7";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie8 {
		name = "Zombie";
		face = "Zombie8";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie9 {
		name = "Zombie";
		face = "Zombie9";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie10 {
		name = "Zombie";
		face = "Zombie10";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class Zombie11 {
		name = "Zombie";
		face = "Zombie11";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie12 {
		name = "Zombie";
		face = "Zombie12";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie13 {
		name = "Zombie";
		face = "Zombie13";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie14 {
		name = "Zombie";
		face = "Zombie14";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	
	class Zombie15 {
		name = "Zombie";
		face = "Zombie15";
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
	class PvtAmmo
    {
        name="Survivor";
        face="PvtAmmo";
        glasses="none";
        speaker="Male04_GB_EN_PMC";
        pitch=1.000000;
    };
	class SonOfXerXes
    {
        name="Survivor";
        face="SonOfXerXes";
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
		
		class Zombie4 : Default {
			name = "Zombie 4";
			texture = "\z\addons\unleashed_pack\textures\zombie_skina.paa";
			identityTypes[] = {"Zombie4"};
			disabled = 0;
		};
		
		class Zombie5 : Default {
			name = "Zombie 5";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinb.paa";
			identityTypes[] = {"Zombie5"};
			disabled = 0;
		};
		
		class Zombie6 : Default {
			name = "Zombie 6";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinc.paa";
			identityTypes[] = {"Zombie6"};
			disabled = 0;
		};
		
		class Zombie7 : Default {
			name = "Zombie 7";
			texture = "\z\addons\unleashed_pack\textures\zombie_skind.paa";
			identityTypes[] = {"Zombie7"};
			disabled = 0;
		};
		
		class Zombie8 : Default {
			name = "Zombie 8";
			texture = "\z\addons\unleashed_pack\textures\zombie_skine.paa";
			identityTypes[] = {"Zombie8"};
			disabled = 0;
		};
		
		class Zombie9 : Default {
			name = "Zombie 9";
			texture = "z\addons\unleashed_pack\textures\zombie_skinf.paa";
			identityTypes[] = {"Zombie9"};
			disabled = 0;
		};
		
		class Zombie10 : Default {
			name = "Zombie 10";
			texture = "\z\addons\unleashed_pack\textures\zombie_sking.paa";
			identityTypes[] = {"Zombie10"};
			disabled = 0;
		};
		
		class Zombie11 : Default {
			name = "Zombie 11";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinh.paa";
			identityTypes[] = {"Zombie11"};
			disabled = 0;
		};
		
		class Zombie12 : Default {
			name = "Zombie 12";
			texture = "\z\addons\unleashed_pack\textures\zombie_skini.paa";
			identityTypes[] = {"Zombie12"};
			disabled = 0;
		};
		class Zombie13 : Default {
			name = "Zombie 13";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinj.paa";
			identityTypes[] = {"Zombie13"};
			disabled = 0;
		};
		class Zombie14 : Default {
			name = "Zombie 14";
			texture = "\z\addons\unleashed_pack\textures\zombie_skink.paa";
			identityTypes[] = {"Zombie14"};
			disabled = 0;
		};
		class Zombie15 : Default {
			name = "Zombie 15";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinl.paa";
			identityTypes[] = {"Zombie15"};
			disabled = 0;
		};
		
		class Zombie3 : Default {
			name = "Zombie 3";
			texture = "z\addons\dayz_communityassets\faces\zombie_03_co.paa";
			material = "z\addons\dayz_communityassets\faces\zombie_03.rvmat";
			identityTypes[] = {"Zombie3"};
			disabled = 0;
		};
		
        class SonOfXerXes : Default {
            	name = "SonOfXerXes";
           	texture = "\z\addons\unleashed_pack\textures\xerxes_skin.paa";
           	identityTypes[] = {"SonOfXerXes"};
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
		class PvtAmmo : Default {
            	name = "PvtAmmo";
            	texture = "\z\addons\unleashed_pack\textures\ammo_skin.paa";
            	identityTypes[] = {"PvtAmmo"};
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
			weapons[] = {"Revolver"}; //8Rnd_9x18_Makarov
			GuaranteedMagazines[] = {"ItemBandage","B_45ACP_Ball","HandRoadFlare"};
			RandomPossibilitieMagazines[] = {"ItemBandage","ItemPainkiller"};//weapons[] = {"HandRoadFlare"};
			
			backpackWeapon = "";//backpack = "DZ_Patrol_Pack_EP1";
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
		class Dog: Default {
			yield = 4;
			rawfoodtype = "FooddogRaw";
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
