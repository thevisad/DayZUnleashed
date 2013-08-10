-- ----------------------------
-- Table structure for `instance_garage`
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
-- Records of instance_garage
-- ----------------------------