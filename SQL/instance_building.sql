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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` smallint(5) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `worldspace` varchar(70) NOT NULL DEFAULT '[0,[0,0,0]]',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_building
-- ----------------------------
