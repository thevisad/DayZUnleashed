class Sign_circle_EP1;
class zZombie_Distraction: Sign_circle_EP1
{
        scope = 2;
        vehicleClass = "Distraction";
        model = "ca\Misc_E\sign_circle_EP1";
        displayName = "";
        accuracy = 1000;
        hiddenSelections[] = {"camo"};
        hiddenSelectionsTextures[] = {"#(argb,8,8,3)color(0,0,0,0)"};
};
//class Citizen1;	// External class reference
class zZombie_Base : DUZedBase {
	scope = public;
    side = 2;
    faction = "DZU_FACTION_ZOMBIE";
	displayName = "Zombie";
	moves = "CfgMovesZombie";
	isMan = false;
	sensitivity = 2;
	sensitivityEar = 4;	
	class Eventhandlers {
		init = "_this call zombie_initialize;";
		local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\addons\dayz_code\system\zombie_agent.fsm'};";
	};
};

class Swarm_Base : DUZedBase {
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
	identityTypes[] = {"zombie1", "zombie2" , "zombie4", "zombie5", "zombie6", "zombie7", "zombie8", "zombie9", "zombie10", "zombie11", "zombie12", "zombie13", "zombie14", "zombie15"};
	class TalkTopics {};
	languages[] = {};
	armor = 10;

	class Eventhandlers {
		init = "_this call zombie_initialize;";
		local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\addons\dayz_code\system\zombie_combatagent.fsm'};";
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
                hitSounds[] = {{{"dayz_sfx\zombie\zombie-hit-01.ogg", 0.177828, 1, 120}, 0.2}, {{"dayz_sfx\zombie\zombie-hit-02.ogg", 0.177828, 1, 120}, 0.2}, {{"dayz_sfx\zombie\zombie-hit-03.ogg", 0.177828, 1, 120}, 0.2}, {{"dayz_sfx\zombie\zombie-hit-04.ogg", 0.177828, 1, 120}, 0.1}, {{"dayz_sfx\zombie\zombie-hit-05.ogg", 0.177828, 1, 120}, 0.1}, {{"dayz_sfx\zombie\zombie-hit-06.ogg", 0.177828, 1, 120}, 0.1}, {{"dayz_sfx\zombie\zombie-hit-07.ogg", 0.177828, 1, 120}, 0.1}, {{"dayz_sfx\zombie\zombie-hit-08.ogg", 0.177828, 1, 120}, 0.1}, {{"dayz_sfx\zombie\zombie-hit-09.ogg", 0.177828, 1, 120}, 0.1}};
                damageSounds[] = {{"body", {"dayz_sfx\zombie\zombie-damage-01.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-02.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-03.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-04.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-05.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-06.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-07.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"body", {"dayz_sfx\zombie\zombie-damage-08.ogg", 0.0562341, 1, 120, 0.125, 20, 40, 60}}, {"hands", {"dayz_sfx\zombie\zombie-damage-09.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, {"hands", {"dayz_sfx\zombie\zombie-damage-10.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, {"hands", {"dayz_sfx\zombie\zombie-damage-11.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, {"hands", {"dayz_sfx\zombie\zombie-damage-12.ogg", 0.0562341, 1, 120, 0.25, 20, 40, 60}}, {"legs", {"dayz_sfx\zombie\zombie-damage-13.ogg", 0.0562341, 1, 120, 20, 40, 60}}, {"legs", {"dayz_sfx\zombie\zombie-damage-14.ogg", 0.0562341, 1, 120, 20, 40, 60}}};
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