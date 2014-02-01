SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for antihack_admins
-- ----------------------------
DROP TABLE IF EXISTS `antihack_admins`;
CREATE TABLE `antihack_admins` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `instance` int(11) DEFAULT NULL,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `adminlevel` int(11) DEFAULT NULL,
  `added` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_admins
-- ----------------------------

-- ----------------------------
-- Table structure for antihack_bans
-- ----------------------------
DROP TABLE IF EXISTS `antihack_bans`;
CREATE TABLE `antihack_bans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_bans
-- ----------------------------

-- ----------------------------
-- Table structure for antihack_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `antihack_whitelist`;
CREATE TABLE `antihack_whitelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_whitelist
-- ----------------------------

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq1_building` (`class_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '2b14_82mm_TK_Bag_EP1');
INSERT INTO `building` VALUES ('2', '2b14_82mm_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('3', '2b14_82mm_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('4', '76n6ClamShell');
INSERT INTO `building` VALUES ('5', '76n6ClamShell_EP1');
INSERT INTO `building` VALUES ('6', 'ACamp');
INSERT INTO `building` VALUES ('7', 'ACamp_EP1');
INSERT INTO `building` VALUES ('8', 'AGS_TK_Bag_EP1');
INSERT INTO `building` VALUES ('9', 'AGS_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('10', 'AGS_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('11', 'AGS_UN_Bag_EP1');
INSERT INTO `building` VALUES ('12', 'Ammobox_PMC');
INSERT INTO `building` VALUES ('14', 'AmmoCrates_NoInteractive_Large');
INSERT INTO `building` VALUES ('15', 'AmmoCrates_NoInteractive_Medium');
INSERT INTO `building` VALUES ('16', 'AmmoCrates_NoInteractive_Small');
INSERT INTO `building` VALUES ('13', 'AmmoCrate_NoInteractive_');
INSERT INTO `building` VALUES ('17', 'BAF_AssaultPack');
INSERT INTO `building` VALUES ('18', 'BAF_BasicAmmunitionBox');
INSERT INTO `building` VALUES ('19', 'BAF_BasicWeapons');
INSERT INTO `building` VALUES ('20', 'BAF_GMG_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('21', 'BAF_GPMG_Minitripod_D_bag');
INSERT INTO `building` VALUES ('22', 'BAF_IEDBox');
INSERT INTO `building` VALUES ('23', 'BAF_L2A1_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('24', 'BAF_L2A1_ACOG_tripod_bag');
INSERT INTO `building` VALUES ('25', 'BAF_Launchers');
INSERT INTO `building` VALUES ('26', 'BAF_OrdnanceBox');
INSERT INTO `building` VALUES ('27', 'BAF_VehicleBox');
INSERT INTO `building` VALUES ('554', 'BagFenceRound_DZ');
INSERT INTO `building` VALUES ('28', 'Barrack2');
INSERT INTO `building` VALUES ('29', 'Base_WarfareBBarrier10x');
INSERT INTO `building` VALUES ('30', 'Base_WarfareBBarrier10xTall');
INSERT INTO `building` VALUES ('31', 'Base_WarfareBBarrier5x');
INSERT INTO `building` VALUES ('32', 'Base_WarfareBContructionSite');
INSERT INTO `building` VALUES ('33', 'Bleacher_EP1');
INSERT INTO `building` VALUES ('38', 'BMP2Wreck');
INSERT INTO `building` VALUES ('34', 'BMP2_HQ_CDF_unfolded');
INSERT INTO `building` VALUES ('35', 'BMP2_HQ_INS_unfolded');
INSERT INTO `building` VALUES ('36', 'BMP2_HQ_TK_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('37', 'BMP2_HQ_TK_unfolded_EP1');
INSERT INTO `building` VALUES ('39', 'Body');
INSERT INTO `building` VALUES ('40', 'Bomb');
INSERT INTO `building` VALUES ('41', 'BRDM2_HQ_Gue_unfolded');
INSERT INTO `building` VALUES ('42', 'BRDM2_HQ_TK_GUE_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('43', 'BRDM2_HQ_TK_GUE_unfolded_EP1');
INSERT INTO `building` VALUES ('44', 'BRDMWreck');
INSERT INTO `building` VALUES ('45', 'BTR90_HQ_unfolded');
INSERT INTO `building` VALUES ('46', 'Bunker_PMC');
INSERT INTO `building` VALUES ('47', 'C130J_static_EP1');
INSERT INTO `building` VALUES ('48', 'C130J_wreck_EP1');
INSERT INTO `building` VALUES ('49', 'Camp');
INSERT INTO `building` VALUES ('51', 'CampEast');
INSERT INTO `building` VALUES ('52', 'CampEast_EP1');
INSERT INTO `building` VALUES ('50', 'Camp_EP1');
INSERT INTO `building` VALUES ('533', 'CanvasHut_DZ');
INSERT INTO `building` VALUES ('53', 'CDF_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('54', 'CDF_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('55', 'CDF_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('56', 'CDF_WarfareBBarracks');
INSERT INTO `building` VALUES ('57', 'CDF_WarfareBContructionSite');
INSERT INTO `building` VALUES ('58', 'CDF_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('59', 'CDF_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('60', 'CDF_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('61', 'CDF_WarfareBLightFactory');
INSERT INTO `building` VALUES ('62', 'CDF_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('63', 'CDF_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('540', 'CinderWallDoorway_DZ');
INSERT INTO `building` VALUES ('541', 'CinderWallHalf_DZ');
INSERT INTO `building` VALUES ('542', 'CinderWallSmallDoorway_DZ');
INSERT INTO `building` VALUES ('64', 'Concrete_Wall_EP1');
INSERT INTO `building` VALUES ('67', 'CZBasicWeapons_EP1');
INSERT INTO `building` VALUES ('65', 'CZ_Backpack_EP1');
INSERT INTO `building` VALUES ('66', 'CZ_VestPouch_EP1');
INSERT INTO `building` VALUES ('68', 'datsun01Wreck');
INSERT INTO `building` VALUES ('69', 'datsun02Wreck');
INSERT INTO `building` VALUES ('526', 'DesertCamoNet_DZ');
INSERT INTO `building` VALUES ('524', 'DesertLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('70', 'Dirtmount_EP1');
INSERT INTO `building` VALUES ('71', 'DSHkM_Mini_TriPod_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('72', 'DSHkM_Mini_TriPod_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('73', 'DSHKM_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('74', 'DSHKM_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('75', 'EntranceGate_EP1');
INSERT INTO `building` VALUES ('76', 'Explosive');
INSERT INTO `building` VALUES ('77', 'Fence_corrugated_plate');
INSERT INTO `building` VALUES ('78', 'Fence_Ind');
INSERT INTO `building` VALUES ('79', 'Fence_Ind_long');
INSERT INTO `building` VALUES ('538', 'FireBarrel_DZ');
INSERT INTO `building` VALUES ('80', 'FlagCarrierArmex_EP1');
INSERT INTO `building` VALUES ('81', 'FlagCarrierBAF');
INSERT INTO `building` VALUES ('82', 'FlagCarrierBIS_EP1');
INSERT INTO `building` VALUES ('83', 'FlagCarrierBLUFOR_EP1');
INSERT INTO `building` VALUES ('84', 'FlagCarrierCDF');
INSERT INTO `building` VALUES ('86', 'FlagCarrierCDFEnsign_EP1');
INSERT INTO `building` VALUES ('85', 'FlagCarrierCDF_EP1');
INSERT INTO `building` VALUES ('87', 'FlagCarrierChecked');
INSERT INTO `building` VALUES ('88', 'FlagCarrierCzechRepublic_EP1');
INSERT INTO `building` VALUES ('89', 'FlagCarrierGermany_EP1');
INSERT INTO `building` VALUES ('90', 'FlagCarrierGUE');
INSERT INTO `building` VALUES ('91', 'FlagCarrierINDFOR_EP1');
INSERT INTO `building` VALUES ('92', 'FlagCarrierINS');
INSERT INTO `building` VALUES ('93', 'FlagCarrierIONblack_PMC');
INSERT INTO `building` VALUES ('94', 'FlagCarrierIONwhite_PMC');
INSERT INTO `building` VALUES ('95', 'FlagCarrierNATO_EP1');
INSERT INTO `building` VALUES ('96', 'FlagCarrierOPFOR_EP1');
INSERT INTO `building` VALUES ('97', 'FlagCarrierPOWMIA_EP1');
INSERT INTO `building` VALUES ('98', 'FlagCarrierRedCrescent_EP1');
INSERT INTO `building` VALUES ('99', 'FlagCarrierRedCross_EP1');
INSERT INTO `building` VALUES ('100', 'FlagCarrierRedCrystal_EP1');
INSERT INTO `building` VALUES ('101', 'FlagCarrierRU');
INSERT INTO `building` VALUES ('102', 'FlagCarrierSmall');
INSERT INTO `building` VALUES ('104', 'FlagCarrierTakistanKingdom_EP1');
INSERT INTO `building` VALUES ('103', 'FlagCarrierTakistan_EP1');
INSERT INTO `building` VALUES ('105', 'FlagCarrierTFKnight_EP1');
INSERT INTO `building` VALUES ('106', 'FlagCarrierTKMilitia_EP1');
INSERT INTO `building` VALUES ('107', 'FlagCarrierUNO_EP1');
INSERT INTO `building` VALUES ('108', 'FlagCarrierUSA');
INSERT INTO `building` VALUES ('110', 'FlagCarrierUSArmy_EP1');
INSERT INTO `building` VALUES ('109', 'FlagCarrierUSA_EP1');
INSERT INTO `building` VALUES ('111', 'FlagCarrierWhite_EP1');
INSERT INTO `building` VALUES ('112', 'FlagPole_EP1');
INSERT INTO `building` VALUES ('527', 'ForestCamoNet_DZ');
INSERT INTO `building` VALUES ('525', 'ForestLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('113', 'Fort_Barracks_USMC');
INSERT INTO `building` VALUES ('114', 'Fort_Barricade');
INSERT INTO `building` VALUES ('115', 'Fort_Barricade_EP1');
INSERT INTO `building` VALUES ('116', 'Fort_Crate_wood');
INSERT INTO `building` VALUES ('117', 'Fort_EnvelopeBig');
INSERT INTO `building` VALUES ('118', 'Fort_EnvelopeBig_EP1');
INSERT INTO `building` VALUES ('119', 'Fort_EnvelopeSmall');
INSERT INTO `building` VALUES ('120', 'Fort_EnvelopeSmall_EP1');
INSERT INTO `building` VALUES ('121', 'Fort_RazorWire');
INSERT INTO `building` VALUES ('122', 'Fort_StoneWall_EP1');
INSERT INTO `building` VALUES ('528', 'FuelPump_DZ');
INSERT INTO `building` VALUES ('123', 'Garbage_can');
INSERT INTO `building` VALUES ('124', 'Garbage_container');
INSERT INTO `building` VALUES ('125', 'GERBasicWeapons_EP1');
INSERT INTO `building` VALUES ('126', 'Grave');
INSERT INTO `building` VALUES ('127', 'GraveCross1');
INSERT INTO `building` VALUES ('128', 'GraveCross2');
INSERT INTO `building` VALUES ('129', 'GraveCross2_EP1');
INSERT INTO `building` VALUES ('130', 'GraveCrossHelmet');
INSERT INTO `building` VALUES ('131', 'GraveCrossHelmet_EP1');
INSERT INTO `building` VALUES ('143', 'GuerillaCacheBox');
INSERT INTO `building` VALUES ('144', 'GuerillaCacheBox_EP1');
INSERT INTO `building` VALUES ('132', 'GUE_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('133', 'GUE_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('134', 'Gue_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('135', 'Gue_WarfareBBarracks');
INSERT INTO `building` VALUES ('136', 'Gue_WarfareBContructionSite');
INSERT INTO `building` VALUES ('137', 'Gue_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('138', 'GUE_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('139', 'Gue_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('140', 'Gue_WarfareBLightFactory');
INSERT INTO `building` VALUES ('141', 'GUE_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('142', 'GUE_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('145', 'Gunrack1');
INSERT INTO `building` VALUES ('146', 'Gunrack2');
INSERT INTO `building` VALUES ('147', 'GunrackTK_EP1');
INSERT INTO `building` VALUES ('148', 'GunrackUS_EP1');
INSERT INTO `building` VALUES ('149', 'Hanged');
INSERT INTO `building` VALUES ('150', 'Hanged_MD');
INSERT INTO `building` VALUES ('151', 'Haystack');
INSERT INTO `building` VALUES ('152', 'Hedgehog');
INSERT INTO `building` VALUES ('153', 'Hedgehog_EP1');
INSERT INTO `building` VALUES ('154', 'HeliH');
INSERT INTO `building` VALUES ('155', 'HeliHCivil');
INSERT INTO `building` VALUES ('156', 'HeliHEmpty');
INSERT INTO `building` VALUES ('157', 'HeliHRescue');
INSERT INTO `building` VALUES ('158', 'Hhedgehog_concrete');
INSERT INTO `building` VALUES ('159', 'Hhedgehog_concreteBig');
INSERT INTO `building` VALUES ('160', 'hiluxWreck');
INSERT INTO `building` VALUES ('161', 'HMMWVWreck');
INSERT INTO `building` VALUES ('162', 'HumpsDirt');
INSERT INTO `building` VALUES ('163', 'IED_placement_BAF');
INSERT INTO `building` VALUES ('164', 'Info_Board_EP1');
INSERT INTO `building` VALUES ('165', 'INS_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('166', 'INS_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('167', 'Ins_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('168', 'Ins_WarfareBBarracks');
INSERT INTO `building` VALUES ('169', 'Ins_WarfareBContructionSite');
INSERT INTO `building` VALUES ('170', 'Ins_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('171', 'INS_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('172', 'Ins_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('173', 'Ins_WarfareBLightFactory');
INSERT INTO `building` VALUES ('174', 'INS_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('175', 'INS_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('176', 'KORD_high_TK_Bag_EP1');
INSERT INTO `building` VALUES ('177', 'KORD_high_UN_Bag_EP1');
INSERT INTO `building` VALUES ('178', 'KORD_TK_Bag_EP1');
INSERT INTO `building` VALUES ('179', 'KORD_UN_Bag_EP1');
INSERT INTO `building` VALUES ('180', 'LADAWreck');
INSERT INTO `building` VALUES ('182', 'Land_Antenna');
INSERT INTO `building` VALUES ('181', 'Land_A_tent');
INSERT INTO `building` VALUES ('183', 'Land_BagFenceCorner');
INSERT INTO `building` VALUES ('184', 'Land_BagFenceEnd');
INSERT INTO `building` VALUES ('185', 'Land_BagFenceLong');
INSERT INTO `building` VALUES ('186', 'Land_BagFenceRound');
INSERT INTO `building` VALUES ('187', 'Land_BagFenceShort');
INSERT INTO `building` VALUES ('188', 'Land_bags_EP1');
INSERT INTO `building` VALUES ('189', 'Land_bags_stack_EP1');
INSERT INTO `building` VALUES ('190', 'Land_BarGate2');
INSERT INTO `building` VALUES ('191', 'Land_Barrack2_EP1');
INSERT INTO `building` VALUES ('192', 'Land_Blankets_EP1');
INSERT INTO `building` VALUES ('193', 'Land_BoatSmall_1');
INSERT INTO `building` VALUES ('194', 'Land_BoatSmall_2a');
INSERT INTO `building` VALUES ('195', 'Land_BoatSmall_2b');
INSERT INTO `building` VALUES ('196', 'Land_Boots_EP1');
INSERT INTO `building` VALUES ('197', 'Land_cages_EP1');
INSERT INTO `building` VALUES ('202', 'Land_CamoNetB_EAST');
INSERT INTO `building` VALUES ('203', 'Land_CamoNetB_EAST_EP1');
INSERT INTO `building` VALUES ('204', 'Land_CamoNetB_NATO');
INSERT INTO `building` VALUES ('205', 'Land_CamoNetB_NATO_EP1');
INSERT INTO `building` VALUES ('206', 'Land_CamoNetVar_EAST');
INSERT INTO `building` VALUES ('207', 'Land_CamoNetVar_EAST_EP1');
INSERT INTO `building` VALUES ('208', 'Land_CamoNetVar_NATO');
INSERT INTO `building` VALUES ('209', 'Land_CamoNetVar_NATO_EP1');
INSERT INTO `building` VALUES ('198', 'Land_CamoNet_EAST');
INSERT INTO `building` VALUES ('199', 'Land_CamoNet_EAST_EP1');
INSERT INTO `building` VALUES ('200', 'Land_CamoNet_NATO');
INSERT INTO `building` VALUES ('201', 'Land_CamoNet_NATO_EP1');
INSERT INTO `building` VALUES ('210', 'Land_Campfire');
INSERT INTO `building` VALUES ('211', 'Land_Campfire_burning');
INSERT INTO `building` VALUES ('212', 'Land_Carpet_2_EP1');
INSERT INTO `building` VALUES ('213', 'Land_Carpet_EP1');
INSERT INTO `building` VALUES ('214', 'Land_Carpet_rack_EP1');
INSERT INTO `building` VALUES ('215', 'Land_Church_tomb_1');
INSERT INTO `building` VALUES ('216', 'Land_Church_tomb_2');
INSERT INTO `building` VALUES ('217', 'Land_Church_tomb_3');
INSERT INTO `building` VALUES ('218', 'Land_Climbing_Obstacle');
INSERT INTO `building` VALUES ('219', 'Land_CncBlock');
INSERT INTO `building` VALUES ('220', 'Land_CncBlock_D');
INSERT INTO `building` VALUES ('221', 'Land_CncBlock_Stripes');
INSERT INTO `building` VALUES ('222', 'Land_ConcreteBlock');
INSERT INTO `building` VALUES ('223', 'Land_ConcreteRamp');
INSERT INTO `building` VALUES ('224', 'Land_covering_hut_big_EP1');
INSERT INTO `building` VALUES ('225', 'Land_covering_hut_EP1');
INSERT INTO `building` VALUES ('226', 'Land_Crates_EP1');
INSERT INTO `building` VALUES ('227', 'Land_Crates_stack_EP1');
INSERT INTO `building` VALUES ('228', 'Land_Destroyer');
INSERT INTO `building` VALUES ('229', 'Land_Dirthump01');
INSERT INTO `building` VALUES ('230', 'Land_Dirthump01_EP1');
INSERT INTO `building` VALUES ('231', 'Land_Dirthump02');
INSERT INTO `building` VALUES ('232', 'Land_Dirthump02_EP1');
INSERT INTO `building` VALUES ('233', 'Land_Dirthump03');
INSERT INTO `building` VALUES ('234', 'Land_Dirthump03_EP1');
INSERT INTO `building` VALUES ('557', 'Land_DZE_GarageWoodDoor');
INSERT INTO `building` VALUES ('561', 'Land_DZE_GarageWoodDoorLocked');
INSERT INTO `building` VALUES ('559', 'Land_DZE_LargeWoodDoor');
INSERT INTO `building` VALUES ('558', 'Land_DZE_LargeWoodDoorLocked');
INSERT INTO `building` VALUES ('550', 'Land_DZE_WoodDoor');
INSERT INTO `building` VALUES ('555', 'Land_DZE_WoodDoorLocked');
INSERT INTO `building` VALUES ('235', 'Land_Fire');
INSERT INTO `building` VALUES ('236', 'Land_Fire_barrel');
INSERT INTO `building` VALUES ('237', 'Land_Fire_barrel_burning');
INSERT INTO `building` VALUES ('238', 'Land_Fire_burning');
INSERT INTO `building` VALUES ('248', 'Land_fortified_nest_big');
INSERT INTO `building` VALUES ('249', 'Land_fortified_nest_big_EP1');
INSERT INTO `building` VALUES ('250', 'Land_fortified_nest_small');
INSERT INTO `building` VALUES ('251', 'Land_fortified_nest_small_EP1');
INSERT INTO `building` VALUES ('239', 'Land_fort_artillery_nest');
INSERT INTO `building` VALUES ('240', 'Land_fort_artillery_nest_EP1');
INSERT INTO `building` VALUES ('241', 'Land_fort_bagfence_corner');
INSERT INTO `building` VALUES ('242', 'Land_fort_bagfence_long');
INSERT INTO `building` VALUES ('243', 'Land_fort_bagfence_round');
INSERT INTO `building` VALUES ('244', 'Land_fort_rampart');
INSERT INTO `building` VALUES ('245', 'Land_fort_rampart_EP1');
INSERT INTO `building` VALUES ('246', 'Land_Fort_Watchtower');
INSERT INTO `building` VALUES ('247', 'Land_Fort_Watchtower_EP1');
INSERT INTO `building` VALUES ('252', 'Land_Fregata');
INSERT INTO `building` VALUES ('253', 'Land_GuardShed');
INSERT INTO `building` VALUES ('254', 'Land_Hangar_2');
INSERT INTO `building` VALUES ('256', 'Land_HBarrier1');
INSERT INTO `building` VALUES ('257', 'Land_HBarrier3');
INSERT INTO `building` VALUES ('258', 'Land_HBarrier5');
INSERT INTO `building` VALUES ('255', 'Land_HBarrier_large');
INSERT INTO `building` VALUES ('259', 'Land_Hlidac_budka');
INSERT INTO `building` VALUES ('260', 'Land_Hlidac_Budka_EP1');
INSERT INTO `building` VALUES ('261', 'Land_IED_v1_PMC');
INSERT INTO `building` VALUES ('262', 'Land_IED_v2_PMC');
INSERT INTO `building` VALUES ('263', 'Land_IED_v3_PMC');
INSERT INTO `building` VALUES ('264', 'Land_IED_v4_PMC');
INSERT INTO `building` VALUES ('265', 'Land_Ind_BoardsPack1');
INSERT INTO `building` VALUES ('266', 'Land_Ind_BoardsPack2');
INSERT INTO `building` VALUES ('267', 'Land_Ind_IlluminantTower');
INSERT INTO `building` VALUES ('268', 'Land_Ind_TankSmall');
INSERT INTO `building` VALUES ('269', 'Land_Ind_TankSmall2');
INSERT INTO `building` VALUES ('270', 'Land_Ind_TankSmall2_EP1');
INSERT INTO `building` VALUES ('271', 'Land_Ind_Timbers');
INSERT INTO `building` VALUES ('272', 'Land_ladder');
INSERT INTO `building` VALUES ('275', 'Land_ladderEP1');
INSERT INTO `building` VALUES ('273', 'Land_ladder_half');
INSERT INTO `building` VALUES ('274', 'Land_ladder_half_EP1');
INSERT INTO `building` VALUES ('276', 'Land_loco_742_blue');
INSERT INTO `building` VALUES ('277', 'Land_loco_742_red');
INSERT INTO `building` VALUES ('278', 'Land_Market_shelter_EP1');
INSERT INTO `building` VALUES ('279', 'Land_Market_stalls_01_EP1');
INSERT INTO `building` VALUES ('280', 'Land_Market_stalls_02_EP1');
INSERT INTO `building` VALUES ('282', 'Land_Misc_Cargo1Eo_EP1');
INSERT INTO `building` VALUES ('281', 'Land_Misc_Cargo1E_EP1');
INSERT INTO `building` VALUES ('283', 'Land_Misc_Cargo2E');
INSERT INTO `building` VALUES ('284', 'Land_Misc_Cargo2E_EP1');
INSERT INTO `building` VALUES ('285', 'Land_Misc_Coil_EP1');
INSERT INTO `building` VALUES ('286', 'Land_Misc_ConcBox_EP1');
INSERT INTO `building` VALUES ('287', 'Land_Misc_ConcOutlet_EP1');
INSERT INTO `building` VALUES ('288', 'Land_Misc_ConcPipeline_EP1');
INSERT INTO `building` VALUES ('289', 'Land_Misc_deerstand');
INSERT INTO `building` VALUES ('290', 'Land_Misc_Garb_Heap_EP1');
INSERT INTO `building` VALUES ('291', 'Land_Misc_GContainer_Big');
INSERT INTO `building` VALUES ('292', 'Land_Misc_IronPipes_EP1');
INSERT INTO `building` VALUES ('293', 'Land_Misc_Rubble_EP1');
INSERT INTO `building` VALUES ('294', 'Land_Misc_Scaffolding');
INSERT INTO `building` VALUES ('295', 'Land_Misc_Well_C_EP1');
INSERT INTO `building` VALUES ('296', 'Land_Misc_Well_L_EP1');
INSERT INTO `building` VALUES ('297', 'Land_obihacka');
INSERT INTO `building` VALUES ('298', 'Land_obstacle_get_over');
INSERT INTO `building` VALUES ('299', 'Land_obstacle_prone');
INSERT INTO `building` VALUES ('300', 'Land_obstacle_run_duck');
INSERT INTO `building` VALUES ('301', 'Land_podlejzacka');
INSERT INTO `building` VALUES ('302', 'Land_prebehlavka');
INSERT INTO `building` VALUES ('303', 'Land_prolejzacka');
INSERT INTO `building` VALUES ('304', 'Land_psi_bouda');
INSERT INTO `building` VALUES ('305', 'Land_radar');
INSERT INTO `building` VALUES ('306', 'Land_radar_EP1');
INSERT INTO `building` VALUES ('307', 'Land_RedWhiteBarrier');
INSERT INTO `building` VALUES ('308', 'Land_Shed_wooden');
INSERT INTO `building` VALUES ('309', 'Land_Shooting_range');
INSERT INTO `building` VALUES ('310', 'Land_stand_meat_EP1');
INSERT INTO `building` VALUES ('311', 'Land_stand_small_EP1');
INSERT INTO `building` VALUES ('312', 'Land_stand_waterl_EP1');
INSERT INTO `building` VALUES ('313', 'Land_sunshade_EP1');
INSERT INTO `building` VALUES ('314', 'Land_tent_east');
INSERT INTO `building` VALUES ('315', 'Land_tires_EP1');
INSERT INTO `building` VALUES ('316', 'Land_Toilet');
INSERT INTO `building` VALUES ('317', 'Land_transport_cart_EP1');
INSERT INTO `building` VALUES ('318', 'Land_transport_crates_EP1');
INSERT INTO `building` VALUES ('319', 'Land_transport_kiosk_EP1');
INSERT INTO `building` VALUES ('320', 'Land_wagon_box');
INSERT INTO `building` VALUES ('321', 'Land_wagon_flat');
INSERT INTO `building` VALUES ('322', 'Land_wagon_tanker');
INSERT INTO `building` VALUES ('323', 'Land_WoodenRamp');
INSERT INTO `building` VALUES ('324', 'LAV25_HQ_unfolded');
INSERT INTO `building` VALUES ('529', 'LightPole_DZ');
INSERT INTO `building` VALUES ('325', 'LocalBasicAmmunitionBox');
INSERT INTO `building` VALUES ('326', 'LocalBasicWeaponsBox');
INSERT INTO `building` VALUES ('327', 'Loudspeaker');
INSERT INTO `building` VALUES ('328', 'Loudspeakers_EP1');
INSERT INTO `building` VALUES ('329', 'M1130_HQ_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('330', 'M1130_HQ_unfolded_EP1');
INSERT INTO `building` VALUES ('331', 'M252_US_Bag_EP1');
INSERT INTO `building` VALUES ('332', 'M2HD_mini_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('333', 'M2StaticMG_US_Bag_EP1');
INSERT INTO `building` VALUES ('334', 'MASH');
INSERT INTO `building` VALUES ('335', 'MASH_EP1');
INSERT INTO `building` VALUES ('336', 'Mass_grave');
INSERT INTO `building` VALUES ('539', 'MetalFloor_DZ');
INSERT INTO `building` VALUES ('535', 'MetalGate_DZ');
INSERT INTO `building` VALUES ('523', 'MetalPanel_DZ');
INSERT INTO `building` VALUES ('337', 'Metis_TK_Bag_EP1');
INSERT INTO `building` VALUES ('338', 'Mi8Wreck');
INSERT INTO `building` VALUES ('339', 'Microphone1_ep1');
INSERT INTO `building` VALUES ('340', 'Microphone2_ep1');
INSERT INTO `building` VALUES ('341', 'Microphone3_ep1');
INSERT INTO `building` VALUES ('342', 'Misc_Backpackheap');
INSERT INTO `building` VALUES ('343', 'Misc_Backpackheap_EP1');
INSERT INTO `building` VALUES ('352', 'Misc_Cargo1Bo_military');
INSERT INTO `building` VALUES ('351', 'Misc_Cargo1B_military');
INSERT INTO `building` VALUES ('344', 'Misc_cargo_cont_net1');
INSERT INTO `building` VALUES ('345', 'Misc_cargo_cont_net2');
INSERT INTO `building` VALUES ('346', 'Misc_cargo_cont_net3');
INSERT INTO `building` VALUES ('347', 'Misc_cargo_cont_small');
INSERT INTO `building` VALUES ('349', 'Misc_cargo_cont_small2');
INSERT INTO `building` VALUES ('348', 'Misc_cargo_cont_small_EP1');
INSERT INTO `building` VALUES ('350', 'Misc_cargo_cont_tiny');
INSERT INTO `building` VALUES ('353', 'Misc_palletsfoiled');
INSERT INTO `building` VALUES ('354', 'Misc_palletsfoiled_heap');
INSERT INTO `building` VALUES ('355', 'Misc_TyreHeap');
INSERT INTO `building` VALUES ('356', 'Misc_TyreHeapEP1');
INSERT INTO `building` VALUES ('357', 'Misc_Videoprojektor');
INSERT INTO `building` VALUES ('358', 'Misc_Wall_lamp');
INSERT INTO `building` VALUES ('359', 'MK19_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('360', 'Obstacle_saddle');
INSERT INTO `building` VALUES ('537', 'OutHouse_DZ');
INSERT INTO `building` VALUES ('361', 'Paleta1');
INSERT INTO `building` VALUES ('362', 'Paleta2');
INSERT INTO `building` VALUES ('363', 'PARACHUTE_TARGET');
INSERT INTO `building` VALUES ('364', 'Pile_of_wood');
INSERT INTO `building` VALUES ('365', 'Plastic_Pole_EP1');
INSERT INTO `building` VALUES ('522', 'Plastic_Pole_EP1_DZ');
INSERT INTO `building` VALUES ('366', 'PowGen_Big');
INSERT INTO `building` VALUES ('367', 'PowGen_Big_EP1');
INSERT INTO `building` VALUES ('368', 'RampConcrete');
INSERT INTO `building` VALUES ('369', 'Red_Light_Blinking_EP1');
INSERT INTO `building` VALUES ('370', 'RoadBarrier_light');
INSERT INTO `building` VALUES ('371', 'RoadBarrier_long');
INSERT INTO `building` VALUES ('383', 'RUBasicAmmunitionBox');
INSERT INTO `building` VALUES ('384', 'RUBasicWeaponsBox');
INSERT INTO `building` VALUES ('385', 'RULaunchersBox');
INSERT INTO `building` VALUES ('386', 'RUOrdnanceBox');
INSERT INTO `building` VALUES ('387', 'RUSpecialWeaponsBox');
INSERT INTO `building` VALUES ('388', 'RUVehicleBox');
INSERT INTO `building` VALUES ('372', 'RU_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('373', 'RU_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('374', 'RU_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('375', 'RU_WarfareBBarracks');
INSERT INTO `building` VALUES ('376', 'RU_WarfareBContructionSite');
INSERT INTO `building` VALUES ('377', 'RU_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('378', 'RU_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('379', 'RU_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('380', 'RU_WarfareBLightFactory');
INSERT INTO `building` VALUES ('381', 'RU_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('382', 'RU_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('534', 'SandNest_DZ');
INSERT INTO `building` VALUES ('391', 'SignM_FARP_Winchester_EP1');
INSERT INTO `building` VALUES ('392', 'SignM_FOB_Blanik_EP1');
INSERT INTO `building` VALUES ('393', 'SignM_FOB_Prostejov_EP1');
INSERT INTO `building` VALUES ('394', 'SignM_FOB_Revolve_EP1');
INSERT INTO `building` VALUES ('395', 'SignM_UN_Base_EP1');
INSERT INTO `building` VALUES ('389', 'Sign_Armex_EP1');
INSERT INTO `building` VALUES ('390', 'Sign_Direction_EP1');
INSERT INTO `building` VALUES ('396', 'SKODAWreck');
INSERT INTO `building` VALUES ('397', 'SpecialWeaponsBox');
INSERT INTO `building` VALUES ('398', 'SPG9_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('399', 'SPG9_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('400', 'Sr_border');
INSERT INTO `building` VALUES ('530', 'StickFence_DZ');
INSERT INTO `building` VALUES ('536', 'StorageShed_DZ');
INSERT INTO `building` VALUES ('401', 'T72Wreck');
INSERT INTO `building` VALUES ('402', 'T72WreckTurret');
INSERT INTO `building` VALUES ('450', 'TKBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('451', 'TKBasicWeapons_EP1');
INSERT INTO `building` VALUES ('452', 'TKLaunchers_EP1');
INSERT INTO `building` VALUES ('453', 'TKOrdnanceBox_EP1');
INSERT INTO `building` VALUES ('454', 'TKSpecialWeapons_EP1');
INSERT INTO `building` VALUES ('455', 'TKVehicleBox_EP1');
INSERT INTO `building` VALUES ('403', 'TK_ALICE_Pack_EP1');
INSERT INTO `building` VALUES ('404', 'TK_Assault_Pack_EP1');
INSERT INTO `building` VALUES ('405', 'TK_GUE_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('406', 'TK_GUE_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('407', 'TK_GUE_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('408', 'TK_GUE_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('409', 'TK_GUE_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('410', 'TK_GUE_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('411', 'TK_GUE_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('412', 'TK_GUE_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('415', 'TK_GUE_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('416', 'TK_GUE_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('413', 'TK_GUE_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('414', 'TK_GUE_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('417', 'TK_GUE_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('418', 'TK_GUE_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('419', 'TK_GUE_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('420', 'TK_GUE_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('421', 'TK_GUE_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('422', 'TK_GUE_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('423', 'TK_GUE_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('424', 'TK_GUE_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('425', 'TK_GUE_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('426', 'TK_GUE_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('427', 'TK_RPG_Backpack_EP1');
INSERT INTO `building` VALUES ('428', 'TK_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('429', 'TK_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('430', 'TK_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('431', 'TK_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('432', 'TK_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('433', 'TK_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('434', 'TK_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('435', 'TK_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('438', 'TK_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('439', 'TK_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('436', 'TK_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('437', 'TK_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('440', 'TK_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('441', 'TK_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('442', 'TK_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('443', 'TK_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('444', 'TK_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('445', 'TK_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('446', 'TK_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('447', 'TK_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('448', 'TK_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('449', 'TK_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('456', 'TOW_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('457', 'Training_target_EP1');
INSERT INTO `building` VALUES ('458', 'Tripod_Bag');
INSERT INTO `building` VALUES ('459', 'UAZWreck');
INSERT INTO `building` VALUES ('460', 'UNBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('461', 'UNBasicWeapons_EP1');
INSERT INTO `building` VALUES ('462', 'UralWreck');
INSERT INTO `building` VALUES ('489', 'USBasicAmmunitionBox');
INSERT INTO `building` VALUES ('490', 'USBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('491', 'USBasicBag');
INSERT INTO `building` VALUES ('493', 'USBasicWeaponsBox');
INSERT INTO `building` VALUES ('492', 'USBasicWeapons_EP1');
INSERT INTO `building` VALUES ('495', 'USLaunchersBox');
INSERT INTO `building` VALUES ('494', 'USLaunchers_EP1');
INSERT INTO `building` VALUES ('496', 'USMC_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('497', 'USMC_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('498', 'USMC_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('499', 'USMC_WarfareBBarracks');
INSERT INTO `building` VALUES ('500', 'USMC_WarfareBContructionSite');
INSERT INTO `building` VALUES ('501', 'USMC_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('502', 'USMC_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('503', 'USMC_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('504', 'USMC_WarfareBLightFactory');
INSERT INTO `building` VALUES ('505', 'USMC_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('506', 'USMC_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('507', 'USOrdnanceBox');
INSERT INTO `building` VALUES ('508', 'USOrdnanceBox_EP1');
INSERT INTO `building` VALUES ('510', 'USSpecialWeaponsBox');
INSERT INTO `building` VALUES ('509', 'USSpecialWeapons_EP1');
INSERT INTO `building` VALUES ('511', 'USVehicleBox');
INSERT INTO `building` VALUES ('512', 'USVehicleBox_EP1');
INSERT INTO `building` VALUES ('463', 'US_Assault_Pack_EP1');
INSERT INTO `building` VALUES ('464', 'US_Backpack_EP1');
INSERT INTO `building` VALUES ('465', 'US_Patrol_Pack_EP1');
INSERT INTO `building` VALUES ('466', 'US_UAV_Pack_EP1');
INSERT INTO `building` VALUES ('467', 'US_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('468', 'US_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('469', 'US_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('470', 'US_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('471', 'US_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('472', 'US_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('473', 'US_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('474', 'US_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('477', 'US_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('478', 'US_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('475', 'US_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('476', 'US_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('479', 'US_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('480', 'US_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('481', 'US_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('482', 'US_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('483', 'US_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('484', 'US_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('485', 'US_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('486', 'US_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('487', 'US_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('488', 'US_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('513', 'WarfareBAircraftFactory_CDF');
INSERT INTO `building` VALUES ('514', 'WarfareBAircraftFactory_Gue');
INSERT INTO `building` VALUES ('515', 'WarfareBAircraftFactory_Ins');
INSERT INTO `building` VALUES ('516', 'WarfareBAirport');
INSERT INTO `building` VALUES ('517', 'WarfareBCamp');
INSERT INTO `building` VALUES ('518', 'WarfareBDepot');
INSERT INTO `building` VALUES ('519', 'WarfareBunkerSign');
INSERT INTO `building` VALUES ('520', 'WaterBasin_conc_EP1');
INSERT INTO `building` VALUES ('531', 'Wooden_shed_DZ');
INSERT INTO `building` VALUES ('545', 'WoodFloorHalf_DZ');
INSERT INTO `building` VALUES ('546', 'WoodFloorQuarter_DZ');
INSERT INTO `building` VALUES ('544', 'WoodFloor_DZ');
INSERT INTO `building` VALUES ('551', 'WoodLadder_DZ');
INSERT INTO `building` VALUES ('563', 'WoodLargeWallDoor_DZ');
INSERT INTO `building` VALUES ('560', 'WoodLargeWallWin_DZ');
INSERT INTO `building` VALUES ('562', 'WoodLargeWall_DZ');
INSERT INTO `building` VALUES ('543', 'WoodRamp_DZ');
INSERT INTO `building` VALUES ('532', 'WoodShack_DZ');
INSERT INTO `building` VALUES ('553', 'WoodSmallWallDoor_DZ');
INSERT INTO `building` VALUES ('552', 'WoodSmallWallThird_DZ');
INSERT INTO `building` VALUES ('556', 'WoodSmallWallWin_DZ');
INSERT INTO `building` VALUES ('548', 'WoodSmallWall_DZ');
INSERT INTO `building` VALUES ('547', 'WoodStairsSans_DZ');
INSERT INTO `building` VALUES ('549', 'WoodStairs_DZ');
INSERT INTO `building` VALUES ('521', 'WorkBench_DZ');

-- ----------------------------
-- Table structure for character_data
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '1000',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for character_dead
-- ----------------------------
DROP TABLE IF EXISTS `character_dead`;
CREATE TABLE `character_dead` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_dead
-- ----------------------------

-- ----------------------------
-- Table structure for character_variables
-- ----------------------------
DROP TABLE IF EXISTS `character_variables`;
CREATE TABLE `character_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `characterID` (`characterID`) USING BTREE,
  CONSTRAINT `characterID` FOREIGN KEY (`characterID`) REFERENCES `character_data` (`CharacterID`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_variables
-- ----------------------------

-- ----------------------------
-- Table structure for cust_loadout
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout`;
CREATE TABLE `cust_loadout` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inventory` varchar(2048) NOT NULL,
  `backpack` varchar(2048) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout
-- ----------------------------

-- ----------------------------
-- Table structure for cust_loadout_profile
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout_profile`;
CREATE TABLE `cust_loadout_profile` (
  `cust_loadout_id` bigint(20) unsigned NOT NULL,
  `unique_id` varchar(128) NOT NULL,
  PRIMARY KEY (`cust_loadout_id`,`unique_id`),
  KEY `fk2_cust_loadout_profile` (`unique_id`) USING BTREE,
  CONSTRAINT `cust_loadout_profile_ibfk_1` FOREIGN KEY (`cust_loadout_id`) REFERENCES `cust_loadout` (`id`),
  CONSTRAINT `cust_loadout_profile_ibfk_2` FOREIGN KEY (`unique_id`) REFERENCES `profile` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout_profile
-- ----------------------------

-- ----------------------------
-- Table structure for global_state
-- ----------------------------
DROP TABLE IF EXISTS `global_state`;
CREATE TABLE `global_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalSetting` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of global_state
-- ----------------------------

-- ----------------------------
-- Table structure for instance_building
-- ----------------------------
DROP TABLE IF EXISTS `instance_building`;
CREATE TABLE `instance_building` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `objectUID` bigint(20) DEFAULT NULL,
  `instanceId` int(20) unsigned NOT NULL DEFAULT '1',
  `buildingId` int(1) DEFAULT NULL,
  `worldspace` varchar(70) NOT NULL DEFAULT '[0,[0,0,0]]',
  `inventory` longtext,
  `hitpoints` longtext,
  `characterId` text,
  `squadId` int(11) DEFAULT '0',
  `combination` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_building
-- ----------------------------

-- ----------------------------
-- Table structure for instance_garage
-- ----------------------------
DROP TABLE IF EXISTS `instance_garage`;
CREATE TABLE `instance_garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buildingUID` bigint(20) DEFAULT NULL,
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) NOT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(500) DEFAULT '[]',
  `Fuel` double(13,5) DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_garage
-- ----------------------------

-- ----------------------------
-- Table structure for instance_movement
-- ----------------------------
DROP TABLE IF EXISTS `instance_movement`;
CREATE TABLE `instance_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `instanceID` int(11) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_movement
-- ----------------------------

-- ----------------------------
-- Table structure for instance_squad
-- ----------------------------
DROP TABLE IF EXISTS `instance_squad`;
CREATE TABLE `instance_squad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `squadId` int(11) DEFAULT NULL,
  `characterId` int(11) DEFAULT NULL,
  `join_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_squad
-- ----------------------------

-- ----------------------------
-- Table structure for instance_state
-- ----------------------------
DROP TABLE IF EXISTS `instance_state`;
CREATE TABLE `instance_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instanceID` int(11) DEFAULT NULL,
  `currentState` varchar(1000) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `quests` varchar(1000) DEFAULT NULL,
  `lastUpdated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_state
-- ----------------------------

-- ----------------------------
-- Table structure for instance_user
-- ----------------------------
DROP TABLE IF EXISTS `instance_user`;
CREATE TABLE `instance_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIP` varchar(30) NOT NULL,
  PRIMARY KEY (`id`,`userIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_user
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `payload` varchar(1024) NOT NULL,
  `loop_interval` int(10) unsigned NOT NULL DEFAULT '0',
  `start_delay` int(10) unsigned NOT NULL DEFAULT '30',
  `instance_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_message` (`instance_id`) USING BTREE,
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for object_classes
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_M2_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazReammo', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRepair_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_ATV_D', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_FV510_D', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_RU', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M998A2_SOV_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('M1030_US_DES_EP1', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_MK19_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_UN_EP1', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('S1203_ambulance_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi171Sh_CZ_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UralSalvage_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Wire_cat1', '0', '0', '0', 'wire');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('V3S_Supply_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_TK_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_MG_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.75', '5', '0.05000', 'mediumboat');
INSERT INTO `object_classes` VALUES ('UH60M_MEV_EP1', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_ATV_W', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UH60M_EP1', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UralRefuel_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralSupply_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SUV_PMC', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralOpen_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AV8B2', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_DZ', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.75', '20', '0.05000', 'bike');
INSERT INTO `object_classes` VALUES ('RHIB', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.75', '20', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Merlin_HC3_D', '0.25', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ka52', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH64D', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Chukar_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', '0', '0.05000', 'tent');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.75', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('KamazRepair', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('RHIB2Turret', '0.50', '3', '0.05000', 'boat with turrent');
INSERT INTO `object_classes` VALUES ('MH6J_EP1', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.75', '3', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MTVR_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Sandbag1_DZ', '0', '0', '0', 'Sandbag');
INSERT INTO `object_classes` VALUES ('UralOpen_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.75', '10', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_MG_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_Ins', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada2', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MTVR', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_CZ_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi17_rockets_RU', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralReammo_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '6', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('MtvrSupply_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('An2_1_TK_CIV_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH1Z', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrReammo', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrRepair', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.75', '20', '0.05000', 'bike');
INSERT INTO `object_classes` VALUES ('Pickup_PK_INS', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MMT_USMC', '0.75', '20', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH6J_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.75', '3', '0.05000', 'plane');
INSERT INTO `object_classes` VALUES ('Ural_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('A10_US_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.61', '3', '0.05000', 'largeboat');
INSERT INTO `object_classes` VALUES ('AH64D_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Chukar', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('C130J', '0.50', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada1', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi171Sh_rockets_CZ_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazOpen', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Pickup_PK_TK_GUE_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Pickup_PK_GUE', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrSalvage_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_Special_CZ_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Skoda', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Terminal_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '5', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('CH_47F_BAF', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UH1Y', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('F35B', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_INS_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AW159_Lynx_BAF', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH6X_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('StashSmall', '0', '0', '0', 'StashSmall');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrReammo_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '0.59', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Salvage_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M2', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UralReammo_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('CH_47F_EP1', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_Ins', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('StashMedium', '0', '0', '0', 'StashMedium');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_SPG9_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_FV510_W', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('A10', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRepair_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Repair_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazRefuel', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Hedgehog_DZ', '0', '3', '0', 'Hedgehog');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRepair_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('tractorOld', '0.75', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('An2_2_TK_CIV_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.75', '5', '0.05000', 'mediumboat');
INSERT INTO `object_classes` VALUES ('Tractor', '0.75', '3', '0.05000', 'farmvehicle');
INSERT INTO `object_classes` VALUES ('M1030', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralReammo_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRepair_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AV8B', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRefuel_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ka52Black', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MV22', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('An2_TK_EP1', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Kamaz', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_UN_CDF_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MH60S', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_CDF', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRefuel', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Refuel_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('C130J_US_EP1', '0.50', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Reammo_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_INS', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi17_CDF', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_MG_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Apache_AH1_D', '0.10', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('PBX', '0.75', '5', '0.05000', 'smallboat');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_INS_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_CZ_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareRepairTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Armored', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1035_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRefuel_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('MtvrRefuel_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_PMC_BAF', '0.75', '5', '0.05000', '');

-- ----------------------------
-- Table structure for object_data
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(500) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  UNIQUE KEY `CheckUID` (`ObjectUID`,`Instance`) USING BTREE,
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Damage`,`Instance`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_data
-- ----------------------------
INSERT INTO `object_data` VALUES ('1', '453198240', '1', 'hilux1_civil_1_open', '2013-12-28 09:02:57', '0', '[182,[11638.491,14873.074,0.36336327]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.81],[\"palivo\",0.77],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.11],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.29],[\"wheel_2_2_steering\",0.9],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.79000', '0.12000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('2', '307025022', '1', 'UAZ_AGS30_INS', '2013-12-28 09:02:57', '0', '[346,[16616.555,9670.1924,-0.14235115]]', '[]', '[[\"wheel_1_1_steering\",0.25],[\"wheel_1_2_steering\",0.99],[\"wheel_2_1_steering\",0.28],[\"wheel_2_2_steering\",0.85],[\"motor\",0.59],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.74],[\"palivo\",0.66],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.23000', '0.10000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('3', '215613029', '1', 'tractorOld', '2013-12-28 09:02:57', '0', '[75,[16643.07,18274.84,-0.021310806]]', '[]', '[[\"motor\",0.5],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.44],[\"palivo\",0.03],[\"wheel_1_1_steering\",0.61],[\"wheel_2_1_steering\",0.2],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.73],[\"wheel_2_2_steering\",0.81],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.04000', '0.44000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('4', '281752995', '1', 'PBX', '2013-12-28 09:02:57', '0', '[300,[3882.4707,14593.786,0.22469437]]', '[]', '[[\"motor\",0.8]]', '0.29000', '0.18000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('5', '365975281', '1', 'car_hatchback', '2013-12-28 09:02:57', '0', '[86,[8901.7041,16382.906,-0.52287233]]', '[]', '[[\"motor\",0.6],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.21],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.46],[\"wheel_2_1_steering\",0.73],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.79],[\"wheel_2_2_steering\",0.57],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.26000', '0.66000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('6', '349736276', '1', 'car_hatchback', '2013-12-28 09:02:57', '0', '[309,[5866.5811,15399.4,-0.086795166]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.77],[\"palivo\",0.12],[\"wheel_1_1_steering\",0.43],[\"wheel_2_1_steering\",0.05],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.54],[\"wheel_2_2_steering\",0.64],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.83000', '0.66000', '2013-12-28 20:38:54');
INSERT INTO `object_data` VALUES ('7', '491240349', '1', 'TT650_TK_EP1', '2013-12-28 09:02:57', '0', '[156,[10450.567,14092.313,0.0099034049]]', '[]', '[[\"motor\",0.06]]', '0.11000', '0.40000', '2013-12-28 09:02:57');
INSERT INTO `object_data` VALUES ('8', '27605841', '1', 'Smallboat_2', '2013-12-28 09:02:57', '0', '[348,[8094.876,17328.656,-0.19774395]]', '[]', '[[\"motor\",0.36]]', '0.90000', '0.43000', '2013-12-28 09:02:57');
INSERT INTO `object_data` VALUES ('9', '294780574', '1', 'SkodaGreen', '2013-12-28 09:02:57', '0', '[215,[14209.455,13859.497,0.043473721]]', '[]', '[[\"motor\",0.15],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.07],[\"palivo\",0.22],[\"wheel_1_1_steering\",0.6],[\"wheel_2_1_steering\",0.25],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.19],[\"wheel_2_2_steering\",0.67],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.08000', '0.50000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('10', '47597124', '1', 'datsun1_civil_3_open', '2013-12-28 09:02:57', '0', '[47,[15845.489,13254.738,-0.098415375]]', '[]', '[[\"motor\",0.69],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.99],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.53],[\"wheel_2_1_steering\",0.19],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.79],[\"wheel_2_2_steering\",0.55],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.27000', '0.97000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('11', '101164497', '1', 'TT650_TK_EP1', '2013-12-28 09:02:58', '0', '[179,[10243.161,18317.027,-0.093670703]]', '[]', '[[\"motor\",0.44]]', '0.90000', '0.57000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('12', '379104632', '1', 'Old_bike_TK_INS_EP1', '2013-12-28 09:02:58', '0', '[30,[9148.2383,17253.543,0.1132509]]', '[]', '[]', '0.66000', '0.18000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('13', '433329586', '1', 'BAF_Offroad_W', '2013-12-28 09:02:58', '0', '[232,[15438.357,13233.176,-0.14840031]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.15],[\"palivo\",0.18],[\"wheel_1_1_steering\",0.2],[\"wheel_1_2_steering\",0.77],[\"wheel_2_1_steering\",0.74],[\"wheel_2_2_steering\",0.17],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.16],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.77000', '0.60000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('14', '204709757', '1', 'SkodaRed', '2013-12-28 09:02:58', '0', '[188,[6109.2935,10260.923,0.0051426888]]', '[]', '[[\"motor\",0.77],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.23],[\"palivo\",0.69],[\"wheel_1_1_steering\",0.63],[\"wheel_2_1_steering\",0.96],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.65],[\"wheel_2_2_steering\",0.06],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.41000', '0.45000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('15', '94235834', '1', 'BAF_ATV_W', '2013-12-28 09:02:58', '0', '[164,[6040.8901,13552.661,0.11583328]]', '[]', '[[\"motor\",0.27],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.85],[\"wheel_1_2_steering\",0.06],[\"wheel_2_1_steering\",0.11],[\"wheel_2_2_steering\",0.04],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.5],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.46000', '0.50000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('16', '351911025', '1', 'BAF_ATV_W', '2013-12-28 09:02:58', '0', '[133,[10619.911,16178.079,-0.19310522]]', '[]', '[[\"motor\",0.43],[\"palivo\",0.8],[\"wheel_1_1_steering\",0],[\"wheel_1_2_steering\",0.85],[\"wheel_2_1_steering\",0.55],[\"wheel_2_2_steering\",0.97],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.92],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.88000', '0.45000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('17', '174943000', '1', 'Fishing_Boat', '2013-12-28 09:02:58', '0', '[92,[5325.8599,16184.229,0.6459049]]', '[]', '[[\"motor\",0.02]]', '0.04000', '0.89000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('18', '238551242', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:02:58', '0', '[302,[10205.278,6960.6279,-3.8146973e-006]]', '[]', '[[\"motor\",0.34]]', '0.32000', '0.15000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('19', '290086180', '1', 'Pickup_PK_INS', '2013-12-28 09:02:58', '0', '[329,[16931.182,5046.5596,0.11086837]]', '[]', '[[\"motor\",0.29],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.75],[\"palivo\",0.09],[\"wheel_1_1_steering\",0.56],[\"wheel_2_1_steering\",0.9],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.56],[\"wheel_2_2_steering\",0.3],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.90000', '0.02000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('20', '126307619', '1', 'tractorOld', '2013-12-28 09:02:58', '0', '[119,[7391.9097,14237.989,-0.41635132]]', '[]', '[[\"motor\",0.74],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.39],[\"palivo\",0.44],[\"wheel_1_1_steering\",0.67],[\"wheel_2_1_steering\",0.08],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.33],[\"wheel_2_2_steering\",0.05],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.16000', '0.31000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('21', '262986285', '1', 'SkodaRed', '2013-12-28 09:02:58', '0', '[36,[10707.754,15344.074,-0.16409683]]', '[]', '[[\"motor\",0.33],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.33],[\"palivo\",0.23],[\"wheel_1_1_steering\",0.67],[\"wheel_2_1_steering\",0.91],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.69],[\"wheel_2_2_steering\",0.67],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.65000', '0.76000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('22', '247528183', '1', 'SkodaGreen', '2013-12-28 09:02:58', '0', '[45,[8847.4307,16388.428,-0.54956627]]', '[]', '[[\"motor\",0.04],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.36],[\"palivo\",0.51],[\"wheel_1_1_steering\",0.56],[\"wheel_2_1_steering\",0.94],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.49],[\"wheel_2_2_steering\",0.34],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.75000', '0.76000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('23', '411415840', '1', 'Tractor', '2013-12-28 09:02:58', '0', '[150,[12588.282,13591.627,-0.25419426]]', '[]', '[[\"motor\",0.47],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.9],[\"palivo\",0.35],[\"wheel_1_1_steering\",0.6],[\"wheel_2_1_steering\",0.53],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.52],[\"wheel_2_2_steering\",0.89],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.55000', '0.11000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('24', '212378473', '1', 'datsun1_civil_3_open', '2013-12-28 09:02:58', '0', '[313,[6273.5771,10628.323,-0.0016698837]]', '[]', '[[\"motor\",0.3],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.55],[\"palivo\",0.16],[\"wheel_1_1_steering\",0.36],[\"wheel_2_1_steering\",0.88],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.97],[\"wheel_2_2_steering\",0.58],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.10000', '1.00000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('25', '247224953', '1', 'UAZ_INS', '2013-12-28 09:02:58', '0', '[188,[16666.535,18258.182,0.30707741]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.83],[\"wheel_1_2_steering\",0.89],[\"wheel_2_1_steering\",0.9],[\"wheel_2_2_steering\",0.13],[\"motor\",0.42],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.6],[\"palivo\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.79000', '0.86000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('26', '539581154', '1', 'Tractor', '2013-12-28 09:02:58', '0', '[179,[16625.232,9711.6592,-0.37637705]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.24],[\"palivo\",0.65],[\"wheel_1_1_steering\",0.44],[\"wheel_2_1_steering\",0.57],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.33],[\"wheel_2_2_steering\",0.31],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.69000', '0.68000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('27', '43324466', '1', 'MMT_USMC', '2013-12-28 09:02:58', '0', '[281,[8787.0625,15752.43,0]]', '[]', '[]', '0.40000', '0.63000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('28', '333189802', '1', 'MH6J_EP1', '2013-12-28 09:02:58', '0', '[292,[8865.5996,16198.282,0]]', '[]', '[[\"glass1\",0.81],[\"glass2\",0.8],[\"glass3\",0.77],[\"glass4\",0.13],[\"glass5\",0.8],[\"NEtrup\",0.5],[\"motor\",0.35],[\"elektronika\",0.21],[\"mala vrtule\",0.14],[\"velka vrtule\",0.06],[\"munice\",0.48],[\"sklo predni P\",0.98],[\"sklo predni L\",0.39],[\"glass6\",0.95]]', '0.52000', '0.33000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('29', '8791946', '1', 'Pickup_PK_INS', '2013-12-28 09:02:58', '0', '[204,[18330.074,17116.488]]', '[]', '[[\"motor\",1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.58],[\"palivo\",1],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",0],[\"glass4\",0]]', '0.23000', '1.00000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('30', '142447696', '1', 'Tractor', '2013-12-28 09:02:58', '0', '[108,[10304.039,7092.4048,0.038532257]]', '[]', '[[\"motor\",0.71],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.96],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.98],[\"wheel_2_1_steering\",0.28],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.05],[\"wheel_2_2_steering\",0.19],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.17000', '0.46000', '2013-12-28 20:38:55');
INSERT INTO `object_data` VALUES ('31', '132060692', '1', 'Smallboat_1', '2013-12-28 09:02:58', '0', '[8,[3876.6909,14585.923,-0.033810794]]', '[]', '[[\"motor\",0.17]]', '0.01000', '0.64000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('32', '85840221', '1', 'Lada1_TK_CIV_EP1', '2013-12-28 09:02:58', '0', '[76,[11041.728,8626.624,0.10169983]]', '[]', '[[\"motor\",0.03],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.38],[\"palivo\",0.46],[\"wheel_1_1_steering\",0.55],[\"wheel_2_1_steering\",0.64],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.92],[\"wheel_2_2_steering\",0.79],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.17000', '0.90000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('33', '31133531', '1', 'Lada2_TK_CIV_EP1', '2013-12-28 09:02:58', '0', '[40,[14919.69,14241.767,0.50658512]]', '[]', '[[\"motor\",0.48],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.24],[\"wheel_2_1_steering\",0.16],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.15],[\"wheel_2_2_steering\",0.1],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.40000', '0.15000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('34', '140066925', '1', 'UAZ_AGS30_CDF', '2013-12-28 09:02:58', '0', '[139,[14382.646,12476.114,-0.063508034]]', '[]', '[[\"wheel_1_1_steering\",0.47],[\"wheel_1_2_steering\",0.92],[\"wheel_2_1_steering\",0.79],[\"wheel_2_2_steering\",0.38],[\"motor\",0.13],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.54],[\"palivo\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.22000', '0.09000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('35', '245633208', '1', 'Old_bike_TK_INS_EP1', '2013-12-28 09:02:58', '0', '[140,[7341.543,6852.8081,0.0047355974]]', '[]', '[]', '0.78000', '0.29000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('36', '250823544', '1', 'Skoda', '2013-12-28 09:02:58', '0', '[211,[10804.409,15821.528,-0.40860748]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.78],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.51],[\"wheel_2_1_steering\",0.69],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.69],[\"wheel_2_2_steering\",0.49],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.20000', '0.44000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('37', '40283127', '1', 'M1030_US_DES_EP1', '2013-12-28 09:02:58', '0', '[330,[12758.614,11709.826,-1.3274841]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.87],[\"palivo\",0.55],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.16000', '0.74000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('38', '337422699', '1', 'PBX', '2013-12-28 09:02:58', '0', '[264,[12048.788,15650.743,0.0019052029]]', '[]', '[[\"motor\",0.8]]', '0.11000', '0.09000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('39', '220179177', '1', 'hilux1_civil_1_open', '2013-12-28 09:02:58', '0', '[255,[5821.7671,11729.394,-0.33867073]]', '[]', '[[\"motor\",0.3],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.09],[\"palivo\",0.76],[\"wheel_1_1_steering\",0.87],[\"wheel_2_1_steering\",0.99],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.09],[\"wheel_2_2_steering\",0.1],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.58000', '0.17000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('40', '241296373', '1', 'PBX', '2013-12-28 09:02:58', '0', '[78,[4564.0747,12586.146,0.27501512]]', '[]', '[[\"motor\",0.69]]', '0.55000', '0.01000', '2013-12-28 09:02:58');
INSERT INTO `object_data` VALUES ('41', '35170848', '1', 'datsun1_civil_3_open', '2013-12-28 09:02:59', '0', '[241,[6477.1143,16515.473,0.40218258]]', '[]', '[[\"motor\",0.09],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.92],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.7],[\"wheel_2_1_steering\",0.54],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.29],[\"wheel_2_2_steering\",0.45],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.67000', '0.89000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('42', '93445707', '1', 'hilux1_civil_1_open', '2013-12-28 09:02:59', '0', '[193,[16579.092,9691.9111,0.047290139]]', '[]', '[[\"motor\",0.6],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.99],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.25],[\"wheel_2_1_steering\",0.71],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.47],[\"wheel_2_2_steering\",0.9],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.56000', '0.21000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('43', '473129049', '1', 'BAF_Offroad_W', '2013-12-28 09:02:59', '0', '[313,[8780.2695,15751.578,0.73342705]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.19],[\"palivo\",0.48],[\"wheel_1_1_steering\",0.2],[\"wheel_1_2_steering\",0.04],[\"wheel_2_1_steering\",0.61],[\"wheel_2_2_steering\",0.68],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.66],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.63000', '0.59000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('44', '181325438', '1', 'Fishing_Boat', '2013-12-28 09:02:59', '0', '[285,[8087.752,17346.396,0.075778306]]', '[]', '[[\"motor\",0.7]]', '0.38000', '0.61000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('45', '60957144', '1', 'TT650_TK_EP1', '2013-12-28 09:02:59', '0', '[126,[10327.636,7247.3984,-0.016540527]]', '[]', '[[\"motor\",0.27]]', '0.85000', '0.52000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('46', '410541320', '1', 'car_sedan', '2013-12-28 09:02:59', '0', '[322,[5834.4082,11701.255,-0.04875946]]', '[]', '[[\"motor\",0.18],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.65],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.1],[\"wheel_2_1_steering\",0.86],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.51],[\"wheel_2_2_steering\",0.19],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.44000', '0.43000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('47', '149967467', '1', 'hilux1_civil_2_covered', '2013-12-28 09:02:59', '0', '[157,[14317.825,12508.881,-2.0933142]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.7],[\"palivo\",0.19],[\"wheel_1_1_steering\",0.1],[\"wheel_2_1_steering\",0.62],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.62],[\"wheel_2_2_steering\",0.27],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.19000', '0.02000', '2013-12-28 20:38:56');
INSERT INTO `object_data` VALUES ('48', '241875830', '1', 'M1030_US_DES_EP1', '2013-12-28 09:02:59', '0', '[340,[10582.012,14143.74,-0.06512899]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.35],[\"palivo\",0.8],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.02000', '0.66000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('49', '409832254', '1', 'VolhaLimo_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[195,[10805.371,15734.297,-0.43709946]]', '[]', '[[\"wheel_1_1_steering\",0.28],[\"wheel_1_2_steering\",0.68],[\"wheel_2_1_steering\",0.74],[\"wheel_2_2_steering\",0.46],[\"palivo\",0.8],[\"motor\",0.74],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.28],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.39000', '0.28000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('50', '375696032', '1', 'tractorOld', '2013-12-28 09:02:59', '0', '[168,[10056.433,18570.559,-0.0087738037]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.04],[\"palivo\",0.05],[\"wheel_1_1_steering\",0.35],[\"wheel_2_1_steering\",0.75],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.28],[\"wheel_2_2_steering\",0.22],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.01000', '0.24000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('51', '545826589', '1', 'UAZ_Unarmed_TK_EP1', '2013-12-28 09:02:59', '0', '[280,[12982.338,11700.104,-0.25634113]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.97],[\"wheel_1_2_steering\",0.42],[\"wheel_2_1_steering\",0.19],[\"wheel_2_2_steering\",0.59],[\"motor\",0.57],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.01],[\"palivo\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.32000', '0.65000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('52', '330263387', '1', 'Smallboat_1', '2013-12-28 09:02:59', '0', '[55,[6125.5742,10785.355,-0.080679357]]', '[]', '[[\"motor\",0.17]]', '0.52000', '0.51000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('53', '130998832', '1', 'car_hatchback', '2013-12-28 09:02:59', '0', '[97,[14970.779,14077.785,0.53214264]]', '[]', '[[\"motor\",0.79],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.49],[\"palivo\",0.6],[\"wheel_1_1_steering\",0.2],[\"wheel_2_1_steering\",0.69],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.24],[\"wheel_2_2_steering\",0.15],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.91000', '0.11000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('54', '391879559', '1', 'Smallboat_1', '2013-12-28 09:02:59', '0', '[178,[8937.8877,17629.115,0.028858364]]', '[]', '[[\"motor\",0.8]]', '0.64000', '0.23000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('55', '4425186', '1', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[43,[15677.05,13080.488,-0.098333262]]', '[]', '[[\"wheel_1_1_steering\",0.97],[\"wheel_1_2_steering\",0.59],[\"wheel_2_1_steering\",0.91],[\"wheel_2_2_steering\",0.6],[\"palivo\",0.33],[\"motor\",0.22],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.38],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.11000', '0.66000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('56', '206170057', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:02:59', '0', '[8,[14342.371,13839.202,0.020810366]]', '[]', '[[\"motor\",0.8]]', '0.38000', '0.44000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('57', '495609181', '1', 'tractorOld', '2013-12-28 09:02:59', '0', '[125,[13057.195,6865.0415,-0.0017929077]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.32],[\"palivo\",0.64],[\"wheel_1_1_steering\",0.09],[\"wheel_2_1_steering\",0.36],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.69],[\"wheel_2_2_steering\",0.09],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.29000', '0.86000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('58', '3734556', '1', 'BAF_ATV_W', '2013-12-28 09:02:59', '0', '[74,[5637.9873,15362.442,-0.11415863]]', '[]', '[[\"motor\",0.45],[\"palivo\",0.77],[\"wheel_1_1_steering\",0.54],[\"wheel_1_2_steering\",0.14],[\"wheel_2_1_steering\",0.04],[\"wheel_2_2_steering\",0.06],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.07000', '0.10000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('59', '35028041', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:02:59', '0', '[95,[15747.839,9880.5098,0.078106336]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.95000', '1.00000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('60', '426394126', '1', 'tractorOld', '2013-12-28 09:02:59', '0', '[242,[6518.978,9608.2285,0.021951675]]', '[]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.2],[\"palivo\",0.77],[\"wheel_1_1_steering\",0.8],[\"wheel_2_1_steering\",0.72],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.61],[\"wheel_2_2_steering\",0.73],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.56000', '0.40000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('61', '306911809', '1', 'tractorOld', '2013-12-28 09:02:59', '0', '[133,[12384.005,13562.851,0.032843329]]', '[]', '[[\"motor\",0.79],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.4],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.05],[\"wheel_2_1_steering\",0.26],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.55],[\"wheel_2_2_steering\",0.37],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.05000', '0.21000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('62', '158550547', '1', 'car_hatchback', '2013-12-28 09:02:59', '0', '[347,[15348.821,13439.043,0.57016087]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.34],[\"palivo\",0.74],[\"wheel_1_1_steering\",0.36],[\"wheel_2_1_steering\",0.77],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.56],[\"wheel_2_2_steering\",0.38],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.42000', '0.45000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('63', '19313895', '1', 'Smallboat_1', '2013-12-28 09:02:59', '0', '[80,[4558.2949,12578.283,0]]', '[]', '[[\"motor\",0.8]]', '0.54000', '0.04000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('64', '152832877', '1', 'PBX', '2013-12-28 09:02:59', '0', '[309,[7483.7949,16348.306,0.3771615]]', '[]', '[[\"motor\",0.56]]', '0.67000', '0.43000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('65', '515536432', '1', 'S1203_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[102,[15340.347,13328.549,0.17743778]]', '[]', '[[\"wheel_1_1_steering\",0],[\"wheel_1_2_steering\",0],[\"wheel_2_1_steering\",0],[\"wheel_2_2_steering\",0],[\"motor\",0.63],[\"sklo predni P\",0.65],[\"sklo predni L\",0.6],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0.5],[\"glass2\",0.87],[\"glass3\",0.33],[\"glass4\",0.11]]', '0.58000', '0.78000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('66', '15824276', '1', 'datsun1_civil_3_open', '2013-12-28 09:02:59', '0', '[167,[6067.5684,10551.878,0.097700402]]', '[]', '[[\"motor\",0.02],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.88],[\"palivo\",0.68],[\"wheel_1_1_steering\",0.38],[\"wheel_2_1_steering\",0.58],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.09],[\"wheel_2_2_steering\",0.41],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.07000', '0.43000', '2013-12-28 20:38:57');
INSERT INTO `object_data` VALUES ('67', '348471101', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[220,[11161.952,7847.9009]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",1],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.18000', '1.00000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('68', '293762660', '1', 'Lada1_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[87,[5872.1499,11685.472,-0.13291398]]', '[]', '[[\"motor\",0.02],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.36],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.29],[\"wheel_2_1_steering\",0.97],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.11],[\"wheel_2_2_steering\",0.54],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.68000', '0.92000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('69', '559076549', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:02:59', '0', '[315,[9902.9639,7719.8765]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",0.14],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.76000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('70', '443412289', '1', 'tractorOld', '2013-12-28 09:02:59', '0', '[350,[9974.7256,7479.1514,-0.20792389]]', '[]', '[[\"motor\",0.49],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.62],[\"palivo\",0.1],[\"wheel_1_1_steering\",0.89],[\"wheel_2_1_steering\",0.11],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.64],[\"wheel_2_2_steering\",0.77],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.93000', '0.87000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('71', '312127897', '1', 'TT650_TK_EP1', '2013-12-28 09:02:59', '0', '[63,[12572.181,13844.104,0.067039847]]', '[]', '[[\"motor\",0.09]]', '0.85000', '0.01000', '2013-12-28 09:02:59');
INSERT INTO `object_data` VALUES ('72', '437520300', '1', 'UAZ_RU', '2013-12-28 09:03:00', '0', '[159,[10390.571,17886.035,-0.13711929]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.92],[\"wheel_1_2_steering\",0.45],[\"wheel_2_1_steering\",0.26],[\"wheel_2_2_steering\",0.68],[\"motor\",0.29],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.33],[\"palivo\",0.68],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.87000', '0.88000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('73', '18872064', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:00', '0', '[331,[14985.43,14165.211,0.67830658]]', '[]', '[[\"motor\",0.37]]', '0.50000', '0.70000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('74', '49289807', '1', 'datsun1_civil_2_covered', '2013-12-28 09:03:00', '0', '[69,[14293.855,12605.584,-0.10924029]]', '[]', '[[\"motor\",0.62],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.53],[\"palivo\",0.1],[\"wheel_1_1_steering\",0.62],[\"wheel_2_1_steering\",0.89],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.94],[\"wheel_2_2_steering\",0.85],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.42000', '0.26000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('75', '91636771', '1', 'BAF_Offroad_W', '2013-12-28 09:03:00', '0', '[86,[12028.973,15380.481,-0.016323155]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.27],[\"palivo\",0.73],[\"wheel_1_1_steering\",0.96],[\"wheel_1_2_steering\",0.51],[\"wheel_2_1_steering\",0.43],[\"wheel_2_2_steering\",0.31],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.59],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.64000', '0.25000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('76', '170040577', '1', 'datsun1_civil_3_open', '2013-12-28 09:03:00', '0', '[34,[15445.79,13136.636,0.69085789]]', '[]', '[[\"motor\",0.76],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.16],[\"palivo\",0.39],[\"wheel_1_1_steering\",0.34],[\"wheel_2_1_steering\",0.82],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.61],[\"wheel_2_2_steering\",0.63],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.62000', '0.23000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('77', '374399133', '1', 'Ikarus', '2013-12-28 09:03:00', '0', '[237,[10056.372,16314.351,0.37594041]]', '[]', '[[\"glass5\",0],[\"glass6\",0],[\"motor\",0.57],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.89],[\"palivo\",0.66],[\"wheel_1_1_steering\",0.25],[\"wheel_2_1_steering\",0.99],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.73],[\"wheel_2_2_steering\",0.91],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.79000', '0.02000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('78', '230590402', '1', 'Smallboat_1', '2013-12-28 09:03:00', '0', '[108,[7478.0151,16340.442,-0.007222414]]', '[]', '[[\"motor\",0.58]]', '0.15000', '0.98000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('79', '151921328', '1', 'Pickup_PK_INS', '2013-12-28 09:03:00', '0', '[56,[14436.111,14061.548,0.48373413]]', '[]', '[[\"motor\",0.23],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.42],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.75],[\"wheel_2_1_steering\",0.02],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.94],[\"wheel_2_2_steering\",0.74],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.95000', '0.93000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('80', '436683633', '1', 'MH6J_EP1', '2013-12-28 09:03:00', '0', '[290,[13564.722,19701.713,0]]', '[]', '[[\"glass1\",0.83],[\"glass2\",0.36],[\"glass3\",0.22],[\"glass4\",0.63],[\"glass5\",0.97],[\"NEtrup\",0.74],[\"motor\",0.53],[\"elektronika\",0.75],[\"mala vrtule\",0],[\"velka vrtule\",0.71],[\"munice\",0.98],[\"sklo predni P\",0.32],[\"sklo predni L\",0.66],[\"glass6\",0.19]]', '0.85000', '0.37000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('81', '390113687', '1', 'hilux1_civil_1_open', '2013-12-28 09:03:00', '0', '[104,[9987.4922,18050.98,0.45072174]]', '[]', '[[\"motor\",0.53],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.6],[\"palivo\",0.47],[\"wheel_1_1_steering\",0.04],[\"wheel_2_1_steering\",0.4],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.71],[\"wheel_2_2_steering\",0.73],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.48000', '0.26000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('82', '401448636', '1', 'VolhaLimo_TK_CIV_EP1', '2013-12-28 09:03:00', '0', '[119,[5955.8071,15390.888,0.1553652]]', '[]', '[[\"wheel_1_1_steering\",0.58],[\"wheel_1_2_steering\",0.67],[\"wheel_2_1_steering\",0.8],[\"wheel_2_2_steering\",0.89],[\"palivo\",0.41],[\"motor\",0.52],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.74],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.66000', '0.29000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('83', '523357547', '1', 'BAF_Offroad_W', '2013-12-28 09:03:00', '0', '[113,[16630.197,18270.813,0.009223938]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.2],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.62],[\"wheel_1_2_steering\",0.76],[\"wheel_2_1_steering\",0.25],[\"wheel_2_2_steering\",0.38],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.66],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.04000', '0.01000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('84', '233095913', '1', 'Tractor', '2013-12-28 09:03:00', '0', '[207,[9221.707,17702.715,0.098889582]]', '[]', '[[\"motor\",0.17],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.66],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.31],[\"wheel_2_1_steering\",0.57],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.04],[\"wheel_2_2_steering\",0.38],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.46000', '0.48000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('85', '196621107', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:00', '0', '[357,[5864.0527,11647.133,-1.1481094]]', '[]', '[[\"motor\",0.14]]', '0.91000', '0.22000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('86', '401797304', '1', 'SkodaGreen', '2013-12-28 09:03:00', '0', '[41,[12010.156,15195.486,-0.06098599]]', '[]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.73],[\"palivo\",0.42],[\"wheel_1_1_steering\",0.36],[\"wheel_2_1_steering\",0.21],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.55],[\"wheel_2_2_steering\",0.79],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.16000', '0.33000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('87', '554841388', '1', 'M1030_US_DES_EP1', '2013-12-28 09:03:00', '0', '[128,[16607.422,9671.3242,-1.8335876]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.65],[\"palivo\",0.8],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.85000', '0.77000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('88', '239253971', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:00', '0', '[195,[6803.4961,5382.9414,-0.029525757]]', '[]', '[[\"motor\",0.35]]', '0.66000', '0.67000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('89', '136141739', '1', 'BAF_ATV_W', '2013-12-28 09:03:00', '0', '[46,[9035.0342,16130.201,0.27921677]]', '[]', '[[\"motor\",0.8],[\"palivo\",0.38],[\"wheel_1_1_steering\",0.6],[\"wheel_1_2_steering\",0.1],[\"wheel_2_1_steering\",0.48],[\"wheel_2_2_steering\",0.17],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.31],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.20000', '0.20000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('90', '39963150', '1', 'UAZ_Unarmed_TK_EP1', '2013-12-28 09:03:00', '0', '[48,[14275.445,12730.209,-0.39606977]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.07],[\"wheel_1_2_steering\",0.4],[\"wheel_2_1_steering\",0.57],[\"wheel_2_2_steering\",0.92],[\"motor\",0.75],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.75],[\"palivo\",0.31],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.26000', '0.20000', '2013-12-28 20:38:58');
INSERT INTO `object_data` VALUES ('91', '355214362', '1', 'PBX', '2013-12-28 09:03:00', '0', '[135,[5317.4692,16176.329,0.28533399]]', '[]', '[[\"motor\",0.03]]', '0.59000', '0.87000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('92', '37048570', '1', 'Tractor', '2013-12-28 09:03:00', '0', '[72,[10337.966,17704.709,0.078620568]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.08],[\"palivo\",0.68],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.68],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.94],[\"wheel_2_2_steering\",0.92],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.67000', '0.61000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('93', '302894657', '1', 'SkodaBlue', '2013-12-28 09:03:00', '0', '[118,[14873.657,14164.392]]', '[]', '[[\"motor\",1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.263],[\"palivo\",1],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1]]', '0.76000', '1.00000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('94', '393785051', '1', 'datsun1_civil_3_open', '2013-12-28 09:03:00', '0', '[129,[13977.115,14155.497,-0.29106522]]', '[]', '[[\"motor\",0.61],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.96],[\"palivo\",0.73],[\"wheel_1_1_steering\",0.12],[\"wheel_2_1_steering\",0.33],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.58],[\"wheel_2_2_steering\",0.9],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.29000', '0.95000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('95', '534384563', '1', 'tractorOld', '2013-12-28 09:03:00', '0', '[7,[14581.016,13837.694,0.30701256]]', '[]', '[[\"motor\",0.78],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.59],[\"palivo\",0.06],[\"wheel_1_1_steering\",0.56],[\"wheel_2_1_steering\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.31],[\"wheel_2_2_steering\",0.79],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.70000', '0.89000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('96', '476620300', '1', 'PBX', '2013-12-28 09:03:00', '0', '[215,[14383.276,14464.678,-0.052592158]]', '[]', '[[\"motor\",0.23]]', '0.59000', '0.15000', '2013-12-28 09:03:00');
INSERT INTO `object_data` VALUES ('97', '74631812', '1', 'Ikarus', '2013-12-28 09:03:00', '0', '[162,[6247.2832,10778.26]]', '[]', '[[\"glass5\",1],[\"glass6\",1],[\"motor\",1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.52],[\"palivo\",1],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1]]', '0.52000', '1.00000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('98', '320796171', '1', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:00', '0', '[216,[5679.562,11666.237,-0.19072583]]', '[]', '[[\"wheel_1_1_steering\",0.75],[\"wheel_1_2_steering\",0.3],[\"wheel_2_1_steering\",0.97],[\"wheel_2_2_steering\",0.91],[\"palivo\",0.8],[\"motor\",0.5],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.5],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.55000', '0.37000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('99', '265789005', '1', 'PBX', '2013-12-28 09:03:01', '0', '[179,[9822.1152,18057.426,-0.018188477]]', '[]', '[[\"motor\",0.75]]', '0.10000', '0.64000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('100', '45632868', '1', 'UAZ_AGS30_CDF', '2013-12-28 09:03:01', '0', '[68,[10185.248,18337.227,-0.19313033]]', '[]', '[[\"wheel_1_1_steering\",0.02],[\"wheel_1_2_steering\",0.15],[\"wheel_2_1_steering\",0.47],[\"wheel_2_2_steering\",0.17],[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.89],[\"palivo\",0.73],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.75000', '0.33000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('101', '62570219', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:01', '0', '[218,[11978.928,15321.878,-0.058079999]]', '[]', '[[\"motor\",0.88]]', '0.18000', '0.16000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('102', '456204806', '1', 'car_hatchback', '2013-12-28 09:03:01', '0', '[261,[5584.7217,12009.304,-0.13244633]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.37],[\"palivo\",0.29],[\"wheel_1_1_steering\",0.44],[\"wheel_2_1_steering\",0.98],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.53],[\"wheel_2_2_steering\",0.36],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.40000', '0.77000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('103', '282799280', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:01', '0', '[301,[7483.7358,6649.9287,1.9073486e-005]]', '[]', '[[\"motor\",0.58]]', '0.26000', '0.28000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('104', '566419964', '1', 'UAZ_CDF', '2013-12-28 09:03:01', '0', '[311,[10147.066,7395.7979,0.025886536]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.1],[\"wheel_1_2_steering\",0.87],[\"wheel_2_1_steering\",0.14],[\"wheel_2_2_steering\",0.51],[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.01],[\"palivo\",0.08],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.48000', '0.49000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('105', '64068135', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:01', '0', '[338,[8559.7598,14296.831]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",0.38],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.06000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('106', '108806289', '1', 'BAF_Offroad_W', '2013-12-28 09:03:01', '0', '[114,[8744.7773,16350.059,0.048419796]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.56],[\"palivo\",0.62],[\"wheel_1_1_steering\",0.49],[\"wheel_1_2_steering\",0.32],[\"wheel_2_1_steering\",0.76],[\"wheel_2_2_steering\",0.03],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.45],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.91000', '0.31000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('107', '311891322', '1', 'MMT_USMC', '2013-12-28 09:03:01', '0', '[219,[16202.461,15507.758]]', '[]', '[[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_damper\",0],[\"wheel_2_damper\",0],[\"motor\",0]]', '0.33000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('108', '82209025', '1', 'car_hatchback', '2013-12-28 09:03:01', '0', '[109,[11051.388,8543.5684,0.098106384]]', '[]', '[[\"motor\",0.59],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.47],[\"palivo\",0.36],[\"wheel_1_1_steering\",0.01],[\"wheel_2_1_steering\",0.38],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.39],[\"wheel_2_2_steering\",0.7],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.87000', '0.15000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('109', '300742788', '1', 'car_sedan', '2013-12-28 09:03:01', '0', '[256,[14548.383,14118.009,0.38021564]]', '[]', '[[\"motor\",0.61],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.93],[\"palivo\",0.58],[\"wheel_1_1_steering\",0.35],[\"wheel_2_1_steering\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.46],[\"wheel_2_2_steering\",0.87],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.19000', '0.36000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('110', '434384609', '1', 'Fishing_Boat', '2013-12-28 09:03:01', '0', '[181,[6819.2422,16971.518,0.57606232]]', '[]', '[[\"motor\",0.7]]', '0.67000', '0.77000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('111', '431770923', '1', 'SkodaBlue', '2013-12-28 09:03:01', '0', '[181,[14497.405,13748.195,-4.7683716e-007]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.81],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.96],[\"wheel_2_1_steering\",0.87],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.53],[\"wheel_2_2_steering\",0.07],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.01000', '0.54000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('112', '265518779', '1', 'datsun1_civil_2_covered', '2013-12-28 09:03:01', '0', '[71,[16609.645,9669.2832,-2.1824951]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.75],[\"palivo\",0.34],[\"wheel_1_1_steering\",0.33],[\"wheel_2_1_steering\",0.5],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.64],[\"wheel_2_2_steering\",0.4],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.12000', '0.11000', '2013-12-28 20:38:59');
INSERT INTO `object_data` VALUES ('113', '451813227', '1', 'datsun1_civil_3_open', '2013-12-28 09:03:01', '0', '[327,[10781.746,15392.802,-0.16520657]]', '[]', '[[\"motor\",0.78],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.64],[\"palivo\",0.09],[\"wheel_1_1_steering\",0.9],[\"wheel_2_1_steering\",0.01],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.79],[\"wheel_2_2_steering\",0.63],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.10000', '0.02000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('114', '198344408', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:01', '0', '[159,[15400.271,13446,0.058018561]]', '[]', '[[\"motor\",0.24]]', '0.88000', '0.84000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('115', '36780439', '1', 'UAZ_AGS30_INS', '2013-12-28 09:03:01', '0', '[106,[7258.1763,6579.2041,-0.1415596]]', '[]', '[[\"wheel_1_1_steering\",0.69],[\"wheel_1_2_steering\",0.48],[\"wheel_2_1_steering\",0.6],[\"wheel_2_2_steering\",0.65],[\"motor\",0.61],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.66],[\"palivo\",0.55],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.04000', '0.86000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('116', '505463173', '1', 'SkodaRed', '2013-12-28 09:03:01', '0', '[19,[6149.8091,10614.883,0.4916535]]', '[]', '[[\"motor\",0.62],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.85],[\"palivo\",0.51],[\"wheel_1_1_steering\",0.6],[\"wheel_2_1_steering\",0.64],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.24],[\"wheel_2_2_steering\",0.18],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.01000', '0.81000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('117', '235193000', '1', 'hilux1_civil_2_covered', '2013-12-28 09:03:01', '0', '[179,[11152.78,7811.3545,-2.6618195]]', '[]', '[[\"motor\",0.47],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.06],[\"palivo\",0.57],[\"wheel_1_1_steering\",0.25],[\"wheel_2_1_steering\",0.88],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.6],[\"wheel_2_2_steering\",0.13],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.96000', '0.19000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('118', '386217981', '1', 'BAF_Offroad_W', '2013-12-28 09:03:01', '0', '[230,[14574.313,13753.917,0.7173152]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.33],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.84],[\"wheel_1_2_steering\",0.83],[\"wheel_2_1_steering\",0.12],[\"wheel_2_2_steering\",0.7],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.43],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.79000', '0.35000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('119', '556211770', '1', 'Lada1_TK_CIV_EP1', '2013-12-28 09:03:01', '0', '[60,[14351.394,13743.921,0.10310078]]', '[]', '[[\"motor\",0.64],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.16],[\"palivo\",0.09],[\"wheel_1_1_steering\",0.9],[\"wheel_2_1_steering\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.74],[\"wheel_2_2_steering\",0.24],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.58000', '0.16000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('120', '114239127', '1', 'hilux1_civil_1_open', '2013-12-28 09:03:01', '0', '[291,[6710.3745,9598.3682,-0.40943384]]', '[]', '[[\"motor\",0.3],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.55],[\"palivo\",0.78],[\"wheel_1_1_steering\",0.36],[\"wheel_2_1_steering\",0.08],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.45],[\"wheel_2_2_steering\",0.21],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.67000', '0.41000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('121', '60982887', '1', 'BAF_ATV_W', '2013-12-28 09:03:01', '0', '[313,[10665.858,15837.456,-0.27557755]]', '[]', '[[\"motor\",0.3],[\"palivo\",0.78],[\"wheel_1_1_steering\",0.77],[\"wheel_1_2_steering\",0.55],[\"wheel_2_1_steering\",0.52],[\"wheel_2_2_steering\",0.41],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.01],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.85000', '0.71000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('122', '109717130', '1', 'Lada1_TK_CIV_EP1', '2013-12-28 09:03:01', '0', '[215,[8836.1211,16336.259,-1.4623375]]', '[]', '[[\"motor\",0.66],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.79],[\"palivo\",0.43],[\"wheel_1_1_steering\",0.73],[\"wheel_2_1_steering\",0.44],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.9],[\"wheel_2_2_steering\",0.29],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.08000', '0.37000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('123', '158120921', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:01', '0', '[58,[13062.431,6871.6479,-0.032897949]]', '[]', '[[\"motor\",0.65]]', '0.66000', '0.72000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('124', '519613399', '1', 'Smallboat_1', '2013-12-28 09:03:01', '0', '[91,[8262.9541,16219.625,-0.018260479]]', '[]', '[[\"motor\",0.8]]', '0.00000', '0.01000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('125', '88697927', '1', 'UAZ_CDF', '2013-12-28 09:03:01', '0', '[37,[12752.17,11702.803,-2.7215271]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.63],[\"wheel_1_2_steering\",0.43],[\"wheel_2_1_steering\",0.87],[\"wheel_2_2_steering\",0.34],[\"motor\",0.35],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.66],[\"palivo\",0.72],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.63000', '0.15000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('126', '275579326', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:01', '0', '[2,[9960.9941,7504.6602,-0.02241189]]', '[]', '[[\"motor\",0.7]]', '0.91000', '0.49000', '2013-12-28 09:03:01');
INSERT INTO `object_data` VALUES ('127', '135125642', '1', 'MMT_USMC', '2013-12-28 09:03:02', '0', '[213,[18366.305,17072.34,0]]', '[]', '[]', '0.34000', '0.31000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('128', '225087013', '1', 'tractorOld', '2013-12-28 09:03:02', '0', '[87,[10206.286,6878.6763,0.0043983459]]', '[]', '[[\"motor\",0.64],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.49],[\"palivo\",0.08],[\"wheel_1_1_steering\",0.88],[\"wheel_2_1_steering\",0.81],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.36],[\"wheel_2_2_steering\",0.92],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.36000', '0.04000', '2013-12-28 20:39:00');
INSERT INTO `object_data` VALUES ('129', '114905244', '1', 'Skoda', '2013-12-28 09:03:02', '0', '[85,[8787.584,16378.222,-0.012916565]]', '[]', '[[\"motor\",0.11],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.07],[\"palivo\",0.39],[\"wheel_1_1_steering\",0.36],[\"wheel_2_1_steering\",0.56],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.7],[\"wheel_2_2_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.69000', '0.79000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('130', '215016470', '1', 'BAF_Offroad_W', '2013-12-28 09:03:02', '0', '[212,[11341.55,8676.0869,-0.13813782]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.8],[\"palivo\",0.3],[\"wheel_1_1_steering\",0.2],[\"wheel_1_2_steering\",0.85],[\"wheel_2_1_steering\",0.77],[\"wheel_2_2_steering\",0.42],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.04],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.83000', '0.09000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('131', '95908764', '1', 'SkodaRed', '2013-12-28 09:03:02', '0', '[21,[5815.4551,15266.173,-0.38064194]]', '[]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.02],[\"palivo\",0.03],[\"wheel_1_1_steering\",0.98],[\"wheel_2_1_steering\",0.95],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.95],[\"wheel_2_2_steering\",0.77],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.28000', '0.01000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('132', '54102962', '1', 'datsun1_civil_1_open', '2013-12-28 09:03:02', '0', '[149,[11150.629,7801.4014,-2.9103241]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.62],[\"palivo\",0.17],[\"wheel_1_1_steering\",0.19],[\"wheel_2_1_steering\",0.35],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.09],[\"wheel_2_2_steering\",0.3],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.26000', '0.52000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('133', '564801396', '1', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:02', '0', '[213,[8816.1055,16380.899,-0.35792351]]', '[]', '[[\"wheel_1_1_steering\",0.07],[\"wheel_1_2_steering\",0.14],[\"wheel_2_1_steering\",0.01],[\"wheel_2_2_steering\",0.12],[\"palivo\",0.36],[\"motor\",0.51],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.64],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.19000', '0.34000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('134', '106788460', '1', 'SkodaRed', '2013-12-28 09:03:02', '0', '[177,[15787.595,13247.768,-0.26617548]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.78],[\"palivo\",0.26],[\"wheel_1_1_steering\",0.72],[\"wheel_2_1_steering\",0.53],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.45],[\"wheel_2_2_steering\",0.72],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.88000', '0.73000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('135', '374613413', '1', 'tractorOld', '2013-12-28 09:03:02', '0', '[228,[8783.6533,15754.443,-0.18962288]]', '[]', '[[\"motor\",0.4],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.15],[\"palivo\",0.02],[\"wheel_1_1_steering\",0.11],[\"wheel_2_1_steering\",0.41],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.59],[\"wheel_2_2_steering\",0.54],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.82000', '0.84000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('136', '533908881', '1', 'MMT_USMC', '2013-12-28 09:03:02', '0', '[64,[14411.316,14253.356]]', '[]', '[[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_damper\",0],[\"wheel_2_damper\",0],[\"motor\",0]]', '0.17000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('137', '119149355', '1', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:02', '0', '[181,[10293.979,7115.5566,0.0067443848]]', '[]', '[]', '0.89000', '0.69000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('138', '556937582', '1', 'TT650_TK_EP1', '2013-12-28 09:03:02', '0', '[289,[9106.8047,17217.389,-0.0072902995]]', '[]', '[[\"motor\",0.9]]', '0.58000', '0.24000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('139', '169527778', '1', 'BAF_ATV_W', '2013-12-28 09:03:02', '0', '[308,[15857.736,13289.368,-0.029737473]]', '[]', '[[\"motor\",0.31],[\"palivo\",0.06],[\"wheel_1_1_steering\",0.96],[\"wheel_1_2_steering\",0.48],[\"wheel_2_1_steering\",0.01],[\"wheel_2_2_steering\",0.86],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.44],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.75000', '0.61000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('140', '88314817', '1', 'BAF_Offroad_W', '2013-12-28 09:03:02', '0', '[183,[5788.8628,15372.238,0.014533997]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.4],[\"palivo\",0.5],[\"wheel_1_1_steering\",0.45],[\"wheel_1_2_steering\",0.38],[\"wheel_2_1_steering\",0.08],[\"wheel_2_2_steering\",0.47],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.22],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.20000', '0.62000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('141', '90405981', '1', 'SkodaRed', '2013-12-28 09:03:02', '0', '[143,[10233.349,16564.66,0.027361253]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.37],[\"palivo\",0.27],[\"wheel_1_1_steering\",0.24],[\"wheel_2_1_steering\",0.22],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.92],[\"wheel_2_2_steering\",0.52],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.32000', '0.16000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('142', '473132362', '1', 'SkodaRed', '2013-12-28 09:03:02', '0', '[307,[14180.613,13976.24,-0.30108833]]', '[]', '[[\"motor\",0.08],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.44],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.57],[\"wheel_2_1_steering\",0.19],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.98],[\"wheel_2_2_steering\",0.48],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.39000', '0.21000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('143', '538511182', '1', 'Ikarus', '2013-12-28 09:03:02', '0', '[162,[6386.1484,10170.973,0]]', '[]', '[[\"glass5\",0],[\"glass6\",0],[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.24],[\"palivo\",0.27],[\"wheel_1_1_steering\",0.01],[\"wheel_2_1_steering\",0.39],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.54],[\"wheel_2_2_steering\",0.5],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.08000', '0.01000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('144', '301757130', '1', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:02', '0', '[81,[4480.5459,8121.6299]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",0.46],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.37000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('145', '208192226', '1', 'datsun1_civil_1_open', '2013-12-28 09:03:02', '0', '[152,[16610.771,9663.1816,-2.7253418]]', '[]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.69],[\"palivo\",0.08],[\"wheel_1_1_steering\",0.06],[\"wheel_2_1_steering\",0.72],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.62],[\"wheel_2_2_steering\",0.87],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.81000', '0.39000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('146', '90195583', '1', 'hilux1_civil_1_open', '2013-12-28 09:03:02', '0', '[288,[8890.7754,16425.59,-0.31359971]]', '[]', '[[\"motor\",0.43],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.16],[\"palivo\",0.22],[\"wheel_1_1_steering\",0.84],[\"wheel_2_1_steering\",0.67],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.91],[\"wheel_2_2_steering\",0.16],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.92000', '0.42000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('147', '185235342', '1', 'Smallboat_2', '2013-12-28 09:03:02', '0', '[342,[10719.649,16250.785,-0.19571131]]', '[]', '[[\"motor\",0.03]]', '0.97000', '0.98000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('148', '105050248', '1', 'SkodaRed', '2013-12-28 09:03:02', '0', '[135,[14005.508,14149.485,1.2357154]]', '[]', '[[\"motor\",0.2],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.27],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.38],[\"wheel_2_1_steering\",0.31],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.26],[\"wheel_2_2_steering\",0.97],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.74000', '0.83000', '2013-12-28 20:39:01');
INSERT INTO `object_data` VALUES ('149', '357504611', '1', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:02', '0', '[324,[10797.101,15816.361,-0.21506119]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.20000', '1.00000', '2013-12-28 20:39:02');
INSERT INTO `object_data` VALUES ('150', '29421389', '1', 'Smallboat_1', '2013-12-28 09:03:02', '0', '[248,[15837.606,13079.95,0]]', '[]', '[[\"motor\",0.7]]', '0.86000', '0.44000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('151', '589363724', '10', 'BAF_Offroad_W', '2013-12-28 09:03:02', '0', '[166,[10698.374,16097.903,0.34481049]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.48],[\"palivo\",0.4],[\"wheel_1_1_steering\",0.25],[\"wheel_1_2_steering\",0.97],[\"wheel_2_1_steering\",0.92],[\"wheel_2_2_steering\",0.49],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.6],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.60000', '0.79000', '2013-12-28 09:19:55');
INSERT INTO `object_data` VALUES ('152', '517867543', '10', 'TT650_TK_EP1', '2013-12-28 09:03:02', '0', '[126,[10327.636,7247.3984,-0.016540527]]', '[]', '[[\"motor\",0.64]]', '0.95000', '0.14000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('153', '296142594', '10', 'SkodaRed', '2013-12-28 09:03:02', '0', '[169,[6116.93,13556.9,6.256e-04]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.14],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.56],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.62],[\"wheel_2_1_steering\",0.57],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.5],[\"wheel_2_2_steering\",0.7],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.17000', '0.64200', '2013-12-30 18:42:16');
INSERT INTO `object_data` VALUES ('154', '160348698', '10', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:02', '0', '[166,[14394.814,12432.986]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",0.78],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.36000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('155', '332027695', '10', 'Smallboat_1', '2013-12-28 09:03:02', '0', '[23,[10716.553,16287.638,-0.10364038]]', '[]', '[[\"motor\",0.03]]', '0.31000', '0.28000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('156', '287429757', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:02', '0', '[307,[4481.4434,8097.375,-0.11422729]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.524],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.99],[\"palivo\",0.791],[\"wheel_1_1_steering\",0.189],[\"wheel_2_1_steering\",0.809],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.121],[\"wheel_2_2_steering\",0.211],[\"glass1\",0.735],[\"glass2\",0.746],[\"glass3\",0.746],[\"glass4\",0.757]]', '0.95000', '0.67200', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('157', '320412267', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:02', '0', '[2,[9960.9941,7504.6602,-0.02241189]]', '[]', '[[\"motor\",0.48]]', '0.68000', '0.20000', '2013-12-28 09:03:02');
INSERT INTO `object_data` VALUES ('158', '435642235', '10', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:03', '0', '[198,[9911.7041,7683.4077,-0.056767486]]', '[]', '[]', '0.70000', '0.39000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('159', '122605484', '10', 'car_hatchback', '2013-12-28 09:03:03', '0', '[86,[8901.7041,16382.906,-0.52287233]]', '[]', '[[\"motor\",0.13],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.63],[\"palivo\",0.59],[\"wheel_1_1_steering\",0.19],[\"wheel_2_1_steering\",0.84],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0],[\"wheel_2_2_steering\",0.75],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.93000', '0.71000', '2013-12-28 09:19:55');
INSERT INTO `object_data` VALUES ('160', '442245743', '10', 'SkodaGreen', '2013-12-28 09:03:03', '0', '[40,[15312.9,13377.6,0.053]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.73],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.46],[\"palivo\",0.64],[\"wheel_1_1_steering\",0.42],[\"wheel_2_1_steering\",0.93],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.4],[\"wheel_2_2_steering\",0.11],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.81728', '0.20900', '2013-12-30 12:05:02');
INSERT INTO `object_data` VALUES ('161', '67197188', '10', 'car_hatchback', '2013-12-28 09:03:03', '0', '[117,[14970.6,14077.1,0.002]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.73],[\"palivo\",0.66],[\"wheel_1_1_steering\",0.08],[\"wheel_2_1_steering\",0.49],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.79],[\"wheel_2_2_steering\",0.9],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.35906', '0.79900', '2013-12-30 18:42:16');
INSERT INTO `object_data` VALUES ('162', '62622820', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:03', '0', '[218,[11979,15321.9,-0.021]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.88000', '0.00000', '2013-12-31 11:13:44');
INSERT INTO `object_data` VALUES ('163', '405855656', '10', 'datsun1_civil_1_open', '2013-12-28 09:03:03', '0', '[162,[4474.6138,8103.7905,-0.12552194]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.37],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.77],[\"wheel_2_1_steering\",0.33],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.05],[\"wheel_2_2_steering\",0.72],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.59000', '0.03000', '2014-01-01 15:08:57');
INSERT INTO `object_data` VALUES ('164', '386726242', '10', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:03', '0', '[179,[10111.047,13995.624,0.12921555]]', '[]', '[]', '0.46000', '0.53000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('165', '153589625', '10', 'PBX', '2013-12-28 09:03:03', '0', '[135,[5317.4692,16176.329,0.28533399]]', '[]', '[[\"motor\",0.8]]', '0.80000', '0.34000', '2013-12-28 09:19:55');
INSERT INTO `object_data` VALUES ('166', '40970191', '10', 'BAF_ATV_W', '2013-12-28 09:03:03', '0', '[241,[6722.35,9393.34,0.068]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.58],[\"palivo\",0.41],[\"wheel_1_1_steering\",0.73],[\"wheel_1_2_steering\",0],[\"wheel_2_1_steering\",0.56],[\"wheel_2_2_steering\",0.65],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.35],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.00000', '0.53900', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('167', '470114245', '10', 'SkodaGreen', '2013-12-28 09:03:03', '0', '[198,[14450.1,13399.5,-0.017]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.65],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.5],[\"palivo\",0.06],[\"wheel_1_1_steering\",0.33],[\"wheel_2_1_steering\",0.28],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.13],[\"wheel_2_2_steering\",0.63],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.00000', '0.55900', '2013-12-30 12:05:02');
INSERT INTO `object_data` VALUES ('168', '150162178', '10', 'MMT_USMC', '2013-12-28 09:03:03', '0', '[64,[14411.316,14253.356]]', '[]', '[[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_damper\",0],[\"wheel_2_damper\",0],[\"motor\",0]]', '0.05000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('169', '194506498', '10', 'tractorOld', '2013-12-28 09:03:03', '0', '[216,[7378.9082,6885.4077,-0.032180786]]', '[]', '[[\"motor\",0.36],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.46],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.64],[\"wheel_2_1_steering\",0.6],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.35],[\"wheel_2_2_steering\",0.39],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.23000', '0.17000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('170', '123593687', '10', 'datsun1_civil_1_open', '2013-12-28 09:03:03', '0', '[149,[11150.629,7801.4014,-2.9103241]]', '[]', '[[\"motor\",0.1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.91],[\"palivo\",0.19],[\"wheel_1_1_steering\",0.28],[\"wheel_2_1_steering\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.45],[\"wheel_2_2_steering\",0.32],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.01000', '0.06000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('171', '149152493', '10', 'tractorOld', '2013-12-28 09:03:03', '0', '[134,[12752.907,11771.123,-0.072349548]]', '[]', '[[\"palivo\",0.17],[\"motor\",0.32],[\"karoserie\",0.49],[\"wheel_1_1_steering\",0.33],[\"wheel_1_2_steering\",0.83],[\"wheel_2_1_steering\",0.93],[\"wheel_2_2_steering\",0.12]]', '0.54000', '7.34000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('172', '130303063', '10', 'UAZ_AGS30_INS', '2013-12-28 09:03:03', '0', '[106,[7258.1763,6579.2041,-0.1415596]]', '[]', '[[\"wheel_1_1_steering\",0.42],[\"wheel_1_2_steering\",0.96],[\"wheel_2_1_steering\",0.77],[\"wheel_2_2_steering\",0.23],[\"motor\",0.3],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.39],[\"palivo\",0.58],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.51000', '0.05000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('173', '584634170', '10', 'datsun1_civil_1_open', '2013-12-28 09:03:03', '0', '[30,[10258.299,18334.043,0.0013871577]]', '[]', '[[\"motor\",0.7],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.38],[\"palivo\",0.11],[\"wheel_1_1_steering\",0.4],[\"wheel_2_1_steering\",0.41],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.16],[\"wheel_2_2_steering\",0.29],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.34000', '0.95000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('174', '536660981', '10', 'UAZ_RU', '2013-12-28 09:03:03', '0', '[159,[10390.571,17886.035,-0.13711929]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.05],[\"wheel_1_2_steering\",0.96],[\"wheel_2_1_steering\",0.62],[\"wheel_2_2_steering\",0.97],[\"motor\",0.22],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.88],[\"palivo\",0.74],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.39000', '0.72000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('175', '267619311', '10', 'Smallboat_2', '2013-12-28 09:03:03', '0', '[341,[8986.7109,17627.465,-0.13789767]]', '[]', '[[\"motor\",0.07]]', '0.49000', '0.52000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('176', '532822973', '10', 'Pickup_PK_TK_GUE_EP1', '2013-12-28 09:03:03', '0', '[145,[16597.65,18228.482,0.36522865]]', '[]', '[[\"motor\",0.52],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.8],[\"palivo\",0.52],[\"wheel_1_1_steering\",0.6],[\"wheel_2_1_steering\",0.93],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.8],[\"wheel_2_2_steering\",0.78],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.76000', '0.14000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('177', '89680102', '10', 'BAF_Offroad_W', '2013-12-28 09:03:03', '0', '[301,[13420,5370.62,0.005]]', '[[[\"Binocular\",\"P226SF_SD\",\"ItemWatch\",\"ItemToolbox\",\"ItemMap\",\"M14_EP1\",\"AK_47_M\",\"KPFS_P225\",\"sg552_mp_aimpoint_sd\"],[2,1,1,1,1,1,1,1,1]],[[\"PartGlass\",\"Skin_Survivor2_DZ\",\"FoodMRE\",\"ItemNails\",\"ItemSodaCoke\",\"KPFS_12Rnd_45ACP_P12\",\"ItemHeatPack\",\"ItemPainkiller\",\"ItemTrashRazor\",\"HandRoadFlare\",\"ItemTrashToiletpaper\",\"ItemSodaPepsi\",\"ItemWaterbottleUnfilled\",\"kpfs_15Rnd_9x19\",\"ItemJerrycanEmpty\",\"30Rnd_545x39_AK\",\"30Rnd_9x19_MP5\",\"8Rnd_9x18_Makarov\",\"SmokeShellGreen\",\"15Rnd_W1866_Slug\",\"FlareWhite_M203\",\"ItemBandage\"],[1,1,1,2,2,1,1,5,2,2,2,4,1,3,1,2,2,1,2,2,2,3]],[[\"DZ_Patrol_Pack_EP1\"],[1]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",1],[\"palivo\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",0],[\"sklo predni L\",0.1],[\"karoserie\",1],[\"wheel_1_4_steering\",0.1],[\"wheel_2_4_steering\",0.1],[\"wheel_1_3_steering\",0.1],[\"wheel_2_3_steering\",0.1],[\"glass4\",0.1]]', '0.92261', '1.00000', '2013-12-30 16:44:17');
INSERT INTO `object_data` VALUES ('178', '355825596', '10', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:03', '0', '[235,[12663.256,13846.225,-0.055094268]]', '[]', '[[\"motor\",0.07]]', '0.03000', '0.48000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('179', '90263247', '10', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:03', '0', '[298,[12253.889,15479.261,0.20911407]]', '[]', '[[\"wheel_1_1_steering\",0.11],[\"wheel_1_2_steering\",0.52],[\"wheel_2_1_steering\",0.34],[\"wheel_2_2_steering\",0.76],[\"palivo\",0.8],[\"motor\",0.38],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.31],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.45000', '0.56000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('180', '174221329', '10', 'car_hatchback', '2013-12-28 09:03:03', '0', '[308,[9697.12,16407,0.01]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.552],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.132],[\"palivo\",0.473],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",0.766],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1]]', '0.51297', '0.39072', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('181', '357900349', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:03', '0', '[298,[8957.25,16605.4,0.002]]', '[[[],[]],[[\"PartFueltank\",\"PartWoodPile\",\"FoodbeefCooked\",\"ItemWaterbottle\",\"PartEngine\",\"30Rnd_556x45_StanagSD\"],[2,1,2,1,1,2]],[[],[]]]', '[[\"motor\",0],[\"sklo predni P\",0.1],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.17],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0.1],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0.1],[\"wheel_1_2_steering\",0],[\"wheel_2_2_steering\",0],[\"glass1\",0.752],[\"glass2\",0.352],[\"glass3\",0.752],[\"glass4\",0.92]]', '0.54500', '0.76400', '2014-01-01 12:57:00');
INSERT INTO `object_data` VALUES ('182', '507929109', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:03', '0', '[266,[12518.292,13561.69,0.52007294]]', '[]', '[[\"motor\",0.29],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.63],[\"palivo\",0.32],[\"wheel_1_1_steering\",0.56],[\"wheel_2_1_steering\",0.45],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0],[\"wheel_2_2_steering\",0.04],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.55000', '0.14000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('183', '559415028', '10', 'SkodaGreen', '2013-12-28 09:03:03', '0', '[60,[5783.4854,15288.559,-0.17341232]]', '[]', '[[\"motor\",0.48],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.27],[\"palivo\",0.48],[\"wheel_1_1_steering\",0.58],[\"wheel_2_1_steering\",0.3],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.01],[\"wheel_2_2_steering\",0.57],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.10000', '0.88000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('184', '316473703', '10', 'PBX', '2013-12-28 09:03:03', '0', '[78,[4564.0747,12586.146,0.27501512]]', '[]', '[[\"motor\",0.8]]', '0.49000', '0.61000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('185', '160166547', '10', 'Lada1_TK_CIV_EP1', '2013-12-28 09:03:03', '0', '[104,[15546.052,13179.851,0.60366821]]', '[]', '[[\"motor\",0.09],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.96],[\"palivo\",0.11],[\"wheel_1_1_steering\",0.79],[\"wheel_2_1_steering\",0.52],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.58],[\"wheel_2_2_steering\",0.89],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.16000', '0.78000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('186', '265530315', '10', 'tractorOld', '2013-12-28 09:03:03', '0', '[111,[14577.3,13951.2,0.002]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.17],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.48],[\"palivo\",0.14],[\"wheel_1_1_steering\",0.59],[\"wheel_2_1_steering\",0.15],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0.1],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.44],[\"wheel_2_2_steering\",0.93],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.43869', '0.15000', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('187', '96443122', '10', 'TT650_TK_EP1', '2013-12-28 09:03:03', '0', '[156,[10450.567,14092.313,0.0099034049]]', '[]', '[[\"motor\",0.55]]', '0.48000', '0.03000', '2013-12-28 09:03:03');
INSERT INTO `object_data` VALUES ('188', '213587915', '10', 'datsun1_civil_1_open', '2013-12-28 09:03:04', '0', '[134,[12568.371,13496.952,-0.016068187]]', '[]', '[[\"motor\",0.08],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.31],[\"palivo\",0.04],[\"wheel_1_1_steering\",0.08],[\"wheel_2_1_steering\",0.49],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.9],[\"wheel_2_2_steering\",0.27],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.24000', '0.49000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('189', '79955721', '10', 'car_hatchback', '2013-12-28 09:03:04', '0', '[315,[10753.189,15784.874,-0.27317047]]', '[]', '[[\"motor\",0.01],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.54],[\"palivo\",0.28],[\"wheel_1_1_steering\",0.13],[\"wheel_2_1_steering\",0.19],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.2],[\"wheel_2_2_steering\",0.66],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.77000', '0.41000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('190', '572371320', '10', 'M1030_US_DES_EP1', '2013-12-28 09:03:04', '0', '[116,[10176.125,18333.334,0.0044983537]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.39],[\"palivo\",0.8],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.99000', '0.57000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('191', '454256442', '10', 'M1030_US_DES_EP1', '2013-12-28 09:03:04', '0', '[246,[9114.18,17268.5,-0.028]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.761],[\"palivo\",0.15],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.05449', '0.02400', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('192', '597375208', '10', 'car_sedan', '2013-12-28 09:03:04', '0', '[322,[5834.4082,11701.255,-0.04875946]]', '[]', '[[\"motor\",0.7],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.68],[\"palivo\",0.65],[\"wheel_1_1_steering\",0.02],[\"wheel_2_1_steering\",0.91],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.62],[\"wheel_2_2_steering\",0.28],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.85000', '0.15000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('193', '183811661', '10', 'datsun1_civil_2_covered', '2013-12-28 09:03:04', '0', '[111,[14293.5,12605.2,0.019]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.45],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.23],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.95],[\"wheel_2_1_steering\",0.69],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.27],[\"wheel_2_2_steering\",0.74],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.60900', '0.33100', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('194', '336331979', '10', 'MMT_USMC', '2013-12-28 09:03:04', '0', '[56,[6429.1465,9563.9521]]', '[]', '[[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"wheel_1_damper\",0],[\"wheel_2_damper\",0],[\"motor\",0]]', '0.64000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('195', '524357904', '10', 'Skoda', '2013-12-28 09:03:04', '0', '[268,[5772.1,15254.3,-7.629e-06]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.3],[\"palivo\",0.74],[\"wheel_1_1_steering\",0.9],[\"wheel_2_1_steering\",0.12],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.92],[\"wheel_2_2_steering\",0.6],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.86958', '0.55100', '2013-12-30 18:42:16');
INSERT INTO `object_data` VALUES ('196', '241864804', '10', 'Tractor', '2013-12-28 09:03:04', '0', '[72,[10337.966,17704.709,0.078620568]]', '[]', '[[\"motor\",0.54],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.55],[\"palivo\",0.64],[\"wheel_1_1_steering\",0.12],[\"wheel_2_1_steering\",0.01],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.18],[\"wheel_2_2_steering\",0.07],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.73000', '0.90000', '2013-12-28 09:19:56');
INSERT INTO `object_data` VALUES ('197', '527587335', '10', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:04', '0', '[359,[12845.9,9831.93,-0.007]]', '[[[],[]],[[\"PartWheel\"],[1]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.362],[\"palivo\",0.154],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.05363', '0.09800', '2014-01-01 14:58:00');
INSERT INTO `object_data` VALUES ('198', '249921121', '10', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:04', '0', '[222,[8621.5518,14330.931,0.19091861]]', '[]', '[]', '0.49000', '0.15000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('199', '126595150', '10', 'PBX', '2013-12-28 09:03:04', '0', '[52,[14403.5,17282.6,-0.213]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.8]]', '0.41609', '0.33100', '2013-12-29 18:54:24');
INSERT INTO `object_data` VALUES ('200', '458097622', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:04', '0', '[267,[12562.927,13812.304,-0.026442744]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.36000', '1.00000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('201', '337997858', '10', 'TT650_TK_EP1', '2013-12-28 09:03:04', '0', '[267,[8801.126,14341.049,0.039859537]]', '[]', '[[\"motor\",0.99]]', '0.75000', '0.67000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('202', '440516300', '10', 'Lada1_TK_CIV_EP1', '2013-12-28 09:03:04', '0', '[170,[14854.9,14038.9,9.098e-04]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.39],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.26],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.65],[\"wheel_2_1_steering\",0.77],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.4],[\"wheel_2_2_steering\",1],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.49000', '0.29900', '2013-12-29 18:54:24');
INSERT INTO `object_data` VALUES ('203', '517921472', '10', 'SkodaGreen', '2013-12-28 09:03:04', '0', '[167,[7869.3,9218.2,-0.003]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.3],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.51],[\"palivo\",0],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.11],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.9],[\"wheel_2_2_steering\",0.76],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.24771', '0.61800', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('204', '262442578', '10', 'TT650_TK_EP1', '2013-12-28 09:03:04', '0', '[310,[12764.887,11706.082,-2.4377213]]', '[]', '[[\"motor\",0.01]]', '0.71000', '0.80000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('205', '551042052', '10', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:04', '0', '[16,[4476.3115,8122.9238,0.013352858]]', '[]', '[]', '0.17000', '0.60000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('206', '459560661', '10', 'VolhaLimo_TK_CIV_EP1', '2013-12-28 09:03:04', '0', '[198,[14574,13836,-0.004]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"wheel_1_1_steering\",0.37],[\"wheel_1_2_steering\",0.58],[\"wheel_2_1_steering\",0.92],[\"wheel_2_2_steering\",0.24],[\"palivo\",0.25],[\"motor\",0.8],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.45],[\"wheel_1_4_steering\",0.1],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0.1],[\"wheel_2_3_steering\",0]]', '0.93767', '0.55900', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('207', '533233372', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:04', '0', '[81,[14278.4,12675.8,9.537e-06]]', '[[[\"LeeEnfield\"],[1]],[[\"PartWoodPile\",\"ItemHeatPack\",\"10x_303\",\"ItemJerrycanEmpty\"],[3,2,1,1]],[[],[]]]', '[[\"motor\",0.8],[\"sklo predni P\",0.1],[\"sklo predni L\",0],[\"karoserie\",0.833],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",0.791],[\"glass1\",1],[\"glass2\",0.317],[\"glass3\",1],[\"glass4\",0]]', '0.54842', '0.81100', '2013-12-30 18:42:16');
INSERT INTO `object_data` VALUES ('208', '359481613', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:04', '0', '[32,[17936.1,2681.32,0.006]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.363],[\"palivo\",0.01],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.75713', '0.05100', '2013-12-31 12:29:03');
INSERT INTO `object_data` VALUES ('209', '492729387', '10', 'datsun1_civil_2_covered', '2013-12-28 09:03:04', '0', '[40,[11149.501,7807.5029,-2.1053925]]', '[]', '[[\"motor\",0.63],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.44],[\"palivo\",0.19],[\"wheel_1_1_steering\",0.62],[\"wheel_2_1_steering\",0.42],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.22],[\"wheel_2_2_steering\",0.1],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.29000', '1.00000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('210', '399204722', '10', 'car_hatchback', '2013-12-28 09:03:04', '0', '[270,[15727,13293.9,4.148e-04]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.75],[\"palivo\",0.04],[\"wheel_1_1_steering\",0.78],[\"wheel_2_1_steering\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.01],[\"wheel_2_2_steering\",0.94],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.39892', '0.52000', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('211', '198249655', '10', 'SkodaRed', '2013-12-28 09:03:04', '0', '[240,[6421.41,10559.1,0.011]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.487],[\"palivo\",0.571],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",0.81],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.62],[\"wheel_2_2_steering\",0.28],[\"glass1\",1],[\"glass2\",0.154],[\"glass3\",0.893],[\"glass4\",0.862]]', '0.52500', '0.85400', '2013-12-31 18:36:36');
INSERT INTO `object_data` VALUES ('212', '564586671', '10', 'TT650_TK_EP1', '2013-12-28 09:03:04', '0', '[175,[9985.999,7518.7197,-1.4961853]]', '[]', '[[\"motor\",0.88]]', '0.95000', '0.05000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('213', '345878987', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:04', '0', '[54,[11324.433,8758.5303,0.067847334]]', '[]', '[[\"motor\",0.91]]', '0.77000', '0.00000', '2013-12-28 09:03:04');
INSERT INTO `object_data` VALUES ('214', '548384154', '10', 'UAZ_RU', '2013-12-28 09:03:04', '0', '[194,[7494.9609,7236.0957,-0.013462067]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0],[\"wheel_1_2_steering\",0.74],[\"wheel_2_1_steering\",0.35],[\"wheel_2_2_steering\",0.49],[\"motor\",0.06],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.21],[\"palivo\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.13000', '0.64000', '2013-12-28 09:19:57');
INSERT INTO `object_data` VALUES ('215', '84845393', '10', 'BAF_ATV_W', '2013-12-28 09:03:04', '0', '[133,[10619.911,16178.079,-0.19310522]]', '[]', '[[\"motor\",0.8],[\"palivo\",0.58],[\"wheel_1_1_steering\",0.86],[\"wheel_1_2_steering\",0.94],[\"wheel_2_1_steering\",0.89],[\"wheel_2_2_steering\",0.56],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.72000', '0.55000', '2013-12-28 09:19:57');
INSERT INTO `object_data` VALUES ('216', '159268078', '10', 'UAZ_AGS30_CDF', '2013-12-28 09:03:04', '0', '[187,[10018.5,7469.12,0.112]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"wheel_1_1_steering\",0.181],[\"wheel_1_2_steering\",0.677],[\"wheel_2_1_steering\",0.087],[\"wheel_2_2_steering\",0],[\"motor\",0.225],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.1],[\"palivo\",0.335],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.64307', '1.00000', '2014-01-01 20:09:40');
INSERT INTO `object_data` VALUES ('217', '103207792', '10', 'M1030_US_DES_EP1', '2013-12-28 09:03:04', '0', '[178,[8535.7012,14288.537,0.022169547]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.34],[\"palivo\",0.57],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.83000', '1.00000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('218', '89881952', '10', 'Tractor', '2013-12-28 09:03:04', '0', '[179,[16625.232,9711.6592,-0.37637705]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.65],[\"palivo\",0.59],[\"wheel_1_1_steering\",0.16],[\"wheel_2_1_steering\",0.92],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.07],[\"wheel_2_2_steering\",0.82],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.15000', '0.78000', '2013-12-28 09:19:57');
INSERT INTO `object_data` VALUES ('219', '227059694', '10', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:05', '0', '[350,[5763.23,15212,0.002]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"wheel_1_1_steering\",0.95],[\"wheel_1_2_steering\",0.32],[\"wheel_2_1_steering\",0.23],[\"wheel_2_2_steering\",0.5],[\"palivo\",0.51],[\"motor\",0.42],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.43],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.62900', '0.31100', '2013-12-30 18:42:16');
INSERT INTO `object_data` VALUES ('220', '488059310', '10', 'BAF_ATV_W', '2013-12-28 09:03:05', '0', '[315,[10123.216,16299.46,0.05255127]]', '[]', '[[\"motor\",0.76],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.2],[\"wheel_1_2_steering\",0.08],[\"wheel_2_1_steering\",0.4],[\"wheel_2_2_steering\",0.51],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.6],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.92000', '0.91000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('221', '544527068', '10', 'BAF_ATV_W', '2013-12-28 09:03:05', '0', '[298,[15762,13258.3,-0.001]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.65],[\"palivo\",0.3],[\"wheel_1_1_steering\",0.91],[\"wheel_1_2_steering\",0.1],[\"wheel_2_1_steering\",0.1],[\"wheel_2_2_steering\",0.94],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.72],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.96804', '0.79100', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('222', '257026330', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:05', '0', '[316,[8830.8662,14354.831,-0.053121448]]', '[]', '[[\"motor\",0.89]]', '0.11000', '0.39000', '2013-12-28 09:03:05');
INSERT INTO `object_data` VALUES ('223', '70706457', '10', 'datsun1_civil_3_open', '2013-12-28 09:03:05', '0', '[118,[6139.6157,13697.097,0.042643815]]', '[]', '[[\"motor\",0.36],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.29],[\"palivo\",0.18],[\"wheel_1_1_steering\",0.22],[\"wheel_2_1_steering\",0.91],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.4],[\"wheel_2_2_steering\",0.4],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.62000', '0.90000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('224', '222135178', '10', 'PBX', '2013-12-28 09:03:05', '0', '[177,[15843.387,13087.813,0.098038793]]', '[]', '[[\"motor\",0.1]]', '0.41000', '0.48000', '2013-12-28 09:03:05');
INSERT INTO `object_data` VALUES ('225', '269337244', '10', 'car_sedan', '2013-12-28 09:03:05', '0', '[115,[12846.7,9826.45,0.005]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",1],[\"sklo predni P\",0],[\"sklo predni L\",0.1],[\"karoserie\",0.098],[\"palivo\",0.787],[\"wheel_1_1_steering\",0.507],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0.1],[\"wheel_2_3_steering\",0.1],[\"wheel_1_2_steering\",0.402],[\"wheel_2_2_steering\",0.294],[\"glass1\",0.811],[\"glass2\",0.2],[\"glass3\",0.65],[\"glass4\",0.188]]', '0.54248', '1.00000', '2014-01-01 14:31:21');
INSERT INTO `object_data` VALUES ('226', '151777284', '10', 'Smallboat_1', '2013-12-28 09:03:05', '0', '[248,[15837.606,13079.95,0]]', '[]', '[[\"motor\",0]]', '0.51000', '0.50000', '2013-12-28 09:03:05');
INSERT INTO `object_data` VALUES ('227', '546491401', '10', 'Fishing_Boat', '2013-12-28 09:03:05', '0', '[25,[12003.231,15683.734,0.011208534]]', '[]', '[[\"motor\",0.05]]', '0.60000', '0.31000', '2013-12-28 09:03:05');
INSERT INTO `object_data` VALUES ('228', '248802191', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:05', '0', '[202,[9066,16698.6,-0.01]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.00000', '0.33858', '2013-12-30 11:48:00');
INSERT INTO `object_data` VALUES ('229', '12803076', '10', 'Tractor', '2013-12-28 09:03:05', '0', '[108,[10304.039,7092.4048,0.038532257]]', '[]', '[[\"motor\",0.6],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.52],[\"palivo\",0.43],[\"wheel_1_1_steering\",0.92],[\"wheel_2_1_steering\",0.4],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.71],[\"wheel_2_2_steering\",0.31],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.98000', '0.68000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('230', '26254507', '10', 'car_hatchback', '2013-12-28 09:03:05', '0', '[109,[11051.388,8543.5684,0.098106384]]', '[]', '[[\"motor\",0.1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.3],[\"palivo\",0.48],[\"wheel_1_1_steering\",0.01],[\"wheel_2_1_steering\",0.23],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.19],[\"wheel_2_2_steering\",0.23],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.14000', '0.25000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('231', '5735637', '10', 'Tractor', '2013-12-28 09:03:05', '0', '[173,[14267.8,12686.4,-2.861e-05]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.59],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.58],[\"palivo\",0.03],[\"wheel_1_1_steering\",0.94],[\"wheel_2_1_steering\",0.46],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.64],[\"wheel_2_2_steering\",0.24],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.15824', '0.83900', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('232', '439758981', '10', 'UAZ_INS', '2013-12-28 09:03:05', '0', '[188,[16666.535,18258.182,0.30707741]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.6],[\"wheel_1_2_steering\",0.07],[\"wheel_2_1_steering\",0.61],[\"wheel_2_2_steering\",0.55],[\"motor\",0.16],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.79],[\"palivo\",0.79],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.67000', '0.81000', '2013-12-30 16:17:20');
INSERT INTO `object_data` VALUES ('233', '229730445', '10', 'SkodaBlue', '2013-12-28 09:03:05', '0', '[181,[14497.4,13748.1,-5.782e-04]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.14],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.66],[\"wheel_2_1_steering\",0.4],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",0.15],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.76000', '0.54000', '2013-12-30 14:57:33');
INSERT INTO `object_data` VALUES ('234', '232165624', '10', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:05', '0', '[18,[14585.7,13771.9,9.146e-04]]', '[[[],[]],[[\"HandRoadFlare\"],[1]],[[],[]]]', '[[\"wheel_1_1_steering\",0.26],[\"wheel_1_2_steering\",0.82],[\"wheel_2_1_steering\",0.45],[\"wheel_2_2_steering\",0.06],[\"palivo\",0.8],[\"motor\",0.8],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0.1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.32],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.32015', '0.40900', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('235', '436223471', '10', 'Tractor', '2013-12-28 09:03:05', '0', '[241,[10580.141,14043.175,0.5129773]]', '[]', '[[\"motor\",0.49],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.96],[\"palivo\",0.75],[\"wheel_1_1_steering\",0.06],[\"wheel_2_1_steering\",0.53],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.67],[\"wheel_2_2_steering\",0.55],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.52000', '0.81000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('236', '517384049', '10', 'VolhaLimo_TK_CIV_EP1', '2013-12-28 09:03:05', '0', '[342,[15520.12,13177.97,1.4741507]]', '[]', '[[\"wheel_1_1_steering\",0.68],[\"wheel_1_2_steering\",0.46],[\"wheel_2_1_steering\",0.52],[\"wheel_2_2_steering\",0.42],[\"palivo\",0.8],[\"motor\",0.8],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.02],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.27000', '0.28000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('237', '590007637', '10', 'BAF_Offroad_W', '2013-12-28 09:03:05', '0', '[226,[5884.5156,13636.438,-0.15112305]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.37],[\"palivo\",0.1],[\"wheel_1_1_steering\",0.18],[\"wheel_1_2_steering\",0.78],[\"wheel_2_1_steering\",0.87],[\"wheel_2_2_steering\",0.91],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.55],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.40000', '0.18000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('238', '297472449', '10', 'SkodaRed', '2013-12-28 09:03:05', '0', '[279,[14458.1,13476.8,-0.032]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.217],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.375],[\"palivo\",0.559],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.621],[\"wheel_2_2_steering\",0.266],[\"glass1\",0.48],[\"glass2\",0.331],[\"glass3\",0.277],[\"glass4\",0.308]]', '0.75609', '0.18000', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('239', '365431650', '10', 'Volha_2_TK_CIV_EP1', '2013-12-28 09:03:05', '0', '[213,[8815.88,16381,0.005]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"wheel_1_1_steering\",0.61],[\"wheel_1_2_steering\",0.1],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.58],[\"palivo\",0.8],[\"motor\",0.8],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.17],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.27000', '0.88200', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('240', '300605885', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:05', '0', '[130,[14376,13884.5,-0.016]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.13300', '0.00000', '2014-01-01 14:14:44');
INSERT INTO `object_data` VALUES ('241', '332296942', '10', 'tractorOld', '2013-12-28 09:03:05', '0', '[168,[10056.433,18570.559,-0.0087738037]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.54],[\"palivo\",0.79],[\"wheel_1_1_steering\",0.17],[\"wheel_2_1_steering\",0.92],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.95],[\"wheel_2_2_steering\",0.85],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.57000', '0.70000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('242', '336961509', '10', 'MMT_USMC', '2013-12-28 09:03:05', '0', '[219,[16202.461,15507.758]]', '[]', '[[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.1],[\"palivo\",0],[\"wheel_1_damper\",0.1],[\"wheel_2_damper\",0.1],[\"motor\",0]]', '0.08000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('243', '320858527', '10', 'datsun1_civil_1_open', '2013-12-28 09:03:05', '0', '[135,[9184.7061,17283.559,-0.093870297]]', '[]', '[[\"motor\",0.34],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.03],[\"palivo\",0.27],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.54],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.47],[\"wheel_2_2_steering\",0.34],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.24000', '0.49000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('244', '280750999', '10', 'SkodaRed', '2013-12-28 09:03:06', '0', '[104,[16014.2,9883.49,0.091]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.34],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.37],[\"wheel_2_1_steering\",0.49],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",0.26],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.66817', '0.59100', '2013-12-29 08:47:42');
INSERT INTO `object_data` VALUES ('245', '374621665', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:06', '0', '[193,[8439.71,16062.4,-0.011]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.053],[\"palivo\",0],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.47056', '0.00800', '2013-12-30 18:42:17');
INSERT INTO `object_data` VALUES ('246', '489669771', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:06', '0', '[242,[12008.2,9246.24,-0.013]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.865],[\"palivo\",0.72],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.68634', '0.73600', '2013-12-30 12:05:03');
INSERT INTO `object_data` VALUES ('247', '251996221', '10', 'BAF_ATV_W', '2013-12-28 09:03:06', '0', '[69,[5637.04,15362.6,0.014]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.79],[\"palivo\",0.68],[\"wheel_1_1_steering\",0.58],[\"wheel_1_2_steering\",0.86],[\"wheel_2_1_steering\",0.33],[\"wheel_2_2_steering\",0.22],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.17],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.47000', '0.76000', '2013-12-30 18:42:17');
INSERT INTO `object_data` VALUES ('248', '235427506', '10', 'MH6J_EP1', '2013-12-28 09:03:06', '0', '[324,[7179.34,7391.81,0.167]]', '[[[\"KPFS_PSL\"],[1]],[[\"ItemJerrycanEmpty\",\"KPFS_10Rnd_PSL\"],[2,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",0],[\"NEtrup\",0],[\"motor\",0.8],[\"elektronika\",1],[\"mala vrtule\",0.256],[\"velka vrtule\",1],[\"munice\",1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"glass6\",0]]', '0.51367', '0.30300', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('249', '251986585', '10', 'BAF_Offroad_W', '2013-12-28 09:03:06', '0', '[286,[17065.734,13843.54,-0.0034102711]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.8],[\"palivo\",0.65],[\"wheel_1_1_steering\",0.19],[\"wheel_1_2_steering\",0.09],[\"wheel_2_1_steering\",0.74],[\"wheel_2_2_steering\",0.03],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.97],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.68000', '0.31000', '2013-12-28 09:19:58');
INSERT INTO `object_data` VALUES ('250', '365589826', '10', 'datsun1_civil_2_covered', '2013-12-28 09:03:06', '0', '[149,[11651.4,14873.5,0.002]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.318],[\"sklo predni P\",0.1],[\"sklo predni L\",0],[\"karoserie\",0],[\"palivo\",0.382],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",0.161],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.382],[\"wheel_2_2_steering\",0.441],[\"glass1\",0.1],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.42800', '0.92900', '2013-12-31 12:29:03');
INSERT INTO `object_data` VALUES ('251', '139157012', '10', 'datsun1_civil_3_open', '2013-12-28 09:03:06', '0', '[257,[16150.8,5214.21,0.354]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.342],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.245],[\"palivo\",0.628],[\"wheel_1_1_steering\",0.431],[\"wheel_2_1_steering\",0],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.551],[\"wheel_2_2_steering\",0.791],[\"glass1\",0.251],[\"glass2\",0.146],[\"glass3\",0],[\"glass4\",0]]', '0.53483', '0.11800', '2013-12-30 18:42:17');
INSERT INTO `object_data` VALUES ('252', '438205383', '10', 'Skoda', '2013-12-28 09:03:06', '0', '[83,[14292.2,13784.8,0.002]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.79],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.27],[\"palivo\",0.57],[\"wheel_1_1_steering\",0.41],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.62],[\"wheel_2_2_steering\",0.12],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.19956', '0.52000', '2014-01-01 14:58:00');
INSERT INTO `object_data` VALUES ('253', '23361426', '10', 'UAZ_AGS30_INS', '2013-12-28 09:03:06', '0', '[65,[10124.965,14003.032,0.073008731]]', '[]', '[[\"wheel_1_1_steering\",0],[\"wheel_1_2_steering\",0.86],[\"wheel_2_1_steering\",0.58],[\"wheel_2_2_steering\",0.75],[\"motor\",0.27],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.67],[\"palivo\",0.24],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.18000', '0.44000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('254', '238535839', '10', 'Smallboat_1', '2013-12-28 09:03:06', '0', '[180,[8073.5815,17330.633,-0.15450078]]', '[]', '[[\"motor\",0.34]]', '0.77000', '0.89000', '2013-12-28 09:03:06');
INSERT INTO `object_data` VALUES ('255', '513570554', '10', 'Smallboat_1', '2013-12-28 09:03:06', '0', '[72,[12408.254,15640.146,0.015512228]]', '[]', '[[\"motor\",0.5]]', '0.41000', '0.56000', '2013-12-28 09:03:06');
INSERT INTO `object_data` VALUES ('256', '81471528', '10', 'UAZ_Unarmed_TK_EP1', '2013-12-28 09:03:06', '0', '[280,[12982.338,11700.104,-0.25634113]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0],[\"wheel_1_1_steering\",0.23],[\"wheel_1_2_steering\",0.45],[\"wheel_2_1_steering\",0.25],[\"wheel_2_2_steering\",0.49],[\"motor\",0.54],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.84],[\"palivo\",0.45],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0]]', '0.39000', '0.64000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('257', '370309842', '10', 'SkodaGreen', '2013-12-28 09:03:06', '0', '[41,[12010.156,15195.486,-0.06098599]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.45],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.89],[\"palivo\",0.62],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.89],[\"wheel_2_2_steering\",0.26],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.64000', '0.17000', '2013-12-31 11:21:39');
INSERT INTO `object_data` VALUES ('258', '296286293', '10', 'BAF_Offroad_W', '2013-12-28 09:03:06', '0', '[194,[14600.395,14082.441,0.32738304]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.19],[\"palivo\",0.63],[\"wheel_1_1_steering\",0.14],[\"wheel_1_2_steering\",0.61],[\"wheel_2_1_steering\",0.34],[\"wheel_2_2_steering\",0.64],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.59],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.44000', '0.36000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('259', '593105333', '10', 'Fishing_Boat', '2013-12-28 09:03:06', '0', '[250,[5169.9502,11447.054,0.56925422]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.03]]', '0.44000', '0.67000', '2013-12-30 08:46:12');
INSERT INTO `object_data` VALUES ('260', '399764767', '10', 'car_sedan', '2013-12-28 09:03:06', '0', '[92,[5843.11,15273.8,6.866e-05]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.07],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.37],[\"palivo\",0.22],[\"wheel_1_1_steering\",0.7],[\"wheel_2_1_steering\",0.07],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.96],[\"wheel_2_2_steering\",0.26],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.87943', '0.75200', '2013-12-30 18:42:17');
INSERT INTO `object_data` VALUES ('261', '513069259', '10', 'Fishing_Boat', '2013-12-28 09:03:06', '0', '[23,[10673.596,16286.279,-0.055622101]]', '[]', '[[\"motor\",0.27]]', '0.74000', '0.88000', '2013-12-28 09:03:06');
INSERT INTO `object_data` VALUES ('262', '284931181', '10', 'BAF_ATV_W', '2013-12-28 09:03:06', '0', '[44,[6413.3,16574.1,0.023]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.392],[\"palivo\",0.059],[\"wheel_1_1_steering\",0.753],[\"wheel_1_2_steering\",0.71],[\"wheel_2_1_steering\",0.351],[\"wheel_2_2_steering\",0.402],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.44],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.00000', '0.13800', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('263', '347178536', '10', 'TT650_TK_EP1', '2013-12-28 09:03:06', '0', '[153,[15921.183,10391.513,0.11331525]]', '[]', '[[\"motor\",0.72]]', '0.87000', '0.21000', '2013-12-28 09:03:06');
INSERT INTO `object_data` VALUES ('264', '466974880', '10', 'UAZ_AGS30_INS', '2013-12-28 09:03:06', '0', '[357,[12594.524,13854.655,-0.065336309]]', '[]', '[[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.58],[\"wheel_2_1_steering\",0.01],[\"wheel_2_2_steering\",0.88],[\"motor\",0.31],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.93],[\"palivo\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.46000', '0.95000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('265', '393969084', '10', 'Tractor', '2013-12-28 09:03:06', '0', '[341,[12727.424,11809.682,-0.59694785]]', '[]', '[[\"motor\",0.4],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.37],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.51],[\"wheel_2_1_steering\",0.93],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.33],[\"wheel_2_2_steering\",0.96],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.99000', '0.75000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('266', '358490673', '10', 'car_hatchback', '2013-12-28 09:03:06', '0', '[351,[14459.7,13867.3,-0.004]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.35],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.45],[\"palivo\",0.42],[\"wheel_1_1_steering\",0.71],[\"wheel_2_1_steering\",0.23],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",0.93],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.95000', '0.72000', '2013-12-29 18:54:25');
INSERT INTO `object_data` VALUES ('267', '335356225', '10', 'PBX', '2013-12-28 09:03:06', '0', '[195,[2074.49,7857.78,-0.273]]', '[[[],[]],[[\"PartEngine\",\"ItemPainkiller\",\"HandRoadFlare\"],[1,1,1]],[[],[]]]', '[[\"motor\",0.08]]', '0.09434', '0.35800', '2013-12-30 18:42:17');
INSERT INTO `object_data` VALUES ('268', '114213362', '10', 'Skoda', '2013-12-28 09:03:06', '0', '[141,[11963.963,15311.409,0.16621971]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.49],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.2],[\"palivo\",0.54],[\"wheel_1_1_steering\",0.15],[\"wheel_2_1_steering\",0.65],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.73],[\"wheel_2_2_steering\",1],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.76000', '0.29000', '2013-12-31 11:13:59');
INSERT INTO `object_data` VALUES ('269', '112660683', '10', 'Lada1_TK_CIV_EP1', '2013-12-28 09:03:06', '0', '[87,[5872.31,11685.8,0.007]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.39],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.27],[\"palivo\",0.73],[\"wheel_1_1_steering\",0.92],[\"wheel_2_1_steering\",0.97],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.06],[\"wheel_2_2_steering\",0.03],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.16901', '0.38200', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('270', '167461344', '10', 'Pickup_PK_GUE', '2013-12-28 09:03:06', '0', '[181,[18442.873,17465.936,-0.18510628]]', '[]', '[[\"motor\",0.43],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.08],[\"palivo\",0.35],[\"wheel_1_1_steering\",0.37],[\"wheel_2_1_steering\",0.51],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.3],[\"wheel_2_2_steering\",0.76],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.25000', '0.20000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('271', '169260441', '10', 'Fishing_Boat', '2013-12-28 09:03:06', '0', '[261,[5180.79,11463.2,10.355]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.7]]', '0.52398', '0.63000', '2013-12-30 12:05:04');
INSERT INTO `object_data` VALUES ('272', '405735342', '10', 'PBX', '2013-12-28 09:03:07', '0', '[148,[9132.87,17827.699,-0.221]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.28]]', '0.74816', '0.83900', '2013-12-30 12:05:04');
INSERT INTO `object_data` VALUES ('273', '324450301', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:07', '0', '[143,[12857.922,11733.393,0.1046195]]', '[]', '[[\"motor\",0.59]]', '0.42000', '0.90000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('274', '526453808', '10', 'Skoda', '2013-12-28 09:03:07', '0', '[163,[6164.65,11556,0.008]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.548],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.693],[\"palivo\",0.399],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",0.507],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",0.794],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1]]', '0.64456', '1.00000', '2014-01-01 17:47:27');
INSERT INTO `object_data` VALUES ('275', '156262367', '10', 'M1030_US_DES_EP1', '2013-12-28 09:03:07', '0', '[184,[11147.278,7809.5439,-1.6029816]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.04],[\"palivo\",0.17],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.73000', '0.18000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('276', '208065559', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:07', '0', '[255,[5821.7671,11729.394,-0.33867073]]', '[]', '[[\"motor\",0.16],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.19],[\"palivo\",0.27],[\"wheel_1_1_steering\",0.68],[\"wheel_2_1_steering\",0.48],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.39],[\"wheel_2_2_steering\",0.45],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.43000', '0.19000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('277', '536167802', '10', 'hilux1_civil_1_open', '2013-12-28 09:03:07', '0', '[279,[14463.9,13475.2,0.019]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.991],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.671],[\"palivo\",0.694],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.361],[\"wheel_2_2_steering\",0.086],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",0.929]]', '0.84028', '1.00000', '2013-12-30 10:20:26');
INSERT INTO `object_data` VALUES ('278', '389955458', '10', 'hilux1_civil_2_covered', '2013-12-28 09:03:07', '0', '[179,[11152.78,7811.3545,-2.6618195]]', '[]', '[[\"motor\",0.06],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.61],[\"palivo\",0.78],[\"wheel_1_1_steering\",0.84],[\"wheel_2_1_steering\",0.62],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.91],[\"wheel_2_2_steering\",0.56],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.58000', '0.45000', '2013-12-28 09:19:59');
INSERT INTO `object_data` VALUES ('279', '447513513', '10', 'TT650_TK_CIV_EP1', '2013-12-28 09:03:07', '0', '[315,[9902.9639,7719.8765]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",1],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.44000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('280', '379667473', '10', 'Skoda', '2013-12-28 09:03:07', '0', '[211,[10804.409,15821.528,-0.40860748]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.06],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.65],[\"wheel_2_1_steering\",0.25],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.31],[\"wheel_2_2_steering\",0.71],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.49000', '0.96000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('281', '499781063', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:07', '0', '[256,[10419.466,7407.7144,0.03213501]]', '[]', '[[\"motor\",0.11]]', '0.82000', '0.38000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('282', '311563894', '10', 'M1030_US_DES_EP1', '2013-12-28 09:03:07', '0', '[330,[12758.614,11709.826,-1.3274841]]', '[]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.22],[\"palivo\",0.03],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.19000', '0.04000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('283', '596815605', '10', 'Old_bike_TK_INS_EP1', '2013-12-28 09:03:07', '0', '[28,[10205.222,18321.516,0.87607116]]', '[]', '[]', '0.97000', '0.55000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('284', '247213250', '10', 'tractorOld', '2013-12-28 09:03:07', '0', '[75,[7804.24,14961.9,2.222e-04]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.57],[\"sklo predni P\",0],[\"sklo predni L\",0.1],[\"karoserie\",0.42],[\"palivo\",0.66],[\"wheel_1_1_steering\",0.24],[\"wheel_2_1_steering\",0.12],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.57],[\"wheel_2_2_steering\",0.8],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.58119', '0.29100', '2013-12-31 12:29:03');
INSERT INTO `object_data` VALUES ('285', '487097495', '10', 'BAF_ATV_W', '2013-12-28 09:03:07', '0', '[167,[6047.96,10671.1,0.777]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.53],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.51],[\"wheel_1_2_steering\",0.53],[\"wheel_2_1_steering\",0.78],[\"wheel_2_2_steering\",1],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.81],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.36114', '0.35000', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('286', '167530254', '10', 'tractorOld', '2013-12-28 09:03:07', '0', '[98,[10299.823,13843.912,0.44814301]]', '[]', '[[\"motor\",0.8],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.67],[\"palivo\",0.36],[\"wheel_1_1_steering\",0.23],[\"wheel_2_1_steering\",0.81],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.22],[\"wheel_2_2_steering\",0.12],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.39000', '0.19000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('287', '416897555', '10', 'BAF_ATV_W', '2013-12-28 09:03:07', '0', '[164,[6040.8901,13552.661,0.11583328]]', '[]', '[[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",0.24],[\"wheel_1_2_steering\",0.61],[\"wheel_2_1_steering\",0.87],[\"wheel_2_2_steering\",0.37],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.74],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.39000', '0.07000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('288', '591194605', '10', 'UAZ_AGS30_CDF', '2013-12-28 09:03:07', '0', '[98,[12824.199,11814.879,-0.0028726123]]', '[]', '[[\"wheel_1_1_steering\",0.36],[\"wheel_1_2_steering\",0.16],[\"wheel_2_1_steering\",0.08],[\"wheel_2_2_steering\",0.53],[\"motor\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.13],[\"palivo\",0.8],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.38000', '0.49000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('289', '318595070', '10', 'MH6J_EP1', '2013-12-28 09:03:07', '0', '[344,[14037.424,14212.402]]', '[]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",0.43],[\"NEtrup\",0.02],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1],[\"sklo predni P\",0.34],[\"sklo predni L\",0.61],[\"glass6\",0.12]]', '0.18000', '1.00000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('290', '355251943', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:07', '0', '[180,[7481.7256,7235.0239,-0.069056526]]', '[]', '[[\"motor\",0.95]]', '0.02000', '0.55000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('291', '147574206', '10', 'PBX', '2013-12-28 09:03:07', '0', '[164,[9139.96,17832,-0.23]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.75]]', '0.79891', '0.94100', '2014-01-01 18:26:20');
INSERT INTO `object_data` VALUES ('292', '294221343', '10', 'datsun1_civil_3_open', '2013-12-28 09:03:07', '0', '[215,[9166.16,5145.55,0.048]]', '[[[],[]],[[\"PartFueltank\"],[1]],[[],[]]]', '[[\"motor\",0.265],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",1],[\"palivo\",0.437],[\"wheel_1_1_steering\",0],[\"wheel_2_1_steering\",0.411],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.382],[\"wheel_2_2_steering\",1],[\"glass1\",0.769],[\"glass2\",0.948],[\"glass3\",0],[\"glass4\",0]]', '0.53718', '0.69300', '2013-12-28 18:42:14');
INSERT INTO `object_data` VALUES ('293', '304367116', '10', 'BAF_Offroad_W', '2013-12-28 09:03:07', '0', '[53,[12511.9,9136.12,0.082]]', '[[[],[]],[[\"PartWheel\",\"PartWoodPile\",\"wood_shack_kit\",\"PartFueltank\",\"PartGeneric\",\"PartEngine\",\"ItemWaterbottle\",\"PartWoodPlywood\",\"ItemBloodbag\",\"ItemSodaCoke\",\"ItemSodaPepsi\",\"FoodbeefCooked\",\"PartGlass\",\"ItemJerrycanEmpty\"],[4,1,1,2,8,2,1,1,4,1,2,1,3,6]],[[],[]]]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0],[\"palivo\",0],[\"wheel_1_1_steering\",0.14],[\"wheel_1_2_steering\",0.1],[\"wheel_2_1_steering\",0],[\"wheel_2_2_steering\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.79950', '0.72000', '2014-01-01 14:58:00');
INSERT INTO `object_data` VALUES ('294', '565666883', '10', 'Fishing_Boat', '2013-12-28 09:03:07', '0', '[157,[14631.369,14394.837,-0.16102248]]', '[]', '[[\"motor\",0.4]]', '0.93000', '0.75000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('295', '387536626', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:07', '0', '[36,[15071.9,16078.1,0.063]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"engine\",0],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.152],[\"palivo\",0.043],[\"Pravy predni tlumic\",0],[\"Pravy zadni tlumic\",0]]', '0.84512', '0.01600', '2013-12-29 18:54:25');
INSERT INTO `object_data` VALUES ('296', '47865761', '10', 'Smallboat_1', '2013-12-28 09:03:07', '0', '[352,[5155.7798,11431.29,-0.0046123266]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"motor\",0.27]]', '0.87000', '0.95000', '2013-12-30 08:46:36');
INSERT INTO `object_data` VALUES ('297', '589782972', '10', 'BAF_Offroad_W', '2013-12-28 09:03:07', '0', '[212,[11341.55,8676.0869,-0.13813782]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.2],[\"palivo\",0.44],[\"wheel_1_1_steering\",0.98],[\"wheel_1_2_steering\",0.63],[\"wheel_2_1_steering\",0.57],[\"wheel_2_2_steering\",0.03],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.05],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.57000', '0.69000', '2013-12-30 11:47:52');
INSERT INTO `object_data` VALUES ('298', '453883647', '10', 'Old_moto_TK_Civ_EP1', '2013-12-28 09:03:07', '0', '[169,[16857.227,5164.6616,-0.00017356873]]', '[]', '[[\"motor\",0.24]]', '0.30000', '0.65000', '2013-12-28 09:03:07');
INSERT INTO `object_data` VALUES ('299', '486781914', '10', 'Pickup_PK_INS', '2013-12-28 09:03:07', '0', '[34,[8783.4561,15747.725,1.3230991]]', '[]', '[[\"motor\",0.68],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.43],[\"palivo\",0.62],[\"wheel_1_1_steering\",0.29],[\"wheel_2_1_steering\",0.5],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"wheel_1_2_steering\",0.72],[\"wheel_2_2_steering\",0.29],[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"glass4\",0]]', '0.98000', '0.50000', '2013-12-28 09:20:00');
INSERT INTO `object_data` VALUES ('300', '16630991', '10', 'BAF_Offroad_W', '2013-12-28 09:03:07', '0', '[113,[16630.197,18270.813,0.009223938]]', '[]', '[[\"glass1\",0],[\"glass2\",0],[\"glass3\",0],[\"motor\",0.06],[\"palivo\",0.55],[\"wheel_1_1_steering\",0.83],[\"wheel_1_2_steering\",0.34],[\"wheel_2_1_steering\",0.98],[\"wheel_2_2_steering\",0.18],[\"sklo predni P\",0],[\"sklo predni L\",0],[\"karoserie\",0.46],[\"wheel_1_4_steering\",0],[\"wheel_2_4_steering\",0],[\"wheel_1_3_steering\",0],[\"wheel_2_3_steering\",0],[\"glass4\",0]]', '0.64000', '0.16000', '2013-12-28 09:20:00');

-- ----------------------------
-- Table structure for object_spawns
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns`;
CREATE TABLE `object_spawns` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  `MapID` varchar(255) NOT NULL DEFAULT '',
  `Last_changed` int(10) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`,`MapID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_spawns
-- ----------------------------

-- ----------------------------
-- Table structure for player_data
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL DEFAULT '0',
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`) USING BTREE,
  KEY `playerUID` (`playerUID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_data
-- ----------------------------

-- ----------------------------
-- Table structure for player_login
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_login
-- ----------------------------

-- ----------------------------
-- Table structure for player_variables
-- ----------------------------
DROP TABLE IF EXISTS `player_variables`;
CREATE TABLE `player_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(55) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `playerID` (`playerID`) USING BTREE,
  CONSTRAINT `playerID` FOREIGN KEY (`playerID`) REFERENCES `player_data` (`playerUID`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_variables
-- ----------------------------

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_name` varchar(255) DEFAULT NULL,
  `quest_content` longtext,
  `quest_turnin` varchar(255) DEFAULT NULL,
  `quest_reward` varchar(255) DEFAULT NULL,
  `quest_instance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of quest
-- ----------------------------

-- ----------------------------
-- Table structure for squad
-- ----------------------------
DROP TABLE IF EXISTS `squad`;
CREATE TABLE `squad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT NULL,
  `squad_name` varchar(255) DEFAULT NULL,
  `squadLeader` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of squad
-- ----------------------------

-- ----------------------------
-- Table structure for squad_rank
-- ----------------------------
DROP TABLE IF EXISTS `squad_rank`;
CREATE TABLE `squad_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `squadId` int(11) DEFAULT NULL,
  `squadPosition` int(11) DEFAULT NULL,
  `squadMember` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of squad_rank
-- ----------------------------

-- ----------------------------
-- Table structure for squad_rank_name
-- ----------------------------
DROP TABLE IF EXISTS `squad_rank_name`;
CREATE TABLE `squad_rank_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rankId` int(11) DEFAULT NULL,
  `rankName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of squad_rank_name
-- ----------------------------
