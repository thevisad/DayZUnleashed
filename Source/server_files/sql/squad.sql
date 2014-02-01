/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:10:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for squad
-- ----------------------------
DROP TABLE IF EXISTS `squad`;
CREATE TABLE `squad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) DEFAULT NULL,
  `squad_name` varchar(255) DEFAULT NULL,
  `squadLeader` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for squad_rank
-- ----------------------------
DROP TABLE IF EXISTS `squad_rank`;
CREATE TABLE `squad_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `squadId` int(11) DEFAULT NULL,
  `squadPosition` int(11) DEFAULT NULL,
  `squadMember` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for squad_rank_name
-- ----------------------------
DROP TABLE IF EXISTS `squad_rank_name`;
CREATE TABLE `squad_rank_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rankId` int(11) DEFAULT NULL,
  `rankName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
DROP TRIGGER IF EXISTS `before_squad_update`;
DELIMITER ;;
CREATE TRIGGER `before_squad_update` BEFORE INSERT ON `squad` FOR EACH ROW BEGIN
select SUBSTRING_INDEX(host,':',1) into @userip from information_schema.processlist WHERE ID=connection_id();
SELECT instance_user.ID into @InstanceID FROM instance_user WHERE instance_user.userIP = @userip; 
update squad
SET instance_id = @InstanceID;

END
;;
DELIMITER ;
