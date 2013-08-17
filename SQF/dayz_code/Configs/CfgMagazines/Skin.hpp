    //Base parcel class
    class SkinBase : CA_Magazine {
        scope = private;
        count = 1;
        type = 256;
        displayName = "Clothes";
        skinModel="Survivor2_DZ";       //the base model this parcel changes to
        skinModelALT="SurvivorW2_DZ";   //female version
        heroSkin="Survivor3_DZ";        //hero/male
        heroSkinALT="SurvivorW2_DZ";    //hero/female
        banditSkin="Bandit1_DZ";        //bandit/male
        banditSkinALT="BanditW1_DZ";    //bandit/female
        isHumanitySkin=0;               //Humanity skins change if the player is a bandit/hero. 
        tearChance=0.4;                 //base chance that this item will tear when pulled from a corpse. 
        model = "\dayz_equip\models\cloth_parcel.p3d";
        picture = "\dayz_equip\textures\equip_cloth_parcel_ca.paa";
        descriptionShort = "Clothes Parcel";        
       class ItemActions {
          class Use {
                text = "Wear %1";
                script = "spawn player_wearClothes;";
          };
       };
    };
    //Base polymorphic suvivor skin
    class Skin_Survivor2_DZ : SkinBase {     
        scope = public;
        isHumanitySkin=1;
        displayName = "Default Clothing";
        descriptionShort = "ordinary clothing, nothing special..";   
    };    
    //Camo Soldier
    class Skin_Camo1_DZ : SkinBase {
        scope = public;
        displayName = "Camo Clothes";
        descriptionShort = "Camouflage clothing for keeping out of sight"; 
        skinModel="Camo1_DZ";
        skinModelALT="CamoW1_DZ";        
    };
    //Camo Soldier
    class Skin_Soldier1_DZ : SkinBase {
        scope = public;
        displayName = "Camo Clothes";
        descriptionShort = "Some camouflage clothing with an old helmet."; 
        skinModel="Soldier1_DZ";
        skinModelALT="SoldierW1_DZ";        
    };    
    //Officers Outfit(rocket unitform)
    class Skin_Officer1_DZ : SkinBase {
        scope = public;
        displayName = "Officers Outfit";
        descriptionShort = "An officer's outfit, not than ranks matter anymore.."; 
        skinModel="Rocket_DZ";
        skinModelALT="OfficerW1_DZ";        
    };
    //Sniper outfit
    class Skin_Sniper1_DZ : SkinBase {
        scope = public;
        displayName = "Ghilisuit";
        descriptionShort = "The only outfit a hunter needs.."; 
        skinModel="Sniper1_DZ";
        skinModelALT="SniperW1_DZ";        
    };
    //Sniper outfit
    class Skin_Sniper2_DZ : SkinBase {
        scope = public;
        displayName = "Ghilisuit";
        descriptionShort = "The only outfit a hunter needs.."; 
        skinModel="Sniper2_DZ";
        skinModelALT="SniperW2_DZ";        
    };
    //End Dayz Original skins
     class Skin_TKSoldier1_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani Militia clothing.."; 
        skinModel="TKSoldier1_DZ";
        skinModelALT="TKSoldierW1_DZ";        
    };     
     class Skin_TKCivil1_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani clothing with a nice scarf..."; 
        skinModel="TKCivil1_DZ";
        skinModelALT="TKCivilW1_DZ";        
    };       
     class Skin_TKCivil2_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani clothing sweater.."; 
        skinModel="TKCivil2_DZ";  
        skinModelALT="TKCivilW2_DZ";       
    };       
    class Skin_TKWorker1_DZ : SkinBase {
        scope = public;
        displayName = "Overalls (Red)";
        descriptionShort = "Old dirty overalls, in red.."; 
        skinModel="TKWorker1_DZ";    
        skinModelALT="TKWorkerW1_DZ";     
    };           
    class Skin_TKWorker2_DZ : SkinBase {
        scope = public;
        displayName = "Overalls (Brown)";
        descriptionShort = "Old dirty overalls"; 
        skinModel="TKWorker2_DZ";    
        skinModelALT="TKWorkerW2_DZ";     
    };
 