-- ----------------------------
-- Table structure for `instance_user`
-- ----------------------------
DROP TABLE IF EXISTS `instance_user`;
CREATE TABLE `instance_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIP` varchar(30) NOT NULL,
  PRIMARY KEY (`id`,`userIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_user
-- ----------------------------