-- ----------------------------
-- Table structure for `instance_state`
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
-- Records of instance_state
-- ---------------------------