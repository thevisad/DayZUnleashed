-- ----------------------------
-- Table structure for `squad`
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
-- Records of squad
-- ----------------------------

-- ----------------------------
-- Table structure for `squad_rank`
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
-- Records of squad_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `squad_rank_name`
-- ----------------------------
DROP TABLE IF EXISTS `squad_rank_name`;
CREATE TABLE `squad_rank_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rankId` int(11) DEFAULT NULL,
  `rankName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of squad_rank_name
-- ----------------------------

-- ----------------------------
-- Table structure for `instance_squad`
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
-- Records of instance_squad
-- ----------------------------