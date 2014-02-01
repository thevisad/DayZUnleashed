/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:07:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for instance_building
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
  `characterId` text,
  `squadId` int(11) DEFAULT '0',
  `combination` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for instance_garage
-- ----------------------------
DROP TABLE IF EXISTS `instance_garage`;
CREATE TABLE `instance_garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buildingUID` bigint(20) DEFAULT NULL,
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) NOT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(500) DEFAULT '[]',
  `Fuel` double(13,5) DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for instance_movement
-- ----------------------------
DROP TABLE IF EXISTS `instance_movement`;
CREATE TABLE `instance_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `instanceID` int(11) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5407157 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for instance_squad
-- ----------------------------
DROP TABLE IF EXISTS `instance_squad`;
CREATE TABLE `instance_squad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `squadId` int(11) DEFAULT NULL,
  `characterId` int(11) DEFAULT NULL,
  `join_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for instance_state
-- ----------------------------
DROP TABLE IF EXISTS `instance_state`;
CREATE TABLE `instance_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instanceID` int(11) DEFAULT NULL,
  `currentState` varchar(1000) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `quests` varchar(1000) DEFAULT NULL,
  `lastUpdated` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for instance_user
-- ----------------------------
DROP TABLE IF EXISTS `instance_user`;
CREATE TABLE `instance_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIP` varchar(30) NOT NULL,
  `instanceID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
DROP TRIGGER IF EXISTS `before_instance_garage_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_garage_update` BEFORE INSERT ON `instance_garage` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_garage
SET Instance = @InstanceID;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `before_instance_state_update`;
DELIMITER ;;
CREATE TRIGGER `before_instance_state_update` BEFORE INSERT ON `instance_state` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update instance_state
SET instanceID = @InstanceID;
END
;;
DELIMITER ;
