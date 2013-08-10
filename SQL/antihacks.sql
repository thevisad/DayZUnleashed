-- ----------------------------
-- Table structure for `antihack_admins`
-- ----------------------------
DROP TABLE IF EXISTS `antihack_admins`;
CREATE TABLE `antihack_admins` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `instance` int(11) DEFAULT NULL,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `adminlevel` int(11) DEFAULT NULL,
  `added` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_admins
-- ----------------------------

-- ----------------------------
-- Table structure for `antihack_bans`
-- ----------------------------
DROP TABLE IF EXISTS `antihack_bans`;
CREATE TABLE `antihack_bans` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` datetime DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_bans
-- ----------------------------