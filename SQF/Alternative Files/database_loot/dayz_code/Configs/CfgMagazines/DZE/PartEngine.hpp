class PartEngine: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EQUIP_NAME_11;
                model = "\dayz_equip\models\engine.p3d";
                picture = "\dayz_equip\textures\equip_engine_ca.paa";
                descriptionShort = $STR_EQUIP_DESC_11;
                class ItemActions {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_212;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"workshop"};
                                requiretools[] = {"ItemToolbox","ItemCrowbar"};
                                output[] = {{"PartGeneric",2}};
                                input[] = {{"PartEngine",1}};
                        };
                };
        };