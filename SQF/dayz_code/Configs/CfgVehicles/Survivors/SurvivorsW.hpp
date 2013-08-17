    class CamoW1_DZ: SurvivorW2_DZ {
        faceType = "bb_female";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem"};
        model = "\bb_oa_female\female_soldier_oa_light.p3d";
        clothingDZ = "Skin_Camo1_DZ";
        class Wounds {        
            mat[] = {"ca\characters_E\US\data\tex1.rvmat", "ca\characters_E\US\data\W1_tex1.rvmat", "ca\characters_E\US\data\W2_tex1.rvmat", "bb_oa_female\textures\acr_soldier_nic.rvmat", "bb_oa_female\textures\w1_acr_soldier_nic.rvmat", "bb_oa_female\textures\w2_acr_soldier_nic.rvmat"};
            tex[] = {};
        };
    };

    class SoldierW1_DZ: CamoW1_DZ
    {
        faceType = "bb_female_helmet";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem_helmet"};
        model = "\bb_oa_female\female_soldier_oa_helmet.p3d";
        clothingDZ = "Skin_Soldier1_DZ";
    };
    
    class OfficerW1_DZ : CamoW1_DZ {
        faceType = "bb_female";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem_helmet"};
        model = "\bb_oa_female\female_pilot2_oa.p3d";
        clothingDZ = "Skin_Officer1_DZ";
        class Wounds {
            tex[] = {};
            mat[] = {"bb_oa_female\textures\pilot_soldier_nic.rvmat", "bb_oa_female\textures\w1_pilot_soldier_nic.rvmat", "bb_oa_female\textures\w2_pilot_soldier_nic.rvmat"};
        };
    };

    class SniperW1_DZ: Sniper1_DZ {
        clothingDZ = "Skin_Sniper1_DZ";
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
    
    class SniperW2_DZ : SniperW1_DZ {
        clothingDZ = "Skin_Sniper1_DZ";
        hiddenselectionstextures[] = {"\ca\characters_E\Ghillie\Data\ghillie_overall1_desert_co.paa"};
    };

    
    class TKWorkerW1_DZ : SurvivorW2_DZ {
        clothingDZ = "Skin_TKWorker1_DZ";
        faceType = "bb_female";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem"};
        model = "\Ca\characters_E\Overall\Overall";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
        class EventHandlers {
            init = "";
        };
        class Wounds {
            mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
            tex[] = {};
        };    
    };
    
    class TKWorkerW2_DZ: TKWorkerW1_DZ {
        clothingDZ = "Skin_TKWorker2_DZ";
        hiddenselectionstextures[] = {"\Ca\characters_E\Overall\Data\Overall_3_co.paa"};          
    };
    
//TK Soldier
class TKSoldierW1_DZ : TKWorkerW1_DZ {
        //displayName = "Militiaman";
        faceType = "bb_female_helmet";
        identityTypes[] = {"Language_W_EN_EP1", "Woman","Head_BB_Fem_helmet"};
        clothingDZ = "Skin_TKSoldier1_DZ";
        model = "\CA\characters_E\LOC\LOC_soldier01";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\LOC\Data\LOC_opfor01_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\LOC\Data\LOC_soldier01.rvmat", "CA\characters_E\LOC\Data\W1_LOC_soldier01.rvmat", "CA\characters_E\LOC\Data\W2_LOC_soldier01.rvmat"};
            tex[] = {};
        }; 
};
//TK Civilian 1
class TKCivilW1_DZ : TKWorkerW1_DZ {
        //displayName = "Takistani (scarf)";
        clothingDZ = "Skin_TKCivil1_DZ";
        model = "\CA\characters_E\civil\Tak_civil05\Tak_civil05";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\civil\Tak_civil05\Data\Tak_civil05_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\civil\Tak_civil05\Data\Tak_civil05.rvmat", "CA\characters_E\civil\Tak_civil05\Data\W1_Tak_civil05.rvmat", "CA\characters_E\civil\Tak_civil05\Data\W2_Tak_civil05.rvmat"};
            tex[] = {};
        }; 
};
//TK Civilian 2
class TKCivilW2_DZ : TKWorkerW1_DZ {
        //displayName = "Takistani (sweater)";
        clothingDZ = "Skin_TKCivil2_DZ";
        model = "\CA\characters_E\civil\Tak_civil01\Tak_civil01";
        hiddenselections[] = {"Camo"};
        hiddenselectionstextures[] = {"\CA\characters_E\civil\Tak_civil01\Data\Tak_civil01_1_co.paa"};
        class Wounds {
            mat[] = {"CA\characters_E\civil\Tak_civil01\Data\Tak_civil01.rvmat", "CA\characters_E\civil\Tak_civil01\Data\W1_Tak_civil01.rvmat", "CA\characters_E\civil\Tak_civil01\Data\W2_Tak_civil01.rvmat"};
            tex[] = {};
        };
};
 
