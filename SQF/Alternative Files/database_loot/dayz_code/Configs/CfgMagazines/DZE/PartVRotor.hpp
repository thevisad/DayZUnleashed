class PartVRotor: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EQUIP_NAME_32;
                model = "\dayz_equip\models\vrotor.p3d";
                picture = "\dayz_equip\textures\equip_vrotor_ca.paa";
                descriptionShort = $STR_EQUIP_DESC_32;
                 class ItemActions {
            class Crafting
            {
                text = $STR_EPOCH_PLAYER_212;
                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                neednearby[] = {"workshop"};
                requiretools[] = {"ItemToolbox","ItemCrowbar"};
                output[] = {{"PartGeneric",3}};
                input[] = {{"PartVRotor",1}};
            };
        };
        };