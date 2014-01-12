////////////////////////////////////////////////////////////////////
//DeRap: Produced from mikero's Dos Tools Dll version 4.23
//Sat Jan 11 09:53:03 2014 : Source 'file' date Sat Jan 11 09:53:03 2014
//http://dev-heaven.net/projects/list_files/mikero-pbodll
////////////////////////////////////////////////////////////////////

#define _ARMA_

//Class dayz_vehicles : config.bin{
class CfgPatches
{
	class dayz_vehicles
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};
class CfgVehicles
{
	class car_sedan;
	class policecar: car_sedan
	{
		scope = 2;
		displayName = "Police Car";
		model = "dayz_vehicles\models\policecar.p3d";
		class Damage
		{
			tex[] = {};
			mat[] = {"dayz_vehicles\textures\police1.rvmat","dayz_vehicles\textures\police1_damage.rvmat","dayz_vehicles\textures\police1_destruct.rvmat","ca\data\data\default.rvmat","ca\wheeled\data\detailmapy\uaz_main_metal_damage.rvmat","ca\wheeled\data\detailmapy\uaz_main_metal_destruct.rvmat","dayz_vehicles\textures\cockpit_glass.rvmat","ca\wheeled\data\detailmapy\uaz_skla_damage.rvmat","ca\wheeled\data\detailmapy\uaz_skla_destruct.rvmat"};
		};
		class AnimationSources
		{
			class HitLFWheel
			{
				source = "Hit";
				hitpoint = "HitLFWheel";
				raw = 1;
			};
			class HitRFWheel: HitLFWheel
			{
				hitpoint = "HitRFWheel";
			};
			class HitLBWheel: HitLFWheel
			{
				hitpoint = "HitLBWheel";
			};
			class HitRBWheel: HitLFWheel
			{
				hitpoint = "HitRBWheel";
			};
			class HitGlass1
			{
				source = "Hit";
				hitpoint = "HitGlass1";
				raw = 1;
			};
			class HitGlass2: HitGlass1
			{
				hitpoint = "HitGlass2";
			};
			class HitGlass3: HitGlass1
			{
				hitpoint = "HitGlass3";
			};
			class HitGlass4: HitGlass1
			{
				hitpoint = "HitGlass4";
			};
			class HitGlass5: HitGlass1
			{
				hitpoint = "HitGlass5";
			};
			class HitGlass6: HitGlass1
			{
				hitpoint = "HitGlass6";
			};
			class HitDoor1: HitGlass1
			{
				hitpoint = "HitDoor1";
			};
			class HitDoor2: HitGlass1
			{
				hitpoint = "HitDoor2";
			};
			class HitDoor3: HitGlass1
			{
				hitpoint = "HitDoor3";
			};
			class HitDoor4: HitGlass1
			{
				hitpoint = "HitDoor4";
			};
		};
		class HitPoints
		{
			class HitEngine
			{
				armor = 0.4;
				material = -1;
				name = "motor";
				visual = "";
				passThrough = 0.2;
			};
			class HitRGlass
			{
				convexComponent = "sklo predni P";
				visual = "";
				armor = 0.3;
				material = -1;
				name = "sklo predni P";
				passThrough = 0;
			};
			class HitLGlass
			{
				convexComponent = "sklo predni L";
				visual = "";
				armor = 0.3;
				material = -1;
				name = "sklo predni L";
				passThrough = 0;
			};
			class HitBody
			{
				armor = 1;
				material = -1;
				name = "karoserie";
				visual = "";
				passThrough = 1;
			};
			class HitFuel
			{
				armor = 0.3;
				material = -1;
				name = "palivo";
				visual = "";
				passThrough = 0.5;
			};
			class HitLFWheel
			{
				armor = 0.15;
				material = -1;
				name = "wheel_1_1_steering";
				visual = "";
				passThrough = 0.3;
			};
			class HitRFWheel: HitLFWheel
			{
				name = "wheel_2_1_steering";
			};
			class HitLBWheel: HitLFWheel
			{
				name = "wheel_1_2_steering";
			};
			class HitRBWheel: HitLFWheel
			{
				name = "wheel_2_2_steering";
			};
			class HitGlass1
			{
				armor = 0.1;
				material = -1;
				name = "glass1";
				visual = "glass1";
				passThrough = 0;
			};
			class HitGlass2: HitGlass1
			{
				name = "glass2";
				visual = "glass2";
			};
			class HitGlass3: HitGlass1
			{
				name = "glass3";
				visual = "glass3";
			};
			class HitGlass4: HitGlass1
			{
				name = "glass4";
				visual = "glass4";
			};
			class HitGlass5: HitGlass1
			{
				name = "glass5";
				visual = "glass5";
			};
			class HitGlass6: HitGlass1
			{
				name = "glass6";
				visual = "glass6";
			};
			class HitDoor1
			{
				armor = 0.8;
				material = -1;
				name = "door_fl";
				visual = "door_fl";
				passThrough = 0;
			};
			class HitDoor2: HitDoor1
			{
				name = "door_rl";
				visual = "door_rl";
			};
			class HitDoor3: HitDoor1
			{
				name = "door_fr";
				visual = "door_fr";
			};
			class HitDoor4: HitDoor1
			{
				name = "door_rr";
				visual = "door_rr";
			};
		};
	};
};
//};
