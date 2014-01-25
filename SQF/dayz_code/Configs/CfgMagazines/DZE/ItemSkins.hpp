// Skins
        class SkinBase: CA_Magazine
        {
                scope = 0;
                count = 1;
                type = 256;
                displayName = "Clothes";
                model = "\dayz_equip\models\cloth_parcel.p3d";
                picture = "\dayz_equip\textures\equip_cloth_parcel_ca.paa";
                descriptionShort = "Clothes Parcel";
                weight = 1;
                class ItemActions
                {
                        class Use
                        {
                                text = $STR_EPOCH_PLAYER_268;
                                script = "spawn player_wearClothes;";
                        };
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_269b;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox","ItemKnife"};
                                output[] = {{"ItemCanvas",1}};
                                input[] = {{"SkinBase",2}};
                        };
                        class Crafting1
                        {
                                text = $STR_EPOCH_PLAYER_269;
                                script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {"ItemToolbox","ItemKnife"};
                                output[] = {{"ItemBandage",2}};
                                input[] = {{"SkinBase",1},{"ItemTrashToiletpaper",1}};
                        };
                };
        };