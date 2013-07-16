/*
Navicat MySQL Data Transfer

Source Server         : devel
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-07-16 00:57:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `character_data`
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
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_data
-- ----------------------------
DROP TRIGGER IF EXISTS `before_character_data_insert`;
DELIMITER ;;
CREATE TRIGGER `before_character_data_insert` BEFORE INSERT ON `character_data` FOR EACH ROW BEGIN

insert into instance_movement 
SET instance_movement.characterID = NEW.PlayerUID, 
instance_movement.instanceID = NEW.InstanceID, 
instance_movement.worldspace= NEW.Worldspace, 
changedon = NOW(); 

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `before_character_data_update`;
DELIMITER ;;
CREATE TRIGGER `before_character_data_update` BEFORE UPDATE ON `character_data` FOR EACH ROW BEGIN

insert into instance_movement 
SET characterID = OLD.PlayerUID, 
instanceID = OLD.InstanceID, 
worldspace= OLD.Worldspace, 
changedon = NOW(); 

END
;;
DELIMITER ;
