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
#include "Configs\CfgUnleashed\Unleashed_weapons.hpp"
//Weight System
#include "R3F_Realism\R3F_Weight\R3F_CfgWeight.h" 

//#include "Configs\CfgWorlds.hpp"
#include "Configs\CfgFaction.hpp"
#include "Configs\rscTitles.hpp"
#include "Configs\deathboards.hpp"

// Safe UI
#include "Configs\safegui.hpp"

#include "Configs\CfgMoves.hpp"
#include "Configs\CfgVehicles.hpp"
#include "Configs\CfgWeapons.hpp"
#include "Configs\CfgMagazines.hpp"
#include "Configs\CfgLoot\CfgBuildingLoot.hpp"
#include "Configs\CfgLoot\CfgLoot.hpp"
#include "Configs\CfgMarkers.hpp"
#include "Configs\CfgAmmo.hpp"
#include "Configs\CfgObjectCompositions.hpp"
#include "Configs\CfgTownGenerator\CfgTownGeneratorUnleashed.hpp"
#include "Configs\CfgRPG\CfgRPG.hpp"
//HNGSpeedBoost
#include "Configs\CfgRPG\CfgPlayerVariables.hpp"
#include "Configs\CfgFunctions.hpp"

#include "Configs\snappoints.hpp"

class CfgPatches {
	class dayz_code {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAMisc3","CACharacters_E","CABuildingParts","CABuildingParts_Signs","CAStructuresHouse","CAStructuresLand_Ind_Stack_Big","CAStructures_Misc_Powerlines","CAStructures","CABuildings","CABuildings2","Ind_MalyKomin","CAStructures_A_CraneCon","CAStructures_Mil","CAStructures_Nav","CAStructures_Rail","A_Crane_02","A_TVTower","CAStructures_Railway","CAStructuresHouse_HouseBT","dayz_equip","dayz_weapons","asc_eu_lights"};
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
		name = "DayZ Unleashed";
		picture = "z\addons\dayz_code\gui\mod.paa";
		hidePicture = 0;
		hideName = 0;
		action = "http://www.dayzunleashed.com";
		version = "0.98-Devbuild-2015-06-16_0307 PM";
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
		//list[] = {"dayz_code","dayz","dayz_equip","dayz_communityassets","dayz_weapons","dayz_sfx","ST_bunnyhop","st_collision","st_evasive","BB_OA_Female","swm_swissarms","swm_misc"};
		list[] = {"dayz_code","dayz","dayz_equip","dayz_weapons"};

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
        colorFriendly[] = {0,0.5,0,1};
        colorEnemy[] = {0.5,0,0,1};//{0.5,0,0,1};
        colorNeutral[] = {1.0,0.5,0,1};//{1.0,0.5,0,1};
        colorCivilian[] = {0,0,1,1};
        colorUnknown[] = {1.0,0.5,0,1};//{1.0,0.5,0,0.8};
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
		identityTypes[] = {"Default", "Zombie1", "Zombie2", "Zombie3", "Zombie4", "Zombie5", "Zombie6", "Zombie7", "Zombie8", "Zombie9", "Zombie10", "Zombie11", "Zombie12", "Zombie13", "Zombie14", "Zombie15", "ZombieElite","TheUnBeard"};
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
	class ZombieElite {
		name = "ZombieElite";
		face = "ZombieElite";
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
	class TheUnBeard {
		name = "Zombie";
		face = "TheUnBeard";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	/*
	class z_woman_1 {
		name = "z_woman_1";
		face = "z_woman_1";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_2 {
		name = "z_woman_2";
		face = "z_woman_2";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_3 {
		name = "z_woman_3";
		face = "z_woman_3";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_4 {
		name = "z_woman_4";
		face = "z_woman_4";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_5a {
		name = "z_woman_5a";
		face = "z_woman_5a";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_6a {
		name = "z_woman_6a";
		face = "z_woman_6a";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_7a {
		name = "z_woman_7a";
		face = "z_woman_7a";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_5b {
		name = "z_woman_5b";
		face = "z_woman_5b";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_6b {
		name = "z_woman_6b";
		face = "z_woman_6b";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_7b {
		name = "z_woman_7b";
		face = "z_woman_7b";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_5c {
		name = "z_woman_5c";
		face = "z_woman_5c";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_6c {
		name = "z_woman_6c";
		face = "z_woman_6c";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_7c {
		name = "z_woman_7c";
		face = "z_woman_7c";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_5d {
		name = "z_woman_5d";
		face = "z_woman_5d";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_6d {
		name = "z_woman_6d";
		face = "z_woman_6d";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_7d {
		name = "z_woman_7d";
		face = "z_woman_7d";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_5e {
		name = "z_woman_5e";
		face = "z_woman_5e";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_6e {
		name = "z_woman_6e";
		face = "z_woman_6e";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_7e {
		name = "z_woman_7e";
		face = "z_woman_7e";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	class z_woman_8 {
		name = "z_woman_8";
		face = "z_woman_8";
		glasses = "None";
		speaker = "NoVoice";
		pitch = 1;
	};
	*/
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
			texture = "\dayz\textures\faces\zombie_01_co.paa";
			
			identityTypes[] = {"Zombie1"};
			disabled = 0;
		};
		
		class Zombie2 : Default {
			name = "Zombie 2";
			texture = "\dayz\textures\faces\zombie_02_co.paa";
			
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
		
		class ZombieElite : Default {
			name = "Zombie Elite";
			texture = "z\addons\unleashed_pack\faces\zombie_elite_co.paa";
			material = "z\addons\unleashed_pack\faces\zombie_elite.rvmat";
			identityTypes[] = {"ZombieElite"};
			disabled = 0;
		};
		
		class TheUnBeard : Default {
			name = "TheVisad";
			texture = "\z\addons\unleashed_pack\textures\zombie_skinl.paa";
			material = "z\addons\unleashed_pack\faces\zombie_elite.rvmat";
			identityTypes[] = {"TheUnBeard"};
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
		/*
		class z_woman_1 {
            	name = "z_woman_1";
            	texture = "CA\characters_e\woman\ensler\data\ensler_co.paa";
            	identityTypes[] = {"z_woman_1"};
            	disabled = 0;
		 };
		class z_woman_2 {
            	name = "z_woman_2";
            	texture ="CA\characters_e\woman\ensler\data\european_woman_02_co.paa";
            	identityTypes[] = {"z_woman_2"};
            	disabled = 0;
		 };
		class z_woman_3 { 
            	name = "z_woman_3";
            	texture = "CA\characters_e\woman\baker\data\baker_co.paa";
            	identityTypes[] = {"z_woman_3"};
            	disabled = 0;
		};
		class z_woman_4 { 
            	name = "z_woman_4";
            	texture = "CA\characters_e\woman\baker\data\european_woman_01_co.paa";
            	identityTypes[] = {"z_woman_4"};
            	disabled = 0;
		};
		class z_woman_5a { 
            	name = "z_woman_5a";
            	texture = "CA\characters_e\woman\tak_woman01\data\tak_woman01_1_co.paa";
            	identityTypes[] = {"z_woman_5a"};
            	disabled = 0;
		};
		class z_woman_6a { 
            	name = "z_woman_6a";
            	texture = "CA\characters_e\woman\tak_woman02\data\tak_woman02_1_co.paa";
            	identityTypes[] = {"z_woman_6a"};
            	disabled = 0;
		};
		class z_woman_7a { 
            	name = "z_woman_7a";
            	texture = "CA\characters_e\woman\tak_woman03\data\tak_woman03_1_co.paa";
            	identityTypes[] = {"z_woman_7a"};
            	disabled = 0;
		};
		class z_woman_5b { 
            	name = "z_woman_5b";
            	texture = "CA\characters_e\woman\tak_woman01\data\tak_woman01_2_co.paa";
            	identityTypes[] = {"z_woman_5b"};
            	disabled = 0;
		};
		class z_woman_6b { 
            	name = "z_woman_6b";
            	texture = "CA\characters_e\woman\tak_woman02\data\tak_woman02_2_co.paa";
            	identityTypes[] = {"z_woman_6b"};
            	disabled = 0;
		};
		class z_woman_7b { 
            	name = "z_woman_7b";
            	texture = "CA\characters_e\woman\tak_woman03\data\tak_woman03_2_co.paa";
            	identityTypes[] = {"z_woman_7b"};
            	disabled = 0;
		};
		class z_woman_5c { 
            	name = "z_woman_5c";
            	texture = "CA\characters_e\woman\tak_woman01\data\tak_woman01_3_co.paa";
            	identityTypes[] = {"z_woman_5c"};
            	disabled = 0;
		};
		class z_woman_6c { 
            	name = "z_woman_6c";
            	texture = "CA\characters_e\woman\tak_woman02\data\tak_woman02_3_co.paa";
            	identityTypes[] = {"z_woman_6c"};
            	disabled = 0;
		};
		class z_woman_7c { 
            	name = "z_woman_7c";
            	texture = "CA\characters_e\woman\tak_woman03\data\tak_woman03_3_co.paa";
            	identityTypes[] = {"z_woman_7c"};
            	disabled = 0;
		};
		class z_woman_5d { 
            	name = "z_woman_5d";
            	texture = "CA\characters_e\woman\tak_woman01\data\tak_woman01_4_co.paa";
            	identityTypes[] = {"z_woman_5d"};
            	disabled = 0;
		};
		class z_woman_6d { 
            	name = "z_woman_6d";
            	texture = "CA\characters_e\woman\tak_woman02\data\tak_woman02_4_co.paa";
            	identityTypes[] = {"z_woman_6d"};
            	disabled = 0;
		};
		class z_woman_7d { 
            	name = "z_woman_7d";
            	texture = "CA\characters_e\woman\tak_woman03\data\tak_woman03_4_co.paa";
            	identityTypes[] = {"z_woman_7d"};
            	disabled = 0;
		};
		class z_woman_5e { 
            	name = "z_woman_5e";
            	texture = "CA\characters_e\woman\tak_woman01\data\tak_woman01_5_co.paa";
            	identityTypes[] = {"z_woman_5e"};
            	disabled = 0;
		};
		class z_woman_6e { 
            	name = "z_woman_6e";
            	texture = "CA\characters_e\woman\tak_woman02\data\tak_woman02_5_co.paa";
            	identityTypes[] = {"z_woman_6e"};
            	disabled = 0;
		};
		class z_woman_7e { 
            	name = "z_woman_7e";
            	texture = "CA\characters_e\woman\tak_woman03\data\tak_woman03_5_co.paa";
            	identityTypes[] = {"z_woman_7e"};
            	disabled = 0;
		};
		class z_woman_8 { 
            	name = "z_woman_8";
            	texture = "\Ca\characters_E\Overall\Data\Overall_4_co.paa";
            	identityTypes[] = {"z_woman_8"};
            	disabled = 0;
		};
		*/
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
			//RandomMagazines = 3;
			weapons[] = {"Revolver"}; //8Rnd_9x18_Makarov
			GuaranteedMagazines[] = {"ItemBandage","B_45ACP_Ball","HandRoadFlare"};
			//RandomPossibilitieMagazines[] = {"ItemBandage","ItemPainkiller"};//weapons[] = {"HandRoadFlare"};
			backpackWeapon = "";
			backpack = "DZ_Patrol_Pack_EP1";
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
		class Cow01: Cow{};
		class Cow02: Cow{};
		class Cow03: Cow{};
		class Cow04: Cow{};
		class Cow01_EP1: Cow{};
		class Goat: Default {
			yield = 4;
			rawfoodtype = "FoodgoatRaw";
		};
		class Goat01_EP1: Goat{};
		class Goat02_EP1: Goat{};
		class Sheep: Default {
			yield = 4;
			rawfoodtype = "FoodmuttonRaw";
		};
		class Sheep01_EP1: Sheep{};
		class Sheep02_EP1: Sheep{};
		class WildBoar: Default {
			yield = 4;
			rawfoodtype = "FoodbaconRaw";
		};
		class Hen: Default {
			yield = 2;
			rawfoodtype = "FoodchickenRaw";
		};
		class Cock: Hen{};
		class DZ_FinZombie: Default {
			yield = 2;
			rawfoodtype = "FooddogRaw";
		};
		class DZ_PastorZombie: Default {
			yield = 2;
			rawfoodtype = "FooddogRaw";
		};
		class DZ_Fin: Default {
			yield = 2;
			rawfoodtype = "FooddogRaw";
		};
		
		class DZ_Pastor: DZ_Fin{};
		class Rabbit: Default {
			yield = 1;
			rawfoodtype = "FoodrabbitRaw";
		};
	};
};
