/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:08:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for global_state
-- ----------------------------
DROP TABLE IF EXISTS `global_state`;
CREATE TABLE `global_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalSetting` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
