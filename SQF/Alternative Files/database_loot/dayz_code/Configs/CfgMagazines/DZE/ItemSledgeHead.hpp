class ItemSledgeHead : CA_Magazine {
                scope = public;
                count = 1;
                type = 256;
                displayName = "Sledgehammer Head";
                model = "\z\addons\dayz_epoch\models\sledge_head.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_sledge_head_ca.paa";
                descriptionShort = "Combine with a handle to make a Sledgehammer";
                weight = 9;
                class ItemActions {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_275;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"workshop"};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {};
                                outputweapons[] = {"ItemSledge"};
                                input[] = {{"ItemSledgeHead",1},{"ItemSledgeHandle",1}};
                        };
                };
        };
        class ItemSledgeHandle : CA_Magazine {
                scope = public;
                count = 1;
                type = 256;
                displayName = "Sledgehammer Handle";
                model = "\z\addons\dayz_epoch\models\sledge_handle.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_sledge_handle_ca.paa";
                descriptionShort = "Combine with a head to make a Sledgehammer";
                weight = 1;
                class ItemActions {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_275;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"workshop"};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {};
                                outputweapons[] = {"ItemSledge"};
                                input[] = {{"ItemSledgeHead",1},{"ItemSledgeHandle",1}};
                        };
                };
        };