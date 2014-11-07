/*
Navicat MySQL Data Transfer

Source Server         : devel
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-09-08 00:26:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for character_variables
-- ----------------------------
DROP TABLE IF EXISTS `character_variables`;
CREATE TABLE `character_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `char_var` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `characterID` (`characterID`),
  CONSTRAINT `characterID` FOREIGN KEY (`characterID`) REFERENCES `character_data` (`CharacterID`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
