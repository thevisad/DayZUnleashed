    class DZ_Pastor : Pastor {
        scope = 2;
        side = 1;
        faction = "DZU_FACTION_SURVIVOR";
        model = "\ca\animals2\Dogs\Pastor\Pastor";
        displayName = "Alsatian";
        moves = "CfgMovesDogDZ";
        gestures = "CfgGesturesDogDZ";
        fsmDanger = "";
        fsmFormation = "";
        agentTasks[] = {};
        woman = 0;
        class EventHandlers{};
        class Wounds
        {
            tex[] = {};
            mat[] = {};
        };
        class VariablesScalar {};
        class VariablesString {};
    };

    class Survivor2_DZ : Soldier_Crew_PMC {
        side = 1;
        faction = "DAYZ_SURVIVOR_Faction";
        weapons[] = {"Throw", "Put"};
        magazines[] = {};
        model = "\dayz\characters\man_survivor";
        respawnWeapons[] = {"Throw", "Put"};
        respawnMagazines[] = {};
        weaponSlots = 1  +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072;
        canHideBodies = true;
        };

    class SurvivorW2_DZ : Soldier_Crew_PMC {
        displayName = $STR_CHAR_1;
        side = 1;
        faction = "DAYZ_SURVIVOR_Faction";
        weapons[] = {"Throw", "Put"};
        model = "\dayz\characters\annie_original";
        magazines[] = {};
        respawnWeapons[] = {"Throw", "Put"};
        respawnMagazines[] = {};
        weaponSlots = 1  +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072;
        canHideBodies = true;
        identityTypes[] = {"Language_W_EN_EP1", "Woman"};
        languages[] = {"EN"};
        
        class TalkTopics {
            core = "Core_E";
            core_en = "Core_Full_E";
        };
        genericNames = "EnglishWomen";
        
        class SpeechVariants {
            class Default {
                speechSingular[] = {"veh_woman"};
                speechPlural[] = {"veh_women"};
            };
            
            class EN : Default {};
            
            class CZ {
                speechSingular[] = {"veh_woman_CZ"};
                speechPlural[] = {"veh_women_CZ"};
            };
            
            class CZ_Akuzativ {
                speechSingular[] = {"veh_woman_CZ4P"};
                speechPlural[] = {"veh_women_CZ4P"};
            };
            
            class RU {
                speechSingular[] = {"veh_woman_RU"};
                speechPlural[] = {"veh_women_RU"};
            };
        };
        TextPlural = "Women";
        TextSingular = "Woman";
        nameSound = "veh_woman";
        
        class HitDamage {
            class Group0 {
                hitSounds[] = {{{"ca\sounds\Characters\Noises\Damage\banz-hit-01", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-02", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-03", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-04", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-05", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-06", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-07", 0.177828, 1, 120}, 0.1}};
                damageSounds[] = {{"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-01", 0.0562341, 1, 120, 0.25, 5, 6, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-02", 0.0562341, 1, 120, 0.25, 5, 7.5, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-03", 0.0562341, 1, 120, 0.25, 5, 6, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-04", 0.0562341, 1, 120, 0.25, 5, 7.5, 10}}, {"hands", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-07-arm", 0.0562341, 1, 120, 0.5, 0, 2.5, 5}}, {"hands", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-08-arm", 0.0562341, 1, 120, 0.5, 0, 2.5, 5}}, {"legs", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-05-leg", 0.0562341, 1, 120, 0.5, 0, 1, 2}}, {"legs", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-06-leg", 0.0562341, 1, 120, 0.5, 0, 1, 2}}};
            };
        };
        
        class SoundBreath {
            breath0[] = {{{{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-01", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-02", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-03", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-04", 0.125893, 1, 8}, 0.25}}, {{{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-01", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-02", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-03", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-04", 0.125893, 1, 15}, 0.25}}, {{{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-01", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-02", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-03", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-04", 0.1, 1, 20}, 0.25}}};
        };
        
        class SoundGear {
            primary[] = {{"walk", {"", 0.00177828, 1, 10}}, {"run", {"", 0.00316228, 1, 15}}, {"sprint", {"", 0.00562341, 1, 20}}};
            secondary[] = {{"walk", {"", 0.00177828, 1, 10}}, {"run", {"", 0.00316228, 1, 10}}, {"sprint", {"", 0.00562341, 1, 10}}};
        };
        
        class SoundEquipment {
            soldier[] = {{"walk", {"", 0.00177828, 1, 13}}, {"run", {"", 0.00316228, 1, 20}}, {"sprint", {"", 0.00398107, 1, 25}}};
            civilian[] = {{"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-01", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-02", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-03", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-04", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-05", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-06", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-07", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-08", 0.177828, 1, 8}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-01", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-02", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-03", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-04", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-05", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-06", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-07", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-08", 0.1, 1, 15}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-01", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-02", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-03", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-04", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-05", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-06", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-07", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-08", 0.0562341, 1, 20}}};
        };
        hiddenSelections[] = {};
    };        
      
       
class Rocket_DZ: BAF_Soldier_Officer_W {
    displayName = "Rocket";
    side = 1;
    faction = "DAYZ_SURVIVOR_Faction";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
}; 
        
class Soldier1_DZ: BAF_Soldier_W {
    displayName = "Soldier";
    side = 1;
    faction = "DAYZ_SURVIVOR_Faction";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};      
        
class Sniper1_DZ : BAF_Soldier_SniperH_W {
    displayName = "Sniper";
    side = 1;
    faction = "DAYZ_SURVIVOR_Faction";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};    
/*
class SniperW1_DZ: Sniper1_DZ {
        identityTypes[] = {"Language_W_EN_EP1", "Woman"};
        languages[] = {"EN"};
        
        class TalkTopics {
            core = "Core_E";
            core_en = "Core_Full_E";
        };
        genericNames = "EnglishWomen";
        
        class SpeechVariants {
            class Default {
                speechSingular[] = {"veh_woman"};
                speechPlural[] = {"veh_women"};
            };
            
            class EN : Default {};
            
            class CZ {
                speechSingular[] = {"veh_woman_CZ"};
                speechPlural[] = {"veh_women_CZ"};
            };
            
            class CZ_Akuzativ {
                speechSingular[] = {"veh_woman_CZ4P"};
                speechPlural[] = {"veh_women_CZ4P"};
            };
            
            class RU {
                speechSingular[] = {"veh_woman_RU"};
                speechPlural[] = {"veh_women_RU"};
            };
        };
        TextPlural = "Women";
        TextSingular = "Woman";
        nameSound = "veh_woman";
        
        class HitDamage {
            class Group0 {
                hitSounds[] = {{{"ca\sounds\Characters\Noises\Damage\banz-hit-01", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-02", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-03", 0.177828, 1, 120}, 0.2}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-04", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-05", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-06", 0.177828, 1, 120}, 0.1}, {{"ca\sounds\Characters\Noises\Damage\banz-hit-07", 0.177828, 1, 120}, 0.1}};
                damageSounds[] = {{"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-01", 0.0562341, 1, 120, 0.25, 5, 6, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-02", 0.0562341, 1, 120, 0.25, 5, 7.5, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-03", 0.0562341, 1, 120, 0.25, 5, 6, 10}}, {"body", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-04", 0.0562341, 1, 120, 0.25, 5, 7.5, 10}}, {"hands", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-07-arm", 0.0562341, 1, 120, 0.5, 0, 2.5, 5}}, {"hands", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-08-arm", 0.0562341, 1, 120, 0.5, 0, 2.5, 5}}, {"legs", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-05-leg", 0.0562341, 1, 120, 0.5, 0, 1, 2}}, {"legs", {"ca\sounds\Characters\Noises\Damage\banz-damage-g1-06-leg", 0.0562341, 1, 120, 0.5, 0, 1, 2}}};
            };
        };
        
        class SoundBreath {
            breath0[] = {{{{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-01", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-02", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-03", 0.0562341, 1, 8}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run-breath-04", 0.125893, 1, 8}, 0.25}}, {{{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-01", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-02", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-03", 0.0562341, 1, 15}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-run2-breath-04", 0.125893, 1, 15}, 0.25}}, {{{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-01", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-02", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-03", 0.1, 1, 20}, 0.25}, {{"\ca\sounds\Characters\Noises\Breath\hanz-sprint-breath-04", 0.1, 1, 20}, 0.25}}};
        };
        
        class SoundGear {
            primary[] = {{"walk", {"", 0.00177828, 1, 10}}, {"run", {"", 0.00316228, 1, 15}}, {"sprint", {"", 0.00562341, 1, 20}}};
            secondary[] = {{"walk", {"", 0.00177828, 1, 10}}, {"run", {"", 0.00316228, 1, 10}}, {"sprint", {"", 0.00562341, 1, 10}}};
        };
        
        class SoundEquipment {
            soldier[] = {{"walk", {"", 0.00177828, 1, 13}}, {"run", {"", 0.00316228, 1, 20}}, {"sprint", {"", 0.00398107, 1, 25}}};
            civilian[] = {{"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-01", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-02", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-03", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-04", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-05", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-06", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-07", 0.177828, 1, 8}}, {"walk", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-walk-08", 0.177828, 1, 8}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-01", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-02", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-03", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-04", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-05", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-06", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-07", 0.1, 1, 15}}, {"run", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-run-08", 0.1, 1, 15}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-01", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-02", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-03", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-04", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-05", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-06", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-07", 0.0562341, 1, 20}}, {"sprint", {"\ca\sounds\Characters\Noises\Equipment\civil-equipment-sprint-08", 0.0562341, 1, 20}}};
        };
};      
*/
class SniperW1_DZ : SurvivorW2_DZ {
    displayName = "Sniper";
    camouflage = 0.5;
    facetype = "Man";
    model = "\ca\characters_e\Ghillie\Ghillie_Overall";
    hiddenselectionstextures[] = {"\ca\characters_W_baf\data\Ghillie_Overall2_co.paa", "\ca\characters_W_baf\data\armour_dpm_co.paa", "\ca\characters_W_baf\data\equip_dpm_co.paa"};
    class Wounds {
        mat[] = {"Ca\Characters_PMC\Frost\Data\frost.rvmat", "Ca\Characters_PMC\Frost\Data\w1_frost.rvmat", "Ca\Characters_PMC\Frost\Data\w2_frost.rvmat"};
        tex[] = {};
    };
};

class Camo1_DZ : BAF_Soldier_L_W {
    displayName = $STR_CHAR_1;
    side = 1;
    faction = "DAYZ_SURVIVOR_Faction";
    weapons[] = {"Throw","Put"};
    backpack = "";
    magazines[] = {};
    respawnWeapons[] = {"Throw","Put"};
    respawnMagazines[] = {};
    weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
    canHideBodies = 1;
};              
        
        //Bandits        
    class Bandit1_DZ : Soldier_Crew_PMC {
        displayName = "Bandit";
        side = 0;
        faction = "DAYZ_BANDIT_Faction";
        weapons[] = {"Throw","Put"};
        model = "\dayz\characters\man_bandit";
        portrait = "\Ca\characters_E\data\portraits\ger_soldier_CA";
        magazines[] = {};
        backpack = "";
        respawnWeapons[] = {"Throw","Put"};
        respawnMagazines[] = {};
        weaponSlots = "1     +  4    + 12*      256  + 2*   4096     +  2    + 8*   16  + 12*131072";
        canHideBodies = 1;
    };

    class BanditW1_DZ : SurvivorW2_DZ {
        displayName = "Bandit";
        side = 0;
        faction = "DAYZ_BANDIT_Faction";
        model = "\dayz\characters\woman_bandit";
    }; 
    
    class Bandit2_DZ : Bandit1_DZ{
      model = "\ca\characters2\IndepIns\Soldier.p3d";
      faceType = "HeadMask1Black";
    };

    class Bandit3_DZ : Bandit1_DZ{
      model = "\ca\characters2\IndepIns\Soldier2.p3d";
    };

    class Bandit4_DZ : Bandit1_DZ{
        model = "\ca\characters2\IndepIns\Soldier_COM.p3d";
    };

    class Bandit5_DZ : Bandit1_DZ {
        model = "\ca\characters_E\GER\GER_rifleman";
    };
