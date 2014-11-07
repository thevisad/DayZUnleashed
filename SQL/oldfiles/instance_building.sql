/*
Navicat MySQL Data Transfer

Source Server         : devel
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-07-02 03:00:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `instance_building`
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
  `characterId` int(20) DEFAULT '0',
  `squadId` int(11) DEFAULT '0',
  `combination` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_building
-- ----------------------------