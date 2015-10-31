class ItemDocument: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Document";
                model = "\z\addons\dayz_epoch\models\doc_generic.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_doc_generic_ca.paa";
                descriptionShort = "Unknown document";
                weight = 0.1;
                sfx = "document";                
                class ItemActions
                {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_188;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {};
                                requiretools[] = {};
                                randomOutput = 1;
                                output[] = {{"ItemLetter",1},{"ItemDocumentRamp",1},{"ItemBook1",1},{"ItemBook2",1},{"ItemBook3",1},{"ItemBook4",1},{"ItemNewspaper",1},{"ItemORP",1},{"ItemAVE",1},{"ItemLRK",1},{"ItemTNK",1},{"ItemPlotDeed",1}};
                                input[] = {{"ItemDocument",1}};
                        };
                };

        };
		
		class ItemDocumentRamp: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Wood Ramp";
                model = "\z\addons\dayz_epoch\models\doc_ramp.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_doc_ramp_ca.paa";
                descriptionShort = "Document used in building a wooden ramp.";
                weight = 0.1;
                class ItemActions
                {
                        class Crafting
                        {
                                text = $STR_EPOCH_PLAYER_189;
                                script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
                                neednearby[] = {"workshop"};
                                requiretools[] = {"ItemToolbox"};
                                output[] = {{"wood_ramp_kit",1}};
                                input[] = {{"ItemDocumentRamp",1},{"PartWoodLumber",8}};
                        };
                };
        };
		
		
		class ItemLetter: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Letter";
                model = "\z\addons\dayz_epoch\models\doc_letter.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_doc_letter_ca.paa";
                descriptionShort = "Random letter";
                weight = 0.1;
        };
        class ItemBook1: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Romance Novel";
                model = "\z\addons\dayz_epoch\models\doc_trashy1.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_trashy1_ca.paa";
                descriptionShort = "Trashy Romance Novel - ""The seas are laden with lust and jealousy.""";
                weight = 0.1;
        };
        class ItemBook2: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Romance Novel";
                model = "\z\addons\dayz_epoch\models\doc_trashy2.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_trashy2_ca.paa";
                descriptionShort = "Trashy Romance Novel - ""He had a chest of iron, and a heart of gold.""";
                weight = 0.1;
        };
        class ItemBook3: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Book";
                model = "\z\addons\dayz_epoch\models\doc_child1.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_child1_ca.paa";
                descriptionShort = "Random Children's Book";
                weight = 0.1;
        };
        class ItemBook4: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = "Book";
                model = "\z\addons\dayz_epoch\models\doc_child2.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_child2_ca.paa";
                descriptionShort = "Random Children's Book";
                weight = 0.1;
        };
		
		class ItemORP: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EPOCH_VEHUP_ORP;
                model = "\z\addons\dayz_epoch\models\doc_Up1.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_docup1_ca.paa";
                descriptionShort = $STR_EPOCH_VEHUP_ORP_DESC;
                weight = 0.1;
                sfx = "document";
                class ItemActions
                {
                        class Upgrades
                        {
                                text = $STR_EPOCH_PLAYER_UPGRADEV;
                                script = "spawn player_upgradeVehicle;";
                        };
                };

        };

        class ItemAVE: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EPOCH_VEHUP_AVE;
                model = "\z\addons\dayz_epoch\models\doc_Up2.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_docup2_ca.paa";
                descriptionShort = $STR_EPOCH_VEHUP_AVE_DESC;
                weight = 0.1;
                sfx = "document";
                class ItemActions
                {
                        class Upgrades
                        {
                                text = $STR_EPOCH_PLAYER_UPGRADEV;
                                script = "spawn player_upgradeVehicle;";
                        };
                };

        };

        class ItemLRK: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EPOCH_VEHUP_LRK;
                model = "\z\addons\dayz_epoch\models\doc_Up3.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_docup3_ca.paa";
                descriptionShort = $STR_EPOCH_VEHUP_LRK_DESC;
                weight = 0.1;
                sfx = "document";
                class ItemActions
                {
                        class Upgrades
                        {
                                text = $STR_EPOCH_PLAYER_UPGRADEV;
                                script = "spawn player_upgradeVehicle;";
                        };
                };

        };

        class ItemTNK: CA_Magazine
        {
                scope = 2;
                count = 1;
                type = 256;
                displayName = $STR_EPOCH_VEHUP_TNK;
                model = "\z\addons\dayz_epoch\models\doc_Up4.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_docup4_ca.paa";
                descriptionShort = $STR_EPOCH_VEHUP_TNK_DESC;
                weight = 0.1;
                sfx = "document";
                class ItemActions
                {
                        class Upgrades
                        {
                                text = $STR_EPOCH_PLAYER_UPGRADEV;
                                script = "spawn player_upgradeVehicle;";
                        };
                };

        };