/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:05:21
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
