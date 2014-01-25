class ItemMixOil : CA_Magazine { 
                scope = 2; 
                displayName = "2-Stroke Engine Oil"; 
                model = "\z\addons\dayz_epoch\models\oilmix.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_oilmix_CA.paa";
                count = 1; 
                type = "256";
                descriptionShort = "2-Stroke Engine Oil"; 
                sfx = "refuel";
                class ItemActions
                {
                        class Crafting
                        {
                                text = "Mix Chainsaw Gas"; // TODO: localize
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {};
                                output[] = {{"ItemJerryMixed",1}};
                                input[] = {{"ItemMixOil",1},{"ItemJerrycan",1}};
                        };
                };
        };