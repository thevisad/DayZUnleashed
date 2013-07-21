class Citizen1;	// External class reference
class zZombie_Base : Citizen1 {
	scope = public;
    side = 2;
    faction = "DZU_FACTION_ZOMBIE";
	glassesEnabled = 0;
	vehicleClass = "Zombie";
	displayName = "Zombie";
	fsmDanger = "";
	fsmFormation = "";
	zombieLoot = "civilian";
	moves = "CfgMovesZombie";
	isMan = false;
	weapons[] = {};
	magazines[] = {};
	sensitivity = 2;	// sensor sensitivity
	sensitivityEar = 4;
	identityTypes[] = {"zombie1", "zombie2"};
	class TalkTopics {};
	languages[] = {};
	
	class Eventhandlers {
		init = "_this call zombie_initialize;";
		local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\AddOns\dayz_code\system\zombie_agent.fsm'};";
	};
	
	class HitPoints {
		class HitHead {
			armor = 0.3;
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

class Swarm_Base : Citizen1 {
	scope = public;
    side = 2;
    faction = "DZU_FACTION_ZOMBIE";
	glassesEnabled = 0;
	vehicleClass = "Zombie";
	displayName = "Zombie";
	fsmDanger = "";
	fsmFormation = "";
	zombieLoot = "civilian";
	moves = "CfgMovesZombie";
	isMan = false;
	weapons[] = {};
	magazines[] = {};
	sensitivity = 1;	// sensor sensitivity
	sensitivityEar = 1;
	identityTypes[] = {"zombie1", "zombie2"};
	class TalkTopics {};
	languages[] = {};
	armor = 10;

	class Eventhandlers {
		init = "_this call zombie_initialize;";
		local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\AddOns\dayz_code\system\zombie_combatagent.fsm'};";
	};
	
	class HitPoints {
		class HitHead {
			armor = 0.3;
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
    
    class HitDamage {
        class Group0 {
            damagesounds[] = {
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-01.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-02.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-03.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-04.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-05.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-06.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-07.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"body", {"z\addons\dayz_sfx\zombie\zombie-damage-08.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, 
                {"hands", {"z\addons\dayz_sfx\zombie\zombie-damage-09.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, 
                {"hands", {"z\addons\dayz_sfx\zombie\zombie-damage-10.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, 
                {"hands", {"z\addons\dayz_sfx\zombie\zombie-damage-11.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, 
                {"hands", {"z\addons\dayz_sfx\zombie\zombie-damage-12.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, 
                {"legs", {"z\addons\dayz_sfx\zombie\zombie-damage-13.ogg", 0.0562341, 1, 120, 20, 40, 60}}, 
                {"legs", {"z\addons\dayz_sfx\zombie\zombie-damage-14.ogg", 0.0562341, 1, 120, 20, 40, 60}}
            };
            hitsounds[] = {
                {{"z\addons\dayz_sfx\zombie\zombie-hit-01.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-02.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-03.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-04.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-05.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-06.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-07.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-08.ogg", 0.177828, 1, 120}, 0.1}, 
                {{"z\addons\dayz_sfx\zombie\zombie-hit-09.ogg", 0.177828, 1, 120}, 0.1}
            };
        };
    };
    
};

class swarm_newBase : Swarm_Base {
	zombieLoot = "civilian";
	model = "\Ca\characters_E\Overall\Overall";
	hiddenSelections[] = {"Camo"};
	hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
		
	class Wounds {
		tex[] = {};
		mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
	};
};