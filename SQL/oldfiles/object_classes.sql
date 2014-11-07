/*
Navicat MySQL Data Transfer

Source Server         : dayzserverlocal
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-08-10 14:49:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `object_classes`
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(255) NOT NULL,
  `Chance` varchar(255) NOT NULL,
  `MaxNum` tinyint(4) NOT NULL,
  `Damage` varchar(255) NOT NULL,
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('A10', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('A10_US_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH1Z', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH64D', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH64D_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH6J_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH6X_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('An2_1_TK_CIV_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('An2_2_TK_CIV_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.75', '3', '0.05000', 'plane');
INSERT INTO `object_classes` VALUES ('An2_TK_EP1', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '6', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '5', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('AV8B', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AV8B2', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('AW159_Lynx_BAF', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Apache_AH1_D', '0.10', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_ATV_D', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_ATV_W', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_FV510_D', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_FV510_W', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Merlin_HC3_D', '0.25', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('C130J', '0.50', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('C130J_US_EP1', '0.50', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Chukar', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Chukar_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('CH_47F_BAF', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('CH_47F_EP1', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '0.59', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('F35B', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.61', '3', '0.05000', 'largeboat');
INSERT INTO `object_classes` VALUES ('Hedgehog_DZ', '0', '3', '0', 'Hedgehog');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_CZ_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Armored', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1035_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_CZ_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M2', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M998A2_SOV_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_M2_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_MK19_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_Terminal_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW_DES_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('Ka52', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ka52Black', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Kamaz', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazOpen', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazReammo', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazRefuel', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('KamazRepair', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada1', '0.65', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Lada2', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_INS_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_Special_CZ_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_INS_EP1', '0.65', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('M1030', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('M1030_US_DES_EP1', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('MH60S', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MH6J_EP1', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi171Sh_CZ_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi171Sh_rockets_CZ_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_CDF', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_Ins', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_CDF', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_Ins', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_RU', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_rockets_RU', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_TK_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Mi17_UN_CDF_EP1', '0.10', '1', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.75', '20', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MMT_USMC', '0.75', '20', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MTVR', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrReammo', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrReammo_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRefuel', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRefuel_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRepair', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrRepair_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrSalvage_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MtvrSupply_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MTVR_DES_EP1', '0.60', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('MV22', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.75', '20', '0.05000', 'bike');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.75', '20', '0.05000', 'bike');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.75', '10', '0.05000', '');
INSERT INTO `object_classes` VALUES ('PBX', '0.75', '5', '0.05000', 'smallboat');
INSERT INTO `object_classes` VALUES ('Pickup_PK_GUE', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Pickup_PK_INS', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Pickup_PK_TK_GUE_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('RHIB', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('RHIB2Turret', '0.50', '3', '0.05000', 'boat with turrent');
INSERT INTO `object_classes` VALUES ('S1203_ambulance_EP1', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.75', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('Sandbag1_DZ', '0', '0', '0', 'Sandbag');
INSERT INTO `object_classes` VALUES ('Skoda', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.75', '5', '0.05000', 'mediumboat');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.75', '5', '0.05000', 'mediumboat');
INSERT INTO `object_classes` VALUES ('StashMedium', '0', '0', '0', 'StashMedium');
INSERT INTO `object_classes` VALUES ('StashSmall', '0', '0', '0', 'StashSmall');
INSERT INTO `object_classes` VALUES ('SUV_DZ', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SUV_PMC', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_PMC_BAF', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SUV_UN_EP1', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', '0', '0.05000', 'tent');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Tractor', '0.75', '3', '0.05000', 'farmvehicle');
INSERT INTO `object_classes` VALUES ('tractorOld', '0.75', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.75', '5', '0.05000', '');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.75', '3', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_INS', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_MG_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_MG_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_MG_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_SPG9_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.60', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UH1Y', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UH60M_EP1', '0.50', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UH60M_MEV_EP1', '0.50', '2', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralOpen_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralOpen_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralReammo_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralReammo_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralReammo_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRefuel_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRefuel_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRefuel_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRepair_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRepair_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralRepair_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralSalvage_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('UralSupply_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Reammo_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Refuel_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Repair_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Salvage_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_Supply_TK_GUE_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_TK_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.75', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareRepairTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_CDF', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_Gue', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_INS', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_RU', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_USMC', '0.60', '3', '0.05000', '');
INSERT INTO `object_classes` VALUES ('Wire_cat1', '0', '0', '0', 'wire');
