/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2014-01-08 00:10:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for object_spawns_types
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns_types`;
CREATE TABLE `object_spawns_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spawn` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
