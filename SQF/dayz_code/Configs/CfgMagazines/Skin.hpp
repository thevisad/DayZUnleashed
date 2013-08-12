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
        isHumanitySkin=0;               //is this a humanity skin
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
    //If y
    class Skin_Survivor2_DZ : SkinBase {     
        scope = public;
        /*
        skinModel="Survivor2_DZ";       //normal humanity/male version
        skinModelALT="SurvivorW2_DZ";   //normal humanity/female version
        heroSkin="Survivor3_DZ";        //hero/male
        heroSkinALT="SurvivorW2_DZ";    //hero/female
        banditSkin="Bandit1_DZ";        //bandit/male
        banditSkinALT="BanditW1_DZ";    //bandit/female 
        */
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
       //skinModelALT="SniperW1_DZ";        
    };
    //Camo Soldier
    class Skin_Soldier1_DZ : SkinBase {
        scope = public;
        displayName = "Camo Clothes";
        descriptionShort = "Some camouflage clothing with an old helmet."; 
        skinModel="Soldier1_DZ";
       //skinModelALT="SniperW1_DZ";        
    };    
    //Officers Outfit(rocket unitform)
    class Skin_Officer1_DZ : SkinBase {
        scope = public;
        displayName = "Officers Outfit";
        descriptionShort = "An military officer's outfit, not than ranks matter anymore.."; 
        skinModel="Rocket_DZ";
        //skinModelALT="SniperW1_DZ";        
    };
    //Sniper outfit
    class Skin_Sniper1_DZ : SkinBase {
        scope = public;
        displayName = "Ghilisuit";
        descriptionShort = "The only outfit a stealth needs.."; 
        skinModel="Sniper1_DZ";
        skinModelALT="SniperW1_DZ";        
    };
    //End Dayz Original skins
     class Skin_TKSoldier1_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani Militia clothing.."; 
        skinModel="TKSoldier1_DZ";        
    };     
     class Skin_TKCivil1_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani clothing with a nice scarf..."; 
        skinModel="TKCivil1_DZ";        
    };       
     class Skin_TKCivil2_DZ : SkinBase {
        scope = public;
        displayName = "Takistani Clothes";
        descriptionShort = "Takistani clothing sweater.."; 
        skinModel="TKCivil2_DZ";        
    };       
    /*
        class Skin_CivilianW1_DZ : SkinBase {       
        scope = public;
        displayName = "Civilian Female Skin 1";
        descriptionShort = "Civilian Female Skin 1";    
    };
    
        class Skin_CivilianW2_DZ : SkinBase {       
        scope = public;
        displayName = "Civilian Female Skin 2";
        descriptionShort = "Civilian Female Skin 2";    
    };
    
        class Skin_CivilianW3_DZ : SkinBase {       
        scope = public;
        displayName = "Civilian Female Skin 3";
        descriptionShort = "Civilian Female Skin 3";    
    };
    
        class Skin_CivilianW4_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Female Skin 4";
        descriptionShort = "Civilian Female Skin 4";
    };
    
        class Skin_CivilianW5_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Female Skin 5";
        descriptionShort = "Civilian Female Skin 5";
    };
    
        class Skin_Civilian1_DZ : SkinBase {        
        scope = public;
        displayName = "Civilian Skin 1";
        descriptionShort = "Civilian Skin 1";   
    };
    
        class Skin_Civilian2_DZ : SkinBase {        
        scope = public;
        displayName = "Civilian Skin 2";
        descriptionShort = "Civilian Skin 2";   
    };
    
        class Skin_Civilian3_DZ : SkinBase {        
        scope = public;
        displayName = "Civilian Skin 3";
        descriptionShort = "Civilian Skin 3";   
    };
    
        class Skin_Civilian4_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 4";
        descriptionShort = "Civilian Skin 4";
    };
    
        class Skin_Civilian5_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 5";
        descriptionShort = "Civilian Skin 5";
    };
    
        class Skin_Civilian6_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 6";
        descriptionShort = "Civilian Skin 6";
    };
    
        class Skin_Civilian7_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 7";
        descriptionShort = "Civilian Skin 7";
    };
    
        class Skin_Civilian8_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 8";
        descriptionShort = "Civilian Skin 8";
    };
    
        class Skin_Civilian9_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 9";
        descriptionShort = "Civilian Skin 9";
    };
    
        class Skin_Civilian10_DZ : SkinBase {
        scope = public;
        displayName = "Civilian Skin 10";
        descriptionShort = "Civilian Skin 10";
    };    
    */