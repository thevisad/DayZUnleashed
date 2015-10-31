//LEADER GUE_Commander
class BRT_Commander_DZ : Survivor3_DZ {
        cost = 900000;
        banditRank=6;
        clothingDZ = "Skin_Survivor2_DZ";
        side = 0;
        facetype = "Man";
        faction = "DZU_FACTION_BRT";
        glassesenabled = 0;
        identitytypes[] = {"Head_GUE", "INS_Glasses"};
        model = "\ca\characters2\IndepIns\Prizrak";
        hiddenselections[] = {};
        hiddenselectionstextures[] = {};
        class Wounds {
            mat[] = {"ca\characters2\IndepIns\Data\soldier_khaki.RVmat", "ca\characters2\IndepIns\Data\soldier_khaki_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_khaki_W2.RVmat", "ca\characters2\IndepIns\Data\soldier_flecktarn.RVmat", "ca\characters2\IndepIns\Data\soldier_flecktarn_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_flecktarn_W2.RVmat", "ca\characters2\IndepIns\Data\soldier2_khaki.RVmat", "ca\characters2\IndepIns\Data\soldier2_khaki_W1.RVmat", "ca\characters2\IndepIns\Data\soldier2_khaki_W2.RVmat", "ca\characters2\IndepIns\Data\soldier2_woodland.RVmat", "ca\characters2\IndepIns\Data\soldier2_woodland_W1.RVmat", "ca\characters2\IndepIns\Data\soldier2_woodland_W2.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_khaki.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_khaki_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_khaki_W2.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_flecktarn.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_flecktarn_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_mg_flecktarn_W2.RVmat", "ca\characters2\civil\worker\data\worker.rvmat", "ca\characters2\civil\worker\data\W1_worker.rvmat", "ca\characters2\civil\worker\data\W2_worker.rvmat", "ca\characters2\civil\Woodlander\data\Woodlander.rvmat", "ca\characters2\civil\Woodlander\data\W1_Woodlander.rvmat", "ca\characters2\civil\Woodlander\data\W2_Woodlander.rvmat", "ca\characters2\Civil\Villager\Data\villager.RVmat", "ca\characters2\Civil\Villager\Data\villager_w1.RVmat", "ca\characters2\Civil\Villager\Data\villager_w2.RVmat", "ca\characters2\IndepIns\Data\prizrak.rvmat", "ca\characters2\IndepIns\Data\W1_prizrak.rvmat", "ca\characters2\IndepIns\Data\W2_prizrak.rvmat", "ca\characters2\IndepIns\Data\soldier_back_khaki.RVmat", "ca\characters2\IndepIns\Data\soldier_back_khaki_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_back_khaki_W2.RVmat", "ca\characters2\IndepIns\Data\soldier_back_woodland.RVmat", "ca\characters2\IndepIns\Data\soldier_back_woodland_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_back_woodland_W2.RVmat", "ca\characters2\Data\ghillie.rvmat", "ca\characters2\Data\w1_ghillie.rvmat", "ca\characters2\Data\w2_ghillie.rvmat", "ca\characters2\IndepIns\Data\soldier_com_flecktarn.RVmat", "ca\characters2\IndepIns\Data\soldier_com_flecktarn_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_com_flecktarn_W2.RVmat", "ca\characters2\IndepIns\Data\soldier_com_khaki.RVmat", "ca\characters2\IndepIns\Data\soldier_com_khaki_W1.RVmat", "ca\characters2\IndepIns\Data\soldier_com_khaki_W2.RVmat"};
            tex[] = {};
        };
};

//Officer GUE_Soldier_2
class BRT_Officer_DZ : BRT_Commander_DZ {
        cost = 750000;
        banditRank=5;
        clothingDZ = "Skin_Survivor2_DZ";
        model = "\ca\characters2\IndepIns\Soldier2.p3d";
};

//PILOT GUE_Soldier_Pilot
class BRT_Pilot_DZ : BRT_Commander_DZ {
        cost = 500000;
        banditRank=4;
        clothingDZ = "Skin_Survivor2_DZ";
        facetype = "HeadMask1Black";
        model = "\ca\characters2\civil\Pilot\Pilot";
        class Wounds {
            mat[] = {"ca\characters2\Civil\Pilot\Data\camelpilot.rvmat", "ca\characters2\Civil\Pilot\Data\Pilot_W1.rvmat", "ca\characters2\Civil\Pilot\Data\Pilot_W2.rvmat"};
            tex[] = {};
        };
};

//SCOUT GUE_Soldier_Scout
class BRT_Scout_DZ : BRT_Commander_DZ {
        cost = 400000;
        banditRank=3;
        clothingDZ = "Skin_Survivor2_DZ";
        model = "\ca\characters2\Ghillie_Top";
};

//LOOTER GUE_Soldier_Medic
class BRT_Looter_DZ : BRT_Commander_DZ {
        cost = 100000;
        banditRank=2;
        clothingDZ = "Skin_Survivor2_DZ";
        facetype = "HeadMask1Black";
        model = "\ca\characters2\IndepIns\Soldier_Back.p3d";
};

//Grunt GUE_Soldier_CO
class BRT_Grunt_DZ : BRT_Commander_DZ {
        cost = 50000;
        banditRank=1;
        clothingDZ = "Skin_Survivor2_DZ";
        model = "\ca\characters2\IndepIns\Soldier_COM.p3d";
};
