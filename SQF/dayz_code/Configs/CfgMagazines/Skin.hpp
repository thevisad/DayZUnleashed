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
    class Skin_Survivor2_DZ : SkinBase {     
        scope = public;
        /*
        //Only Specify the models this skin parcel actually replaces, set humantiy to 1 if hero and bandit skins are avalible.
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
    //Additional Skins
    //Level 2 clothing
    class Skin_Survivor3_DZ : SkinBase {     
        scope = public;
        skinModel="Civilian2_DZ";       //normal humanity/male version
        skinModelALT="CivilianW1_DZ";   //normal humanity/female version
        heroSkin="Herol11_DZ";        //hero/male
        heroSkinALT="Herowl11_DZ";    //hero/female
        banditSkin="Banditl11_DZ";        //bandit/male
        banditSkinALT="Banditwl11_DZ";    //bandit/female 
        isHumanitySkin=1;
        displayName = "Default Clothing";
        descriptionShort = "ordinary clothing, nothing special..";   
    }; 

    //Level 3 clothing
    class Skin_Survivor4_DZ : SkinBase {     
        scope = public;
        skinModel="Civilian3_DZ";       //normal humanity/male version
        skinModelALT="CivilianW2_DZ";   //normal humanity/female version
        heroSkin="Herol21_DZ";        //hero/male
        heroSkinALT="Herowl21_DZ";    //hero/female
        banditSkin="Banditl21_DZ";        //bandit/male
        banditSkinALT="Banditwl21_DZ";    //bandit/female 
        isHumanitySkin=1;
        displayName = "Default Clothing";
        descriptionShort = "ordinary clothing, nothing special..";   
    };   

    //Level 4 clothing
    class Skin_Survivor5_DZ : SkinBase {     
        scope = public;
        skinModel="Civilian4_DZ";       //normal humanity/male version
        skinModelALT="CivilianW3_DZ";   //normal humanity/female version
        heroSkin="Herol31_DZ";        //hero/male
        heroSkinALT="Herowl31_DZ";    //hero/female
        banditSkin="Banditl31_DZ";        //bandit/male
        banditSkinALT="Banditwl31_DZ";    //bandit/female 
        isHumanitySkin=1;
        displayName = "Default Clothing";
        descriptionShort = "ordinary clothing, nothing special..";   
    };  

    //Level 5 clothing
    class Skin_Survivor6_DZ : SkinBase {     
        scope = public;
        skinModel="Civilian5_DZ";       //normal humanity/male version
        skinModelALT="CivilianW4_DZ";   //normal humanity/female version
        heroSkin="Herol41_DZ";        //hero/male
        heroSkinALT="Herowl41_DZ";    //hero/female
        banditSkin="Banditl41_DZ";        //bandit/male
        banditSkinALT="Banditwl41_DZ";    //bandit/female 
        isHumanitySkin=1;
        displayName = "Default Clothing";
        descriptionShort = "ordinary clothing, nothing special..";   
    };