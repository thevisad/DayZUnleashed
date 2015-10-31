/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2015-10-30 22:36:49
*/

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_admins
-- ----------------------------
INSERT INTO `antihack_admins` VALUES ('1', '1', 'thevisad', '76561198013702927', '3', '2014-08-20 00:05:23');
INSERT INTO `antihack_admins` VALUES ('2', '1', null, '76561198014202008', '3', '2014-09-12 13:40:43');

-- ----------------------------
-- Table structure for antihack_bans
-- ----------------------------
DROP TABLE IF EXISTS `antihack_bans`;
CREATE TABLE `antihack_bans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=1736 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1658', '2b14_82mm');
INSERT INTO `building` VALUES ('1659', '2b14_82mm_CDF');
INSERT INTO `building` VALUES ('1733', '2b14_82mm_CZ_EP1');
INSERT INTO `building` VALUES ('1661', '2b14_82mm_GUE');
INSERT INTO `building` VALUES ('1660', '2b14_82mm_INS');
INSERT INTO `building` VALUES ('1', '2b14_82mm_TK_Bag_EP1');
INSERT INTO `building` VALUES ('1728', '2b14_82mm_TK_EP1');
INSERT INTO `building` VALUES ('2', '2b14_82mm_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('1707', '2b14_82mm_TK_GUE_EP1');
INSERT INTO `building` VALUES ('3', '2b14_82mm_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('1716', '2b14_82mm_TK_INS_EP1');
INSERT INTO `building` VALUES ('4', '76n6ClamShell');
INSERT INTO `building` VALUES ('5', '76n6ClamShell_EP1');
INSERT INTO `building` VALUES ('6', 'ACamp');
INSERT INTO `building` VALUES ('7', 'ACamp_EP1');
INSERT INTO `building` VALUES ('1646', 'AGS_CDF');
INSERT INTO `building` VALUES ('1732', 'AGS_CZ_EP1');
INSERT INTO `building` VALUES ('1645', 'AGS_Ins');
INSERT INTO `building` VALUES ('1647', 'AGS_RU');
INSERT INTO `building` VALUES ('8', 'AGS_TK_Bag_EP1');
INSERT INTO `building` VALUES ('1723', 'AGS_TK_EP1');
INSERT INTO `building` VALUES ('9', 'AGS_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('1711', 'AGS_TK_GUE_EP1');
INSERT INTO `building` VALUES ('10', 'AGS_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('1719', 'AGS_TK_INS_EP1');
INSERT INTO `building` VALUES ('11', 'AGS_UN_Bag_EP1');
INSERT INTO `building` VALUES ('1701', 'AGS_UN_EP1');
INSERT INTO `building` VALUES ('12', 'Ammobox_PMC');
INSERT INTO `building` VALUES ('14', 'AmmoCrates_NoInteractive_Large');
INSERT INTO `building` VALUES ('15', 'AmmoCrates_NoInteractive_Medium');
INSERT INTO `building` VALUES ('16', 'AmmoCrates_NoInteractive_Small');
INSERT INTO `building` VALUES ('13', 'AmmoCrate_NoInteractive_');
INSERT INTO `building` VALUES ('583', 'ASC_EU_Bulb');
INSERT INTO `building` VALUES ('584', 'ASC_EU_BulbBLUB');
INSERT INTO `building` VALUES ('585', 'ASC_EU_BulbBLUP');
INSERT INTO `building` VALUES ('586', 'ASC_EU_BulbGRNB');
INSERT INTO `building` VALUES ('587', 'ASC_EU_BulbGRNP');
INSERT INTO `building` VALUES ('588', 'ASC_EU_BulbI');
INSERT INTO `building` VALUES ('589', 'ASC_EU_BulbM');
INSERT INTO `building` VALUES ('590', 'ASC_EU_BulbN');
INSERT INTO `building` VALUES ('591', 'ASC_EU_BulbO');
INSERT INTO `building` VALUES ('592', 'ASC_EU_BulbPURB');
INSERT INTO `building` VALUES ('593', 'ASC_EU_BulbPURP');
INSERT INTO `building` VALUES ('594', 'ASC_EU_BulbREDB');
INSERT INTO `building` VALUES ('595', 'ASC_EU_BulbREDP');
INSERT INTO `building` VALUES ('596', 'ASC_EU_BulbWHTB');
INSERT INTO `building` VALUES ('597', 'ASC_EU_BulbWHTP');
INSERT INTO `building` VALUES ('598', 'ASC_EU_BulbYELB');
INSERT INTO `building` VALUES ('599', 'ASC_EU_BulbYELP');
INSERT INTO `building` VALUES ('601', 'ASC_EU_LHSInd');
INSERT INTO `building` VALUES ('602', 'ASC_EU_LHSIndB');
INSERT INTO `building` VALUES ('603', 'ASC_EU_LHSIndE');
INSERT INTO `building` VALUES ('604', 'ASC_EU_LHSIndZ');
INSERT INTO `building` VALUES ('605', 'ASC_EU_LHSOld');
INSERT INTO `building` VALUES ('606', 'ASC_EU_LHSSidl1');
INSERT INTO `building` VALUES ('607', 'ASC_EU_LHSSidl2');
INSERT INTO `building` VALUES ('608', 'ASC_EU_LHSSidl3');
INSERT INTO `building` VALUES ('609', 'ASC_EU_LHSStre1');
INSERT INTO `building` VALUES ('610', 'ASC_EU_LHSStre2');
INSERT INTO `building` VALUES ('600', 'ASC_EU_LHS_lampa_sidlconc');
INSERT INTO `building` VALUES ('612', 'ASC_EU_LHVInd');
INSERT INTO `building` VALUES ('613', 'ASC_EU_LHVIndB');
INSERT INTO `building` VALUES ('614', 'ASC_EU_LHVIndE');
INSERT INTO `building` VALUES ('615', 'ASC_EU_LHVIndZ');
INSERT INTO `building` VALUES ('616', 'ASC_EU_LHVOld');
INSERT INTO `building` VALUES ('617', 'ASC_EU_LHVSidl1');
INSERT INTO `building` VALUES ('618', 'ASC_EU_LHVSidl2');
INSERT INTO `building` VALUES ('619', 'ASC_EU_LHVSidl3');
INSERT INTO `building` VALUES ('620', 'ASC_EU_LHVStre1');
INSERT INTO `building` VALUES ('621', 'ASC_EU_LHVStre2');
INSERT INTO `building` VALUES ('611', 'ASC_EU_LHV_lampa_sidlconc');
INSERT INTO `building` VALUES ('622', 'ASC_runway_BluelightB');
INSERT INTO `building` VALUES ('623', 'ASC_runway_YellowlightB');
INSERT INTO `building` VALUES ('17', 'BAF_AssaultPack');
INSERT INTO `building` VALUES ('18', 'BAF_BasicAmmunitionBox');
INSERT INTO `building` VALUES ('19', 'BAF_BasicWeapons');
INSERT INTO `building` VALUES ('20', 'BAF_GMG_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('1690', 'BAF_GMG_Tripod_D');
INSERT INTO `building` VALUES ('1691', 'BAF_GMG_Tripod_W');
INSERT INTO `building` VALUES ('1688', 'BAF_GPMG_Minitripod_D');
INSERT INTO `building` VALUES ('21', 'BAF_GPMG_Minitripod_D_bag');
INSERT INTO `building` VALUES ('1689', 'BAF_GPMG_Minitripod_W');
INSERT INTO `building` VALUES ('22', 'BAF_IEDBox');
INSERT INTO `building` VALUES ('23', 'BAF_L2A1_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('24', 'BAF_L2A1_ACOG_tripod_bag');
INSERT INTO `building` VALUES ('1686', 'BAF_L2A1_Minitripod_D');
INSERT INTO `building` VALUES ('1687', 'BAF_L2A1_Minitripod_W');
INSERT INTO `building` VALUES ('1684', 'BAF_L2A1_Tripod_D');
INSERT INTO `building` VALUES ('1685', 'BAF_L2A1_Tripod_W');
INSERT INTO `building` VALUES ('25', 'BAF_Launchers');
INSERT INTO `building` VALUES ('26', 'BAF_OrdnanceBox');
INSERT INTO `building` VALUES ('27', 'BAF_VehicleBox');
INSERT INTO `building` VALUES ('624', 'BagFenceRound_DZ');
INSERT INTO `building` VALUES ('28', 'Barrack2');
INSERT INTO `building` VALUES ('29', 'Base_WarfareBBarrier10x');
INSERT INTO `building` VALUES ('30', 'Base_WarfareBBarrier10xTall');
INSERT INTO `building` VALUES ('31', 'Base_WarfareBBarrier5x');
INSERT INTO `building` VALUES ('32', 'Base_WarfareBContructionSite');
INSERT INTO `building` VALUES ('625', 'BearTrap_DZ');
INSERT INTO `building` VALUES ('33', 'Bleacher_EP1');
INSERT INTO `building` VALUES ('38', 'BMP2Wreck');
INSERT INTO `building` VALUES ('34', 'BMP2_HQ_CDF_unfolded');
INSERT INTO `building` VALUES ('35', 'BMP2_HQ_INS_unfolded');
INSERT INTO `building` VALUES ('36', 'BMP2_HQ_TK_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('37', 'BMP2_HQ_TK_unfolded_EP1');
INSERT INTO `building` VALUES ('39', 'Body');
INSERT INTO `building` VALUES ('626', 'Body1');
INSERT INTO `building` VALUES ('627', 'Body2');
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
INSERT INTO `building` VALUES ('532', 'CanvasHut_DZ');
INSERT INTO `building` VALUES ('628', 'CD2');
INSERT INTO `building` VALUES ('53', 'CDF_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('54', 'CDF_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('55', 'CDF_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('56', 'CDF_WarfareBBarracks');
INSERT INTO `building` VALUES ('57', 'CDF_WarfareBContructionSite');
INSERT INTO `building` VALUES ('58', 'CDF_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('59', 'CDF_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('60', 'CDF_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('61', 'CDF_WarfareBLightFactory');
INSERT INTO `building` VALUES ('1674', 'CDF_WarfareBMGNest_PK');
INSERT INTO `building` VALUES ('62', 'CDF_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('63', 'CDF_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('629', 'Cher1');
INSERT INTO `building` VALUES ('630', 'Cher2');
INSERT INTO `building` VALUES ('563', 'CinderWallDoorLocked_DZ');
INSERT INTO `building` VALUES ('562', 'CinderWallDoorLocked_DZ_Base');
INSERT INTO `building` VALUES ('565', 'CinderWallDoorSmallLocked_DZ');
INSERT INTO `building` VALUES ('566', 'CinderWallDoorSmall_DZ');
INSERT INTO `building` VALUES ('550', 'CinderWallDoorway_DZ');
INSERT INTO `building` VALUES ('632', 'CinderWallDoorway_Preview_DZ');
INSERT INTO `building` VALUES ('564', 'CinderWallDoor_DZ');
INSERT INTO `building` VALUES ('561', 'CinderWallDoor_DZ_Base');
INSERT INTO `building` VALUES ('569', 'CinderWallHalf_DZ');
INSERT INTO `building` VALUES ('633', 'CinderWallHalf_Preview_DZ');
INSERT INTO `building` VALUES ('551', 'CinderWallSmallDoorway_DZ');
INSERT INTO `building` VALUES ('634', 'CinderWallSmallDoorway_Preview_DZ');
INSERT INTO `building` VALUES ('570', 'CinderWall_DZ');
INSERT INTO `building` VALUES ('631', 'CinderWall_Preview_DZ');
INSERT INTO `building` VALUES ('64', 'Concrete_Wall_EP1');
INSERT INTO `building` VALUES ('67', 'CZBasicWeapons_EP1');
INSERT INTO `building` VALUES ('65', 'CZ_Backpack_EP1');
INSERT INTO `building` VALUES ('66', 'CZ_VestPouch_EP1');
INSERT INTO `building` VALUES ('1649', 'D30_CDF');
INSERT INTO `building` VALUES ('1648', 'D30_Ins');
INSERT INTO `building` VALUES ('1650', 'D30_RU');
INSERT INTO `building` VALUES ('1724', 'D30_TK_EP1');
INSERT INTO `building` VALUES ('1712', 'D30_TK_GUE_EP1');
INSERT INTO `building` VALUES ('1720', 'D30_TK_INS_EP1');
INSERT INTO `building` VALUES ('68', 'datsun01Wreck');
INSERT INTO `building` VALUES ('69', 'datsun02Wreck');
INSERT INTO `building` VALUES ('636', 'DebugBoxPlayer_DZ');
INSERT INTO `building` VALUES ('635', 'DebugBox_DZ');
INSERT INTO `building` VALUES ('537', 'DeerStand_DZ');
INSERT INTO `building` VALUES ('533', 'DesertCamoNet_DZ');
INSERT INTO `building` VALUES ('535', 'DesertLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('70', 'Dirtmount_EP1');
INSERT INTO `building` VALUES ('637', 'DomeTentStorage');
INSERT INTO `building` VALUES ('638', 'Ds');
INSERT INTO `building` VALUES ('639', 'DsCh');
INSERT INTO `building` VALUES ('1643', 'DSHKM_CDF');
INSERT INTO `building` VALUES ('1734', 'DSHKM_CZ_EP1');
INSERT INTO `building` VALUES ('1644', 'DSHKM_Gue');
INSERT INTO `building` VALUES ('1642', 'DSHKM_Ins');
INSERT INTO `building` VALUES ('1675', 'DSHkM_Mini_TriPod');
INSERT INTO `building` VALUES ('1676', 'DSHkM_Mini_TriPod_CDF');
INSERT INTO `building` VALUES ('71', 'DSHkM_Mini_TriPod_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('1706', 'DSHkM_Mini_TriPod_TK_GUE_EP1');
INSERT INTO `building` VALUES ('72', 'DSHkM_Mini_TriPod_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('1715', 'DSHkM_Mini_TriPod_TK_INS_EP1');
INSERT INTO `building` VALUES ('73', 'DSHKM_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('1705', 'DSHKM_TK_GUE_EP1');
INSERT INTO `building` VALUES ('74', 'DSHKM_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('1714', 'DSHKM_TK_INS_EP1');
INSERT INTO `building` VALUES ('648', 'dumruina_mini');
INSERT INTO `building` VALUES ('644', 'dum_olezlina');
INSERT INTO `building` VALUES ('640', 'dum_olez_istan1');
INSERT INTO `building` VALUES ('641', 'dum_olez_istan2');
INSERT INTO `building` VALUES ('642', 'dum_olez_istan2_maly');
INSERT INTO `building` VALUES ('643', 'dum_olez_istan2_maly2');
INSERT INTO `building` VALUES ('645', 'dum_rasovna');
INSERT INTO `building` VALUES ('646', 'dum_zboreny');
INSERT INTO `building` VALUES ('647', 'dum_zboreny_total');
INSERT INTO `building` VALUES ('75', 'EntranceGate_EP1');
INSERT INTO `building` VALUES ('76', 'Explosive');
INSERT INTO `building` VALUES ('529', 'Fence_corrugated_DZ');
INSERT INTO `building` VALUES ('77', 'Fence_corrugated_plate');
INSERT INTO `building` VALUES ('78', 'Fence_Ind');
INSERT INTO `building` VALUES ('79', 'Fence_Ind_long');
INSERT INTO `building` VALUES ('649', 'FireBarrel_DZ');
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
INSERT INTO `building` VALUES ('650', 'FlagCarrierSwiss');
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
INSERT INTO `building` VALUES ('534', 'ForestCamoNet_DZ');
INSERT INTO `building` VALUES ('536', 'ForestLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('113', 'Fort_Barracks_USMC');
INSERT INTO `building` VALUES ('114', 'Fort_Barricade');
INSERT INTO `building` VALUES ('115', 'Fort_Barricade_EP1');
INSERT INTO `building` VALUES ('116', 'Fort_Crate_wood');
INSERT INTO `building` VALUES ('117', 'Fort_EnvelopeBig');
INSERT INTO `building` VALUES ('118', 'Fort_EnvelopeBig_EP1');
INSERT INTO `building` VALUES ('119', 'Fort_EnvelopeSmall');
INSERT INTO `building` VALUES ('120', 'Fort_EnvelopeSmall_EP1');
INSERT INTO `building` VALUES ('1682', 'Fort_Nest_M240');
INSERT INTO `building` VALUES ('121', 'Fort_RazorWire');
INSERT INTO `building` VALUES ('122', 'Fort_StoneWall_EP1');
INSERT INTO `building` VALUES ('526', 'FuelPump_DZ');
INSERT INTO `building` VALUES ('651', 'GarageWoodDoor_Preview_DZ');
INSERT INTO `building` VALUES ('123', 'Garbage_can');
INSERT INTO `building` VALUES ('124', 'Garbage_container');
INSERT INTO `building` VALUES ('525', 'Generator_DZ');
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
INSERT INTO `building` VALUES ('1672', 'GUE_WarfareBMGNest_PK');
INSERT INTO `building` VALUES ('141', 'GUE_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('142', 'GUE_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('145', 'Gunrack1');
INSERT INTO `building` VALUES ('146', 'Gunrack2');
INSERT INTO `building` VALUES ('147', 'GunrackTK_EP1');
INSERT INTO `building` VALUES ('148', 'GunrackUS_EP1');
INSERT INTO `building` VALUES ('652', 'GunRack_DZ');
INSERT INTO `building` VALUES ('149', 'Hanged');
INSERT INTO `building` VALUES ('150', 'Hanged_MD');
INSERT INTO `building` VALUES ('151', 'Haystack');
INSERT INTO `building` VALUES ('152', 'Hedgehog');
INSERT INTO `building` VALUES ('522', 'Hedgehog_DZ');
INSERT INTO `building` VALUES ('153', 'Hedgehog_EP1');
INSERT INTO `building` VALUES ('154', 'HeliH');
INSERT INTO `building` VALUES ('155', 'HeliHCivil');
INSERT INTO `building` VALUES ('156', 'HeliHEmpty');
INSERT INTO `building` VALUES ('157', 'HeliHRescue');
INSERT INTO `building` VALUES ('158', 'Hhedgehog_concrete');
INSERT INTO `building` VALUES ('159', 'Hhedgehog_concreteBig');
INSERT INTO `building` VALUES ('160', 'hiluxWreck');
INSERT INTO `building` VALUES ('161', 'HMMWVWreck');
INSERT INTO `building` VALUES ('653', 'hruzdum');
INSERT INTO `building` VALUES ('162', 'HumpsDirt');
INSERT INTO `building` VALUES ('163', 'IED_placement_BAF');
INSERT INTO `building` VALUES ('1681', 'Igla_AA_pod_East');
INSERT INTO `building` VALUES ('1722', 'Igla_AA_pod_TK_EP1');
INSERT INTO `building` VALUES ('654', 'Ind_SiloMale_ruins');
INSERT INTO `building` VALUES ('655', 'Ind_SiloVelke_01_ruins');
INSERT INTO `building` VALUES ('656', 'Ind_SiloVelke_02_ruins');
INSERT INTO `building` VALUES ('657', 'Ind_Vysypka_ruins');
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
INSERT INTO `building` VALUES ('1673', 'Ins_WarfareBMGNest_PK');
INSERT INTO `building` VALUES ('174', 'INS_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('175', 'INS_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('547', 'ItemTent');
INSERT INTO `building` VALUES ('658', 'KLand_PFS_Town_Sign_Olten_End_Rueml_h');
INSERT INTO `building` VALUES ('1668', 'KORD');
INSERT INTO `building` VALUES ('1669', 'KORD_high');
INSERT INTO `building` VALUES ('176', 'KORD_high_TK_Bag_EP1');
INSERT INTO `building` VALUES ('1726', 'KORD_high_TK_EP1');
INSERT INTO `building` VALUES ('177', 'KORD_high_UN_Bag_EP1');
INSERT INTO `building` VALUES ('1704', 'KORD_high_UN_EP1');
INSERT INTO `building` VALUES ('178', 'KORD_TK_Bag_EP1');
INSERT INTO `building` VALUES ('1725', 'KORD_TK_EP1');
INSERT INTO `building` VALUES ('179', 'KORD_UN_Bag_EP1');
INSERT INTO `building` VALUES ('1703', 'KORD_UN_EP1');
INSERT INTO `building` VALUES ('180', 'LADAWreck');
INSERT INTO `building` VALUES ('659', 'Land_aif_billboard_chuckiemike');
INSERT INTO `building` VALUES ('660', 'Land_aif_billboard_konzert_wallmount');
INSERT INTO `building` VALUES ('661', 'Land_aif_billboard_kulturscheune_wallmount');
INSERT INTO `building` VALUES ('662', 'Land_aif_billboard_perpedes');
INSERT INTO `building` VALUES ('663', 'Land_aif_billboard_typowy_mirek');
INSERT INTO `building` VALUES ('664', 'Land_aif_billboard_typowy_mirek_wallmount');
INSERT INTO `building` VALUES ('665', 'Land_aif_billboard_waldbrand');
INSERT INTO `building` VALUES ('666', 'Land_aif_billboard_zaunbau');
INSERT INTO `building` VALUES ('667', 'Land_aif_heavyf');
INSERT INTO `building` VALUES ('668', 'Land_aif_hlaska');
INSERT INTO `building` VALUES ('669', 'Land_aif_hotel');
INSERT INTO `building` VALUES ('670', 'Land_aif_hotel_bio');
INSERT INTO `building` VALUES ('671', 'Land_aif_kasarna');
INSERT INTO `building` VALUES ('672', 'Land_aif_kasarna_brana');
INSERT INTO `building` VALUES ('673', 'Land_aif_kasarna_prujezd');
INSERT INTO `building` VALUES ('674', 'Land_aif_kasarna_rohova');
INSERT INTO `building` VALUES ('675', 'Land_aif_ryb_domek');
INSERT INTO `building` VALUES ('676', 'Land_aif_sara_domek05');
INSERT INTO `building` VALUES ('677', 'Land_aif_skola');
INSERT INTO `building` VALUES ('678', 'Land_aif_strazni_vez');
INSERT INTO `building` VALUES ('679', 'Land_aif_tovarna1');
INSERT INTO `building` VALUES ('680', 'Land_aif_watertower1');
INSERT INTO `building` VALUES ('681', 'Land_aif_zluty_statek_in');
INSERT INTO `building` VALUES ('182', 'Land_Antenna');
INSERT INTO `building` VALUES ('682', 'LAND_ASC_runway_Bluelight');
INSERT INTO `building` VALUES ('683', 'LAND_ASC_runway_Yellowlight');
INSERT INTO `building` VALUES ('684', 'LAND_ASC_Wall_Lamp_New');
INSERT INTO `building` VALUES ('685', 'LAND_ASC_Wall_Lamp_Old');
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
INSERT INTO `building` VALUES ('686', 'Land_bus_wreck');
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
INSERT INTO `building` VALUES ('554', 'Land_DZE_GarageWoodDoor');
INSERT INTO `building` VALUES ('555', 'Land_DZE_GarageWoodDoorLocked');
INSERT INTO `building` VALUES ('557', 'Land_DZE_LargeWoodDoor');
INSERT INTO `building` VALUES ('558', 'Land_DZE_LargeWoodDoorLocked');
INSERT INTO `building` VALUES ('553', 'Land_DZE_WoodDoor');
INSERT INTO `building` VALUES ('549', 'Land_DZE_WoodDoorLocked');
INSERT INTO `building` VALUES ('560', 'Land_DZE_WoodDoorLocked_Base');
INSERT INTO `building` VALUES ('559', 'Land_DZE_WoodDoor_Base');
INSERT INTO `building` VALUES ('235', 'Land_Fire');
INSERT INTO `building` VALUES ('236', 'Land_Fire_barrel');
INSERT INTO `building` VALUES ('237', 'Land_Fire_barrel_burning');
INSERT INTO `building` VALUES ('238', 'Land_Fire_burning');
INSERT INTO `building` VALUES ('687', 'Land_Fire_DZ');
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
INSERT INTO `building` VALUES ('530', 'Land_HBarrier1_DZ');
INSERT INTO `building` VALUES ('257', 'Land_HBarrier3');
INSERT INTO `building` VALUES ('688', 'Land_HBarrier3_DZ');
INSERT INTO `building` VALUES ('258', 'Land_HBarrier5');
INSERT INTO `building` VALUES ('689', 'Land_HBarrier5_DZ');
INSERT INTO `building` VALUES ('255', 'Land_HBarrier_large');
INSERT INTO `building` VALUES ('690', 'Land_hilux_wreckT');
INSERT INTO `building` VALUES ('259', 'Land_Hlidac_budka');
INSERT INTO `building` VALUES ('260', 'Land_Hlidac_Budka_EP1');
INSERT INTO `building` VALUES ('691', 'land_ibr_hangar');
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
INSERT INTO `building` VALUES ('692', 'Land_KPFS_Town_Sign_Abach_End_Seltisb_h');
INSERT INTO `building` VALUES ('693', 'Land_KPFS_Town_Sign_Abach_End_Wasen_h');
INSERT INTO `building` VALUES ('694', 'Land_KPFS_Town_Sign_Abach_Seew_n');
INSERT INTO `building` VALUES ('695', 'Land_KPFS_Town_Sign_Abach_Start_h');
INSERT INTO `building` VALUES ('696', 'Land_KPFS_Town_Sign_Brienz_Giswil_n');
INSERT INTO `building` VALUES ('697', 'Land_KPFS_Town_Sign_Brienz_Goldwil_n');
INSERT INTO `building` VALUES ('698', 'Land_KPFS_Town_Sign_Bruderh_Chatz_n');
INSERT INTO `building` VALUES ('699', 'Land_KPFS_Town_Sign_Bruderh_Hirsegg_n');
INSERT INTO `building` VALUES ('700', 'Land_KPFS_Town_Sign_Bubend_Verzweigung_n');
INSERT INTO `building` VALUES ('701', 'Land_KPFS_Town_Sign_Buckten_Verzweigung_n');
INSERT INTO `building` VALUES ('702', 'Land_KPFS_Town_Sign_Buckten_Worb_n');
INSERT INTO `building` VALUES ('703', 'Land_KPFS_Town_Sign_Bunig_Malters_n');
INSERT INTO `building` VALUES ('704', 'Land_KPFS_Town_Sign_Bunig_Verzweigung_n');
INSERT INTO `building` VALUES ('705', 'Land_KPFS_Town_Sign_Chatz_End_Muen_h');
INSERT INTO `building` VALUES ('706', 'Land_KPFS_Town_Sign_Chatz_End_Siss_h');
INSERT INTO `building` VALUES ('707', 'Land_KPFS_Town_Sign_Chatz_Start_h');
INSERT INTO `building` VALUES ('708', 'Land_KPFS_Town_Sign_Eggwil_Schangen_n');
INSERT INTO `building` VALUES ('709', 'Land_KPFS_Town_Sign_Eggwil_Signau_n');
INSERT INTO `building` VALUES ('710', 'Land_KPFS_Town_Sign_Emmen_End_Luzern_h');
INSERT INTO `building` VALUES ('711', 'Land_KPFS_Town_Sign_Emmen_Start_h');
INSERT INTO `building` VALUES ('712', 'Land_KPFS_Town_Sign_Farnen_End_Liest_h');
INSERT INTO `building` VALUES ('713', 'Land_KPFS_Town_Sign_Farnen_End_Sorenb_h');
INSERT INTO `building` VALUES ('714', 'Land_KPFS_Town_Sign_Farnen_Start_h');
INSERT INTO `building` VALUES ('715', 'Land_KPFS_Town_Sign_Freid_Lenzb_n');
INSERT INTO `building` VALUES ('716', 'Land_KPFS_Town_Sign_Freid_Olten_n');
INSERT INTO `building` VALUES ('717', 'Land_KPFS_Town_Sign_Giswil_Brienz_n');
INSERT INTO `building` VALUES ('718', 'Land_KPFS_Town_Sign_Giswil_Sorenb_n');
INSERT INTO `building` VALUES ('719', 'Land_KPFS_Town_Sign_Goldwil_Brienz_n');
INSERT INTO `building` VALUES ('720', 'Land_KPFS_Town_Sign_Hasle_Unterdorf_n');
INSERT INTO `building` VALUES ('721', 'Land_KPFS_Town_Sign_Hasle_Verzweigung_n');
INSERT INTO `building` VALUES ('722', 'Land_KPFS_Town_Sign_Hindelb_End_Ittingen_h');
INSERT INTO `building` VALUES ('723', 'Land_KPFS_Town_Sign_Hindelb_End_Unterd_h');
INSERT INTO `building` VALUES ('724', 'Land_KPFS_Town_Sign_Hindelb_Start_h');
INSERT INTO `building` VALUES ('725', 'Land_KPFS_Town_Sign_Hirsegg_Bruderholz_n');
INSERT INTO `building` VALUES ('726', 'Land_KPFS_Town_Sign_Hirsegg_Truebs_n');
INSERT INTO `building` VALUES ('727', 'Land_KPFS_Town_Sign_Hirsegg_Verzweigung_n');
INSERT INTO `building` VALUES ('728', 'Land_KPFS_Town_Sign_Horw_Start_h');
INSERT INTO `building` VALUES ('729', 'Land_KPFS_Town_Sign_Hutw_End_Oberd_h');
INSERT INTO `building` VALUES ('730', 'Land_KPFS_Town_Sign_Hutw_End_Seltisb_h');
INSERT INTO `building` VALUES ('731', 'Land_KPFS_Town_Sign_Hutw_Start_h');
INSERT INTO `building` VALUES ('732', 'Land_KPFS_Town_Sign_Ittingen_End_Hindelb_h');
INSERT INTO `building` VALUES ('733', 'Land_KPFS_Town_Sign_Ittingen_End_Munsingen_h');
INSERT INTO `building` VALUES ('734', 'Land_KPFS_Town_Sign_Ittingen_Start_h');
INSERT INTO `building` VALUES ('735', 'Land_KPFS_Town_Sign_ittingen_worb_n');
INSERT INTO `building` VALUES ('736', 'Land_KPFS_Town_Sign_KleineEgg_Neuew_n');
INSERT INTO `building` VALUES ('737', 'Land_KPFS_Town_Sign_KleineEgg_Trueb_n');
INSERT INTO `building` VALUES ('738', 'Land_KPFS_Town_Sign_Lausen_End_Verzweigung_h');
INSERT INTO `building` VALUES ('739', 'Land_KPFS_Town_Sign_Lausen_Start_h');
INSERT INTO `building` VALUES ('743', 'Land_KPFS_Town_Sign_Lenzburg_Start_h');
INSERT INTO `building` VALUES ('740', 'Land_KPFS_Town_Sign_Lenzb_End_Olten_h');
INSERT INTO `building` VALUES ('741', 'Land_KPFS_Town_Sign_Lenzb_Freid_n');
INSERT INTO `building` VALUES ('742', 'Land_KPFS_Town_Sign_Lenzb_Rueml_n');
INSERT INTO `building` VALUES ('744', 'Land_KPFS_Town_Sign_Liest_End_Farnen_h');
INSERT INTO `building` VALUES ('745', 'Land_KPFS_Town_Sign_Liest_End_Sissach_h');
INSERT INTO `building` VALUES ('746', 'Land_KPFS_Town_Sign_Liest_Siss_n');
INSERT INTO `building` VALUES ('747', 'Land_KPFS_Town_Sign_Liest_Start_h');
INSERT INTO `building` VALUES ('748', 'Land_KPFS_Town_Sign_Luzern_End_Emmen_h');
INSERT INTO `building` VALUES ('749', 'Land_KPFS_Town_Sign_Luzern_End_Horw_h');
INSERT INTO `building` VALUES ('750', 'Land_KPFS_Town_Sign_Luzern_End_Wolhusen_h');
INSERT INTO `building` VALUES ('751', 'Land_KPFS_Town_Sign_Luzern_Malters_n');
INSERT INTO `building` VALUES ('752', 'Land_KPFS_Town_Sign_Luzern_Start_h');
INSERT INTO `building` VALUES ('753', 'Land_KPFS_Town_Sign_Magden_Nic_n');
INSERT INTO `building` VALUES ('754', 'Land_KPFS_Town_Sign_Magden_Olten_n');
INSERT INTO `building` VALUES ('755', 'Land_KPFS_Town_Sign_Malters_Bunig_n');
INSERT INTO `building` VALUES ('756', 'Land_KPFS_Town_Sign_Malters_Luzern_n');
INSERT INTO `building` VALUES ('757', 'Land_KPFS_Town_Sign_Meggen_End_Horw_h');
INSERT INTO `building` VALUES ('758', 'Land_KPFS_Town_Sign_Meggen_End_Verzweigung_h');
INSERT INTO `building` VALUES ('759', 'Land_KPFS_Town_Sign_Meggen_Start_h');
INSERT INTO `building` VALUES ('760', 'Land_KPFS_Town_Sign_Meggen_Verzweigung_n');
INSERT INTO `building` VALUES ('761', 'Land_KPFS_Town_Sign_Muen_End_Chatz_h');
INSERT INTO `building` VALUES ('762', 'Land_KPFS_Town_Sign_Muen_End_Mutt_h');
INSERT INTO `building` VALUES ('763', 'Land_KPFS_Town_Sign_Muen_End_Signau_h');
INSERT INTO `building` VALUES ('764', 'Land_KPFS_Town_Sign_Muen_Mutt_n');
INSERT INTO `building` VALUES ('765', 'Land_KPFS_Town_Sign_Muen_Start_h');
INSERT INTO `building` VALUES ('766', 'Land_KPFS_Town_Sign_Munsingen_End_Ittingen_h');
INSERT INTO `building` VALUES ('767', 'Land_KPFS_Town_Sign_Munsingen_End_Signau_h');
INSERT INTO `building` VALUES ('768', 'Land_KPFS_Town_Sign_Munsingen_End_Worb_2_h');
INSERT INTO `building` VALUES ('769', 'Land_KPFS_Town_Sign_Munsingen_End_Worb_h');
INSERT INTO `building` VALUES ('770', 'Land_KPFS_Town_Sign_Munsingen_Start_h');
INSERT INTO `building` VALUES ('771', 'Land_KPFS_Town_Sign_Mutt_End_Muen_h');
INSERT INTO `building` VALUES ('772', 'Land_KPFS_Town_Sign_Mutt_End_Oberd_h');
INSERT INTO `building` VALUES ('773', 'Land_KPFS_Town_Sign_Mutt_End_Unterd_h');
INSERT INTO `building` VALUES ('774', 'Land_KPFS_Town_Sign_Mutt_Oberd_n');
INSERT INTO `building` VALUES ('775', 'Land_KPFS_Town_Sign_Mutt_Start_h');
INSERT INTO `building` VALUES ('776', 'Land_KPFS_Town_Sign_NeueW_KleineEgg_n');
INSERT INTO `building` VALUES ('777', 'Land_KPFS_Town_Sign_NeueW_Seltisb_n');
INSERT INTO `building` VALUES ('778', 'Land_KPFS_Town_Sign_NeueW_Verzweigung_n');
INSERT INTO `building` VALUES ('779', 'Land_KPFS_Town_Sign_Olten_End_Lenz_h');
INSERT INTO `building` VALUES ('780', 'Land_KPFS_Town_Sign_Olten_Magden_n');
INSERT INTO `building` VALUES ('781', 'Land_KPFS_Town_Sign_Olten_Start_h');
INSERT INTO `building` VALUES ('782', 'Land_KPFS_Town_Sign_Romoos_Wolhusen_n');
INSERT INTO `building` VALUES ('786', 'Land_KPFS_Town_Sign_Ruemlingen_Start_h');
INSERT INTO `building` VALUES ('783', 'Land_KPFS_Town_Sign_Rueml_End_Olten_h');
INSERT INTO `building` VALUES ('784', 'Land_KPFS_Town_Sign_Rueml_End_Verzweigung_h');
INSERT INTO `building` VALUES ('785', 'Land_KPFS_Town_Sign_Rueml_Lenzb_n');
INSERT INTO `building` VALUES ('787', 'Land_KPFS_Town_Sign_Sachseln_Emmen_n');
INSERT INTO `building` VALUES ('788', 'Land_KPFS_Town_Sign_Sachseln_Verzweigung_n');
INSERT INTO `building` VALUES ('789', 'Land_KPFS_Town_Sign_Schangen_End_Verzweigung_h');
INSERT INTO `building` VALUES ('790', 'Land_KPFS_Town_Sign_Schangen_Nic_n');
INSERT INTO `building` VALUES ('791', 'Land_KPFS_Town_Sign_Schangen_Start_h');
INSERT INTO `building` VALUES ('792', 'Land_KPFS_Town_Sign_Seew_Abach_n');
INSERT INTO `building` VALUES ('793', 'Land_KPFS_Town_Sign_Seltisb_End_Abach_h');
INSERT INTO `building` VALUES ('794', 'Land_KPFS_Town_Sign_Seltisb_End_Huttw_h');
INSERT INTO `building` VALUES ('795', 'Land_KPFS_Town_Sign_Seltisb_Neuew_n');
INSERT INTO `building` VALUES ('796', 'Land_KPFS_Town_Sign_Seltisb_Seltish_n');
INSERT INTO `building` VALUES ('797', 'Land_KPFS_Town_Sign_Seltisb_Start_h');
INSERT INTO `building` VALUES ('798', 'Land_KPFS_Town_Sign_Seltish_Seltisb_n');
INSERT INTO `building` VALUES ('799', 'Land_KPFS_Town_Sign_Signau_Eggwil_n');
INSERT INTO `building` VALUES ('800', 'Land_KPFS_Town_Sign_Signau_End_Muen_h');
INSERT INTO `building` VALUES ('801', 'Land_KPFS_Town_Sign_Signau_End_Munsingen_h');
INSERT INTO `building` VALUES ('802', 'Land_KPFS_Town_Sign_Signau_Start_h');
INSERT INTO `building` VALUES ('805', 'Land_KPFS_Town_Sign_Sissach_End_Chatz_h');
INSERT INTO `building` VALUES ('806', 'Land_KPFS_Town_Sign_Sissach_End_Liest_h');
INSERT INTO `building` VALUES ('803', 'Land_KPFS_Town_Sign_Siss_Liest_n');
INSERT INTO `building` VALUES ('804', 'Land_KPFS_Town_Sign_Siss_Start_h');
INSERT INTO `building` VALUES ('807', 'Land_KPFS_Town_Sign_Sorenb_End_Farnen_h');
INSERT INTO `building` VALUES ('808', 'Land_KPFS_Town_Sign_Sorenb_End_Giswil_h');
INSERT INTO `building` VALUES ('809', 'Land_KPFS_Town_Sign_Sorenb_Start_h');
INSERT INTO `building` VALUES ('810', 'Land_KPFS_Town_Sign_Unterd_End_Hindelb_h');
INSERT INTO `building` VALUES ('811', 'Land_KPFS_Town_Sign_Unterd_End_Mutt_h');
INSERT INTO `building` VALUES ('812', 'Land_KPFS_Town_Sign_Unterd_Hasle_n');
INSERT INTO `building` VALUES ('813', 'Land_KPFS_Town_Sign_Unterd_Start_h');
INSERT INTO `building` VALUES ('814', 'Land_KPFS_Town_Sign_Waffenplatz_h');
INSERT INTO `building` VALUES ('815', 'Land_KPFS_Town_Sign_Wasen_End_Abach_h');
INSERT INTO `building` VALUES ('816', 'Land_KPFS_Town_Sign_Wasen_End_Lenzb_h');
INSERT INTO `building` VALUES ('817', 'Land_KPFS_Town_Sign_Wasen_Start_h');
INSERT INTO `building` VALUES ('819', 'Land_KPFS_Town_Sign_Wolhusen_Emmen_n');
INSERT INTO `building` VALUES ('820', 'Land_KPFS_Town_Sign_Wolhusen_End_Liest_h');
INSERT INTO `building` VALUES ('821', 'Land_KPFS_Town_Sign_Wolhusen_End_Luzern_h');
INSERT INTO `building` VALUES ('822', 'Land_KPFS_Town_Sign_Wolhusen_Romoos_n');
INSERT INTO `building` VALUES ('818', 'Land_KPFS_Town_Sign_Wolh_Start_h');
INSERT INTO `building` VALUES ('823', 'Land_KPFS_Town_Sign_Worb_End_Munsingen_2_h');
INSERT INTO `building` VALUES ('824', 'Land_KPFS_Town_Sign_Worb_End_Munsingen_h');
INSERT INTO `building` VALUES ('825', 'Land_KPFS_Town_Sign_worb_ittingen_n');
INSERT INTO `building` VALUES ('826', 'Land_KPFS_Town_Sign_Worb_Start_h');
INSERT INTO `building` VALUES ('827', 'Land_KPFS_Town_Sign_Worb_Verzweigung_n');
INSERT INTO `building` VALUES ('828', 'Land_KPFS_Way_Sign_Abach_h_links');
INSERT INTO `building` VALUES ('829', 'Land_KPFS_Way_Sign_Abach_h_rechts');
INSERT INTO `building` VALUES ('830', 'Land_KPFS_Way_Sign_Altst_h_links');
INSERT INTO `building` VALUES ('831', 'Land_KPFS_Way_Sign_Altst_h_rechts');
INSERT INTO `building` VALUES ('832', 'Land_KPFS_Way_Sign_Bubend_n');
INSERT INTO `building` VALUES ('833', 'Land_KPFS_Way_Sign_Chatz_h_links');
INSERT INTO `building` VALUES ('834', 'Land_KPFS_Way_Sign_Chatz_h_rechts');
INSERT INTO `building` VALUES ('835', 'Land_KPFS_Way_Sign_Eggwil_n');
INSERT INTO `building` VALUES ('836', 'Land_KPFS_Way_Sign_Emmen_h_links');
INSERT INTO `building` VALUES ('837', 'Land_KPFS_Way_Sign_Emmen_h_rechts');
INSERT INTO `building` VALUES ('838', 'Land_KPFS_Way_Sign_Flugh_links');
INSERT INTO `building` VALUES ('839', 'Land_KPFS_Way_Sign_Flugh_rechts');
INSERT INTO `building` VALUES ('840', 'Land_KPFS_Way_Sign_Freid_n');
INSERT INTO `building` VALUES ('841', 'Land_KPFS_Way_Sign_Hafen_links');
INSERT INTO `building` VALUES ('842', 'Land_KPFS_Way_Sign_Hafen_rechts');
INSERT INTO `building` VALUES ('843', 'Land_KPFS_Way_Sign_Hirsegg_n');
INSERT INTO `building` VALUES ('844', 'Land_KPFS_Way_Sign_Horw_h_links');
INSERT INTO `building` VALUES ('845', 'Land_KPFS_Way_Sign_Horw_h_rechts');
INSERT INTO `building` VALUES ('846', 'Land_KPFS_Way_Sign_Huttw_h_links');
INSERT INTO `building` VALUES ('847', 'Land_KPFS_Way_Sign_Huttw_h_rechts');
INSERT INTO `building` VALUES ('848', 'Land_KPFS_Way_Sign_Ittingen_h_links');
INSERT INTO `building` VALUES ('849', 'Land_KPFS_Way_Sign_Ittingen_h_rechts');
INSERT INTO `building` VALUES ('850', 'Land_KPFS_Way_Sign_kurhotel_n');
INSERT INTO `building` VALUES ('851', 'Land_KPFS_Way_Sign_Lausen_h_links');
INSERT INTO `building` VALUES ('852', 'Land_KPFS_Way_Sign_Lausen_h_rechts');
INSERT INTO `building` VALUES ('853', 'Land_KPFS_Way_Sign_Lenz_h_links');
INSERT INTO `building` VALUES ('854', 'Land_KPFS_Way_Sign_Lenz_h_rechts');
INSERT INTO `building` VALUES ('855', 'Land_KPFS_Way_Sign_Liest_h_links');
INSERT INTO `building` VALUES ('856', 'Land_KPFS_Way_Sign_Liest_h_rechts');
INSERT INTO `building` VALUES ('857', 'Land_KPFS_Way_Sign_Luzern_h_links');
INSERT INTO `building` VALUES ('858', 'Land_KPFS_Way_Sign_Luzern_h_rechts');
INSERT INTO `building` VALUES ('859', 'Land_KPFS_Way_Sign_Magden_n');
INSERT INTO `building` VALUES ('860', 'Land_KPFS_Way_Sign_Meggen_h_links');
INSERT INTO `building` VALUES ('861', 'Land_KPFS_Way_Sign_Meggen_h_rechts');
INSERT INTO `building` VALUES ('862', 'Land_KPFS_Way_Sign_Muen_h_links');
INSERT INTO `building` VALUES ('863', 'Land_KPFS_Way_Sign_Muen_h_rechts');
INSERT INTO `building` VALUES ('864', 'Land_KPFS_Way_Sign_Munsingen_h_links');
INSERT INTO `building` VALUES ('865', 'Land_KPFS_Way_Sign_Munsingen_h_rechts');
INSERT INTO `building` VALUES ('866', 'Land_KPFS_Way_Sign_Mutt_h_links');
INSERT INTO `building` VALUES ('867', 'Land_KPFS_Way_Sign_Mutt_h_rechts');
INSERT INTO `building` VALUES ('868', 'Land_KPFS_Way_Sign_NeueW_h_links');
INSERT INTO `building` VALUES ('869', 'Land_KPFS_Way_Sign_NeueW_h_rechts');
INSERT INTO `building` VALUES ('870', 'Land_KPFS_Way_Sign_NeueW_n');
INSERT INTO `building` VALUES ('871', 'Land_KPFS_Way_Sign_Oberd_h_links');
INSERT INTO `building` VALUES ('872', 'Land_KPFS_Way_Sign_Oberd_h_rechts');
INSERT INTO `building` VALUES ('873', 'Land_KPFS_Way_Sign_Olten_h_links');
INSERT INTO `building` VALUES ('874', 'Land_KPFS_Way_Sign_Olten_h_rechts');
INSERT INTO `building` VALUES ('875', 'Land_KPFS_Way_Sign_Romoos_n');
INSERT INTO `building` VALUES ('876', 'Land_KPFS_Way_Sign_Rueml_h_links');
INSERT INTO `building` VALUES ('877', 'Land_KPFS_Way_Sign_Rueml_h_rechts');
INSERT INTO `building` VALUES ('878', 'Land_KPFS_Way_Sign_Sachseln_n');
INSERT INTO `building` VALUES ('879', 'Land_KPFS_Way_Sign_Schangen_h_links');
INSERT INTO `building` VALUES ('880', 'Land_KPFS_Way_Sign_Schangen_h_rechts');
INSERT INTO `building` VALUES ('881', 'Land_KPFS_Way_Sign_Schangen_n');
INSERT INTO `building` VALUES ('882', 'Land_KPFS_Way_Sign_Seltisb_h_links');
INSERT INTO `building` VALUES ('883', 'Land_KPFS_Way_Sign_Seltisb_h_rechts');
INSERT INTO `building` VALUES ('884', 'Land_KPFS_Way_Sign_Signau_h_links');
INSERT INTO `building` VALUES ('885', 'Land_KPFS_Way_Sign_Signau_h_rechts');
INSERT INTO `building` VALUES ('886', 'Land_KPFS_Way_Sign_Siss_h_links');
INSERT INTO `building` VALUES ('887', 'Land_KPFS_Way_Sign_Siss_h_rechts');
INSERT INTO `building` VALUES ('891', 'Land_KPFS_Way_Sign_Truebs_n');
INSERT INTO `building` VALUES ('888', 'Land_KPFS_Way_Sign_Trueb_h_links');
INSERT INTO `building` VALUES ('889', 'Land_KPFS_Way_Sign_Trueb_h_rechts');
INSERT INTO `building` VALUES ('890', 'Land_KPFS_Way_Sign_Trueb_n');
INSERT INTO `building` VALUES ('894', 'Land_KPFS_Way_Sign_Unterdorf_n');
INSERT INTO `building` VALUES ('892', 'Land_KPFS_Way_Sign_Unterd_h_links');
INSERT INTO `building` VALUES ('893', 'Land_KPFS_Way_Sign_Unterd_h_rechts');
INSERT INTO `building` VALUES ('895', 'Land_KPFS_Way_Sign_Wasen_h_links');
INSERT INTO `building` VALUES ('896', 'Land_KPFS_Way_Sign_Wasen_h_rechts');
INSERT INTO `building` VALUES ('897', 'Land_KPFS_Way_Sign_Wasen_n');
INSERT INTO `building` VALUES ('900', 'Land_KPFS_Way_Sign_Wolhusen_n');
INSERT INTO `building` VALUES ('898', 'Land_KPFS_Way_Sign_Wolh_h_links');
INSERT INTO `building` VALUES ('899', 'Land_KPFS_Way_Sign_Wolh_h_rechts');
INSERT INTO `building` VALUES ('901', 'Land_KPFS_Way_Sign_Worb_h_links');
INSERT INTO `building` VALUES ('902', 'Land_KPFS_Way_Sign_Worb_h_rechts');
INSERT INTO `building` VALUES ('903', 'Land_KPFS_Way_Sign_Worb_n');
INSERT INTO `building` VALUES ('272', 'Land_ladder');
INSERT INTO `building` VALUES ('275', 'Land_ladderEP1');
INSERT INTO `building` VALUES ('273', 'Land_ladder_half');
INSERT INTO `building` VALUES ('274', 'Land_ladder_half_EP1');
INSERT INTO `building` VALUES ('276', 'Land_loco_742_blue');
INSERT INTO `building` VALUES ('277', 'Land_loco_742_red');
INSERT INTO `building` VALUES ('278', 'Land_Market_shelter_EP1');
INSERT INTO `building` VALUES ('279', 'Land_Market_stalls_01_EP1');
INSERT INTO `building` VALUES ('280', 'Land_Market_stalls_02_EP1');
INSERT INTO `building` VALUES ('904', 'Land_MBG_ATC_Base');
INSERT INTO `building` VALUES ('905', 'Land_MBG_ATC_Segment');
INSERT INTO `building` VALUES ('906', 'Land_MBG_ATC_Tower');
INSERT INTO `building` VALUES ('907', 'Land_MBG_Beach_Chair_1');
INSERT INTO `building` VALUES ('908', 'Land_MBG_Beach_Chair_2');
INSERT INTO `building` VALUES ('909', 'Land_MBG_Beach_Chair_3');
INSERT INTO `building` VALUES ('910', 'Land_MBG_EdgeLight_Blue');
INSERT INTO `building` VALUES ('911', 'Land_MBG_EdgeLight_Green');
INSERT INTO `building` VALUES ('912', 'Land_MBG_EdgeLight_White');
INSERT INTO `building` VALUES ('913', 'Land_MBG_Garage_Single_A');
INSERT INTO `building` VALUES ('914', 'Land_MBG_Garage_Single_B');
INSERT INTO `building` VALUES ('915', 'Land_MBG_Garage_Single_C');
INSERT INTO `building` VALUES ('916', 'Land_MBG_Garage_Single_D');
INSERT INTO `building` VALUES ('917', 'Land_MBG_GER_ESTATE_1');
INSERT INTO `building` VALUES ('918', 'Land_MBG_GER_ESTATE_2');
INSERT INTO `building` VALUES ('919', 'Land_MBG_GER_HUS_1');
INSERT INTO `building` VALUES ('920', 'Land_MBG_GER_HUS_2');
INSERT INTO `building` VALUES ('921', 'Land_MBG_GER_HUS_3');
INSERT INTO `building` VALUES ('922', 'Land_MBG_GER_HUS_4');
INSERT INTO `building` VALUES ('923', 'Land_MBG_GER_PUB_1');
INSERT INTO `building` VALUES ('924', 'Land_MBG_GER_PUB_2');
INSERT INTO `building` VALUES ('925', 'Land_MBG_GER_RHUS_1');
INSERT INTO `building` VALUES ('926', 'Land_MBG_GER_RHUS_2');
INSERT INTO `building` VALUES ('927', 'Land_MBG_GER_RHUS_3');
INSERT INTO `building` VALUES ('928', 'Land_MBG_GER_RHUS_4');
INSERT INTO `building` VALUES ('929', 'Land_MBG_GER_RHUS_5');
INSERT INTO `building` VALUES ('930', 'Land_MBG_GER_SUPERMARKET_1');
INSERT INTO `building` VALUES ('931', 'Land_MBG_GER_SUPERMARKET_2');
INSERT INTO `building` VALUES ('932', 'Land_MBG_GER_SUPERMARKET_3');
INSERT INTO `building` VALUES ('933', 'Land_MBG_GER_SUPERMARKET_4');
INSERT INTO `building` VALUES ('934', 'Land_MBG_HeavyShelter');
INSERT INTO `building` VALUES ('935', 'Land_MBG_MiddleLight_Blue');
INSERT INTO `building` VALUES ('936', 'Land_MBG_MiddleLight_Green');
INSERT INTO `building` VALUES ('937', 'Land_MBG_MiddleLight_Red');
INSERT INTO `building` VALUES ('938', 'Land_MBG_MiddleLight_White');
INSERT INTO `building` VALUES ('939', 'Land_MBG_MiddleLight_Yellow');
INSERT INTO `building` VALUES ('940', 'Land_MBG_NavigLight_Red');
INSERT INTO `building` VALUES ('941', 'Land_MBG_Outdoortable');
INSERT INTO `building` VALUES ('942', 'Land_MBG_Shoothouse_1');
INSERT INTO `building` VALUES ('943', 'Land_MBG_Woodplanks');
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
INSERT INTO `building` VALUES ('944', 'Land_sedan_wreck');
INSERT INTO `building` VALUES ('945', 'Land_sedan_wreck2');
INSERT INTO `building` VALUES ('308', 'Land_Shed_wooden');
INSERT INTO `building` VALUES ('309', 'Land_Shooting_range');
INSERT INTO `building` VALUES ('310', 'Land_stand_meat_EP1');
INSERT INTO `building` VALUES ('311', 'Land_stand_small_EP1');
INSERT INTO `building` VALUES ('312', 'Land_stand_waterl_EP1');
INSERT INTO `building` VALUES ('313', 'Land_sunshade_EP1');
INSERT INTO `building` VALUES ('314', 'Land_tent_east');
INSERT INTO `building` VALUES ('315', 'Land_tires_EP1');
INSERT INTO `building` VALUES ('316', 'Land_Toilet');
INSERT INTO `building` VALUES ('946', 'Land_tractor_wreck');
INSERT INTO `building` VALUES ('947', 'Land_tractor_wreck2');
INSERT INTO `building` VALUES ('317', 'Land_transport_cart_EP1');
INSERT INTO `building` VALUES ('318', 'Land_transport_crates_EP1');
INSERT INTO `building` VALUES ('319', 'Land_transport_kiosk_EP1');
INSERT INTO `building` VALUES ('948', 'Land_van_wreck1');
INSERT INTO `building` VALUES ('949', 'Land_van_wreck2');
INSERT INTO `building` VALUES ('320', 'Land_wagon_box');
INSERT INTO `building` VALUES ('321', 'Land_wagon_flat');
INSERT INTO `building` VALUES ('322', 'Land_wagon_tanker');
INSERT INTO `building` VALUES ('323', 'Land_WoodenRamp');
INSERT INTO `building` VALUES ('950', 'Land_zluty_statek_in');
INSERT INTO `building` VALUES ('951', 'LargeWoodDoor_Preview_DZ');
INSERT INTO `building` VALUES ('324', 'LAV25_HQ_unfolded');
INSERT INTO `building` VALUES ('952', 'LightPole_DZ');
INSERT INTO `building` VALUES ('325', 'LocalBasicAmmunitionBox');
INSERT INTO `building` VALUES ('326', 'LocalBasicWeaponsBox');
INSERT INTO `building` VALUES ('953', 'LockboxStorage');
INSERT INTO `building` VALUES ('954', 'LockboxStorageLocked');
INSERT INTO `building` VALUES ('327', 'Loudspeaker');
INSERT INTO `building` VALUES ('328', 'Loudspeakers_EP1');
INSERT INTO `building` VALUES ('329', 'M1130_HQ_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('330', 'M1130_HQ_unfolded_EP1');
INSERT INTO `building` VALUES ('1641', 'M119');
INSERT INTO `building` VALUES ('1695', 'M119_US_EP1');
INSERT INTO `building` VALUES ('1683', 'M240Nest_DZ');
INSERT INTO `building` VALUES ('1656', 'M252');
INSERT INTO `building` VALUES ('331', 'M252_US_Bag_EP1');
INSERT INTO `building` VALUES ('1697', 'M252_US_EP1');
INSERT INTO `building` VALUES ('1677', 'M2HD_mini_TriPod');
INSERT INTO `building` VALUES ('332', 'M2HD_mini_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('1694', 'M2HD_mini_TriPod_US_EP1');
INSERT INTO `building` VALUES ('1640', 'M2StaticMG');
INSERT INTO `building` VALUES ('333', 'M2StaticMG_US_Bag_EP1');
INSERT INTO `building` VALUES ('1693', 'M2StaticMG_US_EP1');
INSERT INTO `building` VALUES ('1026', 'MAP_AFbarabizna');
INSERT INTO `building` VALUES ('1027', 'MAP_AFbarabizna_ruins');
INSERT INTO `building` VALUES ('1028', 'MAP_afdum_mesto2');
INSERT INTO `building` VALUES ('1030', 'MAP_afdum_mesto2L');
INSERT INTO `building` VALUES ('1031', 'MAP_AFDum_mesto2L_ruins');
INSERT INTO `building` VALUES ('1029', 'MAP_AFDum_mesto2_ruins');
INSERT INTO `building` VALUES ('1032', 'MAP_afdum_mesto3');
INSERT INTO `building` VALUES ('1033', 'MAP_AFDum_mesto3_ruins');
INSERT INTO `building` VALUES ('1034', 'MAP_afhospoda_mesto');
INSERT INTO `building` VALUES ('1035', 'MAP_AFHospoda_mesto_ruins');
INSERT INTO `building` VALUES ('955', 'MAP_A_BuildingWIP');
INSERT INTO `building` VALUES ('956', 'MAP_A_BuildingWIP_ruins');
INSERT INTO `building` VALUES ('957', 'MAP_A_Castle_Bastion');
INSERT INTO `building` VALUES ('958', 'MAP_A_Castle_Bastion_ruins');
INSERT INTO `building` VALUES ('959', 'MAP_A_Castle_Bergfrit');
INSERT INTO `building` VALUES ('960', 'MAP_A_Castle_Bergfrit_dam');
INSERT INTO `building` VALUES ('961', 'MAP_A_Castle_Bergfrit_ruins');
INSERT INTO `building` VALUES ('962', 'MAP_A_Castle_Donjon');
INSERT INTO `building` VALUES ('963', 'MAP_A_Castle_Donjon_dam');
INSERT INTO `building` VALUES ('964', 'MAP_A_Castle_Donjon_ruins');
INSERT INTO `building` VALUES ('965', 'MAP_A_Castle_Gate');
INSERT INTO `building` VALUES ('966', 'MAP_A_Castle_Gate_ruins');
INSERT INTO `building` VALUES ('967', 'MAP_A_Castle_Stairs_A');
INSERT INTO `building` VALUES ('968', 'MAP_A_Castle_Stairs_A_ruins');
INSERT INTO `building` VALUES ('969', 'MAP_A_Castle_Wall1_20');
INSERT INTO `building` VALUES ('970', 'MAP_A_Castle_Wall1_20_ruins');
INSERT INTO `building` VALUES ('971', 'MAP_A_Castle_Wall1_20_Turn');
INSERT INTO `building` VALUES ('972', 'MAP_A_Castle_Wall1_20_Turn_ruins');
INSERT INTO `building` VALUES ('973', 'MAP_A_Castle_Wall1_Corner');
INSERT INTO `building` VALUES ('974', 'MAP_A_Castle_Wall1_Corner_2');
INSERT INTO `building` VALUES ('975', 'MAP_A_Castle_Wall1_Corner_2_ruins');
INSERT INTO `building` VALUES ('976', 'MAP_A_Castle_Wall1_Corner_ruins');
INSERT INTO `building` VALUES ('977', 'MAP_A_Castle_Wall1_End');
INSERT INTO `building` VALUES ('978', 'MAP_A_Castle_Wall1_End_2');
INSERT INTO `building` VALUES ('979', 'MAP_A_Castle_Wall1_End_2_ruins');
INSERT INTO `building` VALUES ('980', 'MAP_A_Castle_Wall1_End_ruins');
INSERT INTO `building` VALUES ('981', 'MAP_A_Castle_Wall2_30');
INSERT INTO `building` VALUES ('982', 'MAP_A_Castle_Wall2_30_ruins');
INSERT INTO `building` VALUES ('983', 'MAP_A_Castle_Wall2_Corner');
INSERT INTO `building` VALUES ('984', 'MAP_A_Castle_Wall2_Corner_2');
INSERT INTO `building` VALUES ('985', 'MAP_A_Castle_Wall2_Corner_2_ruins');
INSERT INTO `building` VALUES ('986', 'MAP_A_Castle_Wall2_Corner_ruins');
INSERT INTO `building` VALUES ('987', 'MAP_A_Castle_Wall2_End');
INSERT INTO `building` VALUES ('988', 'MAP_A_Castle_Wall2_End_2');
INSERT INTO `building` VALUES ('989', 'MAP_A_Castle_Wall2_End_2_ruins');
INSERT INTO `building` VALUES ('990', 'MAP_A_Castle_Wall2_End_ruins');
INSERT INTO `building` VALUES ('991', 'MAP_A_Castle_WallS_10');
INSERT INTO `building` VALUES ('992', 'MAP_A_Castle_WallS_10_ruins');
INSERT INTO `building` VALUES ('993', 'MAP_A_Castle_WallS_5_D');
INSERT INTO `building` VALUES ('994', 'MAP_A_Castle_WallS_5_D_ruins');
INSERT INTO `building` VALUES ('995', 'MAP_A_Castle_WallS_End');
INSERT INTO `building` VALUES ('996', 'MAP_A_Castle_WallS_End_ruins');
INSERT INTO `building` VALUES ('999', 'MAP_A_CraneCon');
INSERT INTO `building` VALUES ('997', 'MAP_A_Crane_02a');
INSERT INTO `building` VALUES ('998', 'MAP_A_Crane_02b');
INSERT INTO `building` VALUES ('1000', 'MAP_A_FuelStation_Build');
INSERT INTO `building` VALUES ('1001', 'MAP_A_FuelStation_Shed');
INSERT INTO `building` VALUES ('1002', 'MAP_A_GeneralStore_01');
INSERT INTO `building` VALUES ('1005', 'MAP_A_GeneralStore_01a');
INSERT INTO `building` VALUES ('1006', 'MAP_A_GeneralStore_01a_dam');
INSERT INTO `building` VALUES ('1003', 'MAP_A_GeneralStore_01_dam');
INSERT INTO `building` VALUES ('1004', 'MAP_A_GeneralStore_01_ruins');
INSERT INTO `building` VALUES ('1007', 'MAP_A_Hospital');
INSERT INTO `building` VALUES ('1008', 'MAP_A_Hospital_dam');
INSERT INTO `building` VALUES ('1009', 'MAP_A_Hospital_ruins');
INSERT INTO `building` VALUES ('1010', 'MAP_A_MunicipalOffice');
INSERT INTO `building` VALUES ('1011', 'MAP_A_MunicipalOffice_ruins');
INSERT INTO `building` VALUES ('1012', 'MAP_A_Office01');
INSERT INTO `building` VALUES ('1013', 'MAP_A_Office01_ruins');
INSERT INTO `building` VALUES ('1014', 'MAP_A_Office02');
INSERT INTO `building` VALUES ('1015', 'MAP_A_Office02_dam');
INSERT INTO `building` VALUES ('1016', 'MAP_A_Office02_ruins');
INSERT INTO `building` VALUES ('1017', 'MAP_A_Pub_01');
INSERT INTO `building` VALUES ('1018', 'MAP_a_stationhouse');
INSERT INTO `building` VALUES ('1019', 'MAP_a_stationhouse_ruins');
INSERT INTO `building` VALUES ('1020', 'MAP_A_statue01');
INSERT INTO `building` VALUES ('1021', 'MAP_A_statue01_ruins');
INSERT INTO `building` VALUES ('1022', 'MAP_A_statue02');
INSERT INTO `building` VALUES ('1023', 'MAP_A_TVTower_Base');
INSERT INTO `building` VALUES ('1024', 'MAP_A_TVTower_Mid');
INSERT INTO `building` VALUES ('1025', 'MAP_A_TVTower_Top');
INSERT INTO `building` VALUES ('1036', 'MAP_Barn_Metal');
INSERT INTO `building` VALUES ('1037', 'MAP_Barn_Metal_dam');
INSERT INTO `building` VALUES ('1038', 'MAP_Barn_Metal_ruins');
INSERT INTO `building` VALUES ('1039', 'MAP_Barn_W_01');
INSERT INTO `building` VALUES ('1040', 'MAP_Barn_W_01_dam');
INSERT INTO `building` VALUES ('1041', 'MAP_Barn_W_01_ruins');
INSERT INTO `building` VALUES ('1042', 'MAP_Barn_W_02');
INSERT INTO `building` VALUES ('1043', 'MAP_Barn_W_02_ruins');
INSERT INTO `building` VALUES ('1045', 'MAP_bouda1');
INSERT INTO `building` VALUES ('1046', 'MAP_bouda1_ruins');
INSERT INTO `building` VALUES ('1047', 'MAP_bouda2_vnitrek');
INSERT INTO `building` VALUES ('1048', 'MAP_bouda3');
INSERT INTO `building` VALUES ('1049', 'MAP_bouda3_ruins');
INSERT INTO `building` VALUES ('1044', 'MAP_bouda_plech');
INSERT INTO `building` VALUES ('1050', 'MAP_brana02nodoor');
INSERT INTO `building` VALUES ('1051', 'MAP_brana02nodoor_ruins');
INSERT INTO `building` VALUES ('1052', 'MAP_budova1');
INSERT INTO `building` VALUES ('1053', 'MAP_budova1_ruins');
INSERT INTO `building` VALUES ('1054', 'MAP_budova2');
INSERT INTO `building` VALUES ('1055', 'MAP_budova2_ruins');
INSERT INTO `building` VALUES ('1056', 'MAP_budova4');
INSERT INTO `building` VALUES ('1057', 'MAP_budova4_in');
INSERT INTO `building` VALUES ('1058', 'MAP_budova4_in_ruins');
INSERT INTO `building` VALUES ('1059', 'MAP_budova4_ruins');
INSERT INTO `building` VALUES ('1060', 'MAP_budova5');
INSERT INTO `building` VALUES ('1061', 'MAP_budova5_ruins');
INSERT INTO `building` VALUES ('1062', 'MAP_Church_01');
INSERT INTO `building` VALUES ('1063', 'MAP_Church_01_ruins');
INSERT INTO `building` VALUES ('1064', 'MAP_Church_02');
INSERT INTO `building` VALUES ('1066', 'MAP_Church_02a');
INSERT INTO `building` VALUES ('1065', 'MAP_Church_02_ruins');
INSERT INTO `building` VALUES ('1067', 'MAP_Church_03');
INSERT INTO `building` VALUES ('1068', 'MAP_Church_03_dam');
INSERT INTO `building` VALUES ('1069', 'MAP_Church_03_ruins');
INSERT INTO `building` VALUES ('1070', 'MAP_cihlovej_dum');
INSERT INTO `building` VALUES ('1071', 'MAP_cihlovej_dum_in');
INSERT INTO `building` VALUES ('1072', 'MAP_Cihlovej_dum_in_ruins');
INSERT INTO `building` VALUES ('1073', 'MAP_Cihlovej_dum_ruins');
INSERT INTO `building` VALUES ('1074', 'MAP_Company3_2');
INSERT INTO `building` VALUES ('1080', 'MAP_Dam_Barrier_40');
INSERT INTO `building` VALUES ('1082', 'MAP_Dam_ConcP_20');
INSERT INTO `building` VALUES ('1081', 'MAP_Dam_Conc_20');
INSERT INTO `building` VALUES ('1083', 'MAP_deutshe');
INSERT INTO `building` VALUES ('1084', 'MAP_deutshe_mini');
INSERT INTO `building` VALUES ('1085', 'MAP_Deutshe_mini_ruins');
INSERT INTO `building` VALUES ('1086', 'MAP_Deutshe_ruins');
INSERT INTO `building` VALUES ('1087', 'MAP_domek_rosa');
INSERT INTO `building` VALUES ('1088', 'MAP_domek_rosa_ruins');
INSERT INTO `building` VALUES ('1089', 'MAP_dulni_bs');
INSERT INTO `building` VALUES ('1090', 'MAP_Dulni_bs_ruins');
INSERT INTO `building` VALUES ('1112', 'MAP_dum01');
INSERT INTO `building` VALUES ('1113', 'MAP_dum01_ruins');
INSERT INTO `building` VALUES ('1114', 'MAP_Dumruina_mini_ruins');
INSERT INTO `building` VALUES ('1091', 'MAP_dum_istan3_hromada2');
INSERT INTO `building` VALUES ('1092', 'MAP_dum_istan3_hromada2_ruins');
INSERT INTO `building` VALUES ('1093', 'MAP_dum_istan3_pumpa');
INSERT INTO `building` VALUES ('1094', 'MAP_dum_istan3_pumpa_ruins');
INSERT INTO `building` VALUES ('1095', 'MAP_dum_m2');
INSERT INTO `building` VALUES ('1096', 'MAP_Dum_m2_ruins');
INSERT INTO `building` VALUES ('1097', 'MAP_dum_mesto');
INSERT INTO `building` VALUES ('1101', 'MAP_dum_mesto2');
INSERT INTO `building` VALUES ('1103', 'MAP_dum_mesto2l');
INSERT INTO `building` VALUES ('1104', 'MAP_Dum_mesto2L_ruins');
INSERT INTO `building` VALUES ('1102', 'MAP_Dum_mesto2_ruins');
INSERT INTO `building` VALUES ('1105', 'MAP_Dum_mesto3_ruins');
INSERT INTO `building` VALUES ('1098', 'MAP_dum_mesto_in');
INSERT INTO `building` VALUES ('1099', 'MAP_dum_mesto_in_ruins');
INSERT INTO `building` VALUES ('1100', 'MAP_Dum_mesto_ruins');
INSERT INTO `building` VALUES ('1109', 'MAP_dum_olezlina_ruins');
INSERT INTO `building` VALUES ('1106', 'MAP_dum_olez_istan1_ruins');
INSERT INTO `building` VALUES ('1107', 'MAP_dum_olez_istan2_maly_ruins');
INSERT INTO `building` VALUES ('1108', 'MAP_dum_olez_istan2_ruins');
INSERT INTO `building` VALUES ('1110', 'MAP_dum_rasovna_ruins');
INSERT INTO `building` VALUES ('1111', 'MAP_dum_zboreny_ruins');
INSERT INTO `building` VALUES ('1075', 'MAP_D_Mlyn_Vys');
INSERT INTO `building` VALUES ('1076', 'MAP_D_Pec_Vez1');
INSERT INTO `building` VALUES ('1077', 'MAP_D_Pec_Vez2');
INSERT INTO `building` VALUES ('1078', 'MAP_D_Vez_Mlyn');
INSERT INTO `building` VALUES ('1079', 'MAP_D_VSilo_Pec');
INSERT INTO `building` VALUES ('1115', 'MAP_Farm_Cowshed_a');
INSERT INTO `building` VALUES ('1116', 'MAP_Farm_Cowshed_a_dam');
INSERT INTO `building` VALUES ('1117', 'MAP_Farm_Cowshed_a_ruins');
INSERT INTO `building` VALUES ('1118', 'MAP_Farm_Cowshed_b');
INSERT INTO `building` VALUES ('1119', 'MAP_Farm_Cowshed_b_dam');
INSERT INTO `building` VALUES ('1120', 'MAP_Farm_Cowshed_b_ruins');
INSERT INTO `building` VALUES ('1121', 'MAP_Farm_Cowshed_c');
INSERT INTO `building` VALUES ('1122', 'MAP_Farm_Cowshed_c_dam');
INSERT INTO `building` VALUES ('1123', 'MAP_Farm_Cowshed_c_ruins');
INSERT INTO `building` VALUES ('1124', 'MAP_Farm_WTower');
INSERT INTO `building` VALUES ('1125', 'MAP_Farm_WTower_ruins');
INSERT INTO `building` VALUES ('1126', 'MAP_garaz');
INSERT INTO `building` VALUES ('1127', 'MAP_garaz_mala');
INSERT INTO `building` VALUES ('1128', 'MAP_garaz_mala_ruins');
INSERT INTO `building` VALUES ('1129', 'MAP_garaz_ruins');
INSERT INTO `building` VALUES ('1130', 'MAP_Gate_IndVar2_5');
INSERT INTO `building` VALUES ('1131', 'MAP_Gate_Wood1_5');
INSERT INTO `building` VALUES ('1132', 'MAP_Gate_wood2_5');
INSERT INTO `building` VALUES ('1133', 'MAP_Hangar_2');
INSERT INTO `building` VALUES ('1134', 'MAP_hangar_2_ruins');
INSERT INTO `building` VALUES ('1135', 'MAP_Hlidac_budka');
INSERT INTO `building` VALUES ('1136', 'MAP_Hlidac_budka_ruins');
INSERT INTO `building` VALUES ('1137', 'MAP_hospital');
INSERT INTO `building` VALUES ('1138', 'MAP_hospital_ruins');
INSERT INTO `building` VALUES ('1141', 'MAP_HouseBlock_A1');
INSERT INTO `building` VALUES ('1142', 'MAP_HouseBlock_A1_1');
INSERT INTO `building` VALUES ('1143', 'MAP_HouseBlock_A1_1_ruins');
INSERT INTO `building` VALUES ('1144', 'MAP_HouseBlock_A1_2');
INSERT INTO `building` VALUES ('1145', 'MAP_HouseBlock_A2');
INSERT INTO `building` VALUES ('1146', 'MAP_HouseBlock_A2_1');
INSERT INTO `building` VALUES ('1147', 'MAP_HouseBlock_A2_1_ruins');
INSERT INTO `building` VALUES ('1148', 'MAP_HouseBlock_A2_ruins');
INSERT INTO `building` VALUES ('1149', 'MAP_HouseBlock_A3');
INSERT INTO `building` VALUES ('1150', 'MAP_HouseBlock_A3_ruins');
INSERT INTO `building` VALUES ('1151', 'MAP_HouseBlock_B1');
INSERT INTO `building` VALUES ('1152', 'MAP_HouseBlock_B1_ruins');
INSERT INTO `building` VALUES ('1153', 'MAP_HouseBlock_B2');
INSERT INTO `building` VALUES ('1154', 'MAP_HouseBlock_B2_ruins');
INSERT INTO `building` VALUES ('1155', 'MAP_HouseBlock_B3');
INSERT INTO `building` VALUES ('1156', 'MAP_HouseBlock_B3_ruins');
INSERT INTO `building` VALUES ('1157', 'MAP_HouseBlock_B4');
INSERT INTO `building` VALUES ('1158', 'MAP_HouseBlock_B5');
INSERT INTO `building` VALUES ('1159', 'MAP_HouseBlock_B5_ruins');
INSERT INTO `building` VALUES ('1160', 'MAP_HouseBlock_B6');
INSERT INTO `building` VALUES ('1161', 'MAP_HouseBlock_B6_ruins');
INSERT INTO `building` VALUES ('1162', 'MAP_HouseBlock_C1');
INSERT INTO `building` VALUES ('1163', 'MAP_HouseBlock_C1_ruins');
INSERT INTO `building` VALUES ('1164', 'MAP_HouseBlock_C2');
INSERT INTO `building` VALUES ('1165', 'MAP_HouseBlock_C3');
INSERT INTO `building` VALUES ('1166', 'MAP_HouseBlock_C4');
INSERT INTO `building` VALUES ('1167', 'MAP_HouseBlock_C5');
INSERT INTO `building` VALUES ('1168', 'MAP_HouseBlock_C5_ruins');
INSERT INTO `building` VALUES ('1169', 'MAP_HouseBlock_D1');
INSERT INTO `building` VALUES ('1170', 'MAP_HouseBlock_D1_ruins');
INSERT INTO `building` VALUES ('1171', 'MAP_HouseBlock_D2');
INSERT INTO `building` VALUES ('1139', 'MAP_HouseB_Tenement');
INSERT INTO `building` VALUES ('1140', 'MAP_HouseB_Tenement_ruins');
INSERT INTO `building` VALUES ('1204', 'MAP_HouseV2_01A');
INSERT INTO `building` VALUES ('1205', 'MAP_HouseV2_01A_dam');
INSERT INTO `building` VALUES ('1206', 'MAP_HouseV2_01A_ruins');
INSERT INTO `building` VALUES ('1207', 'MAP_HouseV2_01B');
INSERT INTO `building` VALUES ('1208', 'MAP_HouseV2_01B_dam');
INSERT INTO `building` VALUES ('1209', 'MAP_HouseV2_01B_ruins');
INSERT INTO `building` VALUES ('1210', 'MAP_HouseV2_02');
INSERT INTO `building` VALUES ('1211', 'MAP_HouseV2_02_Interier');
INSERT INTO `building` VALUES ('1212', 'MAP_HouseV2_02_Interier_dam');
INSERT INTO `building` VALUES ('1213', 'MAP_HouseV2_02_ruins');
INSERT INTO `building` VALUES ('1214', 'MAP_HouseV2_03');
INSERT INTO `building` VALUES ('1217', 'MAP_HouseV2_03B');
INSERT INTO `building` VALUES ('1218', 'MAP_HouseV2_03B_dam');
INSERT INTO `building` VALUES ('1219', 'MAP_HouseV2_03B_ruins');
INSERT INTO `building` VALUES ('1215', 'MAP_HouseV2_03_dam');
INSERT INTO `building` VALUES ('1216', 'MAP_HouseV2_03_ruins');
INSERT INTO `building` VALUES ('1220', 'MAP_HouseV2_04');
INSERT INTO `building` VALUES ('1221', 'MAP_HouseV2_04_interier');
INSERT INTO `building` VALUES ('1222', 'MAP_HouseV2_04_interier_dam');
INSERT INTO `building` VALUES ('1223', 'MAP_HouseV2_04_ruins');
INSERT INTO `building` VALUES ('1224', 'MAP_HouseV2_05');
INSERT INTO `building` VALUES ('1225', 'MAP_HouseV2_05_ruins');
INSERT INTO `building` VALUES ('1172', 'MAP_HouseV_1I1');
INSERT INTO `building` VALUES ('1173', 'MAP_HouseV_1I1_dam');
INSERT INTO `building` VALUES ('1174', 'MAP_HouseV_1I1_ruins');
INSERT INTO `building` VALUES ('1175', 'MAP_HouseV_1I2');
INSERT INTO `building` VALUES ('1176', 'MAP_HouseV_1I2_ruins');
INSERT INTO `building` VALUES ('1177', 'MAP_HouseV_1I3');
INSERT INTO `building` VALUES ('1178', 'MAP_HouseV_1I3_ruins');
INSERT INTO `building` VALUES ('1179', 'MAP_HouseV_1I4');
INSERT INTO `building` VALUES ('1180', 'MAP_HouseV_1I4_ruins');
INSERT INTO `building` VALUES ('1181', 'MAP_HouseV_1L1');
INSERT INTO `building` VALUES ('1182', 'MAP_HouseV_1L1_ruins');
INSERT INTO `building` VALUES ('1183', 'MAP_HouseV_1L2');
INSERT INTO `building` VALUES ('1184', 'MAP_HouseV_1L2_ruins');
INSERT INTO `building` VALUES ('1185', 'MAP_HouseV_1T');
INSERT INTO `building` VALUES ('1186', 'MAP_HouseV_1T_ruins');
INSERT INTO `building` VALUES ('1187', 'MAP_HouseV_2I');
INSERT INTO `building` VALUES ('1188', 'MAP_HouseV_2I_ruins');
INSERT INTO `building` VALUES ('1189', 'MAP_HouseV_2L');
INSERT INTO `building` VALUES ('1190', 'MAP_HouseV_2L_dam');
INSERT INTO `building` VALUES ('1191', 'MAP_HouseV_2L_ruins');
INSERT INTO `building` VALUES ('1192', 'MAP_HouseV_2T1');
INSERT INTO `building` VALUES ('1193', 'MAP_HouseV_2T1_ruins');
INSERT INTO `building` VALUES ('1194', 'MAP_HouseV_2T2');
INSERT INTO `building` VALUES ('1195', 'MAP_HouseV_2T2_ruins');
INSERT INTO `building` VALUES ('1196', 'MAP_HouseV_3I1');
INSERT INTO `building` VALUES ('1197', 'MAP_HouseV_3I1_ruins');
INSERT INTO `building` VALUES ('1198', 'MAP_HouseV_3I2');
INSERT INTO `building` VALUES ('1199', 'MAP_HouseV_3I2_ruins');
INSERT INTO `building` VALUES ('1200', 'MAP_HouseV_3I3');
INSERT INTO `building` VALUES ('1201', 'MAP_HouseV_3I3_ruins');
INSERT INTO `building` VALUES ('1202', 'MAP_HouseV_3I4');
INSERT INTO `building` VALUES ('1203', 'MAP_HouseV_3I4_ruins');
INSERT INTO `building` VALUES ('1226', 'MAP_Hruzdum_ruins');
INSERT INTO `building` VALUES ('1229', 'MAP_hut06');
INSERT INTO `building` VALUES ('1230', 'MAP_hut06_ruins');
INSERT INTO `building` VALUES ('1227', 'MAP_hut_old02');
INSERT INTO `building` VALUES ('1228', 'MAP_hut_old02_ruins');
INSERT INTO `building` VALUES ('1288', 'MAP_IndPipe1_stair');
INSERT INTO `building` VALUES ('1295', 'MAP_IndPipe2_bigBuild1_L');
INSERT INTO `building` VALUES ('1296', 'MAP_IndPipe2_bigBuild1_R');
INSERT INTO `building` VALUES ('1297', 'MAP_IndPipe2_bigBuild2_L');
INSERT INTO `building` VALUES ('1298', 'MAP_IndPipe2_bigBuild2_R');
INSERT INTO `building` VALUES ('1299', 'MAP_IndPipe2_bigL_L');
INSERT INTO `building` VALUES ('1300', 'MAP_IndPipe2_bigL_R');
INSERT INTO `building` VALUES ('1289', 'MAP_IndPipe2_big_18');
INSERT INTO `building` VALUES ('1290', 'MAP_IndPipe2_big_18ladder');
INSERT INTO `building` VALUES ('1291', 'MAP_IndPipe2_big_9');
INSERT INTO `building` VALUES ('1292', 'MAP_IndPipe2_big_ground1');
INSERT INTO `building` VALUES ('1293', 'MAP_IndPipe2_big_ground2');
INSERT INTO `building` VALUES ('1294', 'MAP_IndPipe2_big_support');
INSERT INTO `building` VALUES ('1304', 'MAP_IndPipe2_SmallBuild1_L');
INSERT INTO `building` VALUES ('1305', 'MAP_IndPipe2_SmallBuild1_R');
INSERT INTO `building` VALUES ('1306', 'MAP_IndPipe2_SmallBuild2_L');
INSERT INTO `building` VALUES ('1307', 'MAP_IndPipe2_SmallBuild2_R');
INSERT INTO `building` VALUES ('1308', 'MAP_IndPipe2_SmallL_L');
INSERT INTO `building` VALUES ('1309', 'MAP_IndPipe2_SmallL_R');
INSERT INTO `building` VALUES ('1301', 'MAP_IndPipe2_Small_9');
INSERT INTO `building` VALUES ('1302', 'MAP_IndPipe2_Small_ground1');
INSERT INTO `building` VALUES ('1303', 'MAP_IndPipe2_Small_ground2');
INSERT INTO `building` VALUES ('1310', 'MAP_IndPipe2_T_L');
INSERT INTO `building` VALUES ('1311', 'MAP_IndPipe2_T_R');
INSERT INTO `building` VALUES ('1231', 'MAP_Ind_Expedice_1');
INSERT INTO `building` VALUES ('1232', 'MAP_Ind_Expedice_1_ruins');
INSERT INTO `building` VALUES ('1233', 'MAP_Ind_Garage01');
INSERT INTO `building` VALUES ('1234', 'MAP_Ind_Garage01_ruins');
INSERT INTO `building` VALUES ('1235', 'MAP_Ind_MalyKomin');
INSERT INTO `building` VALUES ('1236', 'MAP_Ind_MalyKomin_ruins');
INSERT INTO `building` VALUES ('1237', 'MAP_Ind_Mlyn_01');
INSERT INTO `building` VALUES ('1238', 'MAP_Ind_Mlyn_01_ruins');
INSERT INTO `building` VALUES ('1239', 'MAP_Ind_Mlyn_02');
INSERT INTO `building` VALUES ('1240', 'MAP_Ind_Mlyn_02_ruins');
INSERT INTO `building` VALUES ('1241', 'MAP_Ind_Mlyn_03');
INSERT INTO `building` VALUES ('1242', 'MAP_Ind_Mlyn_03_ruins');
INSERT INTO `building` VALUES ('1243', 'MAP_Ind_Mlyn_04');
INSERT INTO `building` VALUES ('1244', 'MAP_Ind_Mlyn_04_ruins');
INSERT INTO `building` VALUES ('1245', 'MAP_Ind_Mlyn_D1');
INSERT INTO `building` VALUES ('1246', 'MAP_Ind_Mlyn_D2');
INSERT INTO `building` VALUES ('1247', 'MAP_Ind_Pec_01');
INSERT INTO `building` VALUES ('1248', 'MAP_Ind_Pec_01_ruins');
INSERT INTO `building` VALUES ('1249', 'MAP_Ind_Pec_02');
INSERT INTO `building` VALUES ('1250', 'MAP_Ind_Pec_02_ruins');
INSERT INTO `building` VALUES ('1252', 'MAP_Ind_Pec_03a');
INSERT INTO `building` VALUES ('1253', 'MAP_Ind_Pec_03b');
INSERT INTO `building` VALUES ('1251', 'MAP_Ind_Pec_03_ruins');
INSERT INTO `building` VALUES ('1254', 'MAP_Ind_Quarry');
INSERT INTO `building` VALUES ('1255', 'MAP_Ind_Quarry_ruins');
INSERT INTO `building` VALUES ('1256', 'MAP_Ind_SawMill');
INSERT INTO `building` VALUES ('1257', 'MAP_Ind_SawMillPen');
INSERT INTO `building` VALUES ('1258', 'MAP_Ind_Shed_01_end');
INSERT INTO `building` VALUES ('1259', 'MAP_Ind_Shed_01_end_ruins');
INSERT INTO `building` VALUES ('1260', 'MAP_Ind_Shed_01_main');
INSERT INTO `building` VALUES ('1261', 'MAP_Ind_Shed_01_main_ruins');
INSERT INTO `building` VALUES ('1262', 'MAP_Ind_Shed_02_end');
INSERT INTO `building` VALUES ('1263', 'MAP_Ind_Shed_02_main');
INSERT INTO `building` VALUES ('1264', 'MAP_Ind_Shed_02_main_ruins');
INSERT INTO `building` VALUES ('1265', 'MAP_ind_silomale');
INSERT INTO `building` VALUES ('1266', 'MAP_Ind_SiloVelke_01');
INSERT INTO `building` VALUES ('1267', 'MAP_Ind_SiloVelke_02');
INSERT INTO `building` VALUES ('1268', 'MAP_Ind_SiloVelke_most');
INSERT INTO `building` VALUES ('1269', 'MAP_Ind_Stack_Big');
INSERT INTO `building` VALUES ('1270', 'MAP_Ind_Stack_Big_ruins');
INSERT INTO `building` VALUES ('1271', 'MAP_Ind_TankBig');
INSERT INTO `building` VALUES ('1272', 'MAP_Ind_TankBig_ruins');
INSERT INTO `building` VALUES ('1273', 'MAP_Ind_TankSmall');
INSERT INTO `building` VALUES ('1275', 'MAP_Ind_TankSmall2');
INSERT INTO `building` VALUES ('1274', 'MAP_Ind_TankSmall_ruins');
INSERT INTO `building` VALUES ('1276', 'MAP_Ind_Vysypka');
INSERT INTO `building` VALUES ('1277', 'MAP_Ind_Workshop01_01');
INSERT INTO `building` VALUES ('1278', 'MAP_Ind_Workshop01_01_ruins');
INSERT INTO `building` VALUES ('1279', 'MAP_Ind_Workshop01_02');
INSERT INTO `building` VALUES ('1280', 'MAP_Ind_Workshop01_02_ruins');
INSERT INTO `building` VALUES ('1281', 'MAP_Ind_Workshop01_03');
INSERT INTO `building` VALUES ('1282', 'MAP_Ind_Workshop01_03_ruins');
INSERT INTO `building` VALUES ('1283', 'MAP_Ind_Workshop01_04');
INSERT INTO `building` VALUES ('1284', 'MAP_Ind_Workshop01_box');
INSERT INTO `building` VALUES ('1285', 'MAP_Ind_Workshop01_box_ruins');
INSERT INTO `building` VALUES ('1286', 'MAP_Ind_Workshop01_L');
INSERT INTO `building` VALUES ('1287', 'MAP_Ind_Workshop01_L_ruins');
INSERT INTO `building` VALUES ('1312', 'MAP_KBud');
INSERT INTO `building` VALUES ('1313', 'MAP_komin');
INSERT INTO `building` VALUES ('1314', 'MAP_Komin_ruins');
INSERT INTO `building` VALUES ('1315', 'MAP_kostel');
INSERT INTO `building` VALUES ('1319', 'MAP_kostel3');
INSERT INTO `building` VALUES ('1320', 'MAP_kostel3_ruins');
INSERT INTO `building` VALUES ('1316', 'MAP_kostel_ruins');
INSERT INTO `building` VALUES ('1317', 'MAP_kostel_trosky');
INSERT INTO `building` VALUES ('1318', 'MAP_kostel_trosky_ruins');
INSERT INTO `building` VALUES ('1321', 'MAP_kulna');
INSERT INTO `building` VALUES ('1322', 'MAP_Land_Church_05R');
INSERT INTO `building` VALUES ('1323', 'MAP_leseni2x');
INSERT INTO `building` VALUES ('1324', 'MAP_leseni2x_ruins');
INSERT INTO `building` VALUES ('1325', 'MAP_leseni4x');
INSERT INTO `building` VALUES ('1326', 'MAP_LHD_1');
INSERT INTO `building` VALUES ('1327', 'MAP_LHD_2');
INSERT INTO `building` VALUES ('1328', 'MAP_LHD_3');
INSERT INTO `building` VALUES ('1329', 'MAP_LHD_4');
INSERT INTO `building` VALUES ('1330', 'MAP_LHD_5');
INSERT INTO `building` VALUES ('1331', 'MAP_LHD_6');
INSERT INTO `building` VALUES ('1332', 'MAP_LHD_elev_R');
INSERT INTO `building` VALUES ('1333', 'MAP_LHD_house_2');
INSERT INTO `building` VALUES ('1334', 'MAP_loco_742_blue');
INSERT INTO `building` VALUES ('1335', 'MAP_loco_742_red');
INSERT INTO `building` VALUES ('1336', 'MAP_majak');
INSERT INTO `building` VALUES ('1339', 'MAP_majak2');
INSERT INTO `building` VALUES ('1337', 'MAP_majak_podesta');
INSERT INTO `building` VALUES ('1338', 'MAP_Majak_ruins');
INSERT INTO `building` VALUES ('1340', 'MAP_Mil_Barracks');
INSERT INTO `building` VALUES ('1341', 'MAP_Mil_Barracks_i');
INSERT INTO `building` VALUES ('1342', 'MAP_Mil_Barracks_L');
INSERT INTO `building` VALUES ('1343', 'MAP_Mil_ControlTower');
INSERT INTO `building` VALUES ('1344', 'MAP_Mil_ControlTower_dam');
INSERT INTO `building` VALUES ('1345', 'MAP_Mil_ControlTower_ruins');
INSERT INTO `building` VALUES ('1346', 'MAP_Mil_House');
INSERT INTO `building` VALUES ('1347', 'MAP_Mil_House_dam');
INSERT INTO `building` VALUES ('1348', 'MAP_Mil_House_ruins');
INSERT INTO `building` VALUES ('1349', 'MAP_Mil_Mil_Guardhouse');
INSERT INTO `building` VALUES ('1350', 'MAP_Misc_Cargo1Ao');
INSERT INTO `building` VALUES ('1351', 'MAP_Misc_Cargo1B');
INSERT INTO `building` VALUES ('1352', 'MAP_Misc_Cargo1Bo');
INSERT INTO `building` VALUES ('1353', 'MAP_Misc_Cargo1C');
INSERT INTO `building` VALUES ('1354', 'MAP_Misc_Cargo1D');
INSERT INTO `building` VALUES ('1355', 'MAP_Misc_Cargo1E');
INSERT INTO `building` VALUES ('1356', 'MAP_Misc_Cargo1F');
INSERT INTO `building` VALUES ('1357', 'MAP_Misc_Cargo1G');
INSERT INTO `building` VALUES ('1358', 'MAP_Misc_Cargo2B');
INSERT INTO `building` VALUES ('1359', 'MAP_Misc_Cargo2C');
INSERT INTO `building` VALUES ('1360', 'MAP_Misc_Cargo2D');
INSERT INTO `building` VALUES ('1361', 'MAP_Misc_Cargo2E');
INSERT INTO `building` VALUES ('1362', 'MAP_Misc_PowerStation');
INSERT INTO `building` VALUES ('1363', 'MAP_Misc_PowerStation_ruins');
INSERT INTO `building` VALUES ('1364', 'MAP_Misc_WaterStation');
INSERT INTO `building` VALUES ('1365', 'MAP_Misc_WaterStation_ruins');
INSERT INTO `building` VALUES ('1366', 'MAP_molo_beton');
INSERT INTO `building` VALUES ('1367', 'MAP_molo_drevo_bs');
INSERT INTO `building` VALUES ('1368', 'MAP_molo_drevo_end');
INSERT INTO `building` VALUES ('1369', 'MAP_molo_krychle');
INSERT INTO `building` VALUES ('1370', 'MAP_Nasypka');
INSERT INTO `building` VALUES ('1371', 'MAP_Nasypka_ruins');
INSERT INTO `building` VALUES ('1372', 'MAP_Nav_Boathouse');
INSERT INTO `building` VALUES ('1373', 'MAP_Nav_Boathouse_Pier');
INSERT INTO `building` VALUES ('1375', 'MAP_Nav_Boathouse_PierL');
INSERT INTO `building` VALUES ('1376', 'MAP_Nav_Boathouse_PierR');
INSERT INTO `building` VALUES ('1377', 'MAP_Nav_Boathouse_PierT');
INSERT INTO `building` VALUES ('1374', 'MAP_Nav_Boathouse_Pier_ruins');
INSERT INTO `building` VALUES ('1378', 'MAP_Nav_Boathouse_ruins');
INSERT INTO `building` VALUES ('1379', 'MAP_NAV_Lighthouse');
INSERT INTO `building` VALUES ('1381', 'MAP_NAV_Lighthouse2');
INSERT INTO `building` VALUES ('1380', 'MAP_NAV_Lighthouse_ruins');
INSERT INTO `building` VALUES ('1382', 'MAP_nav_pier_c');
INSERT INTO `building` VALUES ('1394', 'MAP_nav_pier_c2');
INSERT INTO `building` VALUES ('1395', 'MAP_nav_pier_c2_end');
INSERT INTO `building` VALUES ('1383', 'MAP_nav_pier_c_270');
INSERT INTO `building` VALUES ('1384', 'MAP_nav_pier_c_90');
INSERT INTO `building` VALUES ('1385', 'MAP_nav_pier_c_big');
INSERT INTO `building` VALUES ('1386', 'MAP_nav_pier_C_L');
INSERT INTO `building` VALUES ('1387', 'MAP_nav_pier_C_L10');
INSERT INTO `building` VALUES ('1388', 'MAP_nav_pier_C_L30');
INSERT INTO `building` VALUES ('1389', 'MAP_nav_pier_C_R');
INSERT INTO `building` VALUES ('1390', 'MAP_nav_pier_C_R10');
INSERT INTO `building` VALUES ('1391', 'MAP_nav_pier_C_R30');
INSERT INTO `building` VALUES ('1392', 'MAP_nav_pier_c_t15');
INSERT INTO `building` VALUES ('1393', 'MAP_nav_pier_c_t20');
INSERT INTO `building` VALUES ('1396', 'MAP_nav_pier_F_17');
INSERT INTO `building` VALUES ('1397', 'MAP_nav_pier_F_23');
INSERT INTO `building` VALUES ('1398', 'MAP_nav_pier_m');
INSERT INTO `building` VALUES ('1399', 'MAP_nav_pier_m_1');
INSERT INTO `building` VALUES ('1400', 'MAP_nav_pier_m_2');
INSERT INTO `building` VALUES ('1401', 'MAP_nav_pier_m_end');
INSERT INTO `building` VALUES ('1402', 'MAP_nav_pier_M_fuel');
INSERT INTO `building` VALUES ('1403', 'MAP_nav_pier_pneu');
INSERT INTO `building` VALUES ('1404', 'MAP_nav_pier_uvaz');
INSERT INTO `building` VALUES ('1407', 'MAP_Panelak');
INSERT INTO `building` VALUES ('1409', 'MAP_Panelak2');
INSERT INTO `building` VALUES ('1410', 'MAP_Panelak2_ruins');
INSERT INTO `building` VALUES ('1411', 'MAP_Panelak3');
INSERT INTO `building` VALUES ('1412', 'MAP_Panelak3_ruins');
INSERT INTO `building` VALUES ('1408', 'MAP_Panelak_ruins');
INSERT INTO `building` VALUES ('1413', 'MAP_plot_istan1_rovny_gate');
INSERT INTO `building` VALUES ('1414', 'MAP_Plot_Ohrada_Pruchozi');
INSERT INTO `building` VALUES ('1415', 'MAP_plot_zboreny');
INSERT INTO `building` VALUES ('1416', 'MAP_plot_zed_drevo1_branka');
INSERT INTO `building` VALUES ('1417', 'MAP_pumpa');
INSERT INTO `building` VALUES ('1405', 'MAP_P_Ladder');
INSERT INTO `building` VALUES ('1406', 'MAP_P_LadderLong');
INSERT INTO `building` VALUES ('1434', 'MAP_rails_bridge_40');
INSERT INTO `building` VALUES ('1428', 'MAP_Rail_House_01');
INSERT INTO `building` VALUES ('1429', 'MAP_Rail_House_01_ruins');
INSERT INTO `building` VALUES ('1430', 'MAP_Rail_Semafor');
INSERT INTO `building` VALUES ('1431', 'MAP_rail_station_big');
INSERT INTO `building` VALUES ('1432', 'MAP_rail_station_big_ruins');
INSERT INTO `building` VALUES ('1433', 'MAP_Rail_Zavora');
INSERT INTO `building` VALUES ('1435', 'MAP_repair_center');
INSERT INTO `building` VALUES ('1436', 'MAP_repair_center_ruins');
INSERT INTO `building` VALUES ('1437', 'MAP_ruin_01');
INSERT INTO `building` VALUES ('1438', 'MAP_ruin_chimney');
INSERT INTO `building` VALUES ('1439', 'MAP_ruin_corner_1');
INSERT INTO `building` VALUES ('1440', 'MAP_ruin_corner_2');
INSERT INTO `building` VALUES ('1441', 'MAP_ruin_rubble');
INSERT INTO `building` VALUES ('1442', 'MAP_ruin_wall');
INSERT INTO `building` VALUES ('1443', 'MAP_ruin_walldoor');
INSERT INTO `building` VALUES ('1418', 'MAP_R_A_GeneralStore_01a');
INSERT INTO `building` VALUES ('1419', 'MAP_R_Barn_Metal');
INSERT INTO `building` VALUES ('1420', 'MAP_R_Barn_W_01');
INSERT INTO `building` VALUES ('1421', 'MAP_R_Farm_Cowshed_a');
INSERT INTO `building` VALUES ('1424', 'MAP_R_HouseV2_02');
INSERT INTO `building` VALUES ('1425', 'MAP_R_HouseV2_03B');
INSERT INTO `building` VALUES ('1426', 'MAP_R_HouseV2_04');
INSERT INTO `building` VALUES ('1422', 'MAP_R_HouseV_1I1');
INSERT INTO `building` VALUES ('1423', 'MAP_R_HouseV_2L');
INSERT INTO `building` VALUES ('1427', 'MAP_R_Shed_Ind02');
INSERT INTO `building` VALUES ('1444', 'MAP_sara_domek_hospoda');
INSERT INTO `building` VALUES ('1445', 'MAP_Sara_domek_hospoda_ruins');
INSERT INTO `building` VALUES ('1446', 'MAP_sara_domek_kovarna');
INSERT INTO `building` VALUES ('1447', 'MAP_Sara_domek_kovarna_ruins');
INSERT INTO `building` VALUES ('1448', 'MAP_sara_domek_podhradi_1');
INSERT INTO `building` VALUES ('1449', 'MAP_Sara_domek_podhradi_1_ruins');
INSERT INTO `building` VALUES ('1450', 'MAP_sara_domek_ruina');
INSERT INTO `building` VALUES ('1451', 'MAP_Sara_domek_ruina_ruins');
INSERT INTO `building` VALUES ('1452', 'MAP_sara_Domek_sedy');
INSERT INTO `building` VALUES ('1453', 'MAP_Sara_domek_sedy_ruins');
INSERT INTO `building` VALUES ('1454', 'MAP_sara_domek_vilka');
INSERT INTO `building` VALUES ('1455', 'MAP_sara_domek_vilka_ruins');
INSERT INTO `building` VALUES ('1456', 'MAP_sara_domek_zluty');
INSERT INTO `building` VALUES ('1457', 'MAP_Sara_domek_zluty_ruins');
INSERT INTO `building` VALUES ('1458', 'MAP_sara_hasic_zbroj');
INSERT INTO `building` VALUES ('1459', 'MAP_Sara_Hasic_zbroj_ruins');
INSERT INTO `building` VALUES ('1460', 'MAP_sara_stodola');
INSERT INTO `building` VALUES ('1462', 'MAP_sara_stodola3');
INSERT INTO `building` VALUES ('1463', 'MAP_Sara_stodola3_ruins');
INSERT INTO `building` VALUES ('1461', 'MAP_Sara_stodola_ruins');
INSERT INTO `building` VALUES ('1464', 'MAP_Shed_Ind02');
INSERT INTO `building` VALUES ('1465', 'MAP_Shed_Ind02_dam');
INSERT INTO `building` VALUES ('1466', 'MAP_Shed_Ind02_ruins');
INSERT INTO `building` VALUES ('1467', 'MAP_Shed_M01');
INSERT INTO `building` VALUES ('1468', 'MAP_Shed_M01_ruins');
INSERT INTO `building` VALUES ('1469', 'MAP_Shed_M02');
INSERT INTO `building` VALUES ('1470', 'MAP_Shed_M02_ruins');
INSERT INTO `building` VALUES ('1471', 'MAP_Shed_M03');
INSERT INTO `building` VALUES ('1472', 'MAP_Shed_M03_ruins');
INSERT INTO `building` VALUES ('1473', 'MAP_Shed_W01');
INSERT INTO `building` VALUES ('1474', 'MAP_Shed_W01_ruins');
INSERT INTO `building` VALUES ('1475', 'MAP_Shed_W02');
INSERT INTO `building` VALUES ('1476', 'MAP_Shed_W03');
INSERT INTO `building` VALUES ('1477', 'MAP_Shed_W03_ruins');
INSERT INTO `building` VALUES ('1478', 'MAP_Shed_W4');
INSERT INTO `building` VALUES ('1479', 'MAP_Shed_W4_ruins');
INSERT INTO `building` VALUES ('1480', 'MAP_Shed_wooden');
INSERT INTO `building` VALUES ('1481', 'MAP_Shed_wooden_ruins');
INSERT INTO `building` VALUES ('1487', 'MAP_SignB_Gov');
INSERT INTO `building` VALUES ('1488', 'MAP_SignB_GovPolice');
INSERT INTO `building` VALUES ('1489', 'MAP_SignB_GovSchool');
INSERT INTO `building` VALUES ('1490', 'MAP_SignB_GovSign');
INSERT INTO `building` VALUES ('1491', 'MAP_SignB_Hotel_CZ');
INSERT INTO `building` VALUES ('1492', 'MAP_SignB_Hotel_CZ2');
INSERT INTO `building` VALUES ('1493', 'MAP_SignB_Hotel_CZ3');
INSERT INTO `building` VALUES ('1494', 'MAP_SignB_Pharmacy');
INSERT INTO `building` VALUES ('1495', 'MAP_SignB_PostOffice');
INSERT INTO `building` VALUES ('1496', 'MAP_SignB_Pub_CZ1');
INSERT INTO `building` VALUES ('1497', 'MAP_SignB_Pub_CZ2');
INSERT INTO `building` VALUES ('1498', 'MAP_SignB_Pub_CZ3');
INSERT INTO `building` VALUES ('1499', 'MAP_SignB_Pub_RU1');
INSERT INTO `building` VALUES ('1500', 'MAP_SignB_Pub_RU2');
INSERT INTO `building` VALUES ('1501', 'MAP_SignB_Pub_RU3');
INSERT INTO `building` VALUES ('1482', 'MAP_sign_altar');
INSERT INTO `building` VALUES ('1483', 'MAP_Sign_Bar_RU');
INSERT INTO `building` VALUES ('1484', 'MAP_Sign_BES');
INSERT INTO `building` VALUES ('1485', 'MAP_sign_TEC');
INSERT INTO `building` VALUES ('1486', 'MAP_sign_ulgano');
INSERT INTO `building` VALUES ('1502', 'MAP_SS_hangar');
INSERT INTO `building` VALUES ('1503', 'MAP_SS_hangar_ruins');
INSERT INTO `building` VALUES ('1504', 'MAP_stanice');
INSERT INTO `building` VALUES ('1505', 'MAP_stanice_ruins');
INSERT INTO `building` VALUES ('1506', 'MAP_statek_brana');
INSERT INTO `building` VALUES ('1507', 'MAP_statek_brana_open');
INSERT INTO `building` VALUES ('1508', 'MAP_statek_hl_bud');
INSERT INTO `building` VALUES ('1509', 'MAP_Statek_hl_bud_ruins');
INSERT INTO `building` VALUES ('1510', 'MAP_Statek_kulna');
INSERT INTO `building` VALUES ('1511', 'MAP_Statek_kulna_old_ruins');
INSERT INTO `building` VALUES ('1512', 'MAP_stodola_old_open');
INSERT INTO `building` VALUES ('1513', 'MAP_stodola_old_open_ruins');
INSERT INTO `building` VALUES ('1514', 'MAP_stodola_open');
INSERT INTO `building` VALUES ('1515', 'MAP_stodola_open_ruins');
INSERT INTO `building` VALUES ('1516', 'MAP_Stoplight01');
INSERT INTO `building` VALUES ('1517', 'MAP_Stoplight02');
INSERT INTO `building` VALUES ('1518', 'MAP_telek1');
INSERT INTO `building` VALUES ('1519', 'MAP_telek1_ruins');
INSERT INTO `building` VALUES ('1520', 'MAP_Tovarna2');
INSERT INTO `building` VALUES ('1521', 'MAP_tovarna2_ruins');
INSERT INTO `building` VALUES ('1522', 'MAP_trafostanica_mala');
INSERT INTO `building` VALUES ('1523', 'MAP_trafostanica_mala_ruins');
INSERT INTO `building` VALUES ('1524', 'MAP_trafostanica_velka');
INSERT INTO `building` VALUES ('1525', 'MAP_trafostanica_velka_ruins');
INSERT INTO `building` VALUES ('1526', 'MAP_vez');
INSERT INTO `building` VALUES ('1527', 'MAP_Vez_Pec');
INSERT INTO `building` VALUES ('1528', 'MAP_vez_ruins');
INSERT INTO `building` VALUES ('1529', 'MAP_Vez_Silo');
INSERT INTO `building` VALUES ('1530', 'MAP_Vysilac_FM');
INSERT INTO `building` VALUES ('1531', 'MAP_vysilac_FM2');
INSERT INTO `building` VALUES ('1532', 'MAP_wagon_box');
INSERT INTO `building` VALUES ('1533', 'MAP_wagon_flat');
INSERT INTO `building` VALUES ('1534', 'MAP_wagon_tanker');
INSERT INTO `building` VALUES ('1535', 'MAP_Wall_CBrk_5_D');
INSERT INTO `building` VALUES ('1536', 'MAP_Wall_Gate_Ind1_L');
INSERT INTO `building` VALUES ('1537', 'MAP_Wall_Gate_Ind1_R');
INSERT INTO `building` VALUES ('1538', 'MAP_Wall_Gate_Ind2A_L');
INSERT INTO `building` VALUES ('1539', 'MAP_Wall_Gate_Ind2A_R');
INSERT INTO `building` VALUES ('1540', 'MAP_Wall_Gate_Ind2B_L');
INSERT INTO `building` VALUES ('1541', 'MAP_Wall_Gate_Ind2B_R');
INSERT INTO `building` VALUES ('1542', 'MAP_Wall_Gate_Ind2Rail_L');
INSERT INTO `building` VALUES ('1543', 'MAP_Wall_Gate_Ind2Rail_R');
INSERT INTO `building` VALUES ('1544', 'MAP_Wall_Gate_Kolchoz');
INSERT INTO `building` VALUES ('1545', 'MAP_Wall_Gate_Village');
INSERT INTO `building` VALUES ('1546', 'MAP_Wall_Gate_Wood1');
INSERT INTO `building` VALUES ('1547', 'MAP_ZalChata');
INSERT INTO `building` VALUES ('1548', 'MAP_zalchata_ruins');
INSERT INTO `building` VALUES ('1549', 'MAP_zed_dira_civil');
INSERT INTO `building` VALUES ('334', 'MASH');
INSERT INTO `building` VALUES ('335', 'MASH_EP1');
INSERT INTO `building` VALUES ('336', 'Mass_grave');
INSERT INTO `building` VALUES ('1550', 'Mass_grave_DZ');
INSERT INTO `building` VALUES ('1551', 'mbg_apartments_big_01_EO');
INSERT INTO `building` VALUES ('1553', 'mbg_apartments_big_02b_EO');
INSERT INTO `building` VALUES ('1554', 'mbg_apartments_big_02c_EO');
INSERT INTO `building` VALUES ('1552', 'mbg_apartments_big_02_EO');
INSERT INTO `building` VALUES ('1556', 'mbg_apartments_big_03b_EO');
INSERT INTO `building` VALUES ('1557', 'mbg_apartments_big_03c_EO');
INSERT INTO `building` VALUES ('1555', 'mbg_apartments_big_03_EO');
INSERT INTO `building` VALUES ('1558', 'mbg_apartments_big_04_EO');
INSERT INTO `building` VALUES ('1559', 'mbg_brickhouse_01_EO');
INSERT INTO `building` VALUES ('1560', 'mbg_brickhouse_02_EO');
INSERT INTO `building` VALUES ('1561', 'mbg_brickhouse_03_EO');
INSERT INTO `building` VALUES ('1562', 'MBG_Cinderwall_2p5_InEditor');
INSERT INTO `building` VALUES ('1563', 'MBG_Cinderwall_5_Corner_InEditor');
INSERT INTO `building` VALUES ('1564', 'MBG_Cinderwall_5_Gate_InEditor');
INSERT INTO `building` VALUES ('1565', 'MBG_Cinderwall_5_InEditor');
INSERT INTO `building` VALUES ('1566', 'mbg_cinderwall_5_low_InEditor');
INSERT INTO `building` VALUES ('1567', 'MBG_Cinderwall_5_SteelDoor_InEditor');
INSERT INTO `building` VALUES ('1568', 'MBG_Cinderwall_5_WoodDoor_InEditor');
INSERT INTO `building` VALUES ('1569', 'MBG_Killhouse_1_InEditor');
INSERT INTO `building` VALUES ('1570', 'MBG_Killhouse_2_InEditor');
INSERT INTO `building` VALUES ('1571', 'MBG_Killhouse_3_InEditor');
INSERT INTO `building` VALUES ('1572', 'MBG_Killhouse_4_InEditor');
INSERT INTO `building` VALUES ('1573', 'MBG_Killhouse_5_InEditor');
INSERT INTO `building` VALUES ('1575', 'mbg_slum01b_EO');
INSERT INTO `building` VALUES ('1576', 'mbg_slum01c_EO');
INSERT INTO `building` VALUES ('1577', 'mbg_slum01d_EO');
INSERT INTO `building` VALUES ('1578', 'mbg_slum01e_EO');
INSERT INTO `building` VALUES ('1579', 'mbg_slum01f_EO');
INSERT INTO `building` VALUES ('1580', 'mbg_slum01g_EO');
INSERT INTO `building` VALUES ('1581', 'mbg_slum01h_EO');
INSERT INTO `building` VALUES ('1574', 'mbg_slum01_EO');
INSERT INTO `building` VALUES ('1583', 'mbg_slum02b_EO');
INSERT INTO `building` VALUES ('1584', 'mbg_slum02c_EO');
INSERT INTO `building` VALUES ('1585', 'mbg_slum02d_EO');
INSERT INTO `building` VALUES ('1586', 'mbg_slum02e_EO');
INSERT INTO `building` VALUES ('1587', 'mbg_slum02f_EO');
INSERT INTO `building` VALUES ('1588', 'mbg_slum02g_EO');
INSERT INTO `building` VALUES ('1589', 'mbg_slum02h_EO');
INSERT INTO `building` VALUES ('1582', 'mbg_slum02_EO');
INSERT INTO `building` VALUES ('1591', 'mbg_slum03b_EO');
INSERT INTO `building` VALUES ('1592', 'mbg_slum03c_EO');
INSERT INTO `building` VALUES ('1593', 'mbg_slum03d_EO');
INSERT INTO `building` VALUES ('1594', 'mbg_slum03e_EO');
INSERT INTO `building` VALUES ('1595', 'mbg_slum03f_EO');
INSERT INTO `building` VALUES ('1596', 'mbg_slum03g_EO');
INSERT INTO `building` VALUES ('1597', 'mbg_slum03h_EO');
INSERT INTO `building` VALUES ('1590', 'mbg_slum03_EO');
INSERT INTO `building` VALUES ('1598', 'MBG_Warehouse_InEditor');
INSERT INTO `building` VALUES ('567', 'MetalFloor_DZ');
INSERT INTO `building` VALUES ('1599', 'MetalFloor_Preview_DZ');
INSERT INTO `building` VALUES ('539', 'MetalGate_DZ');
INSERT INTO `building` VALUES ('528', 'MetalPanel_DZ');
INSERT INTO `building` VALUES ('1657', 'Metis');
INSERT INTO `building` VALUES ('337', 'Metis_TK_Bag_EP1');
INSERT INTO `building` VALUES ('1727', 'Metis_TK_EP1');
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
INSERT INTO `building` VALUES ('1678', 'MK19_TriPod');
INSERT INTO `building` VALUES ('359', 'MK19_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('1699', 'MK19_TriPod_US_EP1');
INSERT INTO `building` VALUES ('360', 'Obstacle_saddle');
INSERT INTO `building` VALUES ('1600', 'OSShDY_base');
INSERT INTO `building` VALUES ('540', 'OutHouse_DZ');
INSERT INTO `building` VALUES ('361', 'Paleta1');
INSERT INTO `building` VALUES ('362', 'Paleta2');
INSERT INTO `building` VALUES ('363', 'PARACHUTE_TARGET');
INSERT INTO `building` VALUES ('364', 'Pile_of_wood');
INSERT INTO `building` VALUES ('365', 'Plastic_Pole_EP1');
INSERT INTO `building` VALUES ('366', 'PowGen_Big');
INSERT INTO `building` VALUES ('367', 'PowGen_Big_EP1');
INSERT INTO `building` VALUES ('368', 'RampConcrete');
INSERT INTO `building` VALUES ('369', 'Red_Light_Blinking_EP1');
INSERT INTO `building` VALUES ('370', 'RoadBarrier_light');
INSERT INTO `building` VALUES ('371', 'RoadBarrier_long');
INSERT INTO `building` VALUES ('383', 'RUBasicAmmunitionBox');
INSERT INTO `building` VALUES ('384', 'RUBasicWeaponsBox');
INSERT INTO `building` VALUES ('1601', 'Rubbish1');
INSERT INTO `building` VALUES ('1602', 'Rubbish2');
INSERT INTO `building` VALUES ('1603', 'Rubbish3');
INSERT INTO `building` VALUES ('1604', 'Rubbish4');
INSERT INTO `building` VALUES ('1605', 'Rubbish5');
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
INSERT INTO `building` VALUES ('1671', 'RU_WarfareBMGNest_PK');
INSERT INTO `building` VALUES ('381', 'RU_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('382', 'RU_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('524', 'Sandbag1_DZ');
INSERT INTO `building` VALUES ('538', 'SandNest_DZ');
INSERT INTO `building` VALUES ('1606', 'Scaffolding_DZ');
INSERT INTO `building` VALUES ('1651', 'SearchLight');
INSERT INTO `building` VALUES ('1653', 'SearchLight_CDF');
INSERT INTO `building` VALUES ('1655', 'SearchLight_Gue');
INSERT INTO `building` VALUES ('1652', 'SearchLight_INS');
INSERT INTO `building` VALUES ('1654', 'SearchLight_RUS');
INSERT INTO `building` VALUES ('1729', 'SearchLight_TK_EP1');
INSERT INTO `building` VALUES ('1713', 'SearchLight_TK_GUE_EP1');
INSERT INTO `building` VALUES ('1721', 'SearchLight_TK_INS_EP1');
INSERT INTO `building` VALUES ('1702', 'SearchLight_UN_EP1');
INSERT INTO `building` VALUES ('1696', 'SearchLight_US_EP1');
INSERT INTO `building` VALUES ('1607', 'SHouse');
INSERT INTO `building` VALUES ('391', 'SignM_FARP_Winchester_EP1');
INSERT INTO `building` VALUES ('392', 'SignM_FOB_Blanik_EP1');
INSERT INTO `building` VALUES ('393', 'SignM_FOB_Prostejov_EP1');
INSERT INTO `building` VALUES ('394', 'SignM_FOB_Revolve_EP1');
INSERT INTO `building` VALUES ('395', 'SignM_UN_Base_EP1');
INSERT INTO `building` VALUES ('389', 'Sign_Armex_EP1');
INSERT INTO `building` VALUES ('390', 'Sign_Direction_EP1');
INSERT INTO `building` VALUES ('396', 'SKODAWreck');
INSERT INTO `building` VALUES ('397', 'SpecialWeaponsBox');
INSERT INTO `building` VALUES ('1663', 'SPG9_CDF');
INSERT INTO `building` VALUES ('1662', 'SPG9_Gue');
INSERT INTO `building` VALUES ('1664', 'SPG9_Ins');
INSERT INTO `building` VALUES ('398', 'SPG9_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('1708', 'SPG9_TK_GUE_EP1');
INSERT INTO `building` VALUES ('399', 'SPG9_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('1717', 'SPG9_TK_INS_EP1');
INSERT INTO `building` VALUES ('400', 'Sr_border');
INSERT INTO `building` VALUES ('1608', 'StashMedium');
INSERT INTO `building` VALUES ('1609', 'StashSmall');
INSERT INTO `building` VALUES ('544', 'StickFence_DZ');
INSERT INTO `building` VALUES ('1679', 'Stinger_Pod');
INSERT INTO `building` VALUES ('1698', 'Stinger_Pod_US_EP1');
INSERT INTO `building` VALUES ('541', 'StorageShed_DZ');
INSERT INTO `building` VALUES ('1610', 'Supply_Crate_DZE');
INSERT INTO `building` VALUES ('401', 'T72Wreck');
INSERT INTO `building` VALUES ('402', 'T72WreckTurret');
INSERT INTO `building` VALUES ('548', 'TentStorage');
INSERT INTO `building` VALUES ('1611', 'TentStorageDomed');
INSERT INTO `building` VALUES ('1612', 'TentStorageDomed2');
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
INSERT INTO `building` VALUES ('1680', 'TOW_TriPod');
INSERT INTO `building` VALUES ('456', 'TOW_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('1700', 'TOW_TriPod_US_EP1');
INSERT INTO `building` VALUES ('457', 'Training_target_EP1');
INSERT INTO `building` VALUES ('1735', 'TrapBear');
INSERT INTO `building` VALUES ('458', 'Tripod_Bag');
INSERT INTO `building` VALUES ('459', 'UAZWreck');
INSERT INTO `building` VALUES ('1613', 'UH60_ARMY_Wreck_burned_DZ');
INSERT INTO `building` VALUES ('1614', 'UH60_ARMY_Wreck_DZ');
INSERT INTO `building` VALUES ('1615', 'UH60_NAVY_Wreck_burned_DZ');
INSERT INTO `building` VALUES ('1616', 'UH60_NAVY_Wreck_DZ');
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
INSERT INTO `building` VALUES ('1670', 'USMC_WarfareBMGNest_M240');
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
INSERT INTO `building` VALUES ('1617', 'VaultStorage');
INSERT INTO `building` VALUES ('1618', 'VaultStorageLocked');
INSERT INTO `building` VALUES ('1619', 'Wall_CGry_5_D');
INSERT INTO `building` VALUES ('513', 'WarfareBAircraftFactory_CDF');
INSERT INTO `building` VALUES ('514', 'WarfareBAircraftFactory_Gue');
INSERT INTO `building` VALUES ('515', 'WarfareBAircraftFactory_Ins');
INSERT INTO `building` VALUES ('516', 'WarfareBAirport');
INSERT INTO `building` VALUES ('517', 'WarfareBCamp');
INSERT INTO `building` VALUES ('518', 'WarfareBDepot');
INSERT INTO `building` VALUES ('1692', 'WarfareBMGNest_M240_US_EP1');
INSERT INTO `building` VALUES ('1731', 'WarfareBMGNest_PK_TK_EP1');
INSERT INTO `building` VALUES ('1710', 'WarfareBMGNest_PK_TK_GUE_EP1');
INSERT INTO `building` VALUES ('519', 'WarfareBunkerSign');
INSERT INTO `building` VALUES ('520', 'WaterBasin_conc_EP1');
INSERT INTO `building` VALUES ('1620', 'Wire_cat1');
INSERT INTO `building` VALUES ('1621', 'Wire_cat2');
INSERT INTO `building` VALUES ('1622', 'WoodCrate_DZ');
INSERT INTO `building` VALUES ('1623', 'WoodDoor_Preview_DZ');
INSERT INTO `building` VALUES ('543', 'Wooden_shed_DZ');
INSERT INTO `building` VALUES ('572', 'WoodFloorHalf_DZ');
INSERT INTO `building` VALUES ('1625', 'WoodFloorHalf_Preview_DZ');
INSERT INTO `building` VALUES ('573', 'WoodFloorQuarter_DZ');
INSERT INTO `building` VALUES ('1626', 'WoodFloorQuarter_Preview_DZ');
INSERT INTO `building` VALUES ('571', 'WoodFloor_DZ');
INSERT INTO `building` VALUES ('1624', 'WoodFloor_Preview_DZ');
INSERT INTO `building` VALUES ('521', 'WoodGate_DZ');
INSERT INTO `building` VALUES ('580', 'WoodLadder_DZ');
INSERT INTO `building` VALUES ('1627', 'WoodLadder_Preview_DZ');
INSERT INTO `building` VALUES ('556', 'WoodLargeWallDoor_DZ');
INSERT INTO `building` VALUES ('1629', 'WoodLargeWallDoor_Preview_DZ');
INSERT INTO `building` VALUES ('575', 'WoodLargeWallWin_DZ');
INSERT INTO `building` VALUES ('1630', 'WoodLargeWallWin_Preview_DZ');
INSERT INTO `building` VALUES ('574', 'WoodLargeWall_DZ');
INSERT INTO `building` VALUES ('1628', 'WoodLargeWall_Preview_DZ');
INSERT INTO `building` VALUES ('568', 'WoodRamp_DZ');
INSERT INTO `building` VALUES ('1631', 'WoodRamp_Preview_DZ');
INSERT INTO `building` VALUES ('542', 'WoodShack_DZ');
INSERT INTO `building` VALUES ('552', 'WoodSmallWallDoor_DZ');
INSERT INTO `building` VALUES ('1633', 'WoodSmallWallDoor_Preview_DZ');
INSERT INTO `building` VALUES ('577', 'WoodSmallWallThird_DZ');
INSERT INTO `building` VALUES ('1634', 'WoodSmallWallThird_Preview_DZ');
INSERT INTO `building` VALUES ('578', 'WoodSmallWallWin_DZ');
INSERT INTO `building` VALUES ('1635', 'WoodSmallWallWin_Preview_DZ');
INSERT INTO `building` VALUES ('576', 'WoodSmallWall_DZ');
INSERT INTO `building` VALUES ('1632', 'WoodSmallWall_Preview_DZ');
INSERT INTO `building` VALUES ('1637', 'WoodStairsRails_DZ');
INSERT INTO `building` VALUES ('581', 'WoodStairsSans_DZ');
INSERT INTO `building` VALUES ('1638', 'WoodStairsSans_Preview_DZ');
INSERT INTO `building` VALUES ('579', 'WoodStairs_DZ');
INSERT INTO `building` VALUES ('1636', 'WoodStairs_Preview_DZ');
INSERT INTO `building` VALUES ('531', 'WorkBench_DZ');
INSERT INTO `building` VALUES ('1639', 'ZavoraAnim');
INSERT INTO `building` VALUES ('1666', 'ZU23_CDF');
INSERT INTO `building` VALUES ('1667', 'ZU23_Gue');
INSERT INTO `building` VALUES ('1665', 'ZU23_Ins');
INSERT INTO `building` VALUES ('1730', 'ZU23_TK_EP1');
INSERT INTO `building` VALUES ('1709', 'ZU23_TK_GUE_EP1');
INSERT INTO `building` VALUES ('1718', 'ZU23_TK_INS_EP1');
INSERT INTO `building` VALUES ('582', '_cwr2_lamp');

-- ----------------------------
-- Table structure for building_data
-- ----------------------------
DROP TABLE IF EXISTS `building_data`;
CREATE TABLE `building_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) DEFAULT NULL,
  `building_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building_data
-- ----------------------------
INSERT INTO `building_data` VALUES ('10', 'campeast', 'hunting');
INSERT INTO `building_data` VALUES ('11', 'Land_aif_strazni_vez', 'military');
INSERT INTO `building_data` VALUES ('12', 'Land_aif_hlaska', 'military');
INSERT INTO `building_data` VALUES ('13', 'Land_aif_tovarna1', 'industrial');
INSERT INTO `building_data` VALUES ('14', 'Land_NAV_Lighthouse', 'supermarket');
INSERT INTO `building_data` VALUES ('15', 'Land_aif_zluty_statek_in', 'residential');
INSERT INTO `building_data` VALUES ('16', 'Land_aif_hotel_bio', 'military');
INSERT INTO `building_data` VALUES ('17', 'Land_afbarabizna', 'residential');
INSERT INTO `building_data` VALUES ('18', 'Land_fuelstation_army', 'military');
INSERT INTO `building_data` VALUES ('19', 'Land_army_hut_int', 'military');
INSERT INTO `building_data` VALUES ('20', 'Land_army_hut3_long_int', 'military');
INSERT INTO `building_data` VALUES ('21', 'Land_army_hut2_int', 'military');
INSERT INTO `building_data` VALUES ('22', 'Land_cihlovej_dum_in', 'residential');
INSERT INTO `building_data` VALUES ('23', 'Land_hruzdum', 'residential');
INSERT INTO `building_data` VALUES ('24', 'Land_tovarna1', 'industrial');
INSERT INTO `building_data` VALUES ('25', 'Land_ryb_domek', 'residential');
INSERT INTO `building_data` VALUES ('26', 'Land_benzina_schnell', 'industrial');
INSERT INTO `building_data` VALUES ('27', 'Land_deutshe_mini', 'residential');
INSERT INTO `building_data` VALUES ('28', 'Land_sara_stodola', 'generic');
INSERT INTO `building_data` VALUES ('29', 'Land_hut01', 'residential');
INSERT INTO `building_data` VALUES ('30', 'Land_hut02', 'residential');
INSERT INTO `building_data` VALUES ('31', 'Land_hut04', 'residential');
INSERT INTO `building_data` VALUES ('32', 'Land_hut03', 'residential');
INSERT INTO `building_data` VALUES ('33', 'Land_hut_old02', 'industrial');
INSERT INTO `building_data` VALUES ('34', 'Land_dum_istan3_pumpa', 'residential');
INSERT INTO `building_data` VALUES ('35', 'Land_dum_istan3_hromada2', 'residential');
INSERT INTO `building_data` VALUES ('36', 'Land_fuelstation', 'industrial');
INSERT INTO `building_data` VALUES ('37', 'Land_chilovej_dum_mini', 'residential');
INSERT INTO `building_data` VALUES ('38', 'Land_HouseV_1I4', 'residential');
INSERT INTO `building_data` VALUES ('39', 'Land_kulna', 'residential');
INSERT INTO `building_data` VALUES ('40', 'Land_Ind_Workshop01_01', 'industrial');
INSERT INTO `building_data` VALUES ('41', 'Land_Ind_Garage01', 'industrial');
INSERT INTO `building_data` VALUES ('42', 'Land_Ind_Workshop01_02', 'industrial');
INSERT INTO `building_data` VALUES ('43', 'Land_Ind_Workshop01_04', 'industrial');
INSERT INTO `building_data` VALUES ('44', 'Land_Ind_Workshop01_L', 'industrial');
INSERT INTO `building_data` VALUES ('45', 'Land_Hangar_2', 'industrial');
INSERT INTO `building_data` VALUES ('46', 'Land_hut06', 'residential');
INSERT INTO `building_data` VALUES ('47', 'Land_stodola_old_open', 'generic');
INSERT INTO `building_data` VALUES ('48', 'Land_A_FuelStation_Build', 'industrial');
INSERT INTO `building_data` VALUES ('49', 'Land_A_GeneralStore_01a', 'supermarket');
INSERT INTO `building_data` VALUES ('50', 'Land_A_GeneralStore_01', 'supermarket');
INSERT INTO `building_data` VALUES ('51', 'MAP_A_GeneralStore_01', 'generic');
INSERT INTO `building_data` VALUES ('52', 'MAP_A_GeneralStore_01_dam', 'generic');
INSERT INTO `building_data` VALUES ('53', 'Land_generic_Cowshed_a', 'generic');
INSERT INTO `building_data` VALUES ('54', 'Land_stodola_open', 'generic');
INSERT INTO `building_data` VALUES ('55', 'MAP_stodola_old_open', 'generic');
INSERT INTO `building_data` VALUES ('56', 'Land_Barn_W_01', 'generic');
INSERT INTO `building_data` VALUES ('57', 'Map_Barn_W_01_dam', 'generic');
INSERT INTO `building_data` VALUES ('58', 'MAP_R_Barn_W_01', 'generic');
INSERT INTO `building_data` VALUES ('59', 'Land_Hlidac_budka', 'residential');
INSERT INTO `building_data` VALUES ('60', 'Land_HouseV2_02_Interier', 'residential');
INSERT INTO `building_data` VALUES ('61', 'Map_HouseV2_02_Interier', 'generic');
INSERT INTO `building_data` VALUES ('62', 'Land_a_stationhouse', 'military');
INSERT INTO `building_data` VALUES ('63', 'Land_Mil_ControlTower', 'military');
INSERT INTO `building_data` VALUES ('64', 'Land_SS_hangar', 'military');
INSERT INTO `building_data` VALUES ('65', 'Land_A_Pub_01', 'residential');
INSERT INTO `building_data` VALUES ('66', 'Land_HouseB_Tenement', 'office');
INSERT INTO `building_data` VALUES ('67', 'Land_A_Hospital', 'hospital');
INSERT INTO `building_data` VALUES ('68', 'Land_Panelak', 'office');
INSERT INTO `building_data` VALUES ('69', 'Land_Panelak2', 'office');
INSERT INTO `building_data` VALUES ('70', 'Land_Shed_Ind02', 'industrial');
INSERT INTO `building_data` VALUES ('71', 'Land_Shed_wooden', 'residential');
INSERT INTO `building_data` VALUES ('72', 'Land_Misc_PowerStation', 'industrial');
INSERT INTO `building_data` VALUES ('73', 'Land_HouseBlock_A1_1', 'residential');
INSERT INTO `building_data` VALUES ('74', 'Land_Shed_W01', 'industrial');
INSERT INTO `building_data` VALUES ('75', 'Land_HouseV_1I1', 'residential');
INSERT INTO `building_data` VALUES ('76', 'Land_Misc_WaterStation', 'industrial');
INSERT INTO `building_data` VALUES ('77', 'Land_brana02nodoor', 'residential');
INSERT INTO `building_data` VALUES ('78', 'land_mbg_apartments_big_04', 'residential');
INSERT INTO `building_data` VALUES ('79', 'land_mbg_apartments_big_01', 'residential');
INSERT INTO `building_data` VALUES ('80', 'Land_garaz', 'residential');
INSERT INTO `building_data` VALUES ('81', 'land_mbg_brickhouse_01', 'residential');
INSERT INTO `building_data` VALUES ('82', 'Land_sara_domek_vilka', 'residential');
INSERT INTO `building_data` VALUES ('83', 'Land_MBG_GER_supermarket_1', 'supermarket');
INSERT INTO `building_data` VALUES ('84', 'Land_MBG_GER_supermarket_2', 'supermarket');
INSERT INTO `building_data` VALUES ('85', 'Land_MBG_GER_supermarket_3', 'supermarket');
INSERT INTO `building_data` VALUES ('86', 'Land_MBG_GER_supermarket_4', 'supermarket');
INSERT INTO `building_data` VALUES ('87', 'Land_MBG_GER_PUB_1', 'residential');
INSERT INTO `building_data` VALUES ('88', 'Land_MBG_GER_PUB_2', 'residential');
INSERT INTO `building_data` VALUES ('89', 'Barrack2', 'military');
INSERT INTO `building_data` VALUES ('90', 'Land_MBG_GER_residential_1', 'residential');
INSERT INTO `building_data` VALUES ('91', 'Land_MBG_GER_residential_2', 'residential');
INSERT INTO `building_data` VALUES ('92', 'Land_MBG_GER_RHUS_1', 'residential');
INSERT INTO `building_data` VALUES ('93', 'Land_MBG_GER_RHUS_2', 'residential');
INSERT INTO `building_data` VALUES ('94', 'Land_MBG_GER_RHUS_3', 'residential');
INSERT INTO `building_data` VALUES ('95', 'Land_MBG_GER_RHUS_4', 'residential');
INSERT INTO `building_data` VALUES ('96', 'Land_MBG_GER_RHUS_5', 'residential');
INSERT INTO `building_data` VALUES ('97', 'Land_MBG_GER_HUS_1', 'residential');
INSERT INTO `building_data` VALUES ('98', 'Land_MBG_GER_HUS_2', 'residential');
INSERT INTO `building_data` VALUES ('99', 'Land_MBG_GER_HUS_3', 'residential');
INSERT INTO `building_data` VALUES ('100', 'Land_MBG_GER_HUS_4', 'residential');
INSERT INTO `building_data` VALUES ('101', 'Land_MBG_Garage_Single_A', 'industrial');
INSERT INTO `building_data` VALUES ('102', 'Land_MBG_Garage_Single_B', 'industrial');
INSERT INTO `building_data` VALUES ('103', 'Land_MBG_Garage_Single_C', 'industrial');
INSERT INTO `building_data` VALUES ('104', 'Land_MBG_Garage_Single_D', 'industrial');
INSERT INTO `building_data` VALUES ('105', 'Land_MBG_ATC_Base', 'industrial');
INSERT INTO `building_data` VALUES ('106', 'Land_MBG_Companybuilding_1', 'military');
INSERT INTO `building_data` VALUES ('107', 'Land_dum_mesto2', 'residential');
INSERT INTO `building_data` VALUES ('108', 'MAP_dum_mesto_in', 'residential');
INSERT INTO `building_data` VALUES ('109', 'Land_dum_mesto_in', 'residential');
INSERT INTO `building_data` VALUES ('110', 'Land_MBG_Observation_Tower', 'militaryspecial');
INSERT INTO `building_data` VALUES ('111', 'MBG_Killhouse_1', 'industrial');
INSERT INTO `building_data` VALUES ('112', 'MBG_Killhouse_2', 'industrial');
INSERT INTO `building_data` VALUES ('113', 'MBG_Warehouse', 'industrial');
INSERT INTO `building_data` VALUES ('114', 'MBG_Killhouse_3', 'military');
INSERT INTO `building_data` VALUES ('115', 'MBG_Killhouse_4', 'generic');
INSERT INTO `building_data` VALUES ('116', 'MBG_Killhouse_5', 'generic');
INSERT INTO `building_data` VALUES ('117', 'FgS_Hill3', 'militaryspecial');
INSERT INTO `building_data` VALUES ('118', 'Land_Barrack2', 'military');
INSERT INTO `building_data` VALUES ('119', 'Land_Tovarna2', 'industrial');
INSERT INTO `building_data` VALUES ('120', 'Land_rail_station_big', 'office');
INSERT INTO `building_data` VALUES ('121', 'Land_Ind_Vysypka', 'industrial');
INSERT INTO `building_data` VALUES ('122', 'Land_A_Municipaloffice', 'residential');
INSERT INTO `building_data` VALUES ('123', 'Land_A_office01', 'office');
INSERT INTO `building_data` VALUES ('124', 'Land_A_office02', 'office');
INSERT INTO `building_data` VALUES ('125', 'Land_A_BuildingWIP', 'industrial');
INSERT INTO `building_data` VALUES ('126', 'Land_church_01', 'church');
INSERT INTO `building_data` VALUES ('127', 'Land_church_03', 'church');
INSERT INTO `building_data` VALUES ('128', 'MAP_church_03_dam', 'church');
INSERT INTO `building_data` VALUES ('129', 'MAP_church_03', 'church');
INSERT INTO `building_data` VALUES ('130', 'Land_church_02', 'church');
INSERT INTO `building_data` VALUES ('131', 'Land_church_02a', 'church');
INSERT INTO `building_data` VALUES ('132', 'Land_church_05R', 'church');
INSERT INTO `building_data` VALUES ('133', 'Land_Mil_Barracks_i', 'militaryspecial');
INSERT INTO `building_data` VALUES ('134', 'Land_A_TVTower_Base', 'industrial');
INSERT INTO `building_data` VALUES ('135', 'Land_Mil_House', 'military');
INSERT INTO `building_data` VALUES ('136', 'Land_Misc_Cargo1Ao', 'industrial');
INSERT INTO `building_data` VALUES ('137', 'Land_Misc_Cargo1Bo', 'industrial');
INSERT INTO `building_data` VALUES ('138', 'Land_Nav_Boathouse', 'industrial');
INSERT INTO `building_data` VALUES ('139', 'Land_ruin_01', 'residential');
INSERT INTO `building_data` VALUES ('140', 'Land_wagon_box', 'industrial');
INSERT INTO `building_data` VALUES ('141', 'Land_HouseV2_04_interier', 'residential');
INSERT INTO `building_data` VALUES ('142', 'Land_HouseV2_01A', 'residential');
INSERT INTO `building_data` VALUES ('143', 'Land_psi_bouda', 'residential');
INSERT INTO `building_data` VALUES ('144', 'Land_KBud', 'residential');
INSERT INTO `building_data` VALUES ('145', 'Land_A_Castle_Bergfrit', 'residential');
INSERT INTO `building_data` VALUES ('146', 'Land_A_Castle_Stairs_A', 'residential');
INSERT INTO `building_data` VALUES ('147', 'Land_A_Castle_Gate', 'residential');
INSERT INTO `building_data` VALUES ('148', 'Land_Mil_Barracks', 'military');
INSERT INTO `building_data` VALUES ('149', 'Land_Mil_Barracks_L', 'military');
INSERT INTO `building_data` VALUES ('150', 'Land_Barn_W_02', 'generic');
INSERT INTO `building_data` VALUES ('151', 'Land_sara_domek_zluty', 'residential');
INSERT INTO `building_data` VALUES ('152', 'Land_sara_Domek_sedy', 'residential');
INSERT INTO `building_data` VALUES ('153', 'Land_HouseV_3I4', 'residential');
INSERT INTO `building_data` VALUES ('154', 'Land_Shed_W4', 'residential');
INSERT INTO `building_data` VALUES ('155', 'Land_HouseV_3I1', 'residential');
INSERT INTO `building_data` VALUES ('156', 'Land_HouseV_1L2', 'residential');
INSERT INTO `building_data` VALUES ('157', 'Land_HouseV_1T', 'residential');
INSERT INTO `building_data` VALUES ('158', 'Land_telek1', 'industrial');
INSERT INTO `building_data` VALUES ('159', 'Land_Rail_House_01', 'industrial');
INSERT INTO `building_data` VALUES ('160', 'Land_HouseV_2I', 'generic');
INSERT INTO `building_data` VALUES ('161', 'Land_Misc_deerstand', 'hunting');
INSERT INTO `building_data` VALUES ('162', 'Land_A_Villa_EP1', 'residential');
INSERT INTO `building_data` VALUES ('163', 'Land_House_C_2_EP1', 'residential');
INSERT INTO `building_data` VALUES ('164', 'Land_House_C_3_EP1', 'residential');
INSERT INTO `building_data` VALUES ('165', 'Land_House_C_4_EP1', 'residential');
INSERT INTO `building_data` VALUES ('166', 'Land_House_C_5_EP1', 'residential');
INSERT INTO `building_data` VALUES ('167', 'Land_House_C_5_V2_EP1', 'residential');
INSERT INTO `building_data` VALUES ('168', 'Land_House_C_5_V3_EP1', 'residential');
INSERT INTO `building_data` VALUES ('169', 'Land_House_C_5_V1_EP1', 'residential');
INSERT INTO `building_data` VALUES ('170', 'Land_House_C_9_EP1', 'residential');
INSERT INTO `building_data` VALUES ('171', 'Land_House_C_10_EP1', 'residential');
INSERT INTO `building_data` VALUES ('172', 'Land_House_C_11_EP1', 'residential');
INSERT INTO `building_data` VALUES ('173', 'Land_House_C_12_EP1', 'industrial');
INSERT INTO `building_data` VALUES ('174', 'Land_House_K_3_EP1', 'residential');
INSERT INTO `building_data` VALUES ('175', 'Land_House_K_7_EP1', 'residential');
INSERT INTO `building_data` VALUES ('176', 'Land_House_L_7_EP1', 'residential');
INSERT INTO `building_data` VALUES ('177', 'Land_House_L_6_EP1', 'residential');
INSERT INTO `building_data` VALUES ('178', 'Land_House_K_8_EP1', 'residential');
INSERT INTO `building_data` VALUES ('179', 'Land_House_K_5_EP1', 'residential');
INSERT INTO `building_data` VALUES ('180', 'Land_House_K_1_EP1', 'residential');
INSERT INTO `building_data` VALUES ('181', 'Land_House_L_3_EP1', 'residential');
INSERT INTO `building_data` VALUES ('182', 'Land_House_L_4_EP1', 'residential');
INSERT INTO `building_data` VALUES ('183', 'Camp', 'military');
INSERT INTO `building_data` VALUES ('184', 'CampEast', 'military');
INSERT INTO `building_data` VALUES ('185', 'CampEast_EP1', 'military');
INSERT INTO `building_data` VALUES ('186', 'MASH', 'medical');
INSERT INTO `building_data` VALUES ('187', 'MASH_EP1', 'medical');
INSERT INTO `building_data` VALUES ('188', 'Mi8Wreck_DZ', 'military');
INSERT INTO `building_data` VALUES ('189', 'UH1Wreck_DZ', 'military');
INSERT INTO `building_data` VALUES ('190', 'UH60Wreck_DZ', 'military');
INSERT INTO `building_data` VALUES ('191', 'USMC_WarfareBFieldhHospital', 'medical');
INSERT INTO `building_data` VALUES ('192', 'Land_Ind_Shed_02_main', 'generic');
INSERT INTO `building_data` VALUES ('193', 'HouseRoaming', 'residential');
INSERT INTO `building_data` VALUES ('194', 'FarmRoaming', 'generic');
INSERT INTO `building_data` VALUES ('195', 'Land_Shed_W03', 'generic');
INSERT INTO `building_data` VALUES ('196', 'Land_HouseV_1I3', 'residential');
INSERT INTO `building_data` VALUES ('197', 'Land_HouseV_1L1', 'residential');
INSERT INTO `building_data` VALUES ('198', 'Land_HouseV_1I2', 'residential');
INSERT INTO `building_data` VALUES ('199', 'Land_HouseV_2L', 'residential');
INSERT INTO `building_data` VALUES ('200', 'Land_HouseV_2T1', 'generic');
INSERT INTO `building_data` VALUES ('201', 'Land_houseV_2T2', 'residential');
INSERT INTO `building_data` VALUES ('202', 'Land_HouseV_3I2', 'generic');
INSERT INTO `building_data` VALUES ('203', 'Land_HouseV_3I3', 'generic');
INSERT INTO `building_data` VALUES ('204', 'Land_HouseBlock_A1', 'residential');
INSERT INTO `building_data` VALUES ('205', 'Land_HouseBlock_A1_2', 'generic');
INSERT INTO `building_data` VALUES ('206', 'Land_HouseBlock_A2', 'generic');
INSERT INTO `building_data` VALUES ('207', 'Land_HouseBlock_A2_1', 'residential');
INSERT INTO `building_data` VALUES ('208', 'Land_HouseBlock_A3', 'residential');
INSERT INTO `building_data` VALUES ('209', 'Land_HouseBlock_B1', 'generic');
INSERT INTO `building_data` VALUES ('210', 'Land_HouseBlock_B2', 'generic');
INSERT INTO `building_data` VALUES ('211', 'Land_HouseBlock_B3', 'generic');
INSERT INTO `building_data` VALUES ('212', 'Land_HouseBlock_B4', 'generic');
INSERT INTO `building_data` VALUES ('213', 'Land_HouseBlock_B5', 'residential');
INSERT INTO `building_data` VALUES ('214', 'Land_HouseBlock_B6', 'residential');
INSERT INTO `building_data` VALUES ('215', 'Land_HouseBlock_C1', 'residential');
INSERT INTO `building_data` VALUES ('216', 'Land_HouseBlock_C2', 'generic');
INSERT INTO `building_data` VALUES ('217', 'Land_HouseBlock_C3', 'generic');
INSERT INTO `building_data` VALUES ('218', 'Land_HouseBlock_C4', 'generic');
INSERT INTO `building_data` VALUES ('219', 'Land_HouseBlock_C5', 'generic');
INSERT INTO `building_data` VALUES ('220', 'Land_HouseV2_01B', 'residential');
INSERT INTO `building_data` VALUES ('221', 'Land_Misc_Cargo1D', 'generic');
INSERT INTO `building_data` VALUES ('222', 'Land_HouseV2_03', 'residential');
INSERT INTO `building_data` VALUES ('223', 'Land_sara_domek_podhradi_1', 'residential');
INSERT INTO `building_data` VALUES ('224', 'Land_Ind_Shed_01_end', 'generic');
INSERT INTO `building_data` VALUES ('225', 'Land_A_statue01', 'generic');
INSERT INTO `building_data` VALUES ('226', 'Land_Shed_W02', 'generic');
INSERT INTO `building_data` VALUES ('227', 'Grave', 'generic');
INSERT INTO `building_data` VALUES ('228', 'GraveCross1', 'generic');
INSERT INTO `building_data` VALUES ('229', 'GraveCross2', 'generic');
INSERT INTO `building_data` VALUES ('230', 'GraveCrossHelmet', 'military');
INSERT INTO `building_data` VALUES ('231', 'Land_BoatSmall_2b', 'residential');
INSERT INTO `building_data` VALUES ('232', 'Land_generic_Cowshed_c', 'generic');
INSERT INTO `building_data` VALUES ('233', 'Land_generic_Cowshed_b', 'generic');
INSERT INTO `building_data` VALUES ('234', 'Land_Barn_Metal', 'generic');
INSERT INTO `building_data` VALUES ('235', 'Land_Ind_Expedice_1', 'industrial');
INSERT INTO `building_data` VALUES ('236', 'Land_A_CraneCon', 'industrial');
INSERT INTO `building_data` VALUES ('237', 'Land_Ind_Mlyn_03', 'industrial');
INSERT INTO `building_data` VALUES ('238', 'Rubbish5', 'industrial');
INSERT INTO `building_data` VALUES ('239', 'Land_Mil_Guardhouse', 'military');
INSERT INTO `building_data` VALUES ('240', 'Land_komin', 'industrial');
INSERT INTO `building_data` VALUES ('241', 'Land_Ind_Pec_01', 'industrial');
INSERT INTO `building_data` VALUES ('242', 'Land_Ind_SiloVelke_01', 'industrial');
INSERT INTO `building_data` VALUES ('243', 'Land_Misc_Garb_Heap_EP1', 'industrial');
INSERT INTO `building_data` VALUES ('244', 'Land_Shed_M02', 'residential');
INSERT INTO `building_data` VALUES ('245', 'Fort_Barricade', 'industrial');
INSERT INTO `building_data` VALUES ('246', 'Land_Misc_Rubble_EP1', 'industrial');
INSERT INTO `building_data` VALUES ('247', 'Land_A_Crane_02b', 'industrial');
INSERT INTO `building_data` VALUES ('248', 'datsun01Wreck', 'residential');
INSERT INTO `building_data` VALUES ('249', 'LADAWreck', 'industrial');
INSERT INTO `building_data` VALUES ('250', 'SKODAWreck', 'residential');
INSERT INTO `building_data` VALUES ('251', 'Land_Misc_GContainer_Big', 'industrial');
INSERT INTO `building_data` VALUES ('252', 'Land_Toilet', 'military');
INSERT INTO `building_data` VALUES ('253', 'Land_HouseV2_05', 'residential');
INSERT INTO `building_data` VALUES ('254', 'Land_dum_rasovna', 'residential');
INSERT INTO `building_data` VALUES ('255', 'Land_bouda2_vnitrek', 'industrial');
INSERT INTO `building_data` VALUES ('256', 'Land_MBG_Killhouse_4', 'industrial');
INSERT INTO `building_data` VALUES ('257', 'Land_MBG_Killhouse_3', 'industrial');
INSERT INTO `building_data` VALUES ('258', 'Land_MBG_Killhouse_2', 'industrial');
INSERT INTO `building_data` VALUES ('259', 'Land_MBG_Killhouse_1', 'industrial');
INSERT INTO `building_data` VALUES ('260', 'Land_MBG_Warehouse', 'industrial');
INSERT INTO `building_data` VALUES ('261', 'Land_sara_hasic_zbroj', 'industrial');
INSERT INTO `building_data` VALUES ('262', 'Land_dum_zboreny', 'generic');
INSERT INTO `building_data` VALUES ('263', 'Land_dulni_bs', 'generic');
INSERT INTO `building_data` VALUES ('264', 'Land_Mil_House', 'generic');

-- ----------------------------
-- Table structure for building_loot
-- ----------------------------
DROP TABLE IF EXISTS `building_loot`;
CREATE TABLE `building_loot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loot_name` varchar(255) DEFAULT NULL,
  `loot_type` varchar(255) DEFAULT NULL,
  `loot_min` int(11) DEFAULT NULL,
  `loot_max` int(11) DEFAULT NULL,
  `loot_level` varchar(255) DEFAULT NULL,
  `game_max` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building_loot
-- ----------------------------
INSERT INTO `building_loot` VALUES ('2', '1000Rnd_23mm_2A14_AP', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('3', '1000Rnd_23mm_2A14_HE', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('4', '100Rnd_127x99_L2A1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('5', '100Rnd_127x99_M2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('6', '100Rnd_556x45_BetaCMag', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('7', '100Rnd_556x45_BetaCMag_airLock', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('8', '100Rnd_556x45_M249', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('9', '100Rnd_56x45_GP90', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('10', '100Rnd_762x51_M240', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('11', '100Rnd_762x54_PK', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('12', '10Rnd_127x99_m107', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('13', '10Rnd_762x54_SVD', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('14', '10Rnd_85mmAP', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('15', '10Rnd_86x70_LAPUA', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('16', '10Rnd_86x70SD_LAPUA', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('17', '10Rnd_9x39_SP5_VSS', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('18', '10Rnd_B_765x17_Ball', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('19', '10x_303', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('20', '1200Rnd_20mm_M621', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('21', '1200Rnd_762x51_M240', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('22', '120Rnd_75x55_GP11', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('23', '128Rnd_57mm', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('24', '12RND_105mm_HESH', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('25', '12Rnd_CRV7', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('26', '12Rnd_MLRS', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('27', '12Rnd_Vikhr_KA50', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('28', '1470Rnd_127x108_YakB', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('29', '14Rnd_57mm', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('30', '14Rnd_FFAR', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('31', '1500Rnd_762x54_PKT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('32', '150Rnd_127x107_DSHKM', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('33', '150Rnd_127x108_KORD', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('34', '150Rnd_23mm_GSh23L', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('35', '150Rnd_30mmAP_2A42', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('36', '150Rnd_30mmHE_2A42', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('37', '15Rnd_556x45_Stanag_tapedmags', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('38', '15Rnd_9x19_LUGER', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('39', '15Rnd_9x19_M9', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('40', '15Rnd_9x19_M9SD', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('41', '15Rnd_9x19sd_LUGER', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('42', '15Rnd_W1866_Pellet', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('43', '15Rnd_W1866_Slug', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('44', '17Rnd_9x19_glock17', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('45', '180Rnd_30mm_GSh301', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('46', '1904Rnd_30mmAA_2A38M', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('47', '192Rnd_57mm', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('48', '1Rnd_HE_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('49', '1Rnd_HE_M203', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('50', '1Rnd_SMOKE_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('51', '1Rnd_Smoke_M203', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('52', '1Rnd_SMOKEGREEN_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('53', '1Rnd_SmokeGreen_M203', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('54', '1Rnd_SMOKERED_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('55', '1Rnd_SmokeRed_M203', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('56', '1Rnd_SmokeYellow_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('57', '1Rnd_SmokeYellow_M203', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('58', '1Rnd_SMOKEYELOW_GP25', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('59', '2000Rnd_23mm_AZP85', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('60', '2000Rnd_762x51_L94A1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('61', '2000Rnd_762x54_PKT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('62', '200Rnd_556x45_L110A1', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('63', '200Rnd_556x45_M249', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('64', '200Rnd_56x45_GP90', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('65', '200Rnd_762x51_M240', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('66', '200Rnd_762x54_GPMG', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('67', '200Rnd_762x54_PKT', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('68', '20Rnd_120mmHE_M1A2', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('69', '20Rnd_120mmSABOT_M1A2', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('70', '20Rnd_556x45_Stanag', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('71', '20Rnd_56x45_GP90', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('72', '20rnd_762x51_B_SCAR', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('73', '20Rnd_762x51_DMR', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('74', '20Rnd_762x51_FNFAL', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('75', '20rnd_762x51_SB_SCAR', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('76', '20Rnd_762x55_SWISS_P_AP', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('77', '20Rnd_762x55_SWISS_P_SD', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('78', '20Rnd_9x39_SP5_VSS', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('79', '20Rnd_B_765x17_Ball', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('80', '20Rnd_B_AA12_74Slug', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('81', '20Rnd_B_AA12_HE', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('82', '20Rnd_B_AA12_Pellets', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('83', '2100Rnd_20mm_M168', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('84', '210Rnd_25mm_M242_APDS', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('85', '210Rnd_25mm_M242_HEI', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('86', '21Rnd_100mmHEAT_D10', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('87', '22Rnd_100mm_HE_2A70', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('88', '22Rnd_125mmHE_T72', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('89', '230Rnd_30mmAP_2A42', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('90', '230Rnd_30mmHE_2A42', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('91', '23Rnd_125mmSABOT_T72', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('92', '24Rnd_120mmHE_M120', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('93', '24Rnd_120mmHE_M120_02', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('94', '250Rnd_127x99_M3P', 'magazine', '1', '5', 'basicammo', '999');
INSERT INTO `building_loot` VALUES ('95', '250Rnd_30mmAP_2A42', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('96', '250Rnd_30mmAP_2A72', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('97', '250Rnd_30mmHE_2A42', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('98', '250Rnd_30mmHE_2A72', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('99', '250Rnd_762x54_PKT_T90', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('100', '28Rnd_FFAR', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('101', '29Rnd_30mm_AGS30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('102', '29Rnd_30mm_AGS30_heli', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('103', '2Rnd_FAB_250', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('104', '2Rnd_GBU12', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('105', '2Rnd_GBU12_AV8B', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('106', '2Rnd_Igla', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('107', '2Rnd_Mk82', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('108', '2Rnd_R73', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('109', '2Rnd_shotgun_74Pellets', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('110', '2Rnd_shotgun_74Slug', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('111', '2Rnd_Sidewinder_AH1Z', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('112', '2Rnd_Sidewinder_F35', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('113', '2Rnd_Stinger', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('114', '2Rnd_TOW', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('115', '2Rnd_TOW2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('116', '300Rnd_25mm_GAU12', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('117', '30m_plot_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('118', '30Rnd_105mmHE_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('119', '30Rnd_105mmILLUM_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('120', '30Rnd_105mmLASER_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('121', '30Rnd_105mmSADARM_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('122', '30Rnd_105mmSMOKE_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('123', '30Rnd_105mmWP_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('124', '30Rnd_122mmHE_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('125', '30Rnd_122mmILLUM_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('126', '30Rnd_122mmLASER_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('127', '30Rnd_122mmSADARM_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('128', '30Rnd_122mmSMOKE_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('129', '30Rnd_122mmWP_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('130', '30Rnd_545x39_AK', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('131', '30Rnd_545x39_AKSD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('132', '30Rnd_556x45_G36', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('133', '30Rnd_556x45_G36SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('134', '30Rnd_556x45_Stanag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('135', '30Rnd_556x45_StanagSD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('136', '30Rnd_56x45_GP90', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('137', '30Rnd_56x45SD_GP90', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('138', '30Rnd_762x39_AK47', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('139', '30Rnd_762x39_SA58', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('140', '30Rnd_9x19_LUGER', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('141', '30Rnd_9x19_MP5', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('142', '30Rnd_9x19_MP5SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('143', '30Rnd_9x19_UZI', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('144', '30Rnd_9x19_UZI_SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('145', '30Rnd_9x19sd_LUGER', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('146', '32Rnd_40mm_GMG', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('147', '33Rnd_85mmHE', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('148', '38Rnd_CRV7', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('149', '38Rnd_FFAR', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('150', '3Rnd_Mk82', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('151', '400Rnd_30mm_AGS17', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('152', '40Rnd_23mm_AZP85', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('153', '40Rnd_80mm', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('154', '40Rnd_GRAD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('155', '40Rnd_S8T', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('156', '48Rnd_40mm_MK19', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('157', '4Rnd_AT2_Mi24D', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('158', '4Rnd_AT6_Mi24V', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('159', '4Rnd_AT9_Mi24P', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('160', '4Rnd_Ch29', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('161', '4Rnd_FAB_250', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('162', '4Rnd_GBU12', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('163', '4Rnd_GBU12_AV8B', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('164', '4Rnd_Hellfire', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('165', '4Rnd_Mk82', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('166', '4Rnd_R73', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('167', '4Rnd_Sidewinder_AV8B', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('168', '4Rnd_Stinger', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('169', '500Rnd_145x115_KPVT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('170', '500Rnd_TwinVickers', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('171', '50Rnd_127x107_DSHKM', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('172', '50Rnd_127x108_KORD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('173', '520Rnd_23mm_GSh23L', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('174', '5Rnd_127x108_KSVK', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('175', '5Rnd_127x99_as50', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('176', '5Rnd_762x51_M24', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('177', '5Rnd_86x70_L115A1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('178', '5Rnd_AT11_T90', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('179', '5Rnd_AT5_BRDM2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('180', '5x_22_LR_17_HMR', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('181', '60Rnd_762x54_DT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('182', '64Rnd_57mm', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('183', '64Rnd_9x19_Bizon', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('184', '64Rnd_9x19_SD_Bizon', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('185', '6RND_105mm_APDS', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('186', '6Rnd_45ACP', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('187', '6Rnd_AT13', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('188', '6Rnd_Ch29', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('189', '6Rnd_CRV7_FAT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('190', '6Rnd_CRV7_HEPD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('191', '6Rnd_FlareGreen_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('192', '6Rnd_FlareRed_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('193', '6Rnd_FlareWhite_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('194', '6Rnd_FlareYellow_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('195', '6Rnd_GBU12_AV8B', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('196', '6Rnd_Grenade_Camel', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('197', '6Rnd_HE_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('198', '6Rnd_HE_M203_heli', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('199', '6Rnd_Mk82', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('200', '6Rnd_Smoke_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('201', '6Rnd_SmokeGreen_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('202', '6Rnd_SmokeRed_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('203', '6Rnd_SmokeYellow_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('204', '6Rnd_TOW_HMMWV', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('205', '6Rnd_TOW2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('206', '750Rnd_30mm_GSh301', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('207', '750Rnd_M197_AH1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('208', '75Rnd_545x39_RPK', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('209', '7Rnd_127x99_AP', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('210', '7Rnd_127x99_HE', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('211', '7Rnd_45ACP_1911', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('212', '80Rnd_80mm', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('213', '80Rnd_S8T', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('214', '8Rnd_81mmHE_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('215', '8Rnd_81mmILLUM_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('216', '8Rnd_81mmWP_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('217', '8Rnd_82mmHE_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('218', '8Rnd_82mmILLUM_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('219', '8Rnd_82mmWP_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('220', '8Rnd_9M311', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('221', '8Rnd_9x18_Makarov', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('222', '8Rnd_9x18_MakarovSD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('223', '8Rnd_AT10_BMP3', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('224', '8Rnd_AT5_BMP2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('225', '8Rnd_B_Beneli_74Slug', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('226', '8Rnd_B_Beneli_Pellets', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('227', '8Rnd_B_Saiga12_74Slug', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('228', '8Rnd_B_Saiga12_Pellets', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('229', '8Rnd_Hellfire', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('230', '8Rnd_Sidewinder_AH64', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('231', '8Rnd_Stinger', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('232', '9Rnd_9x19_LUGER', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('233', '9Rnd_9x19SD_LUGER', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('234', 'ARTY_12Rnd_227mmHE_M270', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('235', 'ARTY_30Rnd_105mmHE_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('236', 'ARTY_30Rnd_105mmILLUM_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('237', 'ARTY_30Rnd_105mmLASER_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('238', 'ARTY_30Rnd_105mmSADARM_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('239', 'ARTY_30Rnd_105mmSMOKE_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('240', 'ARTY_30Rnd_105mmWP_M119', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('241', 'ARTY_30Rnd_122mmHE_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('242', 'ARTY_30Rnd_122mmILLUM_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('243', 'ARTY_30Rnd_122mmLASER_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('244', 'ARTY_30Rnd_122mmSADARM_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('245', 'ARTY_30Rnd_122mmSMOKE_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('246', 'ARTY_30Rnd_122mmWP_D30', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('247', 'ARTY_40Rnd_120mmHE_BM21', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('248', 'ARTY_8Rnd_81mmHE_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('249', 'ARTY_8Rnd_81mmILLUM_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('250', 'ARTY_8Rnd_81mmWP_M252', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('251', 'ARTY_8Rnd_82mmHE_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('252', 'ARTY_8Rnd_82mmILLUM_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('253', 'ARTY_8Rnd_82mmWP_2B14', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('254', 'AT13', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('255', 'Attachment_ACG', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('256', 'Attachment_AIM', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('257', 'Attachment_CAMO', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('258', 'Attachment_GL', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('259', 'Attachment_Kobra', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('260', 'Attachment_Pso', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('261', 'Attachment_Silencer', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('262', 'Attachment_Sniper_Scope', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('263', 'BAF_ied_v1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('264', 'BAF_ied_v2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('265', 'BAF_ied_v3', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('266', 'BAF_ied_v4', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('267', 'BAF_L109A1_HE', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('268', 'BagFenceRound_DZ_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('269', 'BoltSteel', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('270', 'bulk_15Rnd_9x19_M9SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('271', 'bulk_17Rnd_9x19_glock17', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('272', 'bulk_30Rnd_556x45_StanagSD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('273', 'bulk_30Rnd_9x19_MP5SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('274', 'bulk_empty', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('275', 'bulk_FoodbaconCooked', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('276', 'bulk_FoodbaconCookedFull', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('277', 'bulk_ItemSandbag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('278', 'bulk_ItemSodaCoke', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('279', 'bulk_ItemSodaCokeFull', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('280', 'bulk_ItemSodaPepsi', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('281', 'bulk_ItemSodaPepsiFull', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('282', 'bulk_ItemTankTrap', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('283', 'bulk_ItemTankTrapHalf', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('284', 'bulk_ItemWire', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('285', 'bulk_ItemWireHalf', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('286', 'bulk_PartGeneric', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('287', 'bulk_PartGenericHalf', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('288', 'ChemLightMag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('289', 'cinder_door_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('290', 'cinder_garage_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('291', 'cinder_wall_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('292', 'CinderBlocks', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('293', 'deer_stand_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('294', 'desert_large_net_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('295', 'desert_net_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('296', 'Dragon_EP1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('297', 'equip_1inch_metal_pipe', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('298', 'equip_2inch_metal_pipe', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('299', 'equip_aa_battery', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('300', 'equip_cable_tie', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('301', 'equip_d_battery', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('302', 'equip_duct_tape', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('303', 'equip_empty_barrel', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('304', 'equip_gauze', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('305', 'equip_hose_clamp', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('306', 'equip_laser', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('307', 'equip_metal_sheet', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('308', 'equip_nail', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('309', 'equip_needle', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('310', 'equip_note', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('311', 'equip_paint', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('312', 'equip_paper_sheet', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('313', 'equip_part_loupe', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('314', 'equip_pvc_box', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('315', 'equip_rag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('316', 'equip_rail_screws', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('317', 'equip_rope', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('318', 'equip_scrap_electronics', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('319', 'equip_scrap_metal', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('320', 'equip_string', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('321', 'equip_weapon_rails', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('322', 'equip_wood_pallet', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('323', 'FlareGreen_GP25', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('324', 'FlareGreen_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('325', 'FlareLauncherMag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('326', 'FlareRed_GP25', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('327', 'FlareRed_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('328', 'FlareWhite_GP25', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('329', 'FlareWhite_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('330', 'FlareYellow_GP25', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('331', 'FlareYellow_M203', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('332', 'FoodbaconCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('333', 'FoodbaconRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('334', 'FoodbeefCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('335', 'FoodbeefRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('336', 'FoodBioMeat', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('337', 'FoodCanBadguy', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('338', 'FoodCanBadguyEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('339', 'FoodCanBakedBeans', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('340', 'FoodCanBoneboy', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('341', 'FoodCanBoneboyEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('342', 'FoodCanCorn', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('343', 'FoodCanCornEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('344', 'FoodCanCurgon', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('345', 'FoodCanCurgonEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('346', 'FoodCanDemon', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('347', 'FoodCanDemonEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('348', 'FoodCanDerpy', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('349', 'FoodCanDerpyEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('350', 'FoodCanDogFood', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('351', 'FoodCandyAnders', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('352', 'FoodCandyChubby', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('353', 'FoodCandyLegacys', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('354', 'FoodCandyMintception', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('355', 'FoodCanFraggleos', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('356', 'FoodCanFraggleosEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('357', 'FoodCanFrankBeans', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('358', 'FoodCanGriff', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('359', 'FoodCanGriffEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('360', 'FoodCanHerpy', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('361', 'FoodCanHerpyEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('362', 'FoodCanLongSprats', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('363', 'FoodCanLongSpratsEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('364', 'FoodCanOrlok', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('365', 'FoodCanOrlokEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('366', 'FoodCanPasta', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('367', 'FoodCanPotatoes', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('368', 'FoodCanPotatoesEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('369', 'FoodCanPowell', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('370', 'FoodCanPowellEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('371', 'FoodCanRusCorn', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('372', 'FoodCanRusCornEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('373', 'FoodCanRusMilk', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('374', 'FoodCanRusMilkEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('375', 'FoodCanRusPeas', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('376', 'FoodCanRusPeasEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('377', 'FoodCanRusPork', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('378', 'FoodCanRusPorkEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('379', 'FoodCanRusStew', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('380', 'FoodCanRusStewEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('381', 'FoodCanRusUnlabeled', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('382', 'FoodCanRusUnlabeledEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('383', 'FoodCanSardines', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('384', 'FoodCanTylers', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('385', 'FoodCanTylersEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('386', 'FoodCanUnlabeled', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('387', 'FoodCanUnlabeledEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('388', 'FoodchickenCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('389', 'FoodchickenRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('390', 'FoodChipsChocolate', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('391', 'FoodChipsChocolateEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('392', 'FoodChipsMysticales', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('393', 'FoodChipsMysticalesEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('394', 'FoodChipsSulahoops', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('395', 'FoodChipsSulahoopsEmpty', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('396', 'FooddogCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('397', 'FooddogRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('398', 'FoodgoatCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('399', 'FoodgoatRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('400', 'FoodmeatCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('401', 'FoodmeatRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('402', 'FoodMRE', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('403', 'FoodmuttonCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('404', 'FoodmuttonRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('405', 'FoodNutmix', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('406', 'FoodPistachio', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('407', 'FoodrabbitCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('408', 'FoodrabbitRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('409', 'FoodSteakCooked', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('410', 'FoodSteakRaw', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('411', 'forest_large_net_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('412', 'forest_net_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('413', 'fuel_pump_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('414', 'HandChemBlue', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('415', 'HandChemGreen', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('416', 'HandChemRed', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('417', 'HandGrenade', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('418', 'HandGrenade_dm41', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('419', 'HandGrenade_east', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('420', 'HandGrenade_Stone', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('421', 'HandGrenade_west', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('422', 'HandGrenade85', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('423', 'HandRoadFlare', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('424', 'Igla', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('425', 'IR_Strobe_Marker', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('426', 'IR_Strobe_Target', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('427', 'IRStrobe', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('428', 'ItemAluminumBar', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('429', 'ItemAluminumBar10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('430', 'ItemAntibiotic', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('431', 'ItemAppleFruit', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('432', 'ItemBandage', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('433', 'ItemBloodbag', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('434', 'ItemBook1', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('435', 'ItemBook2', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('436', 'ItemBook3', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('437', 'ItemBook4', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('438', 'ItemBookBible', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('440', 'ItemBriefcase100oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('441', 'ItemBriefcase10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('442', 'ItemBriefcase20oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('443', 'ItemBriefcase30oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('444', 'ItemBriefcase40oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('445', 'ItemBriefcase50oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('446', 'ItemBriefcase60oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('447', 'ItemBriefcase70oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('448', 'ItemBriefcase80oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('449', 'ItemBriefcase90oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('450', 'ItemBriefcaseEmpty', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('451', 'ItemBronzeBar', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('452', 'ItemBurlap', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('453', 'ItemCanvas', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('454', 'ItemCards', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('455', 'ItemCherry', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('456', 'ItemComboLock', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('457', 'ItemCopperBar', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('458', 'ItemCopperBar10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('459', 'ItemCorrugated', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('460', 'ItemDocument', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('461', 'ItemDocumentRamp', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('462', 'ItemDomeTent', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('463', 'ItemElderberry', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('464', 'ItemEpinephrine', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('465', 'ItemFireBarrel_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('466', 'ItemFuelBarrel', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('467', 'ItemFuelBarrelEmpty', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('468', 'ItemFuelcan', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('469', 'ItemFuelcanEmpty', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('470', 'ItemFuelPump', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('471', 'ItemGenerator', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('472', 'ItemGoldBar', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('473', 'ItemGoldBar10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('474', 'ItemGunRackKit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('475', 'ItemHazelnut', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('476', 'ItemHeatpack', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('477', 'ItemJerrycan', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('478', 'ItemJerrycanEmpty', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('479', 'ItemJerryMixed', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('480', 'ItemJerryMixed1', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('481', 'ItemJerryMixed2', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('482', 'ItemJerryMixed3', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('483', 'ItemJerryMixed4', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('484', 'ItemLetter', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('485', 'ItemLightBulb', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('486', 'ItemLockbox', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('487', 'ItemMixOil', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('488', 'ItemMorphine', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('489', 'ItemNails', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('490', 'ItemNettle', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('491', 'ItemNewspaper', 'magazine', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('492', 'ItemOilBarrel', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('493', 'ItemOrangeSherbert', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('494', 'ItemPainkiller', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('495', 'ItemPear', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('496', 'ItemPole', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('497', 'ItemRadio', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('498', 'ItemRosehips', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('499', 'ItemSandbag', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('500', 'ItemSandbagExLarge', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('501', 'ItemSandbagExLarge5x', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('502', 'ItemSandbagLarge', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('503', 'ItemScaffoldingKit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('504', 'ItemSeaBass', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('505', 'ItemSeaBassCooked', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('506', 'ItemSilverBar', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('507', 'ItemSilverBar10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('508', 'ItemSledgeHandle', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('509', 'ItemSledgeHead', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('510', 'ItemSodaClays', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('511', 'ItemSodaClaysEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('512', 'ItemSodaCoke', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('513', 'ItemSodaCokeEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('514', 'ItemSodaDrwaste', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('515', 'ItemSodaDrwasteEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('516', 'ItemSodaEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('517', 'ItemSodaGrapeDrink', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('518', 'ItemSodaGrapeDrinkEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('519', 'ItemSodaLemonade', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('520', 'ItemSodaLemonadeEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('521', 'ItemSodaLvg', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('522', 'ItemSodaLvgEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('523', 'ItemSodaMDew', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('524', 'ItemSodaMdewEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('525', 'ItemSodaMtngreen', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('526', 'ItemSodaMtngreenEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('527', 'ItemSodaMzly', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('528', 'ItemSodaMzlyEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('529', 'ItemSodaPepsi', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('530', 'ItemSodaPepsiEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('531', 'ItemSodaR4z0r', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('532', 'ItemSodaR4z0rEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('533', 'ItemSodaRabbit', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('534', 'ItemSodaRabbitEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('535', 'ItemSodaRbull', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('536', 'ItemSodaRocketFuel', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('537', 'ItemSodaRocketFuelEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('538', 'ItemSodaSmasht', 'magazine', '1', '5', 'food', '999');
INSERT INTO `building_loot` VALUES ('539', 'ItemSodaSmashtEmpty', 'magazine', '1', '5', 'trash', '999');
INSERT INTO `building_loot` VALUES ('540', 'ItemTankTrap', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('541', 'ItemTent', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('542', 'ItemTentDomed', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('543', 'ItemTentDomed2', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('544', 'ItemTentOld', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('545', 'ItemThistle', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('546', 'ItemTinBar', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('547', 'ItemTinBar10oz', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('548', 'ItemTNK', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('549', 'ItemTrashRazor', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('550', 'ItemTrashToiletpaper', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('551', 'ItemTrout', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('552', 'ItemTroutCooked', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('553', 'ItemTuna', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('554', 'ItemTunaCooked', 'magazine', '1', '5', 'seafood', '999');
INSERT INTO `building_loot` VALUES ('555', 'ItemVault', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('556', 'ItemWaterbottle', 'magazine', '1', '5', 'drink', '999');
INSERT INTO `building_loot` VALUES ('557', 'ItemWaterbottleBoiled', 'magazine', '1', '5', 'drink', '999');
INSERT INTO `building_loot` VALUES ('558', 'ItemWaterbottleUnfilled', 'magazine', '1', '5', 'drink', '999');
INSERT INTO `building_loot` VALUES ('559', 'ItemWire', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('560', 'ItemWoodCrateKit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('561', 'ItemWoodFloor', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('562', 'ItemWoodFloorHalf', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('563', 'ItemWoodFloorQuarter', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('564', 'ItemWoodLadder', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('565', 'ItemWoodStairs', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('566', 'ItemWoodStairsSupport', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('567', 'ItemWoodWall', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('568', 'ItemWoodWallDoor', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('569', 'ItemWoodWallDoorLg', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('570', 'ItemWoodWallGarageDoor', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('571', 'ItemWoodWallGarageDoorLocked', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('572', 'ItemWoodWallLg', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('573', 'ItemWoodWallThird', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('574', 'ItemWoodWallWindow', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('575', 'ItemWoodWallWindowLg', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('576', 'ItemWoodWallWithDoor', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('577', 'ItemWoodWallWithDoorLg', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('578', 'ItemWoodWallWithDoorLgLocked', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('579', 'ItemWoodWallWithDoorLocked', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('580', 'ItemZombieParts', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('581', 'Javelin', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('582', 'KPFS_100Rnd_762x39_RPD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('583', 'KPFS_10Rnd_762x39_SKS', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('584', 'KPFS_10Rnd_PSL', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('585', 'KPFS_120Rnd_MG2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('586', 'KPFS_12Rnd_45ACP_P12', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('587', 'KPFS_12Rnd_45ACP_P12SD', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('588', 'KPFS_13Rnd_9x19_P2000', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('589', 'kpfs_15Rnd_9x19', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('590', 'KPFS_15Rnd_9x19_P8', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('591', 'KPFS_16Rnd_9x19_para', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('592', 'KPFS_200Rnd_556x45_MG4', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('593', 'KPFS_20Rnd_762x51_G27', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('594', 'KPFS_25Rnd_pm', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('595', 'KPFS_32Rnd_MP2', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('596', 'kpfs_5Rnd_86x70_G22', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('597', 'KPFS_8Rnd_762x25_TT33', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('598', 'kpfs_8Rnd_9x17', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('599', 'kpfs_8Rnd_9x19', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('600', 'KPFS_8Rnd_9x19_P1', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('601', 'KPFS_8Rnd_9x19_P5', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('602', 'kpfs_9Rnd_9x19', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('603', 'kpfs_9Rnd_9x19_p210', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('604', 'KPFS_PZF3G_B_HEDP', 'magazine', '1', '5', 'specialweapon', '999');
INSERT INTO `building_loot` VALUES ('605', 'KPFS_PZF3G_S_HEAT', 'magazine', '1', '5', 'specialweapon', '999');
INSERT INTO `building_loot` VALUES ('606', 'KPFS_PZF3G_T_HEAT', 'magazine', '1', '5', 'specialweapon', '999');
INSERT INTO `building_loot` VALUES ('607', 'Laserbatteries', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('608', 'light_pole_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('609', 'M136', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('610', 'm240_nest_kit', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('611', 'MAAWS_HEAA', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('612', 'MAAWS_HEAT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('613', 'MAAWS_HEDP', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('614', 'metal_floor_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('615', 'metal_panel_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('616', 'Mine', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('617', 'Mine_DM11', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('618', 'ModifiedBandage', 'magazine', '1', '5', 'medicine', '999');
INSERT INTO `building_loot` VALUES ('619', 'MortarBucket', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('620', 'NLAW', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('621', 'NLAW_Big', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('622', 'OG7', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('623', 'OG9_HE', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('624', 'outhouse_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('625', 'park_bench_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('626', 'PartEngine', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('627', 'PartFueltank', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('628', 'PartGeneric', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('629', 'PartGlass', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('630', 'PartOre', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('631', 'PartOreGold', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('632', 'PartOreSilver', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('633', 'PartPlankPack', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('634', 'PartPlywoodPack', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('635', 'PartVRotor', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('636', 'PartWheel', 'magazine', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('637', 'PartWoodLumber', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('638', 'PartWoodPile', 'magazine', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('639', 'PartWoodPlywood', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('640', 'PG7V', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('641', 'PG7VL', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('642', 'PG7VR', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('643', 'PG9_AT', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('644', 'PipeBomb', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('645', 'PMC_ied_v1', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('646', 'PMC_ied_v2', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('647', 'PMC_ied_v3', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('648', 'PMC_ied_v4', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('649', 'PZF3_HLPAT_MAG', 'magazine', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('650', 'RPG18', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('651', 'RPG7V', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('652', 'rusty_gate_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('653', 'sandbag_nest_kit', 'magazine', '1', '5', 'crafting', '999');
INSERT INTO `building_loot` VALUES ('654', 'Single_Rnd_Pellet', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('655', 'Single_W1866_Slug', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('656', 'Skin_Camo1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('657', 'Skin_Officer1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('658', 'Skin_Sniper1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('659', 'Skin_Sniper2_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('660', 'Skin_Soldier1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('661', 'Skin_Survivor2_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('662', 'Skin_TKCivil1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('663', 'Skin_TKCivil2_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('664', 'Skin_TKSoldier1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('665', 'Skin_TKWorker1_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('666', 'Skin_TKWorker2_DZ', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('667', 'SMAW_HEAA', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('668', 'SMAW_HEAA_Big', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('669', 'SMAW_HEDP', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('670', 'SMAW_HEDP_Big', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('671', 'SmokeLauncherMag', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('672', 'SmokeShell', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('673', 'SmokeShellBlue', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('674', 'SmokeShellGreen', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('675', 'SmokeShellOrange', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('676', 'SmokeShellPurple', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('677', 'SmokeShellRed', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('678', 'SmokeShellYellow', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('679', 'stick_fence_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('680', 'Stinger', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('681', 'storage_shed_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('682', 'Strela', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('683', 'sun_shade_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('684', 'TrapBear', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('685', 'TrashJackDaniels', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('686', 'TrashTinCan', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('687', 'Warfare30Rnd82mmMortar', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('688', 'wood_ramp_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('689', 'wood_shack_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('690', 'wooden_shed_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('691', 'WoodenArrow', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('692', 'workbench_kit', 'magazine', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('693', 'AA12_PMC', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('694', 'AK_107_GL_kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('695', 'AK_107_GL_pso', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('696', 'AK_107_kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('697', 'AK_107_pso', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('698', 'AK_47_M', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('699', 'AK_47_S', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('700', 'AK_74', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('701', 'AK_74_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('702', 'AK_74_GL_kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('703', 'AKS_74', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('704', 'AKS_74_GOSHAWK', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('705', 'AKS_74_kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('706', 'AKS_74_NSPU', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('707', 'AKS_74_pso', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('708', 'AKS_74_U', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('709', 'AKS_74_UN_kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('710', 'AKS_GOLD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('711', 'AmmoBox_300x556', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('712', 'AT13', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('713', 'Attachment_ACG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('714', 'Attachment_AIM', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('715', 'Attachment_CAMO', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('716', 'Attachment_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('717', 'Attachment_Kobra', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('718', 'Attachment_Pso', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('719', 'Attachment_Silencer', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('720', 'Attachment_Sniper_Scope', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('721', 'BAF_AS50_Scoped', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('722', 'BAF_AS50_scoped_Large', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('723', 'BAF_AS50_TWS', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('724', 'BAF_AS50_TWS_Large', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('725', 'BAF_ied_v1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('726', 'BAF_ied_v2', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('727', 'BAF_ied_v3', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('728', 'BAF_ied_v4', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('729', 'BAF_L109A1_HE', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('730', 'BAF_L110A1_Aim', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('731', 'BAF_L7A2_GPMG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('732', 'BAF_L85A2_RIS_ACOG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('733', 'BAF_L85A2_RIS_CWS', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('734', 'BAF_L85A2_RIS_Holo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('735', 'BAF_L85A2_RIS_SUSAT', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('736', 'BAF_L85A2_UGL_ACOG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('737', 'BAF_L85A2_UGL_Holo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('738', 'BAF_L85A2_UGL_SUSAT', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('739', 'BAF_L86A2_ACOG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('740', 'BAF_LRR_scoped', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('741', 'BAF_LRR_scoped_W', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('742', 'Binocular', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('743', 'Binocular_Vector', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('744', 'Bizon', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('745', 'bizon_silenced', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('746', 'CDF_dogtags', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('747', 'Cobalt_File', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('748', 'Colt1911', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('749', 'Crossbow', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('750', 'Crossbow_DZ', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('751', 'DMR', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('752', 'DMR_DZ', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('753', 'Dragon_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('754', 'DZ_ALICE_Pack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('755', 'DZ_Assault_Pack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('756', 'DZ_Backpack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('757', 'DZ_British_ACU', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('758', 'DZ_CivilBackpack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('759', 'DZ_Czech_Vest_Puch', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('760', 'DZ_Patrol_Pack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('761', 'DZ_TK_Assault_Pack_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('762', 'equip_1inch_metal_pipe', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('763', 'equip_2inch_metal_pipe', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('764', 'equip_aa_battery', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('765', 'equip_cable_tie', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('766', 'equip_d_battery', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('767', 'equip_duct_tape', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('768', 'equip_empty_barrel', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('769', 'equip_gauze', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('770', 'equip_hose_clamp', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('771', 'equip_laser', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('772', 'equip_metal_sheet', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('773', 'equip_nail', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('774', 'equip_needle', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('775', 'equip_note', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('776', 'equip_paint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('777', 'equip_paper_sheet', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('778', 'equip_part_loupe', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('779', 'equip_pvc_box', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('780', 'equip_rag', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('781', 'equip_rail_screws', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('782', 'equip_rope', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('783', 'equip_scrap_electronics', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('784', 'equip_scrap_metal', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('785', 'equip_string', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('786', 'equip_weapon_rails', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('787', 'equip_wood_pallet', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('788', 'EvDogTags', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('789', 'EvKobalt', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('790', 'EvMap', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('791', 'EvMoney', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('792', 'EvMoscow', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('793', 'EvPhoto', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('794', 'Flare', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('795', 'FlareLauncherMag', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('796', 'FN_FAL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('797', 'FN_FAL_ANPVS', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('798', 'FN_FAL_ANPVS4', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('799', 'G36', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('800', 'G36_C_SD_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('801', 'G36_C_SD_eotech', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('802', 'G36a', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('803', 'G36A_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('804', 'G36C', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('805', 'G36C_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('806', 'G36K', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('807', 'G36K_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('808', 'glock17_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('809', 'hecate2', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('810', 'Huntingrifle', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('811', 'ItemCompass', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('812', 'ItemCrowbar', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('813', 'ItemEtool', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('814', 'ItemFishingPole', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('815', 'ItemFlashlight', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('816', 'ItemFlashlightRed', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('817', 'ItemGPS', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('818', 'ItemHatchet', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('819', 'ItemKnife', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('820', 'ItemMachete', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('821', 'ItemMap', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('822', 'ItemMatchbox', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('823', 'ItemRadio', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('824', 'ItemShovel', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('825', 'ItemToolbox', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('826', 'ItemWatch', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('827', 'Javelin', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('828', 'Kostey_map_case', 'weapons', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('829', 'Kostey_notebook', 'weapons', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('830', 'Kostey_photos', 'weapons', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('831', 'KPFS_CG84', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('832', 'KPFS_Fliegerfaust_2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('833', 'KPFS_G1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('834', 'KPFS_G22', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('835', 'KPFS_G22_desert', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('836', 'KPFS_G27_scoped', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('837', 'KPfs_g36a1', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('838', 'KPFS_G36A2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('839', 'KPfs_g36a4', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('840', 'KPfs_g36k', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('841', 'KPfs_g36ksk', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('842', 'kpfs_g3a2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('843', 'KPfs_G3a3', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('844', 'KPfs_g3a3zf', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('845', 'KPfs_g3a4', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('846', 'KPfs_g3dmr', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('847', 'KPFS_G3DMR2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('848', 'KPFS_G3SG1', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('849', 'kpfs_G82', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('850', 'kpfs_glock17', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('851', 'kpfs_glock17SD', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('852', 'KPfs_hk32', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('853', 'KPFS_HK4', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('854', 'KPFS_HK416_Aim', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('855', 'KPFS_HKP30', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('856', 'KPFS_HKP7', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('857', 'KPFS_KarS', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('858', 'KPFS_Makarov', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('859', 'KPFS_Mauser_Hsc', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('860', 'KPFS_MBB_Armbrust', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('861', 'KPFS_MG2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('862', 'KPFS_MG3', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('863', 'KPFS_MG3_eot', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('864', 'KPFS_MG4', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('865', 'KPFS_MG42', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('866', 'KPFS_MP2', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('867', 'KPFS_MP2A1', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('868', 'KPFS_MP44', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('869', 'KPFS_MP5A1', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('870', 'KPFS_MP5A3', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('871', 'KPFS_MP5A3SD', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('872', 'KPFS_MPi_AK_74', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('873', 'KPFS_MPi_AKS_74', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('874', 'KPFS_MPi_AKS_74K', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('875', 'KPFS_MPi_KM_72', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('876', 'KPFS_MPi_KMKIX', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('877', 'KPFS_MPi_KMS_72', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('878', 'KPFS_P1', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('879', 'KPFS_P12', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('880', 'KPFS_P12SD', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('881', 'KPFS_P2000', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('882', 'kpfs_p2104', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('883', 'KPFS_P220', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('884', 'KPFS_P225', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('885', 'KPFS_P226', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('886', 'KPFS_P38', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('887', 'KPFS_P38k', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('888', 'KPFS_P5', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('889', 'KPFS_P8', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('890', 'KPFS_P88', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('891', 'KPFS_P99QA', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('892', 'KPFS_PM63', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('893', 'KPFS_PSL', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('894', 'KPFS_Pzf3', 'weapons', '1', '5', 'specialweapon', '999');
INSERT INTO `building_loot` VALUES ('895', 'KPFS_PZF60', 'weapons', '1', '5', 'specialweapon', '999');
INSERT INTO `building_loot` VALUES ('896', 'KPFS_Sauer_38h', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('897', 'KPFS_SKS', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('898', 'KPFS_TT33', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('899', 'KPFS_Walther_M9', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('900', 'KPFS_Walther_PP', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('901', 'KSVK', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('902', 'Laserdesignator', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('903', 'LeeEnfield', 'weapons', '1', '5', 'basicweapon', '999');
INSERT INTO `building_loot` VALUES ('904', 'M1014', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('905', 'M107', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('906', 'm107_DZ', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('907', 'm107_TWS_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('908', 'm107_TWS_EP1_DZ', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('909', 'M110_NVG_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('910', 'M110_TWS_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('911', 'M136', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('912', 'M14_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('913', 'M16A2', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('914', 'M16A2GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('915', 'M16A4', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('916', 'M16A4_ACG', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('917', 'M16A4_ACG_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('918', 'M16A4_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('919', 'M24', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('920', 'M24_des_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('921', 'M240', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('922', 'M240_DZ', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('923', 'm240_scoped_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('924', 'M249', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('925', 'M249_DZ', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('926', 'M249_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('927', 'M249_m145_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('928', 'M249_TWS_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('929', 'M32_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('930', 'M40A3', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('931', 'M47Launcher_EP1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('932', 'M4A1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('933', 'M4A1_Aim', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('934', 'M4A1_Aim_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('935', 'M4A1_AIM_SD_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('936', 'M4A1_HWS_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('937', 'M4A1_HWS_GL_Camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('938', 'M4A1_HWS_GL_SD_Camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('939', 'M4A1_RCO_GL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('940', 'M4A3_CCO_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('941', 'M4A3_RCO_GL_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('942', 'M4SPR', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('943', 'M60A4_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('944', 'M79_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('945', 'M8_carbine', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('946', 'm8_carbine_pmc', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('947', 'M8_carbineGL', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('948', 'M8_compact', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('949', 'm8_compact_pmc', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('950', 'm8_holo_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('951', 'M8_SAW', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('952', 'm8_SAW_Large', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('953', 'M8_sharpshooter', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('954', 'm8_tws', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('955', 'm8_tws_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('956', 'M9', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('957', 'M9SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('958', 'MAAWS', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('959', 'Makarov', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('960', 'MakarovSD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('961', 'MeleeBaseBallBat', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('962', 'MeleeBaseBallBatBarbed', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('963', 'MeleeBaseBallBatNails', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('964', 'MeleeCrowbar', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('965', 'MeleeFishingPole', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('966', 'MeleeFlashlight', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('967', 'MeleeFlashlightRed', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('968', 'MeleeHatchet', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('969', 'MeleeMachete', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('970', 'MeleeSledge', 'weapons', '1', '5', 'generic', '999');
INSERT INTO `building_loot` VALUES ('971', 'MetisLauncher', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('972', 'MG36', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('973', 'MG36_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('974', 'MG36_camo_Large', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('975', 'MG36_Large', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('976', 'mg51', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('977', 'mg51_eotech', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('978', 'Mk_48', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('979', 'Mk_48_DES_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('980', 'MK_48_DZ', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('981', 'Mk13_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('982', 'Moscow_Bombing_File', 'weapons', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('983', 'MP5A5', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('984', 'mp5a5_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('985', 'mp5a5_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('986', 'mp5a5_reflex', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('987', 'mp5a5n', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('988', 'mp5k', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('989', 'MP5SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('990', 'mp5sd6', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('991', 'mp5sd6_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('992', 'mp5sd6_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('993', 'mp5sd6_reflex', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('994', 'MR43', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('995', 'NVGoggles', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('996', 'OG9_HE', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('997', 'p220', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('998', 'p226', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('999', 'p226_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1000', 'p226sf', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1001', 'p226sf_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1002', 'panzerfaust3', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1003', 'Pecheneg', 'weapons', '1', '5', 'repairs', '999');
INSERT INTO `building_loot` VALUES ('1004', 'PG9_AT', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1005', 'PK', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1006', 'PMC_AS50_scoped', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1007', 'PMC_AS50_scoped_Large', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1008', 'PMC_AS50_TWS', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1009', 'PMC_AS50_TWS_Large', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1010', 'PMC_documents', 'weapons', '1', '5', 'book', '999');
INSERT INTO `building_loot` VALUES ('1011', 'PMC_ied_v1', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1012', 'PMC_ied_v2', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1013', 'PMC_ied_v3', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1014', 'PMC_ied_v4', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1015', 'PZF3_HLPAT_MAG', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1016', 'Quiver', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1017', 'Remington870', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1018', 'Remington870_lamp', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1019', 'revolver_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1020', 'revolver_gold_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1021', 'RPG18', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1022', 'RPG7V', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1023', 'RPK_74', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1024', 'RPK_74_Large', 'weapons', '1', '5', 'special', '999');
INSERT INTO `building_loot` VALUES ('1025', 'Sa58P_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1026', 'Sa58V_CCO_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1027', 'Sa58V_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1028', 'Sa58V_RCO_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1029', 'Sa61_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1030', 'Saiga12K', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1031', 'sapr_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1032', 'sapr_aimpoint_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1033', 'sapr_hensoldt', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1034', 'sapr_hensoldt_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1035', 'SCAR_H_CQC_CCO', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1036', 'SCAR_H_CQC_CCO_SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1037', 'SCAR_H_LNG_Sniper', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1038', 'SCAR_H_LNG_Sniper_SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1039', 'SCAR_H_STD_EGLM_Spect', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1040', 'SCAR_H_STD_TWS_SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1041', 'SCAR_L_CQC', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1042', 'SCAR_L_CQC_CCO_SD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1043', 'SCAR_L_CQC_EGLM_Holo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1044', 'SCAR_L_CQC_Holo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1045', 'SCAR_L_STD_EGLM_RCO', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1046', 'SCAR_L_STD_EGLM_TWS', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1047', 'SCAR_L_STD_HOLO', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1048', 'SCAR_L_STD_Mk4CQT', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1049', 'sg550', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1050', 'sg550_commando_hensoldt', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1051', 'sg550_kern', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1052', 'sg550_lg97', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1053', 'sg550_lg97_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1054', 'sg550_lg97_aimpoint_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1055', 'sg550_sniper', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1056', 'sg551', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1057', 'sg551_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1058', 'sg551_acog_lg97', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1059', 'sg551_commando_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1060', 'sg551_commando_aim', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1061', 'sg551_commando_lg97_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1062', 'sg551_commando_lg97_aim', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1063', 'sg551_commando_lg97_aim_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1064', 'sg551_lg97', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1065', 'sg552', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1066', 'sg552_commando', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1067', 'sg552_commando_mg', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1068', 'sg552_commando_mg_eotech', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1069', 'sg552_commando_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1070', 'sg552_mp_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1071', 'sg552_mp_aimpoint_sd', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1072', 'sg552_reflex', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1073', 'sg552lb', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1074', 'sg552lb_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1075', 'sg552lb_aimpoint', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1076', 'sg552lb_commando_acog', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1077', 'sg552lb_commando_reflex', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1078', 'sg552sd_reflex', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1079', 'SMAW', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1080', 'SMAW_HEDP_Big', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1081', 'Stinger', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1082', 'Strela', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1083', 'SVD', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1084', 'SVD_CAMO', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1085', 'SVD_des_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1086', 'SVD_NSPU_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1087', 'trg42', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1088', 'trg42_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1089', 'trg42_t8m', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1090', 'trg42_t8m_camo', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1091', 'UZI_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1092', 'UZI_SD_EP1', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1093', 'VSS_Vintorez', 'weapons', '1', '5', null, '999');
INSERT INTO `building_loot` VALUES ('1094', 'Winchester1866', 'weapons		', '1', '5', null, '999');

-- ----------------------------
-- Table structure for building_type
-- ----------------------------
DROP TABLE IF EXISTS `building_type`;
CREATE TABLE `building_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_type` varchar(255) DEFAULT NULL,
  `loot_level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building_type
-- ----------------------------
INSERT INTO `building_type` VALUES ('1', 'residential', 'food');
INSERT INTO `building_type` VALUES ('2', 'office', 'food');
INSERT INTO `building_type` VALUES ('14', 'residential', 'crafting');
INSERT INTO `building_type` VALUES ('15', 'residential', 'stupid');
INSERT INTO `building_type` VALUES ('16', 'residential', 'book');
INSERT INTO `building_type` VALUES ('17', 'medical', 'medicine');
INSERT INTO `building_type` VALUES ('18', 'military', 'medicine');
INSERT INTO `building_type` VALUES ('20', 'residential', 'generic');
INSERT INTO `building_type` VALUES ('21', 'residential', 'drink');
INSERT INTO `building_type` VALUES ('22', 'residential', 'trash');
INSERT INTO `building_type` VALUES ('23', 'hospital', 'trash');
INSERT INTO `building_type` VALUES ('24', 'hospital', 'drink');
INSERT INTO `building_type` VALUES ('25', 'militaryspecial', 'special');
INSERT INTO `building_type` VALUES ('26', 'military', 'basicammo');
INSERT INTO `building_type` VALUES ('27', 'military', 'basicweapon');
INSERT INTO `building_type` VALUES ('28', 'zombie', 'drink');
INSERT INTO `building_type` VALUES ('29', 'zombie', 'food');
INSERT INTO `building_type` VALUES ('30', 'zombie', 'medicine');
INSERT INTO `building_type` VALUES ('31', 'hunting', 'drink');
INSERT INTO `building_type` VALUES ('32', 'hunting', 'trash');
INSERT INTO `building_type` VALUES ('33', 'hunting', 'basicweapons');
INSERT INTO `building_type` VALUES ('34', 'hunting', 'basicammo');
INSERT INTO `building_type` VALUES ('35', 'hunting', 'food');
INSERT INTO `building_type` VALUES ('36', 'supermarket', 'food');
INSERT INTO `building_type` VALUES ('37', 'supermarket', 'drink');
INSERT INTO `building_type` VALUES ('38', 'industrial', 'generic');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
  KEY `characterID` (`characterID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_variables
-- ----------------------------

-- ----------------------------
-- Table structure for cust_loadout
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout`;
CREATE TABLE `cust_loadout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inventory` varchar(2048) NOT NULL,
  `backpack` varchar(2048) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout
-- ----------------------------
INSERT INTO `cust_loadout` VALUES ('2', '[[\"ItemMap\",\"Binocular_Vector\",\"NVGoggles\",\"AK_107_GL_kobra\",\"IR_Strobe_Marker\",\"ItemCompass\",\"ItemFlashlightRed\",\"Colt1911\"],[\"HandRoadFlare\",\"ItemBandage\",\"100Rnd_556x45_M249\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"100Rnd_556x45_M249\"]]', '[\"DZ_GunBag_EP1\",[[],[]],[[\"ItemBloodbag\",\"ItemComboLock\",\"ItemBriefcase100oz\",\"ItemTentOld\",\"ItemMorphine\",\"ItemPainkiller\",\"Attachment_Pso\",\"PipeBomb\",\"ItemPapers\",\"ItemFuelBarrelEmpty\",\"ItemSodaRbull\",\"Skin_TKWorker1_DZ\",\"equip_note\",\"equip_laser\",\"equip_aa_battery\"],[6,1,1,1,3,4,1,1,1,1,2,1,1,1,1]]]', 'TheVisad_DZU', 'Admin Loadout');
INSERT INTO `cust_loadout` VALUES ('3', '[[\"Binocular\",\"NVGoggles\",\"BAF_L85A2_UGL_ACOG\",\"ItemFlashlight\",\"ItemShovel\",\"ItemToolbox\",\"Makarov\"],[\"15Rnd_9x19_LUGER\",\"15Rnd_9x19_LUGER\",\"ItemBandage\",\"ItemBandage\"]]', '[\"CZ_VestPouch_EP1\",[[],[]],[[],[]]]', 'BAF_Soldier_EN_W', 'thevisad');
INSERT INTO `cust_loadout` VALUES ('4', '[[\"ItemMap\",\"Binocular_Vector\",\"NVGoggles\",\"AK_107_GL_kobra\",\"IR_Strobe_Marker\",\"ItemCompass\",\"ItemFlashlightRed\",\"Colt1911\"],[\"HandRoadFlare\",\"ItemBandage\",\"100Rnd_556x45_M249\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"100Rnd_556x45_M249\"]]', '[\"DZ_GunBag_EP1\",[[],[]],[[\"ItemBloodbag\",\"ItemComboLock\",\"ItemBriefcase100oz\",\"ItemTentOld\",\"ItemMorphine\",\"ItemPainkiller\",\"Attachment_Pso\",\"PipeBomb\",\"ItemPapers\",\"ItemFuelBarrelEmpty\",\"ItemSodaRbull\",\"Skin_TKWorker1_DZ\",\"equip_note\",\"equip_laser\",\"equip_aa_battery\"],[6,1,1,1,3,4,1,1,1,1,2,1,1,1,1]]]', 'XyberViri_DZU', 'XyberViri');
INSERT INTO `cust_loadout` VALUES ('5', '[][[\"ItemMap\",\"Binocular_Vector\",\"NVGoggles\",\"AK_107_GL_kobra\",\"IR_Strobe_Marker\",\"ItemCompass\",\"ItemFlashlightRed\",\"Colt1911\"],[\"HandRoadFlare\",\"ItemBandage\",\"100Rnd_556x45_M249\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"15Rnd_9x19_M9\",\"100Rnd_556x45_M249\"]]', '[\"DZ_GunBag_EP1\",[[],[]],[[\"ItemBloodbag\",\"ItemComboLock\",\"ItemBriefcase100oz\",\"ItemTentOld\",\"ItemMorphine\",\"ItemPainkiller\",\"Attachment_Pso\",\"PipeBomb\",\"ItemPapers\",\"ItemFuelBarrelEmpty\",\"ItemSodaRbull\",\"Skin_TKWorker1_DZ\",\"equip_note\",\"equip_laser\",\"equip_aa_battery\"],[6,1,1,1,3,4,1,1,1,1,2,1,1,1,1]]]', 'PvtAmmo_DZU', 'Ammo');

-- ----------------------------
-- Table structure for cust_loadout_profile
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout_profile`;
CREATE TABLE `cust_loadout_profile` (
  `cust_loadout_id` int(11) unsigned NOT NULL,
  `unique_id` varchar(128) NOT NULL,
  PRIMARY KEY (`cust_loadout_id`,`unique_id`),
  KEY `fk2_cust_loadout_profile` (`unique_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout_profile
-- ----------------------------
INSERT INTO `cust_loadout_profile` VALUES ('3', '76561198013702927');
INSERT INTO `cust_loadout_profile` VALUES ('3', '76561198014202008');

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
  `buildingId` int(1) NOT NULL,
  `worldspace` varchar(70) NOT NULL DEFAULT '[0,[0,0,0]]',
  `inventory` longtext,
  `hitpoints` longtext,
  `characterId` varchar(128) NOT NULL,
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
  `buildingUID` bigint(20) NOT NULL,
  `ObjectID` int(11) DEFAULT NULL,
  `ObjectUID` bigint(20) NOT NULL,
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) NOT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` varchar(55) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Hitpoints` varchar(500) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_garage
-- ----------------------------

-- ----------------------------
-- Table structure for instance_garagebuilding
-- ----------------------------
DROP TABLE IF EXISTS `instance_garagebuilding`;
CREATE TABLE `instance_garagebuilding` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `objectUID` bigint(20) NOT NULL,
  `instanceId` int(20) unsigned NOT NULL DEFAULT '1',
  `buildingClass` varchar(255) NOT NULL,
  `worldspace` varchar(70) NOT NULL DEFAULT '[0,[0,0,0]]',
  `playerId` varchar(55) NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_garagebuilding
-- ----------------------------

-- ----------------------------
-- Table structure for instance_movement
-- ----------------------------
DROP TABLE IF EXISTS `instance_movement`;
CREATE TABLE `instance_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` varchar(55) DEFAULT NULL,
  `instanceID` int(11) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `instanceID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_user
-- ----------------------------

-- ----------------------------
-- Table structure for instance_variables
-- ----------------------------
DROP TABLE IF EXISTS `instance_variables`;
CREATE TABLE `instance_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `characterID` (`characterID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_variables
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
  KEY `fk1_message` (`instance_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', 'This is a test', '60', '30', '1');

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
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_M2_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('KamazReammo', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRepair_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_ATV_D', '0.50', '3', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_RU', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M998A2_SOV_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('M1030_US_DES_EP1', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_MK19_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_UN_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('S1203_ambulance_EP1', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi171Sh_CZ_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UralSalvage_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Wire_cat1', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Supply_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_TK_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UAZ_MG_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('UH60M_MEV_EP1', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('BAF_ATV_W', '0.50', '3', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('UH60M_EP1', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralSupply_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SUV_PMC', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralOpen_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_DZ', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('RHIB', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Merlin_HC3_D', '0.25', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Ka52', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH64D', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('KamazRepair', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('RHIB2Turret', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('MH6J_EP1', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.75', '3', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MTVR_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Sandbag1_DZ', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('UralOpen_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.75', '10', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UAZ_MG_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_Ins', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Lada2', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MTVR', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_CZ_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_rockets_RU', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralReammo_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '6', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('MtvrSupply_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('An2_1_TK_CIV_EP1', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('V3S_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('AH1Z', '0.10', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MtvrReammo', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrRepair', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('Pickup_PK_INS', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MMT_USMC', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('AH6J_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('Ural_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.61', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('AH64D_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi171Sh_rockets_CZ_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('KamazOpen', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Pickup_PK_TK_GUE_EP1', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Pickup_PK_GUE', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrSalvage_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_Special_CZ_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Skoda', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Terminal_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '5', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('CH_47F_BAF', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UH1Y', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_INS_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('AW159_Lynx_BAF', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH6X_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('StashSmall', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrReammo_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '0.59', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.50', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Salvage_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M2', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.75', '3', '0.05000', 'tractor');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralReammo_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('CH_47F_EP1', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_Ins', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('StashMedium', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_SPG9_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrRepair_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Repair_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('KamazRefuel', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Hedgehog_DZ', '0', '3', '0', 'object');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UralRepair_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('tractorOld', '0.75', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('An2_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('Tractor', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('M1030', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralReammo_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRepair_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Ka52Black', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MV22', '0.60', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('An2_TK_EP1', '0.50', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('Kamaz', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_UN_CDF_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MH60S', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_CDF', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrRefuel', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Refuel_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Reammo_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_CDF', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UAZ_MG_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Apache_AH1_D', '0.10', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('PBX', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_INS_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_CZ_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareRepairTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Armored', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1035_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('MtvrRefuel_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_PMC_BAF', '0.75', '5', '0.05000', 'truck');

-- ----------------------------
-- Table structure for object_data
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) NOT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Hitpoints` varchar(500) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  UNIQUE KEY `CheckUID` (`ObjectUID`,`Instance`) USING BTREE,
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Damage`,`Instance`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_data
-- ----------------------------

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
INSERT INTO `object_spawns` VALUES ('1189142', 'datsun1_civil_1_open', '[202,[8621.0635,14314.621,-0.058616556]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3974494', 'datsun1_civil_3_open', '[316,[9038.3027,16129.516,0.41601181]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2335488', 'Lada1_TK_CIV_EP1', '[87,[5872.1499,11685.472,-0.13291398]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3520853', 'SkodaRed', '[188,[6109.2935,10260.923,0.0051426888]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2289251', 'Fishing_Boat', '[23,[10673.596,16286.279,-0.055622101]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3481495', 'Smallboat_1', '[23,[10716.553,16287.638,-0.10364038]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3857144', 'UAZ_INS', '[188,[16666.535,18258.182,0.30707741]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3627398', 'TT650_TK_EP1', '[126,[10327.636,7247.3984,-0.016540527]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1127466', 'SkodaBlue', '[274,[11465.989,8825.0703]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4388117', 'MH6J_EP1', '[344,[14037.424,14212.402]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('3129760', 'datsun1_civil_1_open', '[319,[14232.718,12725.76,0.17801024]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2358340', 'Volha_1_TK_CIV_EP1', '[320,[12082.568,15219.214,0.20069313]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('754242', 'Old_moto_TK_Civ_EP1', '[357,[5864.0527,11647.133,-1.1481094]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('856749', 'Old_moto_TK_Civ_EP1', '[159,[15400.271,13446,0.058018561]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1499457', 'Volha_1_TK_CIV_EP1', '[29,[14710.757,14108.477,0.1234026]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2041968', 'PBX', '[119,[10772.534,16231.78,-0.1333223]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('667605', 'Tractor', '[108,[10304.039,7092.4048,0.038532257]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2959132', 'Old_moto_TK_Civ_EP1', '[290,[5859.3853,15408.245,0.06036796]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('818536', 'hilux1_civil_1_open', '[332,[3631.1431,9860.251,-0.22136688]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3212561', 'tractorOld', '[87,[10206.286,6878.6763,0.0043983459]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2548918', 'TT650_TK_EP1', '[130,[11153.551,7805.7998,-2.6903687]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3597355', 'car_hatchback', '[329,[15727.822,13295.508,-0.08376091]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3393565', 'Zodiac', '[252,[16872.869,5269.4014,0.43635881]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4927518', 'tractorOld', '[321,[9019.7021,17214.926,-0.010534286]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1836654', 'Smallboat_1', '[178,[8937.8877,17629.115,0.028858364]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2010690', 'BAF_Offroad_W', '[114,[8744.7773,16350.059,0.048419796]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3439548', 'tractorOld', '[228,[8783.6533,15754.443,-0.18962288]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('943871', 'Ikarus', '[162,[6386.1484,10170.973,0]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1712411', 'Tractor', '[241,[10580.141,14043.175,0.5129773]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2158197', 'SkodaRed', '[19,[6149.8091,10614.883,0.4916535]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2321763', 'Old_bike_TK_INS_EP1', '[198,[9911.7041,7683.4077,-0.056767486]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('4241278', 'UAZ_CDF', '[37,[12752.17,11702.803,-2.7215271]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2186874', 'Old_moto_TK_Civ_EP1', '[54,[11324.433,8758.5303,0.067847334]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4166746', 'car_hatchback', '[109,[11051.388,8543.5684,0.098106384]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1172705', 'M1030_US_DES_EP1', '[123,[9184.9814,17533.213,-0.079093941]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2189987', 'Fishing_Boat', '[181,[8932.3027,17542.605,-0.0022696853]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('826046', 'Tractor', '[341,[8362.542,14548.259,0.44694319]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4058082', 'S1203_TK_CIV_EP1', '[102,[15340.347,13328.549,0.17743778]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('1805515', 'MMT_USMC', '[64,[14411.316,14253.356]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3852224', 'TT650_TK_EP1', '[175,[9985.999,7518.7197,-1.4961853]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2776123', 'TT650_TK_EP1', '[156,[10450.567,14092.313,0.0099034049]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('834818', 'Old_bike_TK_INS_EP1', '[181,[10293.979,7115.5566,0.0067443848]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3105780', 'car_hatchback', '[315,[10753.189,15784.874,-0.27317047]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3096166', 'An2_2_TK_CIV_EP1', '[223,[14673.721,16587.174,1.9073486e-006]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1281269', 'M1030_US_DES_EP1', '[116,[10176.125,18333.334,0.0044983537]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2336552', 'Old_moto_TK_Civ_EP1', '[79,[10233.178,18332.525,-0.0096525317]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2475737', 'car_hatchback', '[97,[14970.779,14077.785,0.53214264]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1597609', 'car_hatchback', '[347,[15348.821,13439.043,0.57016087]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2866566', 'datsun1_civil_3_open', '[8,[5875.0107,15080.307,-0.2639389]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2948464', 'datsun1_civil_1_open', '[152,[16610.771,9663.1816,-2.7253418]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1821411', 'Old_moto_TK_Civ_EP1', '[2,[9960.9941,7504.6602,-0.02241189]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('819463', 'Tractor', '[341,[12727.424,11809.682,-0.59694785]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3806899', 'Zodiac', '[11,[5320.582,16165.974,0.10834301]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4688830', 'hilux1_civil_1_open', '[255,[5821.7671,11729.394,-0.33867073]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2275431', 'PBX', '[98,[8268.7344,16227.488,0.24613792]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4098288', 'Zodiac', '[337,[8082.4741,17328.141,0.07034415]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4061692', 'UAZ_CDF', '[180,[14311.065,12513.548,-0.12010002]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('713427', 'Fishing_Boat', '[25,[12003.231,15683.734,0.011208534]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4301207', 'Old_moto_TK_Civ_EP1', '[58,[13062.431,6871.6479,-0.032897949]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('605672', 'Old_moto_TK_Civ_EP1', '[256,[10419.466,7407.7144,0.03213501]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('700323', 'Ikarus', '[293,[15810.675,13386.433]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2886453', 'Old_moto_TK_Civ_EP1', '[324,[10797.101,15816.361,-0.21506119]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2723613', 'Old_moto_TK_Civ_EP1', '[301,[16601.969,9672.8145,-1.188324]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4021852', 'Old_bike_TK_INS_EP1', '[233,[14311.425,12501.18,-0.41638756]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2625483', 'Old_moto_TK_Civ_EP1', '[195,[6803.4961,5382.9414,-0.029525757]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4544166', 'datsun1_civil_1_open', '[352,[12761.965,11701.684,-3.2845917]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2996814', 'Zodiac', '[12,[9012.8574,17784.705,0.18322641]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('673751', 'Zodiac', '[82,[8271.8467,16217.133,0.12980908]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2835036', 'datsun1_civil_2_covered', '[69,[14293.855,12605.584,-0.10924029]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('860298', 'Zodiac', '[46,[3885.5835,14583.431,0.21652299]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1241327', 'Ikarus', '[19,[5890.4048,13474.105,3.4332275e-005]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('572552', 'Old_moto_TK_Civ_EP1', '[180,[7481.7256,7235.0239,-0.069056526]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3367082', 'tractorOld', '[134,[12752.907,11771.123,-0.072349548]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1230671', 'Smallboat_1', '[180,[8073.5815,17330.633,-0.15450078]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4171276', 'car_hatchback', '[309,[5866.5811,15399.4,-0.086795166]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1998509', 'Skoda', '[319,[7007.4121,9644.4229,-0.447855]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4095416', 'TT650_TK_CIV_EP1', '[235,[12663.256,13846.225,-0.055094268]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3441864', 'tractorOld', '[242,[6518.978,9608.2285,0.021951675]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3103724', 'smallboat_2', '[348,[8094.876,17328.656,-0.19774395]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3296147', 'Old_moto_TK_Civ_EP1', '[132,[9109.3213,17273.176,-0.12450205]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1881449', 'datsun1_civil_1_open', '[135,[9184.7061,17283.559,-0.093870297]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2986748', 'BAF_Offroad_W', '[219,[6380.8604,9612.5078,-0.039051056]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1331782', 'Skoda', '[270,[5772.0562,15254.425,-0.12950897]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4477275', 'PBX', '[177,[15843.387,13087.813,0.098038793]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4430144', 'UAZ_Unarmed_TK_EP1', '[284,[9986.2217,18069.139,-0.033742249]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3231711', 'Volha_2_TK_CIV_EP1', '[242,[14819.951,14172.028,0.23300076]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3883571', 'Fishing_Boat', '[18,[6139.7446,10801.119,0.51003939]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3973553', 'Skoda', '[85,[8787.584,16378.222,-0.012916565]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3988773', 'hilux1_civil_1_open', '[182,[11638.491,14873.074,0.36336327]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4006725', 'PBX', '[26,[5161.5596,11439.153,0.25662684]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4440171', 'Pickup_PK_GUE', '[179,[16823.016,5164.6733,-0.24224854]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1090931', 'BAF_ATV_W', '[313,[10665.858,15837.456,-0.27557755]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1899909', 'UAZ_AGS30_INS', '[248,[12943.742,11590.15,-0.49687195]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('738814', 'TT650_TK_EP1', '[267,[8801.126,14341.049,0.039859537]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4989041', 'Fishing_Boat', '[92,[5325.8599,16184.229,0.6459049]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1603859', 'Fishing_Boat', '[109,[4572.4653,12594.047,0.54803491]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2256392', 'Volha_2_TK_CIV_EP1', '[213,[8816.1055,16380.899,-0.35792351]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('645370', 'datsun1_civil_3_open', '[118,[6139.6157,13697.097,0.042643815]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('657044', 'BAF_Offroad_W', '[86,[12028.973,15380.481,-0.016323155]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2095845', 'S1203_TK_CIV_EP1', '[8,[14126.225,13762.564,-0.055890083]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('3900505', 'SkodaBlue', '[49,[8987.3447,16420.063]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2844537', 'tractorOld', '[168,[10056.433,18570.559,-0.0087738037]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1106558', 'Old_bike_TK_INS_EP1', '[179,[10111.047,13995.624,0.12921555]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3602527', 'UAZ_AGS30_INS', '[357,[12594.524,13854.655,-0.065336309]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2179747', 'M1030_US_DES_EP1', '[178,[8535.7012,14288.537,0.022169547]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3228601', 'Pickup_PK_INS', '[56,[14436.111,14061.548,0.48373413]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1987871', 'MH6J_EP1', '[292,[8865.5996,16198.282,0]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('2888297', 'datsun1_civil_3_open', '[247,[10083.138,16551.754,-0.091879971]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2957358', 'Ikarus', '[237,[10056.372,16314.351,0.37594041]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3957082', 'UAZ_CDF', '[311,[10147.066,7395.7979,0.025886536]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2707919', 'hilux1_civil_1_open', '[241,[12753.756,11685.046,-0.37569386]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3888177', '240GD', '[6,[6513.9268,9699.5264,-0.29185581]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2179566', 'hilux1_civil_1_open', '[86,[8604.4404,14280.05,0.17060436]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('831498', 'Smallboat_1', '[8,[3876.6909,14585.923,-0.033810794]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1962794', 'Tractor', '[179,[16625.232,9711.6592,-0.37637705]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3633613', 'Old_bike_TK_INS_EP1', '[223,[12593.712,13860.452,-0.044941075]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2809422', 'BAF_Offroad_W', '[254,[14375.589,13890.831,-0.0057909489]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('574576', 'UAZ_AGS30_CDF', '[245,[7471.3154,7214.541,-0.22439194]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1045498', 'Car_sedan', '[199,[11162.582,8597.5811,0.073539734]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3731271', 'BAF_ATV_W', '[291,[6048.021,10636.678,0.44082278]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('954285', 'Volha_1_TK_CIV_EP1', '[34,[11107.048,8992.2373,0.15635681]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3773257', 'Old_moto_TK_Civ_EP1', '[331,[14985.43,14165.211,0.67830658]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3462204', 'BAF_Offroad_W', '[230,[14574.313,13753.917,0.7173152]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4320121', 'TT650_TK_EP1', '[165,[16613.693,9667.5801,-2.6562805]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3372204', 'TT650_TK_EP1', '[153,[15921.183,10391.513,0.11331525]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3705683', 'TT650_TK_EP1', '[63,[12572.181,13844.104,0.067039847]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2893270', 'hilux1_civil_1_open', '[117,[10084.686,7548.8384,0.03282547]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2814896', 'Car_sedan', '[293,[12183.381,15405.473,0.089565277]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3110832', 'M1030_US_DES_EP1', '[340,[10582.012,14143.74,-0.06512899]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1989276', 'UAZ_Unarmed_TK_EP1', '[48,[14275.445,12730.209,-0.39606977]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('540561', 'hilux1_civil_1_open', '[193,[16579.092,9691.9111,0.047290139]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1103196', 'Volha_2_TK_CIV_EP1', '[59,[14787.329,13768.584,-0.014340878]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1374053', 'datsun1_civil_3_open', '[286,[10668.965,16176.471,-0.24919176]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2123601', 'BAF_ATV_W', '[74,[5637.9873,15362.442,-0.11415863]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2259369', 'Old_moto_TK_Civ_EP1', '[170,[6003.6353,13576.399,-0.031255648]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1375571', 'Pickup_PK_TK_GUE_EP1', '[180,[16960.059,5178.604,-0.12886047]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2924353', 'SkodaGreen', '[109,[14788.007,13781.773,0.24672413]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4995302', 'Car_sedan', '[7,[14375.737,13753.993,0.056969643]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3485536', 'TT650_TK_EP1', '[63,[13089.637,6916.4639,-1.6534348]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2854580', 'hilux1_civil_1_open', '[291,[6710.3745,9598.3682,-0.40943384]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3183265', 'Old_moto_TK_Civ_EP1', '[95,[15747.839,9880.5098,0.078106336]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('844346', 'BAF_ATV_W', '[308,[15857.736,13289.368,-0.029737473]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3187805', 'hilux1_civil_1_open', '[266,[12518.292,13561.69,0.52007294]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3498669', 'MMT_USMC', '[56,[6429.1465,9563.9521]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('1575313', 'UAZ_RU', '[194,[7494.9609,7236.0957,-0.013462067]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4306975', 'tractorOld', '[75,[16643.07,18274.84,-0.021310806]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1725067', 'SkodaBlue', '[218,[15588.535,13143.864]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2901322', 'VolhaLimo_TK_CIV_EP1', '[119,[5955.8071,15390.888,0.1553652]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1369953', 'Skoda', '[211,[10804.409,15821.528,-0.40860748]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1408264', 'M1030_US_DES_EP1', '[128,[16607.422,9671.3242,-1.8335876]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4038705', 'tractorOld', '[84,[17098.119,13849.832,-0.044782106]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1620876', 'Lada1_TK_CIV_EP1', '[170,[14854.902,14039.073,0.7709074]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1020621', 'M1030_US_DES_EP1', '[320,[10321.648,7254.0654,0.020488739]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1927407', 'MH6J_EP1', '[290,[13564.722,19701.713,0]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('4514927', 'Ikarus', '[73,[6404.9409,10557.507]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4107671', '240GD', '[41,[14554.765,14152.262,0.34490299]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1174966', 'BAF_Offroad_W', '[88,[14920.194,14159.303,-0.07971859]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2908500', 'UAZ_AGS30_CDF', '[41,[16617.414,9692.625,0.10859197]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1921107', 'Volha_2_TK_CIV_EP1', '[298,[12253.889,15479.261,0.20911407]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4985399', 'datsun1_civil_3_open', '[313,[6273.5771,10628.323,-0.0016698837]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4660476', 'tractorOld', '[233,[14543.472,12580.558,-0.071885109]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3490909', 'tractorOld', '[358,[15613.325,10143.203,-0.0067596436]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4070010', 'hilux1_civil_2_covered', '[157,[14317.825,12508.881,-2.0933142]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4756025', 'MMT_USMC', '[305,[7850.0107,9219.124]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2613129', 'SkodaRed', '[135,[14005.508,14149.485,1.2357154]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3598903', 'Fishing_Boat', '[181,[6819.2422,16971.518,0.57606232]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4695046', 'Pickup_PK_INS', '[204,[18330.074,17116.488]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2184209', 'SkodaGreen', '[44,[15311.908,13377.369,0.072171211]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2634715', 'M1030_US_DES_EP1', '[346,[12514.671,13570.565,0.13918956]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('683263', 'PBX', '[73,[16841.949,5267.1299,0.23405427]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1323173', 'smallboat_2', '[341,[8986.7109,17627.465,-0.13789767]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2152536', 'hilux1_civil_1_open', '[104,[9987.4922,18050.98,0.45072174]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1021993', 'BAF_Offroad_W', '[194,[14600.395,14082.441,0.32738304]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3919515', 'UAZ_AGS30_CDF', '[139,[14382.646,12476.114,-0.063508034]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('944226', 'TowingTractor', '[326,[15109.976,16452.41,-1.9073486e-006]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1062928', 'Smallboat_1', '[80,[4558.2949,12578.283,0]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4997840', 'Volha_1_TK_CIV_EP1', '[238,[5843.5518,15706.942,-0.31457901]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1914530', 'datsun1_civil_1_open', '[30,[10258.299,18334.043,0.0013871577]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2019559', 'Smallboat_1', '[72,[12408.254,15640.146,0.015512228]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1666739', 'Fishing_Boat', '[250,[5169.9502,11447.054,0.56925422]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3209383', 'car_hatchback', '[86,[8901.7041,16382.906,-0.52287233]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4473352', 'hilux1_civil_1_open', '[260,[14605.526,13939.602,0.6713171]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('709419', 'Old_bike_TK_INS_EP1', '[151,[15930.034,10392.619,-0.029946132]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('4854159', 'BAF_ATV_W', '[46,[9035.0342,16130.201,0.27921677]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1538615', 'datsun1_civil_1_open', '[134,[12568.371,13496.952,-0.016068187]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2962859', 'Old_moto_TK_Civ_EP1', '[169,[16857.227,5164.6616,-0.00017356873]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2578707', 'UAZ_RU', '[159,[10390.571,17886.035,-0.13711929]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3671339', 'SkodaRed', '[15,[15479.278,13196.94,-0.081950933]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2812033', 'tractorOld', '[216,[7378.9082,6885.4077,-0.032180786]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3564242', 'BAF_Offroad_W', '[88,[7880.2251,9132.3262,0.98060036]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4450404', 'Car_sedan', '[80,[5843.166,15274.034,-0.16550805]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1260376', 'Smallboat_1', '[324,[5311.6895,16168.466,-0.050078332]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4396444', 'MMT_USMC', '[139,[6548.7754,16602.83,0]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3663441', 'SkodaRed', '[21,[5815.4551,15266.173,-0.38064194]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4721455', 'TT650_TK_CIV_EP1', '[302,[10205.278,6960.6279,-3.8146973e-006]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3145542', 'BAF_Offroad_W', '[232,[15438.357,13233.176,-0.14840031]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1631588', 'Skoda', '[256,[5652.0742,11701.943,-0.23953035]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2069639', 'BAF_Offroad_W', '[313,[8780.2695,15751.578,0.73342705]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1019670', 'Pickup_PK_GUE', '[2,[1325.543,3069.8281,-0.16130616]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4784769', 'Tractor', '[72,[10337.966,17704.709,0.078620568]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4726833', 'Pickup_PK_GUE', '[181,[18442.873,17465.936,-0.18510628]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3241019', 'Skoda', '[219,[15724.873,13002.475,0.016004773]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1391109', 'SkodaGreen', '[41,[12010.156,15195.486,-0.06098599]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4978415', 'Volha_1_TK_CIV_EP1', '[139,[8829.9414,16423.84,-0.18867683]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1585727', 'PBX', '[309,[7483.7949,16348.306,0.3771615]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3565246', 'Pickup_PK_INS', '[104,[16884.389,18383.178]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3460193', 'tractorOld', '[350,[9974.7256,7479.1514,-0.20792389]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2258273', 'PBX', '[78,[4564.0747,12586.146,0.27501512]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1058877', 'Zodiac', '[149,[4567.1875,12575.791,0.32794917]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1632065', 'MMT_USMC', '[216,[16609.045,18268.834]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('1331807', 'PBX', '[256,[6810.8516,16963.617,0.32639301]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3692427', 'TT650_TK_EP1', '[310,[12764.887,11706.082,-2.4377213]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1535875', 'Lada1_TK_CIV_EP1', '[215,[8836.1211,16336.259,-1.4623375]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4272260', 'hilux1_civil_1_open', '[307,[4481.4434,8097.375,-0.11422729]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4935367', 'Lada2_TK_CIV_EP1', '[40,[14919.69,14241.767,0.50658512]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('591948', 'M1030_US_DES_EP1', '[315,[15923.914,10390.978,0.065592304]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1646798', 'Lada2_TK_CIV_EP1', '[95,[6888.7314,9608.6816,-1.7401905]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1847376', 'Volha_1_TK_CIV_EP1', '[122,[5778.6987,14089.674,0.25874329]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3891379', 'SkodaBlue', '[118,[14873.657,14164.392]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4859822', 'datsun1_civil_1_open', '[149,[11150.629,7801.4014,-2.9103241]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1485172', 'Volha_1_TK_CIV_EP1', '[49,[14284.261,13949.108,-0.010529518]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3046294', 'datsun1_civil_2_covered', '[71,[16609.645,9669.2832,-2.1824951]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2993509', 'Fishing_Boat', '[7,[3890.8613,14601.687,0.57088029]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4320065', 'Fishing_Boat', '[221,[16862.371,5288.4971,0.58236504]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1437577', 'BAF_ATV_W', '[282,[14128.93,13985.526,0.16818571]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1131130', 'Ikarus', '[89,[14112.446,14114.838,4.7683716e-007]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2549517', 'TT650_TK_CIV_EP1', '[3,[15934.4,10377.512,0]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4423282', 'Old_moto_TK_Civ_EP1', '[319,[10586.344,14072.07,0.046318348]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3557259', 'tractorOld', '[130,[8675.9121,14462.824,0.44496155]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1661949', 'tractorOld', '[133,[12384.005,13562.851,0.032843329]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3941828', 'TT650_TK_CIV_EP1', '[248,[16629.629,9686.2881]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2655595', 'Pickup_PK_TK_GUE_EP1', '[145,[16597.65,18228.482,0.36522865]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3861417', 'Old_moto_TK_Civ_EP1', '[278,[15560.346,13225.937,1.8889103]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4047441', 'UAZ_Unarmed_TK_EP1', '[4,[11150.028,7816.458,-2.4303894]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2237379', 'SkodaBlue', '[181,[14497.405,13748.195,-4.7683716e-007]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4542314', 'Tractor', '[297,[14387.361,13013.268,-0.11317539]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1081306', 'SkodaRed', '[307,[14180.613,13976.24,-0.30108833]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1711553', 'BAF_Offroad_W', '[310,[15622.641,13203.957,-0.23830509]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4766655', 'tractorOld', '[61,[14700.763,14054.791,-0.012958527]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('982110', 'tractorOld', '[26,[16286.962,15404.418,0.26465988]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2465971', 'Tractor', '[150,[10045.218,7629.3237,0.061309315]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4449164', 'Smallboat_1', '[248,[15837.606,13079.95,0]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2531748', 'Lada1_TK_CIV_EP1', '[104,[15546.052,13179.851,0.60366821]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2950580', 'Lada1_TK_CIV_EP1', '[172,[12015.701,15281.786,0.28789032]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3753603', 'UAZ_AGS30_INS', '[316,[9969.4746,7491.2178,-0.14460368]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3648835', 'datsun1_civil_3_open', '[241,[6477.1143,16515.473,0.40218258]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2196682', 'Skoda', '[333,[14750.954,14044.857,0.0054101944]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3988362', 'Lada2_TK_CIV_EP1', '[236,[10863.475,15715.426,-0.33679962]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('631822', 'UAZ_AGS30_INS', '[211,[10111.374,18287.914,-0.17154503]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2602387', 'TT650_TK_EP1', '[179,[10243.161,18317.027,-0.093670703]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3395100', 'Lada1_TK_CIV_EP1', '[96,[10873.901,15766.048,-0.030750275]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3348233', 'S1203_TK_CIV_EP1', '[246,[14344.513,14167.41,-0.23482895]]', '[]', '[[\"glass1\",0.5],[\"glass2\",0.5],[\"glass3\",0.5],[\"glass4\",0.5],[\"glass5\",0.5],[\"NEtrup\",1.1998],[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `object_spawns` VALUES ('4837300', 'UAZ_AGS30_INS', '[106,[7258.1763,6579.2041,-0.1415596]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2138841', 'UAZ_AGS30_CDF', '[126,[15906.309,10392.449,0.029843135]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2385056', '240GD', '[157,[8787.0732,15747.566,1.0695839]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3044746', 'UAZ_RU', '[193,[12726.009,11682.42,0.12322235]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4732714', 'datsun1_civil_2_covered', '[40,[11149.501,7807.5029,-2.1053925]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('948639', 'Skoda', '[77,[14292.008,13784.789,-0.018298149]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3299270', 'hilux1_civil_1_open', '[98,[10923.082,15866.077,-0.13291931]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('548636', 'BAF_Offroad_W', '[226,[5884.5156,13636.438,-0.15112305]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3658776', 'SkodaRed', '[169,[6116.8262,13556.924,0.50834274]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4801777', 'TT650_TK_CIV_EP1', '[220,[11161.952,7847.9009]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1760808', 'Volha_1_TK_CIV_EP1', '[168,[15621.226,13261.992,0.0034589835]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3039612', 'Zodiac', '[105,[6134.4668,10782.863,0.33198076]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4894419', 'tractorOld', '[98,[10299.823,13843.912,0.44814301]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2039814', 'datsun1_civil_3_open', '[9,[14224.196,14152.162,0.44491911]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2147408', 'Old_moto_TK_Civ_EP1', '[24,[14287.704,12615.442,-0.10717487]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1987922', 'datsun1_civil_3_open', '[327,[10781.746,15392.802,-0.16520657]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2727292', 'Ikarus', '[162,[6247.2832,10778.26]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2855917', 'Lada1_TK_CIV_EP1', '[152,[5891.1396,13708.631,0.97233862]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3031853', 'Lada1_TK_CIV_EP1', '[60,[14351.394,13743.921,0.10310078]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('578600', 'hilux1_civil_1_open', '[152,[14460.49,14099.189,0.11409593]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3351629', 'hilux1_civil_1_open', '[269,[11416.186,8797.1885,0.096565247]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4564733', 'M1030_US_DES_EP1', '[222,[9932.6992,7697.624,-0.18499614]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1789319', 'UAZ_AGS30_CDF', '[98,[12824.199,11814.879,-0.0028726123]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1769699', 'Lada2_TK_CIV_EP1', '[276,[14257.823,13806.57,-0.0071401596]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('827695', 'Car_sedan', '[53,[8843.8379,16233.506,-0.34364596]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1989474', 'PBX', '[51,[8079.3613,17338.496,-0.068151176]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3631442', 'BAF_ATV_W', '[298,[15762.344,13258.503,0.37532806]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2449550', 'Tractor', '[150,[12588.282,13591.627,-0.25419426]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1130975', 'SkodaBlue', '[228,[15301.432,13345.984]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3939791', 'Fishing_Boat', '[285,[8087.752,17346.396,0.075778306]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2906303', 'TT650_TK_CIV_EP1', '[338,[8559.7598,14296.831]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1126856', 'Fishing_Boat', '[167,[7492.1855,16356.206,0.6910162]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2465043', 'Zodiac', '[152,[7486.9077,16337.95,0.3260349]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1293092', 'Lada1_TK_CIV_EP1', '[321,[5889.1509,15481.597,-0.41191825]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1238212', 'UAZ_AGS30_CDF', '[211,[12525.771,13559.673,0.021727379]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4906720', 'datsun1_civil_3_open', '[34,[15445.79,13136.636,0.69085789]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3978030', 'UAZ_AGS30_INS', '[346,[16616.555,9670.1924,-0.14235115]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1096861', 'datsun1_civil_3_open', '[167,[6067.5684,10551.878,0.097700402]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4130350', 'hilux1_civil_1_open', '[21,[10316.385,14057.329,0.43193054]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1949955', 'Skoda', '[328,[10986.962,8617.0947,0.14422607]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2228700', 'smallboat_2', '[287,[14586.908,14405.509,-0.083498478]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3596580', 'SkodaRed', '[263,[9036.1846,16137.969,-0.87280083]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3438910', 'BAF_ATV_W', '[315,[10123.216,16299.46,0.05255127]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3970072', 'M1030_US_DES_EP1', '[330,[12758.614,11709.826,-1.3274841]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3498816', 'Volha_2_TK_CIV_EP1', '[216,[5679.562,11666.237,-0.19072583]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3451358', 'MMT_USMC', '[219,[16202.461,15507.758]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2628857', 'Pickup_PK_INS', '[159,[14512.621,13753.569,0.38204718]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4061827', 'VolhaLimo_TK_CIV_EP1', '[210,[11960.041,15223.785,0.25103569]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2932010', 'Ikarus', '[149,[9032.1787,16131.344,0]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4985088', 'Volha_1_TK_CIV_EP1', '[38,[15804.833,13304.503,0.21482792]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3673431', 'Smallboat_1', '[55,[6125.5742,10785.355,-0.080679357]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4942594', 'SkodaBlue', '[6,[5719.688,15333.236,3.8146973e-006]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4172887', 'BAF_Offroad_W', '[113,[16630.197,18270.813,0.009223938]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3899464', 'UAZ_RU', '[82,[14200.882,12645.263,-0.070645332]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2401745', 'Old_moto_TK_Civ_EP1', '[267,[12562.927,13812.304,-0.026442744]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4926245', 'Ikarus', '[261,[15390.828,13120.053]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2116518', 'Zodiac', '[29,[14416.9,14447.135,0.078388274]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1101483', 'datsun1_civil_3_open', '[0,[6455.4966,10292.691,-0.079717219]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2969568', 'BAF_Offroad_W', '[183,[5788.8628,15372.238,0.014533997]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1481514', 'TT650_TK_CIV_EP1', '[81,[4480.5459,8121.6299]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3626070', 'MMT_USMC', '[213,[18366.305,17072.34,0]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('4661833', 'TT650_TK_EP1', '[289,[9106.8047,17217.389,-0.0072902995]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2578868', 'TT650_TK_CIV_EP1', '[301,[7483.7358,6649.9287,1.9073486e-005]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4911053', 'Old_moto_TK_Civ_EP1', '[8,[14342.371,13839.202,0.020810366]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3234301', 'BAF_ATV_W', '[330,[6712.6548,16965.586,0.16895771]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2162914', 'Old_moto_TK_Civ_EP1', '[218,[11978.928,15321.878,-0.058079999]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1660545', 'Old_moto_TK_Civ_EP1', '[143,[12857.922,11733.393,0.1046195]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4169506', 'VolhaLimo_TK_CIV_EP1', '[195,[10805.371,15734.297,-0.43709946]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4778846', 'BAF_Offroad_W', '[286,[17065.734,13843.54,-0.0034102711]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1831401', 'Tractor', '[162,[15692.822,10324.34,0.16298492]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2436938', 'BAF_Offroad_W', '[166,[10698.374,16097.903,0.34481049]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1830289', 'Old_moto_TK_Civ_EP1', '[316,[8830.8662,14354.831,-0.053121448]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4340288', 'UAZ_RU', '[102,[7348.856,14197.724,-0.085718736]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2715699', 'BAF_Offroad_W', '[212,[11341.55,8676.0869,-0.13813782]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2361942', 'SkodaRed', '[36,[10707.754,15344.074,-0.16409683]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4556330', 'UAZ_AGS30_INS', '[33,[14148.795,12688.249,-0.17750263]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4699764', 'datsun1_civil_3_open', '[47,[15845.489,13254.738,-0.098415375]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1637040', 'hilux1_civil_2_covered', '[350,[16612.922,9673.1348,-2.1203003]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4643525', 'Pickup_PK_INS', '[34,[8783.4561,15747.725,1.3230991]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1646389', 'Fishing_Boat', '[19,[8277.125,16235.389,0.39055371]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1960870', 'hilux1_civil_2_covered', '[179,[11152.78,7811.3545,-2.6618195]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3835662', 'Fishing_Boat', '[316,[15851.777,13095.714,0.54047644]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1105192', 'car_hatchback', '[261,[5584.7217,12009.304,-0.13244633]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2919160', 'SkodaGreen', '[215,[14209.455,13859.497,0.043473721]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2288107', 'Zodiac', '[226,[6813.9644,16953.262,0.22995949]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3238455', 'Volha_2_TK_CIV_EP1', '[166,[11234.154,8661.7354,0.16228485]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('895732', 'Zodiac', '[314,[9817.4375,18057,0.15692854]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2934378', 'Volha_2_TK_CIV_EP1', '[40,[5764.1733,15211.694,-0.1111384]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('584565', 'Ikarus_TK_CIV_EP1', '[104,[15175.568,15965.272,4.196167e-005]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2824778', 'SkodaRed', '[116,[6431.2456,10891.89,-0.14227486]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2364447', 'hilux1_civil_1_open', '[62,[9136.3389,17299.031,-0.14133488]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1647977', 'Smallboat_1', '[108,[7478.0151,16340.442,-0.007222414]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3222497', 'UAZ_AGS30_CDF', '[68,[10185.248,18337.227,-0.19313033]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1360305', 'TT650_TK_EP1', '[222,[14318.596,12503.326,-2.0157614]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3741089', 'SkodaGreen', '[60,[5783.4854,15288.559,-0.17341232]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2837069', 'M1030_US_DES_EP1', '[36,[14278.757,12683.308,-0.055742219]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1790746', 'tractorOld', '[1,[7893.9429,9101.4326,0.34924698]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1288560', 'MMT_USMC', '[84,[17145.238,13867.454]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('1300391', 'PBX', '[300,[3882.4707,14593.786,0.22469437]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1283032', 'car_hatchback', '[351,[14459.812,13867.48,0.088867188]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3652747', 'datsun1_civil_3_open', '[129,[13977.115,14155.497,-0.29106522]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3250537', 'TT650_TK_CIV_EP1', '[291,[9146.832,17277.48,-0.22695178]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('501578', 'Old_bike_TK_INS_EP1', '[222,[11146.38,7803.6533,-2.1533203]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2617856', 'AN2_DZ', '[349,[14339.723,17168.854,-1.9073486e-006]]', '[]', '[[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1229524', 'BAF_ATV_W', '[187,[6123.7778,10615.569,0.0057630539]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4644134', 'Old_bike_TK_INS_EP1', '[126,[16606.523,9665.4336,-2.1264648]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('1474382', 'Old_bike_TK_INS_EP1', '[16,[4476.3115,8122.9238,0.013352858]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('4669378', 'MMT_USMC', '[129,[14592.128,13803.277,0]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('1131230', 'Lada1_TK_CIV_EP1', '[76,[11041.728,8626.624,0.10169983]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3192709', 'SkodaBlue', '[131,[12118.12,15336.363]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3481649', 'Ikarus', '[240,[5397.2026,16072.269,-3.8146973e-006]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2526216', 'Old_moto_TK_Civ_EP1', '[248,[4476.165,8109.5127,-0.24843407]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1936854', 'Smallboat_1', '[91,[8262.9541,16219.625,-0.018260479]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3458933', 'SkodaRed', '[143,[10233.349,16564.66,0.027361253]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2695800', 'PBX', '[135,[5317.4692,16176.329,0.28533399]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3248814', 'tractorOld', '[119,[7391.9097,14237.989,-0.41635132]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3749732', 'SkodaGreen', '[189,[11620.387,8899.4688,0.013755798]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3869306', 'Old_moto_TK_Civ_EP1', '[38,[8838.918,16340.856,-1.3884468]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4817160', 'PBX', '[179,[9822.1152,18057.426,-0.018188477]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4324214', 'Ikarus', '[42,[14243.334,14057.41]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4398254', 'UAZ_Unarmed_TK_EP1', '[280,[12982.338,11700.104,-0.25634113]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('631808', '240GD', '[179,[16641.314,18245.367,0.068502426]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4519615', 'Old_bike_TK_INS_EP1', '[222,[8621.5518,14330.931,0.19091861]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('2330141', 'TT650_TK_CIV_EP1', '[166,[14394.814,12432.986]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1873027', 'Zodiac', '[281,[15846.499,13077.458,0.15925467]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('979399', 'BAF_ATV_W', '[245,[6346.312,9855.8135,0.21545219]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2482506', 'Old_moto_TK_Civ_EP1', '[325,[6891.2275,9607.3281,-1.916276]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('969676', 'TT650_TK_CIV_EP1', '[315,[9902.9639,7719.8765]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1334722', 'MMT_USMC', '[281,[8787.0625,15752.43,0]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('4105657', 'hilux1_civil_1_open', '[66,[7454.3496,6679.998,-0.21913147]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1522194', 'Smallboat_1', '[353,[14532.572,14386.419,-0.092286766]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3340584', 'Fishing_Boat', '[157,[14631.369,14394.837,-0.16102248]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4492034', 'Smallboat_1', '[244,[6805.0718,16955.754,0.019721746]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3676414', 'Car_sedan', '[322,[5834.4082,11701.255,-0.04875946]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4059794', 'SkodaBlue', '[157,[5795.2241,11693.686]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('537171', 'Zodiac', '[141,[12441.209,15523.438,0.19060564]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('611044', 'Pickup_PK_INS', '[134,[6357.2739,9707.5,-0.25344753]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2612701', 'Car_sedan', '[297,[6841.0957,9678.5498,-0.051107734]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3279297', 'hilux1_civil_1_open', '[86,[14279.027,12672.748,-0.10100651]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1226506', 'SkodaRed', '[177,[15787.595,13247.768,-0.26617548]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4216988', 'Zodiac', '[118,[10615.922,16364.14,0.052655339]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3792580', 'SkodaGreen', '[45,[8847.4307,16388.428,-0.54956627]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4641497', 'smallboat_2', '[81,[12379.22,15682.278,0.0026472807]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2226811', 'tractorOld', '[126,[16650.037,9680.335,-0.025995737]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2590078', 'Smallboat_1', '[352,[5155.7798,11431.29,-0.0046123266]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2932490', 'SkodaRed', '[179,[10589.858,16242.658,0.64194894]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('983902', 'VolhaLimo_TK_CIV_EP1', '[48,[9021.7363,16563.748,-0.10378934]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4809608', 'datsun1_civil_1_open', '[268,[10444.26,14252.066,-0.18938921]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1440685', 'PBX', '[120,[8845.9053,17325.678,-0.0020009279]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4580874', 'PBX', '[234,[6131.354,10793.219,0.089182556]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3655355', 'Pickup_PK_INS', '[329,[16931.182,5046.5596,0.11086837]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1480206', 'tractorOld', '[31,[6518.3936,16613.938,-0.039086342]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2536478', 'SkodaGreen', '[137,[7869.5356,9217.9355,-0.33691025]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3201188', 'Car_sedan', '[256,[14548.383,14118.009,0.38021564]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4768835', 'tractorOld', '[7,[14581.016,13837.694,0.30701256]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1059328', 'BAF_ATV_W', '[133,[10619.911,16178.079,-0.19310522]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4135807', 'M1030_US_DES_EP1', '[184,[11147.278,7809.5439,-1.6029816]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4226126', 'Zodiac', '[251,[5164.6724,11428.798,0.4670068]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2794046', 'VolhaLimo_TK_CIV_EP1', '[129,[14870.256,14432.666,0.35590363]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3407641', 'SkodaBlue', '[63,[5995.3511,13689.834,-3.8146973e-005]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1910434', 'BAF_ATV_W', '[164,[6040.8901,13552.661,0.11583328]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3303691', 'Skoda', '[141,[11963.963,15311.409,0.16621971]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('742556', 'TT650_TK_CIV_EP1', '[84,[10548.104,14004.294,3.8146973e-006]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4799850', 'BAF_ATV_W', '[56,[13989.696,14231.648,-0.13696194]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1105898', 'TT650_TK_CIV_EP1', '[77,[12678.394,11654.823]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3045685', 'tractorOld', '[125,[13057.195,6865.0415,-0.0017929077]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4134240', 'TT650_TK_CIV_EP1', '[300,[10073.552,18249.021]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1830988', 'PBX', '[215,[14383.276,14464.678,-0.052592158]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('4708607', 'An2_1_TK_CIV_EP1', '[257,[14460.332,16833.764,5.7220459e-006]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1935450', 'Tractor', '[207,[9221.707,17702.715,0.098889582]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1070626', 'hilux1_civil_1_open', '[288,[8890.7754,16425.59,-0.31359971]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3109246', 'Old_bike_TK_INS_EP1', '[30,[9148.2383,17253.543,0.1132509]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('901644', 'VolhaLimo_TK_CIV_EP1', '[342,[15520.12,13177.97,1.4741507]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2806489', 'VolhaLimo_TK_CIV_EP1', '[307,[14570.348,13837.392,-0.010950089]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3035695', '240GD', '[297,[14416.242,13946.687,-0.041317463]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2312771', 'smallboat_2', '[342,[10719.649,16250.785,-0.19571131]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3346441', 'Smallboat_1', '[272,[16840.873,5302.0298]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('3345728', 'Old_bike_TK_INS_EP1', '[6,[12757.716,11703.936,-2.6741104]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3321328', 'PBX', '[264,[12048.788,15650.743,0.0019052029]]', '[]', '[[\"motor\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1813487', 'Old_bike_TK_INS_EP1', '[28,[10205.222,18321.516,0.87607116]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3707823', 'datsun1_civil_1_open', '[162,[4474.6138,8103.7905,-0.12552194]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1066418', 'Volha_2_TK_CIV_EP1', '[43,[15677.05,13080.488,-0.098333262]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('1807239', 'UAZ_AGS30_INS', '[65,[10124.965,14003.032,0.073008731]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);
INSERT INTO `object_spawns` VALUES ('2586074', 'Old_bike_TK_INS_EP1', '[140,[7341.543,6852.8081,0.0047355974]]', '[]', '[]', '', null);
INSERT INTO `object_spawns` VALUES ('3087326', 'SkodaGreen', '[52,[15701.107,12992.767,-0.26783562]]', '[]', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', '', null);

-- ----------------------------
-- Table structure for object_spawns_types
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns_types`;
CREATE TABLE `object_spawns_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spawn` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawns_types
-- ----------------------------
INSERT INTO `object_spawns_types` VALUES ('1', 'air', 'airplane');
INSERT INTO `object_spawns_types` VALUES ('2', 'heli', 'helicopter');
INSERT INTO `object_spawns_types` VALUES ('3', 'land', 'atv');
INSERT INTO `object_spawns_types` VALUES ('4', 'land', 'tank');
INSERT INTO `object_spawns_types` VALUES ('5', 'land', 'car');
INSERT INTO `object_spawns_types` VALUES ('6', 'water', 'boat');
INSERT INTO `object_spawns_types` VALUES ('7', 'land', 'bus');
INSERT INTO `object_spawns_types` VALUES ('8', 'land', 'motorcycle');
INSERT INTO `object_spawns_types` VALUES ('9', 'land', 'bicycle');
INSERT INTO `object_spawns_types` VALUES ('10', 'land', 'truck');

-- ----------------------------
-- Table structure for object_spawn_locations
-- ----------------------------
DROP TABLE IF EXISTS `object_spawn_locations`;
CREATE TABLE `object_spawn_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worldspace` varchar(255) DEFAULT NULL,
  `spawn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawn_locations
-- ----------------------------
INSERT INTO `object_spawn_locations` VALUES ('1', '[179,[16641.314,18245.367,0.068502426]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('2', '[297,[14416.242,13946.687,-0.041317463]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('3', '[41,[14554.765,14152.262,0.34490299]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('4', '[157,[8787.0732,15747.566,1.0695839]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('5', '[6,[6513.9268,9699.5264,-0.29185581]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('6', '[257,[14460.332,16833.764,5.7220459e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('7', '[223,[14673.721,16587.174,1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('8', '[349,[14339.723,17168.854,-1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('9', '[298,[15762.344,13258.503,0.37532806]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('10', '[308,[15857.736,13289.368,-0.029737473]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('11', '[56,[13989.696,14231.648,-0.13696194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('12', '[282,[14128.93,13985.526,0.16818571]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('13', '[313,[10665.858,15837.456,-0.27557755]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('14', '[133,[10619.911,16178.079,-0.19310522]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('15', '[315,[10123.216,16299.46,0.05255127]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('16', '[46,[9035.0342,16130.201,0.27921677]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('17', '[330,[6712.6548,16965.586,0.16895771]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('18', '[74,[5637.9873,15362.442,-0.11415863]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('19', '[164,[6040.8901,13552.661,0.11583328]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('20', '[291,[6048.021,10636.678,0.44082278]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('21', '[245,[6346.312,9855.8135,0.21545219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('22', '[187,[6123.7778,10615.569,0.0057630539]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('23', '[166,[10698.374,16097.903,0.34481049]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('24', '[114,[8744.7773,16350.059,0.048419796]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('25', '[183,[5788.8628,15372.238,0.014533997]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('26', '[226,[5884.5156,13636.438,-0.15112305]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('27', '[212,[11341.55,8676.0869,-0.13813782]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('28', '[232,[15438.357,13233.176,-0.14840031]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('29', '[310,[15622.641,13203.957,-0.23830509]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('30', '[254,[14375.589,13890.831,-0.0057909489]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('31', '[88,[14920.194,14159.303,-0.07971859]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('32', '[86,[12028.973,15380.481,-0.016323155]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('33', '[113,[16630.197,18270.813,0.009223938]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('34', '[286,[17065.734,13843.54,-0.0034102711]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('35', '[230,[14574.313,13753.917,0.7173152]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('36', '[194,[14600.395,14082.441,0.32738304]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('37', '[313,[8780.2695,15751.578,0.73342705]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('38', '[219,[6380.8604,9612.5078,-0.039051056]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('39', '[88,[7880.2251,9132.3262,0.98060036]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('40', '[315,[10753.189,15784.874,-0.27317047]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('41', '[86,[8901.7041,16382.906,-0.52287233]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('42', '[309,[5866.5811,15399.4,-0.086795166]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('43', '[261,[5584.7217,12009.304,-0.13244633]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('44', '[109,[11051.388,8543.5684,0.098106384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('45', '[347,[15348.821,13439.043,0.57016087]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('46', '[329,[15727.822,13295.508,-0.08376091]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('47', '[351,[14459.812,13867.48,0.088867188]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('48', '[97,[14970.779,14077.785,0.53214264]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('49', '[53,[8843.8379,16233.506,-0.34364596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('50', '[80,[5843.166,15274.034,-0.16550805]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('51', '[322,[5834.4082,11701.255,-0.04875946]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('52', '[297,[6841.0957,9678.5498,-0.051107734]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('53', '[199,[11162.582,8597.5811,0.073539734]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('54', '[7,[14375.737,13753.993,0.056969643]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('55', '[256,[14548.383,14118.009,0.38021564]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('56', '[293,[12183.381,15405.473,0.089565277]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('57', '[30,[10258.299,18334.043,0.0013871577]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('58', '[135,[9184.7061,17283.559,-0.093870297]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('59', '[202,[8621.0635,14314.621,-0.058616556]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('60', '[268,[10444.26,14252.066,-0.18938921]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('61', '[134,[12568.371,13496.952,-0.016068187]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('62', '[162,[4474.6138,8103.7905,-0.12552194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('63', '[149,[11150.629,7801.4014,-2.9103241]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('64', '[152,[16610.771,9663.1816,-2.7253418]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('65', '[319,[14232.718,12725.76,0.17801024]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('66', '[352,[12761.965,11701.684,-3.2845917]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('67', '[40,[11149.501,7807.5029,-2.1053925]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('68', '[71,[16609.645,9669.2832,-2.1824951]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('69', '[69,[14293.855,12605.584,-0.10924029]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('70', '[34,[15445.79,13136.636,0.69085789]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('71', '[47,[15845.489,13254.738,-0.098415375]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('72', '[129,[13977.115,14155.497,-0.29106522]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('73', '[9,[14224.196,14152.162,0.44491911]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('74', '[327,[10781.746,15392.802,-0.16520657]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('75', '[286,[10668.965,16176.471,-0.24919176]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('76', '[247,[10083.138,16551.754,-0.091879971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('77', '[316,[9038.3027,16129.516,0.41601181]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('78', '[241,[6477.1143,16515.473,0.40218258]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('79', '[8,[5875.0107,15080.307,-0.2639389]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('80', '[118,[6139.6157,13697.097,0.042643815]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('81', '[167,[6067.5684,10551.878,0.097700402]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('82', '[0,[6455.4966,10292.691,-0.079717219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('83', '[313,[6273.5771,10628.323,-0.0016698837]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('84', '[98,[10923.082,15866.077,-0.13291931]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('85', '[288,[8890.7754,16425.59,-0.31359971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('86', '[255,[5821.7671,11729.394,-0.33867073]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('87', '[291,[6710.3745,9598.3682,-0.40943384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('88', '[269,[11416.186,8797.1885,0.096565247]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('89', '[152,[14460.49,14099.189,0.11409593]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('90', '[260,[14605.526,13939.602,0.6713171]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('91', '[182,[11638.491,14873.074,0.36336327]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('92', '[104,[9987.4922,18050.98,0.45072174]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('93', '[62,[9136.3389,17299.031,-0.14133488]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('94', '[86,[8604.4404,14280.05,0.17060436]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('95', '[21,[10316.385,14057.329,0.43193054]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('96', '[266,[12518.292,13561.69,0.52007294]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('97', '[66,[7454.3496,6679.998,-0.21913147]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('98', '[332,[3631.1431,9860.251,-0.22136688]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('99', '[307,[4481.4434,8097.375,-0.11422729]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('100', '[117,[10084.686,7548.8384,0.03282547]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('101', '[193,[16579.092,9691.9111,0.047290139]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('102', '[86,[14279.027,12672.748,-0.10100651]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('103', '[241,[12753.756,11685.046,-0.37569386]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('104', '[179,[11152.78,7811.3545,-2.6618195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('105', '[350,[16612.922,9673.1348,-2.1203003]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('106', '[157,[14317.825,12508.881,-2.0933142]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('107', '[261,[15390.828,13120.053]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('108', '[293,[15810.675,13386.433]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('109', '[42,[14243.334,14057.41]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('110', '[89,[14112.446,14114.838,4.7683716e-007]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('111', '[237,[10056.372,16314.351,0.37594041]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('112', '[149,[9032.1787,16131.344,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('113', '[240,[5397.2026,16072.269,-3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('114', '[19,[5890.4048,13474.105,3.4332275e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('115', '[162,[6247.2832,10778.26]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('116', '[162,[6386.1484,10170.973,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('117', '[73,[6404.9409,10557.507]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('118', '[104,[15175.568,15965.272,4.196167e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('119', '[96,[10873.901,15766.048,-0.030750275]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('120', '[215,[8836.1211,16336.259,-1.4623375]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('121', '[321,[5889.1509,15481.597,-0.41191825]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('122', '[152,[5891.1396,13708.631,0.97233862]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('123', '[87,[5872.1499,11685.472,-0.13291398]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('124', '[76,[11041.728,8626.624,0.10169983]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('125', '[104,[15546.052,13179.851,0.60366821]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('126', '[60,[14351.394,13743.921,0.10310078]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('127', '[170,[14854.902,14039.073,0.7709074]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('128', '[172,[12015.701,15281.786,0.28789032]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('129', '[236,[10863.475,15715.426,-0.33679962]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('130', '[95,[6888.7314,9608.6816,-1.7401905]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('131', '[276,[14257.823,13806.57,-0.0071401596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('132', '[40,[14919.69,14241.767,0.50658512]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('133', '[116,[10176.125,18333.334,0.0044983537]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('134', '[123,[9184.9814,17533.213,-0.079093941]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('135', '[178,[8535.7012,14288.537,0.022169547]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('136', '[340,[10582.012,14143.74,-0.06512899]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('137', '[346,[12514.671,13570.565,0.13918956]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('138', '[222,[9932.6992,7697.624,-0.18499614]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('139', '[320,[10321.648,7254.0654,0.020488739]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('140', '[184,[11147.278,7809.5439,-1.6029816]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('141', '[128,[16607.422,9671.3242,-1.8335876]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('142', '[315,[15923.914,10390.978,0.065592304]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('143', '[36,[14278.757,12683.308,-0.055742219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('144', '[330,[12758.614,11709.826,-1.3274841]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('145', '[344,[14037.424,14212.402]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('146', '[292,[8865.5996,16198.282,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('147', '[290,[13564.722,19701.713,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('148', '[213,[18366.305,17072.34,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('149', '[216,[16609.045,18268.834]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('150', '[84,[17145.238,13867.454]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('151', '[219,[16202.461,15507.758]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('152', '[129,[14592.128,13803.277,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('153', '[64,[14411.316,14253.356]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('154', '[281,[8787.0625,15752.43,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('155', '[139,[6548.7754,16602.83,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('156', '[56,[6429.1465,9563.9521]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('157', '[305,[7850.0107,9219.124]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('158', '[28,[10205.222,18321.516,0.87607116]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('159', '[30,[9148.2383,17253.543,0.1132509]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('160', '[222,[8621.5518,14330.931,0.19091861]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('161', '[179,[10111.047,13995.624,0.12921555]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('162', '[223,[12593.712,13860.452,-0.044941075]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('163', '[198,[9911.7041,7683.4077,-0.056767486]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('164', '[140,[7341.543,6852.8081,0.0047355974]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('165', '[16,[4476.3115,8122.9238,0.013352858]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('166', '[181,[10293.979,7115.5566,0.0067443848]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('167', '[222,[11146.38,7803.6533,-2.1533203]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('168', '[126,[16606.523,9665.4336,-2.1264648]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('169', '[151,[15930.034,10392.619,-0.029946132]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('170', '[233,[14311.425,12501.18,-0.41638756]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('171', '[6,[12757.716,11703.936,-2.6741104]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('172', '[324,[10797.101,15816.361,-0.21506119]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('173', '[38,[8838.918,16340.856,-1.3884468]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('174', '[290,[5859.3853,15408.245,0.06036796]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('175', '[170,[6003.6353,13576.399,-0.031255648]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('176', '[357,[5864.0527,11647.133,-1.1481094]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('177', '[325,[6891.2275,9607.3281,-1.916276]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('178', '[54,[11324.433,8758.5303,0.067847334]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('179', '[159,[15400.271,13446,0.058018561]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('180', '[278,[15560.346,13225.937,1.8889103]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('181', '[8,[14342.371,13839.202,0.020810366]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('182', '[331,[14985.43,14165.211,0.67830658]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('183', '[218,[11978.928,15321.878,-0.058079999]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('184', '[79,[10233.178,18332.525,-0.0096525317]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('185', '[132,[9109.3213,17273.176,-0.12450205]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('186', '[316,[8830.8662,14354.831,-0.053121448]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('187', '[319,[10586.344,14072.07,0.046318348]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('188', '[267,[12562.927,13812.304,-0.026442744]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('189', '[2,[9960.9941,7504.6602,-0.02241189]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('190', '[195,[6803.4961,5382.9414,-0.029525757]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('191', '[180,[7481.7256,7235.0239,-0.069056526]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('192', '[248,[4476.165,8109.5127,-0.24843407]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('193', '[256,[10419.466,7407.7144,0.03213501]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('194', '[58,[13062.431,6871.6479,-0.032897949]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('195', '[301,[16601.969,9672.8145,-1.188324]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('196', '[95,[15747.839,9880.5098,0.078106336]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('197', '[24,[14287.704,12615.442,-0.10717487]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('198', '[143,[12857.922,11733.393,0.1046195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('199', '[169,[16857.227,5164.6616,-0.00017356873]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('200', '[181,[18442.873,17465.936,-0.18510628]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('201', '[2,[1325.543,3069.8281,-0.16130616]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('202', '[179,[16823.016,5164.6733,-0.24224854]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('203', '[159,[14512.621,13753.569,0.38204718]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('204', '[56,[14436.111,14061.548,0.48373413]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('205', '[34,[8783.4561,15747.725,1.3230991]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('206', '[134,[6357.2739,9707.5,-0.25344753]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('207', '[104,[16884.389,18383.178]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('208', '[204,[18330.074,17116.488]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('209', '[329,[16931.182,5046.5596,0.11086837]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('210', '[145,[16597.65,18228.482,0.36522865]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('211', '[180,[16960.059,5178.604,-0.12886047]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('212', '[102,[15340.347,13328.549,0.17743778]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('213', '[8,[14126.225,13762.564,-0.055890083]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('214', '[246,[14344.513,14167.41,-0.23482895]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('215', '[211,[10804.409,15821.528,-0.40860748]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('216', '[85,[8787.584,16378.222,-0.012916565]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('217', '[270,[5772.0562,15254.425,-0.12950897]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('218', '[256,[5652.0742,11701.943,-0.23953035]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('219', '[319,[7007.4121,9644.4229,-0.447855]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('220', '[328,[10986.962,8617.0947,0.14422607]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('221', '[219,[15724.873,13002.475,0.016004773]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('222', '[77,[14292.008,13784.789,-0.018298149]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('223', '[333,[14750.954,14044.857,0.0054101944]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('224', '[141,[11963.963,15311.409,0.16621971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('225', '[49,[8987.3447,16420.063]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('226', '[6,[5719.688,15333.236,3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('227', '[63,[5995.3511,13689.834,-3.8146973e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('228', '[157,[5795.2241,11693.686]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('229', '[274,[11465.989,8825.0703]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('230', '[228,[15301.432,13345.984]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('231', '[218,[15588.535,13143.864]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('232', '[181,[14497.405,13748.195,-4.7683716e-007]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('233', '[118,[14873.657,14164.392]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('234', '[131,[12118.12,15336.363]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('235', '[45,[8847.4307,16388.428,-0.54956627]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('236', '[60,[5783.4854,15288.559,-0.17341232]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('237', '[137,[7869.5356,9217.9355,-0.33691025]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('238', '[189,[11620.387,8899.4688,0.013755798]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('239', '[44,[15311.908,13377.369,0.072171211]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('240', '[52,[15701.107,12992.767,-0.26783562]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('241', '[215,[14209.455,13859.497,0.043473721]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('242', '[109,[14788.007,13781.773,0.24672413]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('243', '[41,[12010.156,15195.486,-0.06098599]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('244', '[15,[15479.278,13196.94,-0.081950933]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('245', '[177,[15787.595,13247.768,-0.26617548]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('246', '[307,[14180.613,13976.24,-0.30108833]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('247', '[135,[14005.508,14149.485,1.2357154]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('248', '[36,[10707.754,15344.074,-0.16409683]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('249', '[179,[10589.858,16242.658,0.64194894]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('250', '[143,[10233.349,16564.66,0.027361253]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('251', '[263,[9036.1846,16137.969,-0.87280083]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('252', '[21,[5815.4551,15266.173,-0.38064194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('253', '[169,[6116.8262,13556.924,0.50834274]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('254', '[19,[6149.8091,10614.883,0.4916535]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('255', '[188,[6109.2935,10260.923,0.0051426888]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('256', '[116,[6431.2456,10891.89,-0.14227486]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('257', '[326,[15109.976,16452.41,-1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('258', '[72,[10337.966,17704.709,0.078620568]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('259', '[207,[9221.707,17702.715,0.098889582]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('260', '[341,[8362.542,14548.259,0.44694319]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('261', '[241,[10580.141,14043.175,0.5129773]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('262', '[150,[12588.282,13591.627,-0.25419426]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('263', '[150,[10045.218,7629.3237,0.061309315]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('264', '[108,[10304.039,7092.4048,0.038532257]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('265', '[179,[16625.232,9711.6592,-0.37637705]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('266', '[162,[15692.822,10324.34,0.16298492]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('267', '[297,[14387.361,13013.268,-0.11317539]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('268', '[341,[12727.424,11809.682,-0.59694785]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('269', '[75,[16643.07,18274.84,-0.021310806]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('270', '[84,[17098.119,13849.832,-0.044782106]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('271', '[26,[16286.962,15404.418,0.26465988]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('272', '[7,[14581.016,13837.694,0.30701256]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('273', '[61,[14700.763,14054.791,-0.012958527]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('274', '[228,[8783.6533,15754.443,-0.18962288]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('275', '[31,[6518.3936,16613.938,-0.039086342]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('276', '[242,[6518.978,9608.2285,0.021951675]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('277', '[1,[7893.9429,9101.4326,0.34924698]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('278', '[168,[10056.433,18570.559,-0.0087738037]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('279', '[321,[9019.7021,17214.926,-0.010534286]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('280', '[119,[7391.9097,14237.989,-0.41635132]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('281', '[130,[8675.9121,14462.824,0.44496155]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('282', '[98,[10299.823,13843.912,0.44814301]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('283', '[133,[12384.005,13562.851,0.032843329]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('284', '[350,[9974.7256,7479.1514,-0.20792389]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('285', '[216,[7378.9082,6885.4077,-0.032180786]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('286', '[87,[10206.286,6878.6763,0.0043983459]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('287', '[125,[13057.195,6865.0415,-0.0017929077]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('288', '[126,[16650.037,9680.335,-0.025995737]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('289', '[358,[15613.325,10143.203,-0.0067596436]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('290', '[233,[14543.472,12580.558,-0.071885109]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('291', '[134,[12752.907,11771.123,-0.072349548]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('292', '[300,[10073.552,18249.021]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('293', '[291,[9146.832,17277.48,-0.22695178]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('294', '[338,[8559.7598,14296.831]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('295', '[84,[10548.104,14004.294,3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('296', '[235,[12663.256,13846.225,-0.055094268]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('297', '[315,[9902.9639,7719.8765]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('298', '[301,[7483.7358,6649.9287,1.9073486e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('299', '[81,[4480.5459,8121.6299]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('300', '[302,[10205.278,6960.6279,-3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('301', '[220,[11161.952,7847.9009]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('302', '[248,[16629.629,9686.2881]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('303', '[3,[15934.4,10377.512,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('304', '[166,[14394.814,12432.986]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('305', '[77,[12678.394,11654.823]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('306', '[179,[10243.161,18317.027,-0.093670703]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('307', '[289,[9106.8047,17217.389,-0.0072902995]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('308', '[267,[8801.126,14341.049,0.039859537]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('309', '[156,[10450.567,14092.313,0.0099034049]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('310', '[63,[12572.181,13844.104,0.067039847]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('311', '[175,[9985.999,7518.7197,-1.4961853]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('312', '[126,[10327.636,7247.3984,-0.016540527]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('313', '[130,[11153.551,7805.7998,-2.6903687]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('314', '[63,[13089.637,6916.4639,-1.6534348]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('315', '[165,[16613.693,9667.5801,-2.6562805]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('316', '[153,[15921.183,10391.513,0.11331525]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('317', '[222,[14318.596,12503.326,-2.0157614]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('318', '[310,[12764.887,11706.082,-2.4377213]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('319', '[68,[10185.248,18337.227,-0.19313033]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('320', '[211,[12525.771,13559.673,0.021727379]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('321', '[245,[7471.3154,7214.541,-0.22439194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('322', '[41,[16617.414,9692.625,0.10859197]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('323', '[126,[15906.309,10392.449,0.029843135]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('324', '[139,[14382.646,12476.114,-0.063508034]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('325', '[98,[12824.199,11814.879,-0.0028726123]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('326', '[211,[10111.374,18287.914,-0.17154503]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('327', '[65,[10124.965,14003.032,0.073008731]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('328', '[357,[12594.524,13854.655,-0.065336309]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('329', '[316,[9969.4746,7491.2178,-0.14460368]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('330', '[106,[7258.1763,6579.2041,-0.1415596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('331', '[346,[16616.555,9670.1924,-0.14235115]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('332', '[33,[14148.795,12688.249,-0.17750263]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('333', '[248,[12943.742,11590.15,-0.49687195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('334', '[311,[10147.066,7395.7979,0.025886536]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('335', '[180,[14311.065,12513.548,-0.12010002]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('336', '[37,[12752.17,11702.803,-2.7215271]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('337', '[188,[16666.535,18258.182,0.30707741]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('338', '[159,[10390.571,17886.035,-0.13711929]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('339', '[102,[7348.856,14197.724,-0.085718736]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('340', '[194,[7494.9609,7236.0957,-0.013462067]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('341', '[82,[14200.882,12645.263,-0.070645332]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('342', '[193,[12726.009,11682.42,0.12322235]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('343', '[284,[9986.2217,18069.139,-0.033742249]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('344', '[4,[11150.028,7816.458,-2.4303894]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('345', '[48,[14275.445,12730.209,-0.39606977]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('346', '[280,[12982.338,11700.104,-0.25634113]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('347', '[195,[10805.371,15734.297,-0.43709946]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('348', '[48,[9021.7363,16563.748,-0.10378934]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('349', '[119,[5955.8071,15390.888,0.1553652]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('350', '[342,[15520.12,13177.97,1.4741507]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('351', '[307,[14570.348,13837.392,-0.010950089]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('352', '[129,[14870.256,14432.666,0.35590363]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('353', '[210,[11960.041,15223.785,0.25103569]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('354', '[139,[8829.9414,16423.84,-0.18867683]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('355', '[238,[5843.5518,15706.942,-0.31457901]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('356', '[122,[5778.6987,14089.674,0.25874329]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('357', '[34,[11107.048,8992.2373,0.15635681]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('358', '[38,[15804.833,13304.503,0.21482792]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('359', '[168,[15621.226,13261.992,0.0034589835]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('360', '[49,[14284.261,13949.108,-0.010529518]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('361', '[29,[14710.757,14108.477,0.1234026]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('362', '[320,[12082.568,15219.214,0.20069313]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('363', '[213,[8816.1055,16380.899,-0.35792351]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('364', '[40,[5764.1733,15211.694,-0.1111384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('365', '[216,[5679.562,11666.237,-0.19072583]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('366', '[166,[11234.154,8661.7354,0.16228485]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('367', '[43,[15677.05,13080.488,-0.098333262]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('368', '[59,[14787.329,13768.584,-0.014340878]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('369', '[242,[14819.951,14172.028,0.23300076]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('370', '[298,[12253.889,15479.261,0.20911407]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('371', '[157,[14631.369,14394.837,-0.16102248]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('372', '[25,[12003.231,15683.734,0.011208534]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('373', '[23,[10673.596,16286.279,-0.055622101]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('374', '[181,[8932.3027,17542.605,-0.0022696853]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('375', '[285,[8087.752,17346.396,0.075778306]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('376', '[19,[8277.125,16235.389,0.39055371]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('377', '[167,[7492.1855,16356.206,0.6910162]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('378', '[181,[6819.2422,16971.518,0.57606232]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('379', '[92,[5325.8599,16184.229,0.6459049]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('380', '[7,[3890.8613,14601.687,0.57088029]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('381', '[250,[5169.9502,11447.054,0.56925422]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('382', '[18,[6139.7446,10801.119,0.51003939]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('383', '[316,[15851.777,13095.714,0.54047644]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('384', '[109,[4572.4653,12594.047,0.54803491]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('385', '[221,[16862.371,5288.4971,0.58236504]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('386', '[215,[14383.276,14464.678,-0.052592158]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('387', '[264,[12048.788,15650.743,0.0019052029]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('388', '[119,[10772.534,16231.78,-0.1333223]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('389', '[179,[9822.1152,18057.426,-0.018188477]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('390', '[120,[8845.9053,17325.678,-0.0020009279]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('391', '[51,[8079.3613,17338.496,-0.068151176]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('392', '[98,[8268.7344,16227.488,0.24613792]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('393', '[309,[7483.7949,16348.306,0.3771615]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('394', '[256,[6810.8516,16963.617,0.32639301]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('395', '[135,[5317.4692,16176.329,0.28533399]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('396', '[300,[3882.4707,14593.786,0.22469437]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('397', '[26,[5161.5596,11439.153,0.25662684]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('398', '[234,[6131.354,10793.219,0.089182556]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('399', '[177,[15843.387,13087.813,0.098038793]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('400', '[78,[4564.0747,12586.146,0.27501512]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('401', '[73,[16841.949,5267.1299,0.23405427]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('402', '[353,[14532.572,14386.419,-0.092286766]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('403', '[72,[12408.254,15640.146,0.015512228]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('404', '[23,[10716.553,16287.638,-0.10364038]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('405', '[178,[8937.8877,17629.115,0.028858364]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('406', '[180,[8073.5815,17330.633,-0.15450078]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('407', '[91,[8262.9541,16219.625,-0.018260479]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('408', '[108,[7478.0151,16340.442,-0.007222414]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('409', '[244,[6805.0718,16955.754,0.019721746]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('410', '[324,[5311.6895,16168.466,-0.050078332]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('411', '[8,[3876.6909,14585.923,-0.033810794]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('412', '[352,[5155.7798,11431.29,-0.0046123266]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('413', '[55,[6125.5742,10785.355,-0.080679357]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('414', '[248,[15837.606,13079.95,0]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('415', '[80,[4558.2949,12578.283,0]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('416', '[272,[16840.873,5302.0298]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('417', '[287,[14586.908,14405.509,-0.083498478]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('418', '[81,[12379.22,15682.278,0.0026472807]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('419', '[342,[10719.649,16250.785,-0.19571131]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('420', '[341,[8986.7109,17627.465,-0.13789767]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('421', '[348,[8094.876,17328.656,-0.19774395]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('422', '[29,[14416.9,14447.135,0.078388274]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('423', '[141,[12441.209,15523.438,0.19060564]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('424', '[118,[10615.922,16364.14,0.052655339]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('425', '[314,[9817.4375,18057,0.15692854]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('426', '[12,[9012.8574,17784.705,0.18322641]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('427', '[337,[8082.4741,17328.141,0.07034415]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('428', '[82,[8271.8467,16217.133,0.12980908]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('429', '[152,[7486.9077,16337.95,0.3260349]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('430', '[226,[6813.9644,16953.262,0.22995949]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('431', '[11,[5320.582,16165.974,0.10834301]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('432', '[46,[3885.5835,14583.431,0.21652299]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('433', '[251,[5164.6724,11428.798,0.4670068]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('434', '[105,[6134.4668,10782.863,0.33198076]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('435', '[281,[15846.499,13077.458,0.15925467]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('436', '[149,[4567.1875,12575.791,0.32794917]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('437', '[252,[16872.869,5269.4014,0.43635881]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('438', '[0,[16542.316,18457.746,29.458904]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('439', '[0,[16503.443,18428.953,36.666317]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('440', '[0,[16547.834,18411.918,33.361797]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('441', '[0,[16606.139,18419.836,27.032728]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('442', '[0,[16578.787,18372.088,34.814518]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('443', '[0,[16531.758,18361.291,39.442078]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('444', '[0,[16642.131,18346.414,31.90307]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('445', '[0,[16656.768,18387.205,27.181751]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('446', '[0,[16615.256,18322.66,36.390648]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('447', '[0,[16690.598,18327.699,32.032215]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('448', '[0,[16395.467,18441.025,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('449', '[0,[16293.805,18503.688,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('450', '[0,[16007.349,18861.445,77.942924]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('451', '[0,[842.66895,6771.3022,59.023827]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('452', '[0,[574.75647,6931.854,55.138458]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('453', '[0,[857.89447,7090.6074,43.72147]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('454', '[0,[1073.9305,6669.9912,45.655293]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('455', '[0,[1157.3988,6327.9346,51.489563]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('456', '[0,[18406.941,17036.012,23.447294]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('457', '[0,[18662.713,17171.891,28.21191]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('458', '[0,[18736.934,17389.982,27.153971]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('459', '[0,[18677.557,17609.217,28.930536]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('460', '[0,[18164.871,17286.076,31.864689]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('461', '[0,[16445.525,18468.563,40.386597]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('462', '[0,[16400.887,18505.896,40.163982]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('463', '[0,[16538.104,18245.467,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('464', '[0,[16571.697,18244.266,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('465', '[0,[16577.695,18280.258,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('466', '[76,[3968.0347,4487.7549,71.581947]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('467', '[76,[4049.3162,4503.2847,71.593369]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('468', '[76,[4117.5923,4514.355,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('469', '[76,[4185.8682,4521.7368,71.597321]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('470', '[76,[4237.5371,4530.9644,71.576218]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('471', '[76,[4305.8135,4545.7261,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('472', '[76,[4355.6362,4554.9521,71.589111]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('473', '[76,[4434.9844,4569.7153,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('474', '[76,[4499.5698,4580.7856,71.611504]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('475', '[76,[4571.5366,4599.2393,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('476', '[76,[4641.6582,4612.1567,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('477', '[76,[4741.3042,4625.0742,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('478', '[76,[4811.4258,4643.5278,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('479', '[76,[4876.0112,4652.7534,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('480', '[76,[4933.2158,4660.1343,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('481', '[76,[4999.6465,4669.3613,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('482', '[76,[5069.7681,4678.5874,71.614212]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('483', '[76,[5126.9722,4687.8149,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('484', '[76,[5182.332,4698.8853,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('485', '[76,[4658.7017,4809.062,71.656944]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('486', '[253,[4777.1401,4830.9946,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('487', '[76,[4859.2324,4844.1548,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('488', '[253,[5005.8691,4869.8457,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('489', '[50,[18156.477,2018.7715,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('490', '[50,[18186.119,2041.2263,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('491', '[50,[18219.35,2073.5627,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('492', '[50,[18254.381,2113.0842,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('493', '[50,[18280.43,2135.5391,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('494', '[50,[18301.088,2175.9578,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('495', '[50,[18340.607,2202.9048,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('496', '[50,[18363.064,2237.0356,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('497', '[50,[18384.621,2270.2693,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('498', '[50,[18408.873,2296.3167,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('499', '[50,[18435.818,2332.2456,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('500', '[50,[18472.646,2369.9714,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('501', '[50,[18503.186,2397.8145,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('502', '[50,[18523.842,2426.5583,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('503', '[136,[18174.189,2129.917,134.84067]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('504', '[136,[18227.818,2195.675,134.69392]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('505', '[136,[18310.178,2292.7173,134.69392]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('506', '[136,[14399.187,17096.348,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('507', '[136,[14436.521,17056.438,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('508', '[136,[14467.42,17019.102,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('509', '[136,[14507.331,16974.041,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('510', '[136,[14548.527,16934.133,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('511', '[136,[14584.576,16886.498,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('512', '[136,[14629.636,16833.713,16.41144]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('513', '[136,[14672.12,16786.078,16.408302]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('514', '[136,[14634.42,16782.666,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('515', '[136,[14719.756,16734.582,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('516', '[136,[14764.815,16685.658,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('517', '[136,[14798.288,16640.6,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('518', '[136,[14845.924,16590.391,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('519', '[136,[14887.121,16544.043,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('520', '[136,[14929.606,16500.271,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('521', '[136,[14966.941,16452.637,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('522', '[136,[15008.139,16403.715,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('523', '[136,[15042.898,16362.517,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('524', '[136,[15077.66,16318.744,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('525', '[136,[15117.57,16281.41,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('526', '[136,[15151.043,16236.349,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('527', '[136,[15188.379,16191.289,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('528', '[136,[14392.257,16888.391,16.542381]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('529', '[320,[14473.394,16796.271,16.483616]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('530', '[136,[14621.025,16630.031,16.483612]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('531', '[320,[14695.453,16542.492,16.482428]]', 'air');

-- ----------------------------
-- Table structure for object_spawn_parts
-- ----------------------------
DROP TABLE IF EXISTS `object_spawn_parts`;
CREATE TABLE `object_spawn_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parts` varchar(1024) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawn_parts
-- ----------------------------
INSERT INTO `object_spawn_parts` VALUES ('1', '[[\"motor\",0.5]]', 'boat');
INSERT INTO `object_spawn_parts` VALUES ('2', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]', 'helicopter');
INSERT INTO `object_spawn_parts` VALUES ('3', '[[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5]]', 'airplane');
INSERT INTO `object_spawn_parts` VALUES ('4', '[]', 'bicycle');
INSERT INTO `object_spawn_parts` VALUES ('5', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"Pravy predni tlumic\",0.8],[\"Pravy zadni tlumic\",0.8]]', 'motorcycle');
INSERT INTO `object_spawn_parts` VALUES ('6', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'car');
INSERT INTO `object_spawn_parts` VALUES ('8', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'truck');
INSERT INTO `object_spawn_parts` VALUES ('9', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'atv');
INSERT INTO `object_spawn_parts` VALUES ('10', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tank');
INSERT INTO `object_spawn_parts` VALUES ('11', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'bus');
INSERT INTO `object_spawn_parts` VALUES ('12', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tractor');

-- ----------------------------
-- Table structure for playeractivity
-- ----------------------------
DROP TABLE IF EXISTS `playeractivity`;
CREATE TABLE `playeractivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serverid` varchar(255) NOT NULL DEFAULT '0',
  `playerid` bigint(100) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT 'Blank',
  `maplocation` varchar(255) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playeractivity
-- ----------------------------

-- ----------------------------
-- Table structure for player_data
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL AUTO_INCREMENT,
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`playerID`),
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
  KEY `playerID` (`playerID`) USING BTREE
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

-- ----------------------------
-- Table structure for unleashed_version
-- ----------------------------
DROP TABLE IF EXISTS `unleashed_version`;
CREATE TABLE `unleashed_version` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unleashed_version
-- ----------------------------
INSERT INTO `unleashed_version` VALUES ('1', 'Unleashed', '1');

-- ----------------------------
-- View structure for character_survival
-- ----------------------------
DROP VIEW IF EXISTS `character_survival`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`localhost` SQL SECURITY DEFINER  VIEW `character_survival` AS SELECT (
(coalesce( (SELECT (SELECT SUM(duration) FROM character_dead)) + (SELECT (SELECT SUM(duration) FROM character_data)) , (SELECT (SELECT SUM(duration) FROM character_dead)) , (SELECT (SELECT SUM(duration) FROM character_data)) , 0)) 
DIV 
(coalesce( (SELECT (SELECT count(*) FROM character_data)) + (SELECT (SELECT count(*) FROM character_dead)) , (SELECT (SELECT count(*) FROM character_data)) , (SELECT (SELECT count(*) FROM character_dead)) , 0))

) as survivaltime ;

-- ----------------------------
-- View structure for tents
-- ----------------------------
DROP VIEW IF EXISTS `tents`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`localhost` SQL SECURITY DEFINER  VIEW `tents` AS select `player_data`.`playerName` AS `playerName`,`character_data`.`CharacterID` AS `CharacterID`,`object_data`.`ObjectID` AS `ObjectID`,`object_data`.`Classname` AS `Classname` from ((`object_data` join `character_data` on((`object_data`.`CharacterID` = `character_data`.`CharacterID`))) join `player_data` on((`character_data`.`PlayerUID` = `player_data`.`playerUID`))) ;

-- ----------------------------
-- View structure for webserver_antihack_admins
-- ----------------------------
DROP VIEW IF EXISTS `webserver_antihack_admins`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`localhost` SQL SECURITY DEFINER  VIEW `webserver_antihack_admins` AS select `antihack_admins`.`ID` AS `ID`,`antihack_admins`.`instance` AS `instance`,`antihack_admins`.`playername` AS `playername`,`antihack_admins`.`playerID` AS `playerID`,`antihack_admins`.`adminlevel` AS `adminlevel`,`antihack_admins`.`added` AS `added` from `antihack_admins` ;

-- ----------------------------
-- View structure for webserver_antihack_bans
-- ----------------------------
DROP VIEW IF EXISTS `webserver_antihack_bans`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`localhost` SQL SECURITY DEFINER  VIEW `webserver_antihack_bans` AS select `antihack_bans`.`ID` AS `ID`,`antihack_bans`.`playername` AS `playername`,`antihack_bans`.`playerID` AS `playerID`,`antihack_bans`.`banned` AS `banned`,`antihack_bans`.`added` AS `added` from `antihack_bans` ;

-- ----------------------------
-- Procedure structure for cleanupCharacterData
-- ----------------------------
DROP PROCEDURE IF EXISTS `cleanupCharacterData`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`localhost` PROCEDURE `cleanupCharacterData`()
BEGIN
DELETE
FROM    character_data
WHERE   NOT EXISTS
        (
        SELECT  null 
        FROM    player_data
        WHERE   player_data.playerUID = character_data.playerUID
        );

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pCleanup
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`localhost` PROCEDURE `pCleanup`()
BEGIN

#starts outofbounds cleanup
	CALL pCleanupOOB();
	
#remove vehicles with 100% damage
	DELETE
		FROM Object_DATA 
		WHERE Damage > '0.95';	

#remove unused vehicles older then 14 days
	DELETE
		FROM instance_building
		WHERE DATE(created) < CURDATE() - INTERVAL 14 DAY
			AND buildingId != '522'
			AND buildingId != '1620'
			AND buildingId != '524'
			AND buildingId != '1735'
			AND buildingId != '1609'
			AND buildingId != '1608';

#remove tents/stash's whose owner has been dead for four days
	DELETE
		FROM instance_building
		USING instance_building, character_data
		WHERE instance_building.buildingId = '548' or instance_building.buildingId = '1609' or instance_building.buildingId = '1608'
			AND instance_building.characterId = character_data.CharacterID
			AND character_data.Alive = 0
			AND DATE(character_data.last_updated) < CURDATE() - INTERVAL 4 DAY;

#remove empty tents older than seven days
	DELETE
		FROM instance_building
		WHERE buildingId = '548' or buildingId = '1609' or buildingId = '1608'
			AND DATE(created) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';
	
	DELETE
		FROM instance_building
		WHERE buildingId = '548' or buildingId = '1609' or buildingId = '1608'
			AND DATE(created) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[]';		

#remove barbed wire older than two days
	DELETE
		FROM instance_building
		WHERE buildingId = '1620'
			AND DATE(created) < CURDATE() - INTERVAL 2 DAY;
			
#remove Tank Traps older than fifteen days
	DELETE
		FROM instance_building
		WHERE buildingId = '522'
			AND DATE(created) < CURDATE() - INTERVAL 15 DAY;

#remove Sandbags older than twenty days
	DELETE
		FROM instance_building
		WHERE buildingId = '524'
			AND DATE(created) < CURDATE() - INTERVAL 20 DAY;

#remove Bear Traps older than five days
	DELETE
		FROM instance_building
		WHERE buildingId = '1735'
			AND DATE(created) < CURDATE() - INTERVAL 5 DAY;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pCleanupOOB
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`localhost` PROCEDURE `pCleanupOOB`()
BEGIN

	DECLARE intLineCount	INT DEFAULT 0;
	DECLARE intDummyCount	INT DEFAULT 0;
	DECLARE intDoLine			INT DEFAULT 0;
	DECLARE intWest				INT DEFAULT 0;
	DECLARE intNorth			INT DEFAULT 0;

	SELECT COUNT(*)
		INTO intLineCount
		FROM Object_DATA;

	SELECT COUNT(*)
		INTO intDummyCount
		FROM Object_DATA
		WHERE Classname = 'dummy';

	WHILE (intLineCount > intDummyCount) DO
	
		SET intDoLine = intLineCount - 1;

		SELECT ObjectUID, Worldspace
			INTO @rsObjectUID, @rsWorldspace
			FROM Object_DATA
			LIMIT intDoLine, 1;

		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;

		SELECT INSTR(@West, '-') INTO intWest;
		SELECT INSTR(@North, '-') INTO intNorth;

		IF (intNorth = 0) THEN
			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
		END IF;

		IF (intWest > 0 OR intNorth > 20360) THEN
			DELETE FROM Object_DATA
				WHERE ObjectUID = @rsObjectUID;
		END IF;
			
		SET intLineCount = intLineCount - 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for spawnVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `spawnVehicles`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`localhost` PROCEDURE `spawnVehicles`()
BEGIN
INSERT INTO object_data (ObjectUID,Instance,Classname,Datestamp,CharacterID,Worldspace,Inventory,Hitpoints,Fuel,Damage,last_updated) (
			SELECT 
				ObjectUID, 
				1 as Instance, 
				Classname, 
				NOW() as Datestamp, 
				0 as CharacterID, 
				Worldspace, 
				'[]' as Inventory, 
				Hitpoints, 
				Fuel, 
				Damage, 
				NOW() as last_updated 
			FROM (
				SELECT *, (@ObjectUID := @ObjectUID + 1) as ObjectUID,
					@num := if(@classname = Classname, @num := @num + 1, 1) as row_num,
					@classname := Classname as c from (
					SELECT 
						object_spawn_locations.worldspace,
						object_spawn_parts.parts AS Hitpoints,
						ifnull((SELECT Worldspace from object_data WHERE Worldspace=object_spawn_locations.worldspace LIMIT 0,1),0) as DupeWorldspace,
						(SELECT count(ObjectUID) from object_data WHERE classname=object_classes.Classname) as CurrNum,
						object_classes.MaxNum,
						ROUND(FLOOR(0 + RAND()*100)/100,2) as Fuel,
						ROUND(FLOOR(0 + RAND()*95)/100,2) as Damage,
						object_classes.Chance,
						ROUND(RAND(),3) as ChanceRoll,
						object_classes.Type,
						object_classes.Classname,
						object_spawns_types.spawn
					FROM
						object_classes
							INNER JOIN
						object_spawns_types ON object_classes.Type = object_spawns_types.type
							INNER JOIN
						object_spawn_locations ON '' = ''
							AND object_spawns_types.spawn = object_spawn_locations.spawn
							INNER JOIN
						object_spawn_parts ON object_classes.Type = object_spawn_parts.type
					WHERE
						object_classes.Type != 'object'
					GROUP BY object_classes.Classname , object_spawn_locations.worldspace
					HAVING DupeWorldspace='0' and CurrNum<MaxNum
				) as t, (SELECT @classname:='', @num:=0, @ObjectUID:=(SELECT IFNULL(MAX(ObjectUID),1) FROM object_data)) as r
				WHERE ChanceRoll < Chance
				HAVING row_num<=(MaxNum-CurrNum)
			) as s
			GROUP BY Worldspace
		);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for aliveduration
-- ----------------------------
DROP FUNCTION IF EXISTS `aliveduration`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`localhost` FUNCTION `aliveduration`(`count` int,`duration` int) RETURNS int(11)
BEGIN
DECLARE recordduration INT DEFAULT 0;
DECLARE recordcount INT DEFAULT 0;
DECLARE recordreturn INT DEFAULT 0;
SELECT count(*) INTO recordcount FROM character_data;
SELECT SUM(duration) INTO recordduration FROM character_data;
SELECT (recordduration DIV recordcount) INTO recordreturn;
return recordreturn;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `before_instance_state_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_state_update` BEFORE INSERT ON `instance_state` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_state
SET instanceID = @InstanceID;
END
;;
DELIMITER ;
