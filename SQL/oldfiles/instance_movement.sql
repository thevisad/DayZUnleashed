/*
Navicat MySQL Data Transfer

Source Server         : devel
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-07-16 00:56:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `instance_movement`
-- ----------------------------
DROP TABLE IF EXISTS `instance_movement`;
CREATE TABLE `instance_movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `instanceID` int(11) DEFAULT NULL,
  `worldSpace` varchar(255) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instance_movement
-- ----------------------------


DROP TRIGGER IF EXISTS `before_character_data_update`;
DELIMITER ;;
CREATE TRIGGER `before_character_data_update` BEFORE UPDATE ON `character_data` FOR EACH ROW BEGIN
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