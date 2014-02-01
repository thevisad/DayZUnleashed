/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:08:33
*/

SET FOREIGN_KEY_CHECKS=0;

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
