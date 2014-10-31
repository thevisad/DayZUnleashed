/*
Navicat MySQL Data Transfer

Source Server         : dayzserverlocal
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-08-15 02:49:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `antihack_admins`
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
INSERT INTO `antihack_admins` VALUES ('1', '2', null, '22773510', '3', '2013-08-12 17:20:27');
INSERT INTO `antihack_admins` VALUES ('2', '2', null, '27570758', '3', '2013-08-12 17:20:28');
INSERT INTO `antihack_admins` VALUES ('3', '2', null, '66951686', '1', '2013-08-12 01:58:31');
INSERT INTO `antihack_admins` VALUES ('4', '2', null, '6163586', '2', '2013-08-12 01:58:31');
INSERT INTO `antihack_admins` VALUES ('5', '2', null, '136052870', '3', '2013-08-12 01:58:31');
INSERT INTO `antihack_admins` VALUES ('6', '2', null, '40975110', '1', '2013-08-12 01:58:31');
INSERT INTO `antihack_admins` VALUES ('7', '2', null, '4163522', '2', '2013-08-12 01:58:32');
INSERT INTO `antihack_admins` VALUES ('8', '2', null, '22773510', '3', '2013-08-12 01:58:32');
INSERT INTO `antihack_admins` VALUES ('9', '2', null, '34319366', '1', '2013-08-12 01:58:32');
INSERT INTO `antihack_admins` VALUES ('10', '2', null, '43767494', '2', '2013-08-12 01:58:32');
INSERT INTO `antihack_admins` VALUES ('11', '2', null, '59883846', '3', '2013-08-12 01:58:33');
INSERT INTO `antihack_admins` VALUES ('12', '2', null, '95700038', '1', '2013-08-12 01:58:33');
INSERT INTO `antihack_admins` VALUES ('13', '2', null, '37624070', '2', '2013-08-12 01:58:33');
INSERT INTO `antihack_admins` VALUES ('14', '2', null, '52002246', '3', '2013-08-12 01:58:33');
INSERT INTO `antihack_admins` VALUES ('15', '2', null, '102773894', '3', '2013-08-12 17:20:31');

-- ----------------------------
-- Table structure for `antihack_bans`
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
INSERT INTO `antihack_bans` VALUES ('1', null, '77407750', '2013-08-12 01:53:49', null);
INSERT INTO `antihack_bans` VALUES ('2', null, '63729798', null, null);
INSERT INTO `antihack_bans` VALUES ('3', null, '25486790', null, null);

-- ----------------------------
-- Table structure for `antihack_whitelist`
-- ----------------------------
DROP TABLE IF EXISTS `antihack_whitelist`;
CREATE TABLE `antihack_whitelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of antihack_whitelist
-- ----------------------------
INSERT INTO `antihack_whitelist` VALUES ('4', null, '22773510', null, null);
INSERT INTO `antihack_whitelist` VALUES ('5', null, '27570758', null, null);
INSERT INTO `antihack_whitelist` VALUES ('6', null, '66951686', null, null);
INSERT INTO `antihack_whitelist` VALUES ('7', null, '6163586', null, null);
INSERT INTO `antihack_whitelist` VALUES ('8', null, '136052870', null, null);
INSERT INTO `antihack_whitelist` VALUES ('9', null, '40975110', null, null);
INSERT INTO `antihack_whitelist` VALUES ('10', null, '4163522', null, null);
INSERT INTO `antihack_whitelist` VALUES ('11', null, '22773510', null, null);
INSERT INTO `antihack_whitelist` VALUES ('12', null, '34319366', null, null);
INSERT INTO `antihack_whitelist` VALUES ('13', null, '43767494', null, null);
INSERT INTO `antihack_whitelist` VALUES ('14', null, '59883846', null, null);
INSERT INTO `antihack_whitelist` VALUES ('15', null, '95700038', null, null);
INSERT INTO `antihack_whitelist` VALUES ('16', null, '37624070', null, null);
INSERT INTO `antihack_whitelist` VALUES ('17', null, '52002246', null, null);
INSERT INTO `antihack_whitelist` VALUES ('18', null, '102773894', null, null);
