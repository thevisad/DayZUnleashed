/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:06:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for character_data
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '1000',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39572 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for character_dead
-- ----------------------------
DROP TABLE IF EXISTS `character_dead`;
CREATE TABLE `character_dead` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31929 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for character_variables
-- ----------------------------
DROP TABLE IF EXISTS `character_variables`;
CREATE TABLE `character_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `characterID` (`characterID`) USING BTREE,
  CONSTRAINT `characterID` FOREIGN KEY (`characterID`) REFERENCES `character_data` (`CharacterID`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for player_data
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL AUTO_INCREMENT,
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`playerID`),
  KEY `playerID` (`playerID`) USING BTREE,
  KEY `playerUID` (`playerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11648 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for player_login
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=94424 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for player_variables
-- ----------------------------
DROP TABLE IF EXISTS `player_variables`;
CREATE TABLE `player_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(55) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `playerID` (`playerID`) USING BTREE,
  CONSTRAINT `playerID` FOREIGN KEY (`playerID`) REFERENCES `player_data` (`playerUID`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
DROP TRIGGER IF EXISTS `after_character_data_update`;
DELIMITER ;;
CREATE TRIGGER `after_character_data_update` AFTER UPDATE ON `character_data` FOR EACH ROW BEGIN
if old.worldspace != new.worldspace then
insert into instance_movement 
SET characterID = OLD.PlayerUID, 
instanceID = OLD.InstanceID, 
worldspace= OLD.Worldspace, 
changedon = NOW(); 
end if;
END
;;
DELIMITER ;
