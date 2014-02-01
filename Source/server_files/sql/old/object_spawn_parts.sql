/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2014-01-08 00:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for object_spawn_parts
-- ----------------------------
DROP TABLE IF EXISTS `object_spawn_parts`;
CREATE TABLE `object_spawn_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parts` varchar(1024) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of object_spawn_parts
-- ----------------------------
INSERT INTO `object_spawn_parts` VALUES ('1', '[[\"motor\",0.5]]', 'boat');
INSERT INTO `object_spawn_parts` VALUES ('2', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]', 'helicopter');
INSERT INTO `object_spawn_parts` VALUES ('3', '[[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5]]', 'airplane');
INSERT INTO `object_spawn_parts` VALUES ('4', '[]', 'bicycle');
INSERT INTO `object_spawn_parts` VALUES ('5', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]', 'motorcycle');
INSERT INTO `object_spawn_parts` VALUES ('6', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'car');
INSERT INTO `object_spawn_parts` VALUES ('8', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'truck');
INSERT INTO `object_spawn_parts` VALUES ('9', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'atv');
INSERT INTO `object_spawn_parts` VALUES ('10', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tank');
INSERT INTO `object_spawn_parts` VALUES ('11', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'bus');
INSERT INTO `object_spawn_parts` VALUES ('12', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tractor');
