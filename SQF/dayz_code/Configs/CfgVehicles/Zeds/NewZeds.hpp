	class zZombie_new_Base : zZombie_Base {
		scope = public;
		glassesEnabled = 0;
		identityTypes[] = {"Zombie1","Zombie2","Zombie3","Zombie4","Zombie5","Zombie6","Zombie7","Zombie8","Zombie9","Zombie10","Zombie11","Zombie12","Zombie13","Zombie14","Zombie15"};
		class TalkTopics {};
		languages[] = {};
		//Armor * hitpointArmor = Total Armor
		armor = 10; 
		
		class Eventhandlers {
			init = "_this call zombie_initialize;";
			local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),""zbase""] execFSM '\z\AddOns\dayz_code\system\zombie_agent.fsm'};";
		};
		
		class HitPoints {
			class HitHead {
				armor = 0.1;
				material = -1;
				name = "head_hit";
				passThrough = true;
				memoryPoint = "pilot";
			};
			
			class HitBody : HitHead {
				armor = 2;
				name = "body";
				memoryPoint = "aimPoint";
			};
			
			class HitSpine : HitHead {
				armor = 2;
				name = "Spine2";
				memoryPoint = "aimPoint";
			};
			
			class HitHands : HitHead {
				armor = 0.5;
				material = -1;
				name = "hands";
				passThrough = true;
			};
			class HitLArm : HitHands {
				name = "LeftArm";
				memoryPoint = "lelbow";
			};
			
			class HitRArm : HitHands {
				name = "RightArm";
				memoryPoint = "relbow";
			};
			
			class HitLForeArm : HitHands {
				name = "LeftForeArm";
				memoryPoint = "lwrist";
			};
			
			class HitRForeArm : HitHands {
				name = "RightForeArm";
				memoryPoint = "rwrist";
			};
			
			class HitLHand : HitHands {
				name = "LeftHand";
				memoryPoint = "LeftHandMiddle1";
			};
			
			class HitRHand : HitHands {
				name = "RightHand";
				memoryPoint = "RightHandMiddle1";
			};
			
			class HitLegs : HitHands {
				armor = 10;
				name = "legs";
				memoryPoint = "pelvis";
			};
			
			class HitLLeg : HitHands {
				name = "LeftLeg";
				memoryPoint = "lknee";
			};
			
			class HitLLegUp : HitHands {
				name = "LeftUpLeg";
				memoryPoint = "lfemur";
			};
			
			class HitRLeg : HitHands {
				name = "RightLeg";
				memoryPoint = "rknee";
			};
			
			class HitRLegUp : HitHands {
				name = "RightUpLeg";
				memoryPoint = "rfemur";
			};
		};
	};
	
	class z_newBase : zZombie_new_Base {
		zombieLoot = "civilian";
		model = "\ca\characters2\civil\Villager\Villager";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\villager\data\villager_co.paa"};
		
		class Wounds {
			tex[] = {};
			mat[] = {"ca\characters\heads\male\defaulthead\data\hhl.rvmat", "ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat", "ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat", "ca\characters2\Civil\Villager\Data\villager.RVmat", "ca\characters2\Civil\Villager\Data\villager_w1.RVmat", "ca\characters2\Civil\Villager\Data\villager_w2.RVmat"};
		};
	};
		
	class z_Elite_newBase : z_newBase {
		identityTypes[] = {"ZombieElite"};
	};
	
	class z_TheUnBeardBase : z_Elite_newBase {
		identityTypes[] = {"TheUnBeard"};
	};
	
	
	class z_new_villager2 : z_newBase {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\villager\villager_v2_co.paa"};
	};
	class z_new_villager3 : z_newBase {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\villager\villager_v3_co.paa"};
	};
	class z_new_villager4 : z_newBase {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\villager\villager_v4_co.paa"};
	};
	
	class z_new_worker_base : zZombie_new_Base {
		zombieLoot = "civilian";
		model = "\Ca\characters_E\Overall\Overall";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
		
		class Wounds {
			tex[] = {};
			mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
		};
	};
	
	class z_new_worker2 : z_new_worker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\overall_2_co.paa"};
	};
	class z_new_worker3 : z_new_worker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\Overall_3_co.paa"};
	};
	class z_new_worker4 : z_new_worker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\Overall_4_co.paa"};
	};

	class z_policeman: zZombie_new_Base
	{
		model = "\ca\characters2\civil\Policeman\Policeman";
		zombieLoot = "policeman";
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\civil\policeman\data\policeman.rvmat","ca\characters2\civil\policeman\data\w1_policeman.rvmat","ca\characters2\civil\policeman\data\w2_policeman.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_wounds.rvmat"};
		};
	};
	
	class z_new_policeman : z_policeman {
		hiddenSelectionsTextures[] = {"\z\addons\dayz_communityassets\zeds\villager\villager_co.paa"};
	};
	class z_new_policeman1 : z_policeman {
		hiddenSelectionsTextures[] = {"\z\addons\dayz_communityassets\zeds\policeman\policeman_co.paa"};
		
		class Eventhandlers {
			init = "(_this select 0) setObjectTexture [0, '\z\addons\dayz_communityassets\zeds\policeman\policeman_co.paa'];";
        };
	};
	class z_suit1: zZombie_new_Base
	{
		model = "\ca\characters2\civil\Functionary\Functionary";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\functionary\data\functionary_co.paa"};
		zombieLoot = "generic";
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\civil\Functionary\data\Functionary.rvmat","ca\characters2\civil\Functionary\data\W1_Functionary.rvmat","ca\characters2\civil\Functionary\data\W2_Functionary.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
	};
	class z_suit2: z_suit1
	{
		zombieLoot = "civilian";
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\functionary\data\functionary2_co.paa"};
	};
	class z_worker1: zZombie_new_Base
	{
		zombieLoot = "";
		model = "\Ca\characters_E\Overall\Overall";
		hiddenSelections[] = {"Camo"};
		class Wounds
		{
			tex[] = {};
			mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat","Ca\characters_E\Overall\Data\W1_Overall.rvmat","Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
		};
		hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
	};
	class z_worker2: z_worker1
	{
		hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_3_co.paa"};
	};
	class z_worker3: z_worker1
	{
		hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_2_co.paa"};
	};
	class z_doctor: zZombie_new_Base
	{
		model = "\ca\characters2\civil\Doctor\Doctor";
		zombieLoot = "medical";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\dayz\textures\clothes\doctor_co.paa"};
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\civil\doctor\data\doctor.rvmat","ca\characters2\civil\doctor\data\W1_doctor.rvmat","ca\characters2\civil\doctor\data\W2_doctor.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
	};
	class z_teacher: z_doctor
	{
		zombieLoot = "";
		hiddenSelectionsTextures[] = {"\dayz\textures\clothes\teacher_co.paa"};
	};
	class z_hunter: zZombie_new_Base
	{
		model = "\ca\characters2\civil\Woodlander\Woodlander";
		zombieLoot = "hunter";
		hiddenSelections[] = {"Camo"};
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\civil\Woodlander\data\Woodlander.rvmat","ca\characters2\civil\Woodlander\data\W1_Woodlander.rvmat","ca\characters2\civil\Woodlander\data\W2_Woodlander.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
	};
	class z_villager1: zZombie_new_Base
	{
		zombieLoot = "civilian";
		model = "\ca\characters2\civil\Villager\Villager";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\villager\data\villager_co.paa"};
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters2\Civil\Villager\Data\villager.RVmat","ca\characters2\Civil\Villager\Data\villager_w1.RVmat","ca\characters2\Civil\Villager\Data\villager_w2.RVmat"};
		};
	};
	class z_villager2: z_villager1
	{
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\villager\data\villager_v2_co.paa"};
	};
	class z_villager3: z_villager1
	{
		hiddenSelectionsTextures[] = {"\ca\characters2\civil\villager\data\villager_v3_co.paa"};
	};
	class z_priest: zZombie_new_Base
	{
		model = "\ca\characters2\civil\Priest\Priest";
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\civil\priest\data\priest.rvmat","ca\characters2\civil\priest\data\W1_priest.rvmat","ca\characters2\civil\priest\data\W2_priest.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
	};
	class z_soldier: zZombie_new_Base
	{
		displayName = "Zombie Soldier";
		model = "\ca\characters2\Blufor\Soldier_Light";
		zombieLoot = "military";
		class HitPoints: HitPoints
		{
			class HitHead
			{
				armor = 0.3;
				material = -1;
				name = "head_hit";
				passThrough = 1;
			};
			class HitBody
			{
				armor = 2.4;
				material = -1;
				name = "body";
				passThrough = 1;
			};
			class HitHands
			{
				armor = 1;
				material = -1;
				name = "hands";
				passThrough = 1;
			};
			class HitLegs
			{
				armor = 1;
				material = -1;
				name = "legs";
				passThrough = 1;
			};
		};
		class Wounds
		{
			tex[] = {};
			mat[] = {"ca\characters2\Blufor\data\Soldier.RVmat","ca\characters2\Blufor\data\Soldier_W1.RVmat","ca\characters2\Blufor\data\Soldier_W2.RVmat","ca\characters2\Blufor\data\Soldier_Light.RVmat","ca\characters2\Blufor\data\Soldier_Light_W1.RVmat","ca\characters2\Blufor\data\Soldier_Light_W2.RVmat","ca\characters2\Blufor\data\Soldier_EQUIP_Light.RVmat","ca\characters2\Blufor\data\Soldier_Light_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Light_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_GL.RVmat","ca\characters2\Blufor\data\Soldier_GL_W1.RVmat","ca\characters2\Blufor\data\Soldier_GL_W2.RVmat","ca\characters2\Blufor\data\Soldier_NCO.RVmat","ca\characters2\Blufor\data\Soldier_NCO_W1.RVmat","ca\characters2\Blufor\data\Soldier_NCO_W2.RVmat","ca\characters2\Blufor\data\Soldier_MG.RVmat","ca\characters2\Blufor\data\Soldier_MG_W1.RVmat","ca\characters2\Blufor\data\Soldier_MG_W2.RVmat","ca\characters2\Blufor\data\Soldier_AT.RVmat","ca\characters2\Blufor\data\Soldier_AT_W1.RVmat","ca\characters2\Blufor\data\Soldier_AT_W2.RVmat","ca\characters2\Blufor\data\Soldier_CO.RVmat","ca\characters2\Blufor\data\Soldier_CO_W1.RVmat","ca\characters2\Blufor\data\Soldier_CO_W2.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Pilot.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_W1.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_W2.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Guard.RVmat","ca\characters2\Blufor\data\Soldier_Guard_W1.RVmat","ca\characters2\Blufor\data\Soldier_Guard_W2.RVmat","ca\characters2\Blufor\data\Soldier_Crew.RVmat","ca\characters2\Blufor\data\Soldier_Crew_W1.RVmat","ca\characters2\Blufor\data\Soldier_Crew_W2.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP_W2.RVmat"};
		};
	};
	class z_soldier_pilot: z_soldier
	{
		displayName = "Zombie Soldier (Pilot)";
		model = "\ca\characters_d_BAF\BAF_Pilot_BAF";
		hiddenSelections[] = {"Camo","Camo2","Camo3"};
		zombieLoot = "militaryspecial";
		hiddenSelectionsTextures[] = {"\ca\characters_W_baf\data\camo_dpm_co.paa","\ca\characters_W_baf\data\armour_dpm_co.paa","\ca\characters_W_baf\data\equip_dpm_co.paa"};
		class HitPoints: HitPoints
		{
			class HitHead
			{
				armor = 2;
				material = -1;
				name = "head_hit";
				passThrough = 1;
			};
			class HitBody
			{
				armor = 3;
				material = -1;
				name = "body";
				passThrough = 1;
			};
			class HitHands
			{
				armor = 1;
				material = -1;
				name = "hands";
				passThrough = 1;
			};
			class HitLegs
			{
				armor = 1;
				material = -1;
				name = "legs";
				passThrough = 1;
			};
		};
	};
	class z_soldier_heavy: z_soldier
	{
		displayName = "Zombie Soldier (Heavy)";
		model = "\ca\characters2\Blufor\Soldier";
		zombieLoot = "military";
		class HitPoints: HitPoints
		{
			class HitHead
			{
				armor = 1;
				material = -1;
				name = "head_hit";
				passThrough = 1;
			};
			class HitBody
			{
				armor = 2.4;
				material = -1;
				name = "body";
				passThrough = 1;
			};
			class HitHands
			{
				armor = 1;
				material = -1;
				name = "hands";
				passThrough = 1;
			};
			class HitLegs
			{
				armor = 1;
				material = -1;
				name = "legs";
				passThrough = 1;
			};
		};
	};
	
	class z_elite: z_Elite_newBase
	{
		displayName = "Zombie Elite";
		model = "\CA\characters_e\heads\male\pierce\pierce";
		hiddenSelectionsTextures[] = {"\CA\characters_e\heads\male\pierce\data\pierce_co.paa"};
		zombieLoot = "militaryspecial";
		class Wounds
		{
			tex[] = {};
			mat[] = {"CA\characters_e\heads\male\pierce\data\pierce.rvmat","CA\characters_e\heads\male\pierce\data\pierce_w1.rvmat","CA\characters_e\heads\male\pierce\data\pierce_w2.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
		class HitPoints: HitPoints
		{
			class HitHead
			{
				armor = 4;
				material = -1;
				name = "head_hit";
				passThrough = 1;
			};
			class HitBody
			{
				armor = 8;
				material = -1;
				name = "body";
				passThrough = 1;
			};
			class HitHands
			{
				armor = 3;
				material = -1;
				name = "hands";
				passThrough = 1;
			};
			class HitLegs
			{
				armor = 4;
				material = -1;
				name = "legs";
				passThrough = 1;
			};
		};

	};
	
	class z_TheUnBeard: z_TheUnBeardBase
	{
		displayName = "The UnBeard";
		model = "\CA\characters_e\ger\ger_medic";
		zombieLoot = "militaryspecial";
		class Wounds
		{
			tex[] = {};
			mat[] = {"CA\characters_e\heads\male\pierce\data\pierce.rvmat","CA\characters_e\heads\male\pierce\data\pierce_w1.rvmat","CA\characters_e\heads\male\pierce\data\pierce_w2.rvmat","ca\characters\heads\male\defaulthead\data\hhl.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat","ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat"};
		};
		class HitPoints: HitPoints
		{
			class HitHead
			{
				armor = 4;
				material = -1;
				name = "head_hit";
				passThrough = 1;
			};
			class HitBody
			{
				armor = 8;
				material = -1;
				name = "body";
				passThrough = 1;
			};
			class HitHands
			{
				armor = 3;
				material = -1;
				name = "hands";
				passThrough = 1;
			};
			class HitLegs
			{
				armor = 4;
				material = -1;
				name = "legs";
				passThrough = 1;
			};
		};

	};
	
	/*
	class z_woman_1 : z_newBase {
		displayName = "A Zombie Woman";
		model = "\CA\characters_e\woman\ensler";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\ensler\data\ensler_co.paa"};
	};
	
	class z_woman_2 : z_newBase {
		displayName = "A Zombie Woman";
		model = "\CA\characters_e\woman\eurowoman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\ensler\data\european_woman_02_co.paa"};
	};
	
	class z_woman_3 : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\baker\eurowoman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\baker\data\baker_co.paa"};
	};
	
	class z_woman_4 : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\baker\baker";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\baker\data\european_woman_01_co.paa"};
	};
	
	class z_woman_5a : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman01\tak_woman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman01\data\tak_woman01_1_co.paa"};
	};
	
	class z_woman_5b : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman01\tak_woman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman01\data\tak_woman01_2_co.paa"};
	};
	
	class z_woman_5c : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman01\tak_woman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman01\data\tak_woman01_3_co.paa"};
	};
	
	class z_woman_5d : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman01\tak_woman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman01\data\tak_woman01_4_co.paa"};
	};
	
	class z_woman_5e : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman01\tak_woman01";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman01\data\tak_woman01_5_co.paa"};
	};
	
	class z_woman_6a : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman02\tak_woman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman02\data\tak_woman02_1_co.paa"};
	};
	
	class z_woman_6b : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman02\tak_woman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman02\data\tak_woman02_2_co.paa"};
	};
	
	class z_woman_6c : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman02\tak_woman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman02\data\tak_woman02_3_co.paa"};
	};
	
	class z_woman_6d : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman02\tak_woman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman02\data\tak_woman02_4_co.paa"};
	};
	
	class z_woman_6e : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman02\tak_woman02";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman02\data\tak_woman02_5_co.paa"};
	};
	
	class z_woman_7a : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman03\tak_woman03";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman03\data\tak_woman03_1_co.paa"};
	};
	
	class z_woman_7b : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman03\tak_woman03";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman03\data\tak_woman03_2_co.paa"};
	};
	
	class z_woman_7c : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman03\tak_woman03";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman03\data\tak_woman03_3_co.paa"};
	};
	
	class z_woman_7d : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman03\tak_woman03";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman03\data\tak_woman03_4_co.paa"};
	};
	
	class z_woman_7e : z_newBase {
		displayName = "A Zombie Woman";
		model = "CA\characters_e\woman\tak_woman03\tak_woman03";
		hiddenSelectionsTextures[] = {"CA\characters_e\woman\tak_woman03\data\tak_woman03_5_co.paa"};
	};
	
	class z_woman_8 : z_newBase {
		displayName = "A Zombie Woman";
		faceType = "bb_female";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem"};
        model = "\Ca\characters_E\Overall\Overall";
        hiddenselectionstextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
        class EventHandlers {
            init = "";
        };
        class Wounds {
            mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
            tex[] = {};
        };    
	};
	*/
	
	
	