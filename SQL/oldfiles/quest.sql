-- ----------------------------
-- Table structure for `quest`
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_name` varchar(255) DEFAULT NULL,
  `quest_content` longtext,
  `quest_turnin` varchar(255) DEFAULT NULL,
  `quest_reward` varchar(255) DEFAULT NULL,
  `quest_instance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of quest
-- ----------------------------
