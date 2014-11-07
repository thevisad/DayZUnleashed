-- ----------------------------
-- Table structure for `global_state`
-- ----------------------------
DROP TABLE IF EXISTS `global_state`;
CREATE TABLE `global_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalSetting` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of global_state
-- ----------------------------