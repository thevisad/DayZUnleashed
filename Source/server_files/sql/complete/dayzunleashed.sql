/*
Navicat MySQL Data Transfer

Source Server         : dayzunleashed
Source Server Version : 50534
Source Host           : 107.155.64.130:3306
Source Database       : dayzunleashed

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-01 13:15:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for antihack_admins
-- ----------------------------
DROP TABLE IF EXISTS `antihack_admins`;
CREATE TABLE `antihack_admins` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `instance` int(11) DEFAULT NULL,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `adminlevel` int(11) DEFAULT NULL,
  `added` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_admins
-- ----------------------------
INSERT INTO `antihack_admins` VALUES ('1', '1', 'thevisad', '22773510', '3', '2014-01-04 00:37:12');
INSERT INTO `antihack_admins` VALUES ('2', '1', null, '27570758', '3', '2014-01-04 00:37:12');
INSERT INTO `antihack_admins` VALUES ('3', '1', null, '66951686', '1', '2014-01-04 00:37:13');
INSERT INTO `antihack_admins` VALUES ('4', '1', null, '6163586', '2', '2014-01-04 00:37:13');
INSERT INTO `antihack_admins` VALUES ('5', '1', null, '136052870', '3', '2014-01-04 00:37:13');
INSERT INTO `antihack_admins` VALUES ('6', '1', null, '40975110', '1', '2014-01-04 00:37:13');
INSERT INTO `antihack_admins` VALUES ('7', '1', null, '4163522', '2', '2014-01-04 00:37:14');
INSERT INTO `antihack_admins` VALUES ('9', '1', null, '34319366', '1', '2014-01-04 00:37:14');
INSERT INTO `antihack_admins` VALUES ('10', '1', null, '43767494', '2', '2014-01-04 00:37:14');
INSERT INTO `antihack_admins` VALUES ('11', '1', null, '59883846', '3', '2014-01-04 00:37:18');
INSERT INTO `antihack_admins` VALUES ('12', '1', null, '95700038', '1', '2014-01-04 00:37:17');
INSERT INTO `antihack_admins` VALUES ('13', '1', null, '37624070', '2', '2014-01-04 00:37:17');
INSERT INTO `antihack_admins` VALUES ('14', '1', null, '52002246', '3', '2014-01-04 00:37:17');
INSERT INTO `antihack_admins` VALUES ('15', '1', null, '102773894', '3', '2014-01-04 00:37:15');

-- ----------------------------
-- Table structure for antihack_bans
-- ----------------------------
DROP TABLE IF EXISTS `antihack_bans`;
CREATE TABLE `antihack_bans` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_bans
-- ----------------------------
INSERT INTO `antihack_bans` VALUES ('1', null, '21211526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('2', null, '58807494', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('3', null, '87013446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('4', null, '103043270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('5', null, '27817414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('6', null, '114097350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('7', null, '69973062', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('8', null, '16825414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('9', null, '106005510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('10', null, '111379142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('11', null, '119695238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('12', null, '94034822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('13', null, '123957062', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('14', null, '91591878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('15', null, '119374598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('16', null, '118347526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('17', null, '73597958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('18', null, '106650310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('19', null, '113162118', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('20', null, '28959174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('21', null, '122227526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('22', null, '91825734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('23', null, '58568070', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('24', null, '110954950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('25', null, '121884486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('26', null, '93702150', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('27', null, '122764614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('28', null, '106182662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('29', null, '36671046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('30', null, '90512006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('31', null, '122802246', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('32', null, '38979590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('33', null, '103326598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('34', null, '81489030', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('35', null, '28929542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('36', null, '109560070', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('37', null, '101508550', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('38', null, '34846406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('39', null, '121720518', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('40', null, '83146822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('41', null, '103293126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('42', null, '112709702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('43', null, '124445190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('44', null, '81689926', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('45', null, '19463430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('46', null, '21044486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('47', null, '119754694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('48', null, '98266566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('49', null, '7800132', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('50', null, '87678214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('51', null, '110284422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('52', null, '109934854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('53', null, '105715014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('54', null, '21730886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('55', null, '24793990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('56', null, '37277510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('57', null, '43098374', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('58', null, '49482566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('59', null, '114384006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('60', null, '78774470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('61', null, '87614086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('62', null, '121510726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('63', null, '100459398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('64', null, '96700614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('65', null, '98386886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('66', null, '112070406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('67', null, '21730886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('68', null, '101937222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('69', null, '117124998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('70', null, '108524422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('71', null, '99108870', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('72', null, '104433094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('73', null, '124518982', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('74', null, '26303942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('75', null, '113971014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('76', null, '97536774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('77', null, '100275398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('78', null, '27488134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('79', null, '48743366', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('80', null, '112002822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('81', null, '16671238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('82', null, '21272262', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('83', null, '118546438', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('84', null, '56161542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('85', null, '89048198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('86', null, '124388742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('87', null, '117693702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('88', null, '110298822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('89', null, '116202502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('90', null, '42650758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('91', null, '79874182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('92', null, '3978436', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('93', null, '87440518', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('94', null, '111947718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('95', null, '95014534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('96', null, '82477702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('97', null, '86307142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('98', null, '107585606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('99', null, '79874182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('100', null, '71582854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('101', null, '123613318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('102', null, '114592454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('103', null, '111987590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('104', null, '124633542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('105', null, '96761990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('106', null, '94011334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('107', null, '46482751', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('108', null, '73798406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('109', null, '115345158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('110', null, '106398086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('111', null, '100865990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('112', null, '105306566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('113', null, '106014918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('114', null, '101196550', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('115', null, '120464262', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('116', null, '44874310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('117', null, '123401862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('118', null, '124150086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('119', null, '142849RFT', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('120', null, '120969030', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('121', null, '96924998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('122', null, '123851782', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('123', null, '6943236', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('124', null, '96137990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('125', null, '5023748', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('126', null, '74765830', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('127', null, '5021188', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('128', null, '4887620', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('129', null, '96137990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('130', null, '71562950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('131', null, '21968710', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('132', null, '108430022', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('133', null, '118325638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('134', null, '17913734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('135', null, '4156162', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('136', null, '101355718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('137', null, '91156870', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('138', null, '95641734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('139', null, '124735686', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('140', null, '9043076', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('141', null, '114436614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('142', null, '92495942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('143', null, '8120922', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('144', null, '30320774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('145', null, '91018886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('146', null, '10400320', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('147', null, '74355526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('148', null, '9034756', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('149', null, '6082692', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('150', null, '93209990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('151', null, '76715270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('152', null, '121950918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('153', null, '77707590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('154', null, '12454918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('155', null, '121226566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('156', null, '93001350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('157', null, '28540166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('158', null, '114934534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('159', null, '8524932', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('160', null, '51948230', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('161', null, '95917574', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('162', null, '78543110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('163', null, '83335942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('164', null, '99066182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('165', null, '20236486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('166', null, '12429638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('167', null, '98565190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('168', null, '121501190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('169', null, '36735430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('170', null, '81831174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('171', null, '99066182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('172', null, '47933126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('173', null, '81889606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('174', null, '21550854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('175', null, '123649862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('176', null, '97061318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('177', null, '111803590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('178', null, '101355718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('179', null, '30038534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('180', null, '92805638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('181', null, '105718982', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('182', null, '15914054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('183', null, '105478790', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('184', null, '78961030', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('185', null, '81522886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('186', null, '25723590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('187', null, '82396422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('188', null, '105886982', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('189', null, '103051846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('190', null, '117384262', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('191', null, '125236486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('192', null, '124731718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('193', null, '93336902', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('194', null, '60945734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('195', null, '95569222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('196', null, '121431046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('197', null, '88051590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('198', null, '6805632', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('199', null, '8192068', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('200', null, '96119814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('201', null, '17924614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('202', null, '110782470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('203', null, '123082886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('204', null, '110173894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('205', null, '102813382', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('206', null, '113779142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('207', null, '100638342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('208', null, '107466374', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('209', null, '110433670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('210', null, '8988932', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('211', null, '106571654', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('212', null, '5221058', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('213', null, '113600390', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('214', null, '4676416', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('215', null, '70080454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('216', null, '73805510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('217', null, '49809606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('218', null, '79874054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('219', null, '114035846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('220', null, '103114502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('221', null, '99567558', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('222', null, '36864134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('223', null, '10205190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('224', null, '91877766', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('225', null, '72307526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('226', null, '76906502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('227', null, '91297158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('228', null, '83403270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('229', null, '36893702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('230', null, '34751558', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('231', null, '95618694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('232', null, '123559942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('233', null, '2568388', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('234', null, '7214662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('235', null, '87321862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('236', null, '121393862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('237', null, '108939014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('238', null, '3049796', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('239', null, '24293510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('240', null, '64752710', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('241', null, '62176262', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('242', null, '779974', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('243', null, '96834502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('244', null, '122676742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('245', null, '94378630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('246', null, '9088452', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('247', null, '112818630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('248', null, '73089542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('249', null, '13634950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('250', null, '13103942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('251', null, '124623878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('252', null, '125418950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('253', null, '92039430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('254', null, '68898630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('255', null, '100040838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('256', null, '124976902', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('257', null, '74893766', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('258', null, '125411846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('259', null, '96016646', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('260', null, '62220038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('261', null, '119521670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('262', null, '74722310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('263', null, '78577862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('264', null, '65200198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('265', null, '125418950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('266', null, '92039430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('267', null, '68898630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('268', null, '100040838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('269', null, '30888966', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('270', null, '75057542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('271', null, '111663430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('272', null, '112021958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('273', null, '61858694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('274', null, '125503878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('275', null, '97133894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('276', null, '121914310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('277', null, '67648134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('278', null, '121957894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('279', null, '99178758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('280', null, '4353191', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('281', null, '105651142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('282', null, '40459526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('283', null, '74295430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('284', null, '65697286', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('285', null, '8692164', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('286', null, '111969990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('287', null, '83069958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('288', null, '8692164', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('289', null, '97851334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('290', null, '113889862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('291', null, '6612992', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('292', null, '108392006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('293', null, '122490886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('294', null, '124453510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('295', null, '46246086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('296', null, '90939974', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('297', null, '33131846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('298', null, '112221958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('299', null, '34999366', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('300', null, '38267142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('301', null, '74543046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('302', null, '101982214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('303', null, '73437510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('304', null, '121393862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('305', null, '2472772', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('306', null, '81121414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('307', null, '3959746', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('308', null, '107174918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('309', null, '291522', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('310', null, '114025862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('311', null, '56161542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('312', null, '107668806', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('313', null, '66131782', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('314', null, '121287942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('315', null, '125780614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('316', null, '121706694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('317', null, '121884486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('318', null, '104718598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('319', null, '102147398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('320', null, '110954950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('321', null, '74975814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('322', null, '6285376', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('323', null, '94820166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('324', null, '101787142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('325', null, '100519878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('326', null, '79701446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('327', null, '8706564', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('328', null, '77886342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('329', null, '117724742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('330', null, '111681542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('331', null, '76722886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('332', null, '121728838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('333', null, '100586950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('334', null, '75423238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('335', null, '94820166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('336', null, '93761798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('337', null, '106542086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('338', null, '95209670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('339', null, '46599302', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('340', null, '108970758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('341', null, '759717821', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('342', null, '101198854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('343', null, '94404294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('344', null, '14025826', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('345', null, '35370246', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('346', null, '57833990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('347', null, '8858116', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('348', null, '67379334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('349', null, '74398342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('350', null, '13790214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('351', null, '6921280', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('352', null, '10371136', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('353', null, '5127492', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('354', null, '124685126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('355', null, '32856326', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('356', null, '97243974', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('357', null, '105090566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('358', null, '124633478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('359', null, '110071878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('360', null, '6285376', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('361', null, '108610694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('362', null, '37864838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('363', null, '31666822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('364', null, '19332614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('365', null, '73130182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('366', null, '87816838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('367', null, '121129094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('368', null, '18091590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('369', null, '120885190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('370', null, '106960198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('371', null, '106876998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('372', null, '124448902', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('373', null, '123172678', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('374', null, '92524294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('375', null, '68398406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('376', null, '123146054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('377', null, '28758342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('378', null, '124617094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('379', null, '125332742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('380', null, '3325762', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('381', null, '123771590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('382', null, '105281990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('383', null, '5619008', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('384', null, '36544006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('385', null, '117667846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('386', null, '96945542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('387', null, '68458502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('388', null, '80372294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('389', null, '96355462', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('390', null, '125796742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('391', null, '111150534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('392', null, '73380294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('393', null, '111039686', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('394', null, '88726918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('395', null, '60229318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('396', null, '20385670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('397', null, '125991174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('398', null, '90043270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('399', null, '77647238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('400', null, '5405124', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('401', null, '96219206', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('402', null, '27932102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('403', null, '122507846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('404', null, '10366720', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('405', null, '9010052', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('406', null, '109508998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('407', null, '125502470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('408', null, '123217350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('409', null, '121013574', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('410', null, '125496070', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('411', null, '89393478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('412', null, '114385542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('413', null, '100630854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('414', null, '3466114', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('415', null, '67541446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('416', null, '6207362', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('417', null, '82707782', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('418', null, '109934854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('419', null, '6178372', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('420', null, '111947718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('421', null, '79874054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('422', null, '3325762', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('423', null, '101434822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('424', null, '122356550', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('425', null, '97061318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('426', null, '102048774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('427', null, '107372742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('428', null, '106207878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('429', null, '94886918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('430', null, '62393734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('431', null, '104622470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('432', null, '82477702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('433', null, '104622470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('434', null, '111554950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('435', null, '62494662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('436', null, '76906502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('437', null, '123297158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('438', null, '27810310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('439', null, '112025478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('440', null, '103391110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('441', null, '121345AX', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('442', null, '116820678', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('443', null, '125426502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('444', null, '69330054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('445', null, '125578118', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('446', null, '77661638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('447', null, '9179268', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('448', null, '82312454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('449', null, '77368966', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('450', null, '695618AX', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('451', null, '94378630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('452', null, '3888516', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('453', null, '29672454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('454', null, '79858822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('455', null, '112840198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('456', null, '76631430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('457', null, '47099654', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('458', null, '125343942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('459', null, '47933126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('460', null, '102777286', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('461', null, '78774470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('462', null, '55215046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('463', null, '122355142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('464', null, '111232134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('465', null, '49809606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('466', null, '122790854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('467', null, '125800454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('468', null, '119501958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('469', null, '89498566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('470', null, '119004166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('471', null, '90311046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('472', null, '27932102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('473', null, '82638662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('474', null, '117335430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('475', null, '123613318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('476', null, '88420806', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('477', null, '110179142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('478', null, '24819142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('479', null, '100688582', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('480', null, '25474630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('481', null, '126386310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('482', null, '99445574', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('483', null, '100437446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('484', null, '25921798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('485', null, '97885702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('486', null, '2903616', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('487', null, '43531910', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('488', null, '6494912', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('489', null, '97456134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('490', null, '125319238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('491', null, '125332358', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('492', null, '121590726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('493', null, '123523910', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('494', null, '94312966', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('495', null, '110669382', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('496', null, '118588934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('497', null, '68697670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('498', null, '109684294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('499', null, '69372934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('500', null, '125481862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('501', null, '118079046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('502', null, '125831942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('503', null, '123211142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('504', null, '124872710', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('505', null, '116618374', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('506', null, '70158854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('507', null, '28217798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('508', null, '61518214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('509', null, '118989190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('510', null, '93907206', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('511', null, '106715078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('512', null, '108237254', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('513', null, '110323718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('514', null, '111712966', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('515', null, '79412102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('516', null, '91934918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('517', null, '97143238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('518', null, '77097542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('519', null, '81029894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('520', null, '55954822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('521', null, '33823302', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('522', null, '9089862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('523', null, '126478150', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('524', null, '60841478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('525', null, '8815748', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('526', null, '83176838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('527', null, '126793798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('528', null, '47367814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('529', null, '79100806', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('530', null, '126023494', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('531', null, '119679558', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('532', null, '98100230', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('533', null, '82824838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('534', null, '117356038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('535', null, '5889222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('536', null, '80206470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('537', null, '111143942', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('538', null, '94163846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('539', null, '83491718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('540', null, '34204806', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('541', null, '103171590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('542', null, '27099398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('543', null, '97370886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('544', null, '124862790', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('545', null, '72348358', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('546', null, '126404038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('547', null, '20493062', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('548', null, '93549638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('549', null, '115230662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('550', null, '62855622', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('551', null, '5699648', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('552', null, '114729350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('553', null, '96855622', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('554', null, '65130630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('555', null, '99781190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('556', null, '125658950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('557', null, '97489606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('558', null, '22710406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('559', null, '52640666', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('560', null, '94745734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('561', null, '124431622', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('562', null, '118052422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('563', null, '126861382', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('564', null, '10055686', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('565', null, '12068102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('566', null, '126486854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('567', null, '97118662', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('568', null, '96575110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('569', null, '106354118', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('570', null, '67041222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('571', null, '58458566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('572', null, '113889478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('573', null, '59063430', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('574', null, '76369734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('575', null, '105033862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('576', null, '37639750', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('577', null, '719169AX', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('578', null, '12454918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('579', null, '124464198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('580', null, '122755462', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('581', null, '126591558', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('582', null, '58158086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('583', null, '81295110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('584', null, '110624198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('585', null, '26755590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('586', null, '126766598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('587', null, '70158854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('588', null, '81295110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('589', null, '87474758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('590', null, '125675526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('591', null, '44295110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('592', null, '97831494', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('593', null, '46786', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('594', null, '105735878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('595', null, '121403462', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('596', null, '36862790', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('597', null, '121275590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('598', null, '83030342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('599', null, '92080326', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('600', null, '68848838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('601', null, '82403590', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('602', null, '127284166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('603', null, '96777158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('604', null, '87061190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('605', null, '111294982', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('606', null, '57387974', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('607', null, '117690438', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('608', null, '127390534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('609', null, '81006598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('610', null, '81307398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('611', null, '78064198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('612', null, '719875', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('613', null, '46404166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('614', null, '127172422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('615', null, '114384006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('616', null, '88462086', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('617', null, '37541318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('618', null, '124813126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('619', null, '5216774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('620', null, '113795334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('621', null, '126242246', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('622', null, '122081542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('623', null, '121953414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('624', null, '120954630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('625', null, '120959174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('626', null, '32432326', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('627', null, '122965062', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('628', null, '15547910', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('629', null, '109460934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('630', null, '90977990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('631', null, '21254726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('632', null, '8518212', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('633', null, '110871558', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('634', null, '126802758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('635', null, '5322496', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('636', null, '20797254', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('637', null, '8796292', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('638', null, '104987014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('639', null, '92678982', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('640', null, '101421958', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('641', null, '4720578', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('642', null, '113706630', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('643', null, '79401734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('644', null, '115689734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('645', null, '125183046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('646', null, '17220294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('647', null, '124753478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('648', null, '82559622', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('649', null, '50839686', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('650', null, '93714054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('651', null, '107429894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('652', null, '111579270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('653', null, '111579270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('654', null, '94011334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('655', null, '104618118', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('656', null, '59345094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('657', null, '109538374', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('658', null, '117499078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('659', null, '4482498', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('660', null, '5159236', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('661', null, '65019334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('662', null, '4724354', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('663', null, '103886342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('664', null, '73771334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('665', null, '91482758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('666', null, '120029766', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('667', null, '62050566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('668', null, '18051334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('669', null, '124494406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('670', null, '12271206', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('671', null, '13236934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('672', null, '64132934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('673', null, '106318790', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('674', null, '81696774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('675', null, '97605382', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('676', null, '78793222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('677', null, '116703174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('678', null, '76294790', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('679', null, '67866822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('680', null, '125107014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('681', null, '55634822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('682', null, '82138886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('683', null, '6984964', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('684', null, '82681670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('685', null, '121777478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('686', null, '82840006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('687', null, '47635526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('688', null, '93068550', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('689', null, '94393414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('690', null, '69728646', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('691', null, '109806918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('692', null, '6227456', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('693', null, '61699398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('694', null, '32969734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('695', null, '6224832', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('696', null, '126341254', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('697', null, '115321734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('698', null, '97465094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('699', null, '123754310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('700', null, '127693638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('701', null, '125730054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('702', null, '124808070', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('703', null, '9930566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('704', null, '112225158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('705', null, '76003782', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('706', null, '80259270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('707', null, '126609478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('708', null, '122761798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('709', null, '72114822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('710', null, '121433734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('711', null, '71036230', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('712', null, '13570566', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('713', null, '118001606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('714', null, '115725830', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('715', null, '126335622', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('716', null, '121431046', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('717', null, '124937798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('718', null, '87503494', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('719', null, '6028480', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('720', null, '103404614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('721', null, '33582534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('722', null, '127300038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('723', null, '60449606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('724', null, '97689222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('725', null, '64994054', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('726', null, '94676998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('727', null, '124097926', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('728', null, '42928774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('729', null, '60377030', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('730', null, '127990854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('731', null, '127990854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('732', null, '60449606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('733', null, '127300038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('734', null, '33582534', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('735', null, '4334596', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('736', null, '127990854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('737', null, '35027014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('738', null, '91041990', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('739', null, '95218886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('740', null, '99175814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('741', null, '100790470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('742', null, '69484422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('743', null, '69801094', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('744', null, '3486528', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('745', null, '73271878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('746', null, '48715846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('747', null, '1242378894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('748', null, '17927174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('749', null, '127218950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('750', null, '44371846', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('751', null, '933352398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('752', null, '612486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('753', null, '627721', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('754', null, '106990022', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('755', null, '96018310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('756', null, '107277254', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('757', null, '89868294', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('758', null, '15684992', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('759', null, '6560969', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('760', null, '16592265', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('761', null, '106715078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('762', null, '99232070', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('763', null, '108177030', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('764', null, '105876038', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('765', null, '67107654', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('766', null, '5624004', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('767', null, '4494921', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('768', null, '98796934', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('769', null, '97192198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('770', null, '101141190', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('771', null, '113591110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('772', null, '87214406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('773', null, '107464518', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('774', null, '23415110', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('775', null, '105216390', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('776', null, '23755526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('777', null, '1241217', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('778', null, '60162758', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('779', null, '67277062', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('780', null, '3462338', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('781', null, '38203078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('782', null, '66412870', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('783', null, '33823302', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('784', null, '67041222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('785', null, '5330436', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('786', null, '3742402', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('787', null, '67648134', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('788', null, '47522182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('789', null, '73437510', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('790', null, '73197254', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('791', null, '1568322', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('792', null, '69136646', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('793', null, '77016966', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('794', null, '29366854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('795', null, '69460166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('796', null, '74829638', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('797', null, '40952518', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('798', null, '18226182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('799', null, '25643142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('800', null, '31888902', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('801', null, '14032128', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('802', null, '16256646', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('803', null, '48190726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('804', null, '20331078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('805', null, '72984774', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('806', null, '78297734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('807', null, '64465350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('808', null, '198416128', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('809', null, '76881862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('810', null, '70995014', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('811', null, '14209481', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('812', null, '13769801', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('813', null, '76586950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('814', null, '52082310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('815', null, '8293702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('816', null, '22603654', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('817', null, '2284612', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('818', null, '76654022', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('819', null, '71997446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('820', null, '14095817', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('821', null, '9884998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('822', null, '77425222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('823', null, '22482694', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('824', null, '7721024', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('825', null, '76917574', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('826', null, '62050182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('827', null, '20068742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('828', null, '15272585', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('829', null, '14149577', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('830', null, '23133126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('831', null, '76255366', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('832', null, '77980422', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('833', null, '24244486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('834', null, '53430726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('835', null, '45329350', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('836', null, '48556806', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('837', null, '75891526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('838', null, '6044544', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('839', null, '6654854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('840', null, '68613126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('841', null, '74964870', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('842', null, '77120198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('843', null, '9280964', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('844', null, '76933894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('845', null, '793537', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('846', null, '9246473', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('847', null, '65727302', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('848', null, '30528646', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('849', null, '64113478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('850', null, '67801734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('851', null, '31678406', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('852', null, '21617798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('853', null, '77684166', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('854', null, '74787526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('855', null, '7405641', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('856', null, '39193158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('857', null, '35703366', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('858', null, '77823878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('859', null, '30010502', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('860', null, '17829126', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('861', null, '7411785', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('862', null, '43788742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('863', null, '62360902', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('864', null, '18049414', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('865', null, '65500550', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('866', null, '56889670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('867', null, '28821318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('868', null, '76560582', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('869', null, '44438854', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('870', null, '57366470', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('871', null, '76153734', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('872', null, '13357318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('873', null, '9572489', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('874', null, '2593410', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('875', null, '77343238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('876', null, '42537286', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('877', null, '48709318', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('878', null, '2963401', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('879', null, '55385286', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('880', null, '48792454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('881', null, '8088326', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('882', null, '39283206', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('883', null, '30527238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('884', null, '67650310', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('885', null, '68798598', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('886', null, '1825282', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('887', null, '73192198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('888', null, '75373702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('889', null, '18849478', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('890', null, '65858118', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('891', null, '51441606', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('892', null, '3055814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('893', null, '69949894', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('894', null, '77912198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('895', null, '47800006', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('896', null, '61969158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('897', null, '45567366', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('898', null, '3008770', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('899', null, '74971334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('900', null, '62979782', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('901', null, '67529542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('902', null, '67529542', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('903', null, '72128390', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('904', null, '71386182', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('905', null, '38638214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('906', null, '74393798', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('907', null, '4676416', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('908', null, '5095232', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('909', null, '81199174', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('910', null, '63834950', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('911', null, '81923654', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('912', null, '72579526', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('913', null, '3226434', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('914', null, '81980614', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('915', null, '76292486', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('916', null, '27040518', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('917', null, '28888710', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('918', null, '43987398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('919', null, '49596998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('920', null, '82726214', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('921', null, '38352582', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('922', null, '82453702', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('923', null, '82457286', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('924', null, '4395780', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('925', null, '81238726', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('926', null, '88046342', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('927', null, '38535238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('928', null, '2987012', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('929', null, '2647426', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('930', null, '81723270', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('931', null, '87811718', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('932', null, '65694150', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('933', null, '63895814', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('934', null, '4891328', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('935', null, '81524742', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('936', null, '72091334', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('937', null, '43048454', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('938', null, '38543878', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('939', null, '72150918', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('940', null, '38633158', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('941', null, '65479238', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('942', null, '70322886', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('943', null, '62321670', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('944', null, '70187398', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('945', null, '12188681', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('946', null, '17884998', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('947', null, '65196102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('948', null, '69224198', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('949', null, '48922822', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('950', null, '125917446', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('951', null, '82553222', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('952', null, '87067142', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('953', null, '60467078', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('954', null, '82236102', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('955', null, '21681862', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('956', null, '138296838', '0000-00-00 00:00:00', null);
INSERT INTO `antihack_bans` VALUES ('957', null, '83462470', '0000-00-00 00:00:00', null);

-- ----------------------------
-- Table structure for antihack_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `antihack_whitelist`;
CREATE TABLE `antihack_whitelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playername` varchar(255) DEFAULT NULL,
  `playerID` varchar(255) DEFAULT NULL,
  `banned` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of antihack_whitelist
-- ----------------------------
INSERT INTO `antihack_whitelist` VALUES ('4', null, '22773510', null, null);
INSERT INTO `antihack_whitelist` VALUES ('5', null, '27570758', null, null);
INSERT INTO `antihack_whitelist` VALUES ('6', null, '66951686', null, null);
INSERT INTO `antihack_whitelist` VALUES ('7', null, '6163586', null, null);
INSERT INTO `antihack_whitelist` VALUES ('8', null, '136052870', null, null);
INSERT INTO `antihack_whitelist` VALUES ('9', null, '40975110', null, null);
INSERT INTO `antihack_whitelist` VALUES ('10', null, '4163522', null, null);
INSERT INTO `antihack_whitelist` VALUES ('11', null, '22773510', null, null);
INSERT INTO `antihack_whitelist` VALUES ('12', null, '34319366', null, null);
INSERT INTO `antihack_whitelist` VALUES ('13', null, '43767494', null, null);
INSERT INTO `antihack_whitelist` VALUES ('14', null, '59883846', null, null);
INSERT INTO `antihack_whitelist` VALUES ('15', null, '95700038', null, null);
INSERT INTO `antihack_whitelist` VALUES ('16', null, '37624070', null, null);
INSERT INTO `antihack_whitelist` VALUES ('17', null, '52002246', null, null);
INSERT INTO `antihack_whitelist` VALUES ('18', null, '102773894', null, null);

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq1_building` (`class_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '2b14_82mm_TK_Bag_EP1');
INSERT INTO `building` VALUES ('2', '2b14_82mm_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('3', '2b14_82mm_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('4', '76n6ClamShell');
INSERT INTO `building` VALUES ('5', '76n6ClamShell_EP1');
INSERT INTO `building` VALUES ('6', 'ACamp');
INSERT INTO `building` VALUES ('7', 'ACamp_EP1');
INSERT INTO `building` VALUES ('8', 'AGS_TK_Bag_EP1');
INSERT INTO `building` VALUES ('9', 'AGS_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('10', 'AGS_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('11', 'AGS_UN_Bag_EP1');
INSERT INTO `building` VALUES ('12', 'Ammobox_PMC');
INSERT INTO `building` VALUES ('14', 'AmmoCrates_NoInteractive_Large');
INSERT INTO `building` VALUES ('15', 'AmmoCrates_NoInteractive_Medium');
INSERT INTO `building` VALUES ('16', 'AmmoCrates_NoInteractive_Small');
INSERT INTO `building` VALUES ('13', 'AmmoCrate_NoInteractive_');
INSERT INTO `building` VALUES ('17', 'BAF_AssaultPack');
INSERT INTO `building` VALUES ('18', 'BAF_BasicAmmunitionBox');
INSERT INTO `building` VALUES ('19', 'BAF_BasicWeapons');
INSERT INTO `building` VALUES ('20', 'BAF_GMG_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('21', 'BAF_GPMG_Minitripod_D_bag');
INSERT INTO `building` VALUES ('22', 'BAF_IEDBox');
INSERT INTO `building` VALUES ('23', 'BAF_L2A1_ACOG_minitripod_bag');
INSERT INTO `building` VALUES ('24', 'BAF_L2A1_ACOG_tripod_bag');
INSERT INTO `building` VALUES ('25', 'BAF_Launchers');
INSERT INTO `building` VALUES ('26', 'BAF_OrdnanceBox');
INSERT INTO `building` VALUES ('27', 'BAF_VehicleBox');
INSERT INTO `building` VALUES ('28', 'Barrack2');
INSERT INTO `building` VALUES ('29', 'Base_WarfareBBarrier10x');
INSERT INTO `building` VALUES ('30', 'Base_WarfareBBarrier10xTall');
INSERT INTO `building` VALUES ('31', 'Base_WarfareBBarrier5x');
INSERT INTO `building` VALUES ('32', 'Base_WarfareBContructionSite');
INSERT INTO `building` VALUES ('33', 'Bleacher_EP1');
INSERT INTO `building` VALUES ('38', 'BMP2Wreck');
INSERT INTO `building` VALUES ('34', 'BMP2_HQ_CDF_unfolded');
INSERT INTO `building` VALUES ('35', 'BMP2_HQ_INS_unfolded');
INSERT INTO `building` VALUES ('36', 'BMP2_HQ_TK_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('37', 'BMP2_HQ_TK_unfolded_EP1');
INSERT INTO `building` VALUES ('39', 'Body');
INSERT INTO `building` VALUES ('40', 'Bomb');
INSERT INTO `building` VALUES ('41', 'BRDM2_HQ_Gue_unfolded');
INSERT INTO `building` VALUES ('42', 'BRDM2_HQ_TK_GUE_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('43', 'BRDM2_HQ_TK_GUE_unfolded_EP1');
INSERT INTO `building` VALUES ('44', 'BRDMWreck');
INSERT INTO `building` VALUES ('45', 'BTR90_HQ_unfolded');
INSERT INTO `building` VALUES ('46', 'Bunker_PMC');
INSERT INTO `building` VALUES ('47', 'C130J_static_EP1');
INSERT INTO `building` VALUES ('48', 'C130J_wreck_EP1');
INSERT INTO `building` VALUES ('49', 'Camp');
INSERT INTO `building` VALUES ('51', 'CampEast');
INSERT INTO `building` VALUES ('52', 'CampEast_EP1');
INSERT INTO `building` VALUES ('50', 'Camp_EP1');
INSERT INTO `building` VALUES ('532', 'CanvasHut_DZ');
INSERT INTO `building` VALUES ('53', 'CDF_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('54', 'CDF_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('55', 'CDF_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('56', 'CDF_WarfareBBarracks');
INSERT INTO `building` VALUES ('57', 'CDF_WarfareBContructionSite');
INSERT INTO `building` VALUES ('58', 'CDF_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('59', 'CDF_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('60', 'CDF_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('61', 'CDF_WarfareBLightFactory');
INSERT INTO `building` VALUES ('62', 'CDF_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('63', 'CDF_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('64', 'Concrete_Wall_EP1');
INSERT INTO `building` VALUES ('67', 'CZBasicWeapons_EP1');
INSERT INTO `building` VALUES ('65', 'CZ_Backpack_EP1');
INSERT INTO `building` VALUES ('66', 'CZ_VestPouch_EP1');
INSERT INTO `building` VALUES ('68', 'datsun01Wreck');
INSERT INTO `building` VALUES ('69', 'datsun02Wreck');
INSERT INTO `building` VALUES ('537', 'DeerStand_DZ');
INSERT INTO `building` VALUES ('533', 'DesertCamoNet_DZ');
INSERT INTO `building` VALUES ('535', 'DesertLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('70', 'Dirtmount_EP1');
INSERT INTO `building` VALUES ('71', 'DSHkM_Mini_TriPod_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('72', 'DSHkM_Mini_TriPod_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('73', 'DSHKM_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('74', 'DSHKM_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('75', 'EntranceGate_EP1');
INSERT INTO `building` VALUES ('76', 'Explosive');
INSERT INTO `building` VALUES ('529', 'Fence_corrugated_DZ');
INSERT INTO `building` VALUES ('77', 'Fence_corrugated_plate');
INSERT INTO `building` VALUES ('78', 'Fence_Ind');
INSERT INTO `building` VALUES ('79', 'Fence_Ind_long');
INSERT INTO `building` VALUES ('80', 'FlagCarrierArmex_EP1');
INSERT INTO `building` VALUES ('81', 'FlagCarrierBAF');
INSERT INTO `building` VALUES ('82', 'FlagCarrierBIS_EP1');
INSERT INTO `building` VALUES ('83', 'FlagCarrierBLUFOR_EP1');
INSERT INTO `building` VALUES ('84', 'FlagCarrierCDF');
INSERT INTO `building` VALUES ('86', 'FlagCarrierCDFEnsign_EP1');
INSERT INTO `building` VALUES ('85', 'FlagCarrierCDF_EP1');
INSERT INTO `building` VALUES ('87', 'FlagCarrierChecked');
INSERT INTO `building` VALUES ('88', 'FlagCarrierCzechRepublic_EP1');
INSERT INTO `building` VALUES ('89', 'FlagCarrierGermany_EP1');
INSERT INTO `building` VALUES ('90', 'FlagCarrierGUE');
INSERT INTO `building` VALUES ('91', 'FlagCarrierINDFOR_EP1');
INSERT INTO `building` VALUES ('92', 'FlagCarrierINS');
INSERT INTO `building` VALUES ('93', 'FlagCarrierIONblack_PMC');
INSERT INTO `building` VALUES ('94', 'FlagCarrierIONwhite_PMC');
INSERT INTO `building` VALUES ('95', 'FlagCarrierNATO_EP1');
INSERT INTO `building` VALUES ('96', 'FlagCarrierOPFOR_EP1');
INSERT INTO `building` VALUES ('97', 'FlagCarrierPOWMIA_EP1');
INSERT INTO `building` VALUES ('98', 'FlagCarrierRedCrescent_EP1');
INSERT INTO `building` VALUES ('99', 'FlagCarrierRedCross_EP1');
INSERT INTO `building` VALUES ('100', 'FlagCarrierRedCrystal_EP1');
INSERT INTO `building` VALUES ('101', 'FlagCarrierRU');
INSERT INTO `building` VALUES ('102', 'FlagCarrierSmall');
INSERT INTO `building` VALUES ('104', 'FlagCarrierTakistanKingdom_EP1');
INSERT INTO `building` VALUES ('103', 'FlagCarrierTakistan_EP1');
INSERT INTO `building` VALUES ('105', 'FlagCarrierTFKnight_EP1');
INSERT INTO `building` VALUES ('106', 'FlagCarrierTKMilitia_EP1');
INSERT INTO `building` VALUES ('107', 'FlagCarrierUNO_EP1');
INSERT INTO `building` VALUES ('108', 'FlagCarrierUSA');
INSERT INTO `building` VALUES ('110', 'FlagCarrierUSArmy_EP1');
INSERT INTO `building` VALUES ('109', 'FlagCarrierUSA_EP1');
INSERT INTO `building` VALUES ('111', 'FlagCarrierWhite_EP1');
INSERT INTO `building` VALUES ('112', 'FlagPole_EP1');
INSERT INTO `building` VALUES ('534', 'ForestCamoNet_DZ');
INSERT INTO `building` VALUES ('536', 'ForestLargeCamoNet_DZ');
INSERT INTO `building` VALUES ('113', 'Fort_Barracks_USMC');
INSERT INTO `building` VALUES ('114', 'Fort_Barricade');
INSERT INTO `building` VALUES ('115', 'Fort_Barricade_EP1');
INSERT INTO `building` VALUES ('116', 'Fort_Crate_wood');
INSERT INTO `building` VALUES ('117', 'Fort_EnvelopeBig');
INSERT INTO `building` VALUES ('118', 'Fort_EnvelopeBig_EP1');
INSERT INTO `building` VALUES ('119', 'Fort_EnvelopeSmall');
INSERT INTO `building` VALUES ('120', 'Fort_EnvelopeSmall_EP1');
INSERT INTO `building` VALUES ('121', 'Fort_RazorWire');
INSERT INTO `building` VALUES ('122', 'Fort_StoneWall_EP1');
INSERT INTO `building` VALUES ('526', 'FuelPump_DZ');
INSERT INTO `building` VALUES ('123', 'Garbage_can');
INSERT INTO `building` VALUES ('124', 'Garbage_container');
INSERT INTO `building` VALUES ('525', 'Generator_DZ');
INSERT INTO `building` VALUES ('125', 'GERBasicWeapons_EP1');
INSERT INTO `building` VALUES ('126', 'Grave');
INSERT INTO `building` VALUES ('127', 'GraveCross1');
INSERT INTO `building` VALUES ('128', 'GraveCross2');
INSERT INTO `building` VALUES ('129', 'GraveCross2_EP1');
INSERT INTO `building` VALUES ('130', 'GraveCrossHelmet');
INSERT INTO `building` VALUES ('131', 'GraveCrossHelmet_EP1');
INSERT INTO `building` VALUES ('143', 'GuerillaCacheBox');
INSERT INTO `building` VALUES ('144', 'GuerillaCacheBox_EP1');
INSERT INTO `building` VALUES ('132', 'GUE_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('133', 'GUE_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('134', 'Gue_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('135', 'Gue_WarfareBBarracks');
INSERT INTO `building` VALUES ('136', 'Gue_WarfareBContructionSite');
INSERT INTO `building` VALUES ('137', 'Gue_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('138', 'GUE_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('139', 'Gue_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('140', 'Gue_WarfareBLightFactory');
INSERT INTO `building` VALUES ('141', 'GUE_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('142', 'GUE_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('145', 'Gunrack1');
INSERT INTO `building` VALUES ('146', 'Gunrack2');
INSERT INTO `building` VALUES ('147', 'GunrackTK_EP1');
INSERT INTO `building` VALUES ('148', 'GunrackUS_EP1');
INSERT INTO `building` VALUES ('149', 'Hanged');
INSERT INTO `building` VALUES ('150', 'Hanged_MD');
INSERT INTO `building` VALUES ('151', 'Haystack');
INSERT INTO `building` VALUES ('152', 'Hedgehog');
INSERT INTO `building` VALUES ('522', 'Hedgehog_DZ');
INSERT INTO `building` VALUES ('153', 'Hedgehog_EP1');
INSERT INTO `building` VALUES ('154', 'HeliH');
INSERT INTO `building` VALUES ('155', 'HeliHCivil');
INSERT INTO `building` VALUES ('156', 'HeliHEmpty');
INSERT INTO `building` VALUES ('157', 'HeliHRescue');
INSERT INTO `building` VALUES ('158', 'Hhedgehog_concrete');
INSERT INTO `building` VALUES ('159', 'Hhedgehog_concreteBig');
INSERT INTO `building` VALUES ('160', 'hiluxWreck');
INSERT INTO `building` VALUES ('161', 'HMMWVWreck');
INSERT INTO `building` VALUES ('162', 'HumpsDirt');
INSERT INTO `building` VALUES ('163', 'IED_placement_BAF');
INSERT INTO `building` VALUES ('164', 'Info_Board_EP1');
INSERT INTO `building` VALUES ('165', 'INS_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('166', 'INS_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('167', 'Ins_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('168', 'Ins_WarfareBBarracks');
INSERT INTO `building` VALUES ('169', 'Ins_WarfareBContructionSite');
INSERT INTO `building` VALUES ('170', 'Ins_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('171', 'INS_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('172', 'Ins_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('173', 'Ins_WarfareBLightFactory');
INSERT INTO `building` VALUES ('174', 'INS_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('175', 'INS_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('547', 'ItemTent');
INSERT INTO `building` VALUES ('176', 'KORD_high_TK_Bag_EP1');
INSERT INTO `building` VALUES ('177', 'KORD_high_UN_Bag_EP1');
INSERT INTO `building` VALUES ('178', 'KORD_TK_Bag_EP1');
INSERT INTO `building` VALUES ('179', 'KORD_UN_Bag_EP1');
INSERT INTO `building` VALUES ('180', 'LADAWreck');
INSERT INTO `building` VALUES ('182', 'Land_Antenna');
INSERT INTO `building` VALUES ('181', 'Land_A_tent');
INSERT INTO `building` VALUES ('183', 'Land_BagFenceCorner');
INSERT INTO `building` VALUES ('184', 'Land_BagFenceEnd');
INSERT INTO `building` VALUES ('185', 'Land_BagFenceLong');
INSERT INTO `building` VALUES ('186', 'Land_BagFenceRound');
INSERT INTO `building` VALUES ('187', 'Land_BagFenceShort');
INSERT INTO `building` VALUES ('188', 'Land_bags_EP1');
INSERT INTO `building` VALUES ('189', 'Land_bags_stack_EP1');
INSERT INTO `building` VALUES ('190', 'Land_BarGate2');
INSERT INTO `building` VALUES ('191', 'Land_Barrack2_EP1');
INSERT INTO `building` VALUES ('192', 'Land_Blankets_EP1');
INSERT INTO `building` VALUES ('193', 'Land_BoatSmall_1');
INSERT INTO `building` VALUES ('194', 'Land_BoatSmall_2a');
INSERT INTO `building` VALUES ('195', 'Land_BoatSmall_2b');
INSERT INTO `building` VALUES ('196', 'Land_Boots_EP1');
INSERT INTO `building` VALUES ('197', 'Land_cages_EP1');
INSERT INTO `building` VALUES ('202', 'Land_CamoNetB_EAST');
INSERT INTO `building` VALUES ('203', 'Land_CamoNetB_EAST_EP1');
INSERT INTO `building` VALUES ('204', 'Land_CamoNetB_NATO');
INSERT INTO `building` VALUES ('205', 'Land_CamoNetB_NATO_EP1');
INSERT INTO `building` VALUES ('206', 'Land_CamoNetVar_EAST');
INSERT INTO `building` VALUES ('207', 'Land_CamoNetVar_EAST_EP1');
INSERT INTO `building` VALUES ('208', 'Land_CamoNetVar_NATO');
INSERT INTO `building` VALUES ('209', 'Land_CamoNetVar_NATO_EP1');
INSERT INTO `building` VALUES ('198', 'Land_CamoNet_EAST');
INSERT INTO `building` VALUES ('199', 'Land_CamoNet_EAST_EP1');
INSERT INTO `building` VALUES ('200', 'Land_CamoNet_NATO');
INSERT INTO `building` VALUES ('201', 'Land_CamoNet_NATO_EP1');
INSERT INTO `building` VALUES ('210', 'Land_Campfire');
INSERT INTO `building` VALUES ('211', 'Land_Campfire_burning');
INSERT INTO `building` VALUES ('212', 'Land_Carpet_2_EP1');
INSERT INTO `building` VALUES ('213', 'Land_Carpet_EP1');
INSERT INTO `building` VALUES ('214', 'Land_Carpet_rack_EP1');
INSERT INTO `building` VALUES ('215', 'Land_Church_tomb_1');
INSERT INTO `building` VALUES ('216', 'Land_Church_tomb_2');
INSERT INTO `building` VALUES ('217', 'Land_Church_tomb_3');
INSERT INTO `building` VALUES ('218', 'Land_Climbing_Obstacle');
INSERT INTO `building` VALUES ('219', 'Land_CncBlock');
INSERT INTO `building` VALUES ('220', 'Land_CncBlock_D');
INSERT INTO `building` VALUES ('221', 'Land_CncBlock_Stripes');
INSERT INTO `building` VALUES ('222', 'Land_ConcreteBlock');
INSERT INTO `building` VALUES ('223', 'Land_ConcreteRamp');
INSERT INTO `building` VALUES ('224', 'Land_covering_hut_big_EP1');
INSERT INTO `building` VALUES ('225', 'Land_covering_hut_EP1');
INSERT INTO `building` VALUES ('226', 'Land_Crates_EP1');
INSERT INTO `building` VALUES ('227', 'Land_Crates_stack_EP1');
INSERT INTO `building` VALUES ('228', 'Land_Destroyer');
INSERT INTO `building` VALUES ('229', 'Land_Dirthump01');
INSERT INTO `building` VALUES ('230', 'Land_Dirthump01_EP1');
INSERT INTO `building` VALUES ('231', 'Land_Dirthump02');
INSERT INTO `building` VALUES ('232', 'Land_Dirthump02_EP1');
INSERT INTO `building` VALUES ('233', 'Land_Dirthump03');
INSERT INTO `building` VALUES ('234', 'Land_Dirthump03_EP1');
INSERT INTO `building` VALUES ('235', 'Land_Fire');
INSERT INTO `building` VALUES ('236', 'Land_Fire_barrel');
INSERT INTO `building` VALUES ('237', 'Land_Fire_barrel_burning');
INSERT INTO `building` VALUES ('238', 'Land_Fire_burning');
INSERT INTO `building` VALUES ('248', 'Land_fortified_nest_big');
INSERT INTO `building` VALUES ('249', 'Land_fortified_nest_big_EP1');
INSERT INTO `building` VALUES ('250', 'Land_fortified_nest_small');
INSERT INTO `building` VALUES ('251', 'Land_fortified_nest_small_EP1');
INSERT INTO `building` VALUES ('239', 'Land_fort_artillery_nest');
INSERT INTO `building` VALUES ('240', 'Land_fort_artillery_nest_EP1');
INSERT INTO `building` VALUES ('241', 'Land_fort_bagfence_corner');
INSERT INTO `building` VALUES ('242', 'Land_fort_bagfence_long');
INSERT INTO `building` VALUES ('243', 'Land_fort_bagfence_round');
INSERT INTO `building` VALUES ('244', 'Land_fort_rampart');
INSERT INTO `building` VALUES ('245', 'Land_fort_rampart_EP1');
INSERT INTO `building` VALUES ('246', 'Land_Fort_Watchtower');
INSERT INTO `building` VALUES ('247', 'Land_Fort_Watchtower_EP1');
INSERT INTO `building` VALUES ('252', 'Land_Fregata');
INSERT INTO `building` VALUES ('253', 'Land_GuardShed');
INSERT INTO `building` VALUES ('254', 'Land_Hangar_2');
INSERT INTO `building` VALUES ('256', 'Land_HBarrier1');
INSERT INTO `building` VALUES ('530', 'Land_HBarrier1_DZ');
INSERT INTO `building` VALUES ('257', 'Land_HBarrier3');
INSERT INTO `building` VALUES ('258', 'Land_HBarrier5');
INSERT INTO `building` VALUES ('255', 'Land_HBarrier_large');
INSERT INTO `building` VALUES ('259', 'Land_Hlidac_budka');
INSERT INTO `building` VALUES ('260', 'Land_Hlidac_Budka_EP1');
INSERT INTO `building` VALUES ('261', 'Land_IED_v1_PMC');
INSERT INTO `building` VALUES ('262', 'Land_IED_v2_PMC');
INSERT INTO `building` VALUES ('263', 'Land_IED_v3_PMC');
INSERT INTO `building` VALUES ('264', 'Land_IED_v4_PMC');
INSERT INTO `building` VALUES ('265', 'Land_Ind_BoardsPack1');
INSERT INTO `building` VALUES ('266', 'Land_Ind_BoardsPack2');
INSERT INTO `building` VALUES ('267', 'Land_Ind_IlluminantTower');
INSERT INTO `building` VALUES ('268', 'Land_Ind_TankSmall');
INSERT INTO `building` VALUES ('269', 'Land_Ind_TankSmall2');
INSERT INTO `building` VALUES ('270', 'Land_Ind_TankSmall2_EP1');
INSERT INTO `building` VALUES ('271', 'Land_Ind_Timbers');
INSERT INTO `building` VALUES ('272', 'Land_ladder');
INSERT INTO `building` VALUES ('275', 'Land_ladderEP1');
INSERT INTO `building` VALUES ('273', 'Land_ladder_half');
INSERT INTO `building` VALUES ('274', 'Land_ladder_half_EP1');
INSERT INTO `building` VALUES ('276', 'Land_loco_742_blue');
INSERT INTO `building` VALUES ('277', 'Land_loco_742_red');
INSERT INTO `building` VALUES ('278', 'Land_Market_shelter_EP1');
INSERT INTO `building` VALUES ('279', 'Land_Market_stalls_01_EP1');
INSERT INTO `building` VALUES ('280', 'Land_Market_stalls_02_EP1');
INSERT INTO `building` VALUES ('282', 'Land_Misc_Cargo1Eo_EP1');
INSERT INTO `building` VALUES ('281', 'Land_Misc_Cargo1E_EP1');
INSERT INTO `building` VALUES ('283', 'Land_Misc_Cargo2E');
INSERT INTO `building` VALUES ('284', 'Land_Misc_Cargo2E_EP1');
INSERT INTO `building` VALUES ('285', 'Land_Misc_Coil_EP1');
INSERT INTO `building` VALUES ('286', 'Land_Misc_ConcBox_EP1');
INSERT INTO `building` VALUES ('287', 'Land_Misc_ConcOutlet_EP1');
INSERT INTO `building` VALUES ('288', 'Land_Misc_ConcPipeline_EP1');
INSERT INTO `building` VALUES ('289', 'Land_Misc_deerstand');
INSERT INTO `building` VALUES ('290', 'Land_Misc_Garb_Heap_EP1');
INSERT INTO `building` VALUES ('291', 'Land_Misc_GContainer_Big');
INSERT INTO `building` VALUES ('292', 'Land_Misc_IronPipes_EP1');
INSERT INTO `building` VALUES ('293', 'Land_Misc_Rubble_EP1');
INSERT INTO `building` VALUES ('294', 'Land_Misc_Scaffolding');
INSERT INTO `building` VALUES ('295', 'Land_Misc_Well_C_EP1');
INSERT INTO `building` VALUES ('296', 'Land_Misc_Well_L_EP1');
INSERT INTO `building` VALUES ('297', 'Land_obihacka');
INSERT INTO `building` VALUES ('298', 'Land_obstacle_get_over');
INSERT INTO `building` VALUES ('299', 'Land_obstacle_prone');
INSERT INTO `building` VALUES ('300', 'Land_obstacle_run_duck');
INSERT INTO `building` VALUES ('301', 'Land_podlejzacka');
INSERT INTO `building` VALUES ('302', 'Land_prebehlavka');
INSERT INTO `building` VALUES ('303', 'Land_prolejzacka');
INSERT INTO `building` VALUES ('304', 'Land_psi_bouda');
INSERT INTO `building` VALUES ('305', 'Land_radar');
INSERT INTO `building` VALUES ('306', 'Land_radar_EP1');
INSERT INTO `building` VALUES ('307', 'Land_RedWhiteBarrier');
INSERT INTO `building` VALUES ('308', 'Land_Shed_wooden');
INSERT INTO `building` VALUES ('309', 'Land_Shooting_range');
INSERT INTO `building` VALUES ('310', 'Land_stand_meat_EP1');
INSERT INTO `building` VALUES ('311', 'Land_stand_small_EP1');
INSERT INTO `building` VALUES ('312', 'Land_stand_waterl_EP1');
INSERT INTO `building` VALUES ('313', 'Land_sunshade_EP1');
INSERT INTO `building` VALUES ('314', 'Land_tent_east');
INSERT INTO `building` VALUES ('315', 'Land_tires_EP1');
INSERT INTO `building` VALUES ('316', 'Land_Toilet');
INSERT INTO `building` VALUES ('317', 'Land_transport_cart_EP1');
INSERT INTO `building` VALUES ('318', 'Land_transport_crates_EP1');
INSERT INTO `building` VALUES ('319', 'Land_transport_kiosk_EP1');
INSERT INTO `building` VALUES ('320', 'Land_wagon_box');
INSERT INTO `building` VALUES ('321', 'Land_wagon_flat');
INSERT INTO `building` VALUES ('322', 'Land_wagon_tanker');
INSERT INTO `building` VALUES ('323', 'Land_WoodenRamp');
INSERT INTO `building` VALUES ('324', 'LAV25_HQ_unfolded');
INSERT INTO `building` VALUES ('325', 'LocalBasicAmmunitionBox');
INSERT INTO `building` VALUES ('326', 'LocalBasicWeaponsBox');
INSERT INTO `building` VALUES ('327', 'Loudspeaker');
INSERT INTO `building` VALUES ('328', 'Loudspeakers_EP1');
INSERT INTO `building` VALUES ('329', 'M1130_HQ_unfolded_Base_EP1');
INSERT INTO `building` VALUES ('330', 'M1130_HQ_unfolded_EP1');
INSERT INTO `building` VALUES ('331', 'M252_US_Bag_EP1');
INSERT INTO `building` VALUES ('332', 'M2HD_mini_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('333', 'M2StaticMG_US_Bag_EP1');
INSERT INTO `building` VALUES ('334', 'MASH');
INSERT INTO `building` VALUES ('335', 'MASH_EP1');
INSERT INTO `building` VALUES ('336', 'Mass_grave');
INSERT INTO `building` VALUES ('539', 'MetalGate_DZ');
INSERT INTO `building` VALUES ('528', 'MetalPanel_DZ');
INSERT INTO `building` VALUES ('337', 'Metis_TK_Bag_EP1');
INSERT INTO `building` VALUES ('338', 'Mi8Wreck');
INSERT INTO `building` VALUES ('339', 'Microphone1_ep1');
INSERT INTO `building` VALUES ('340', 'Microphone2_ep1');
INSERT INTO `building` VALUES ('341', 'Microphone3_ep1');
INSERT INTO `building` VALUES ('342', 'Misc_Backpackheap');
INSERT INTO `building` VALUES ('343', 'Misc_Backpackheap_EP1');
INSERT INTO `building` VALUES ('352', 'Misc_Cargo1Bo_military');
INSERT INTO `building` VALUES ('351', 'Misc_Cargo1B_military');
INSERT INTO `building` VALUES ('344', 'Misc_cargo_cont_net1');
INSERT INTO `building` VALUES ('345', 'Misc_cargo_cont_net2');
INSERT INTO `building` VALUES ('346', 'Misc_cargo_cont_net3');
INSERT INTO `building` VALUES ('347', 'Misc_cargo_cont_small');
INSERT INTO `building` VALUES ('349', 'Misc_cargo_cont_small2');
INSERT INTO `building` VALUES ('348', 'Misc_cargo_cont_small_EP1');
INSERT INTO `building` VALUES ('350', 'Misc_cargo_cont_tiny');
INSERT INTO `building` VALUES ('353', 'Misc_palletsfoiled');
INSERT INTO `building` VALUES ('354', 'Misc_palletsfoiled_heap');
INSERT INTO `building` VALUES ('355', 'Misc_TyreHeap');
INSERT INTO `building` VALUES ('356', 'Misc_TyreHeapEP1');
INSERT INTO `building` VALUES ('357', 'Misc_Videoprojektor');
INSERT INTO `building` VALUES ('358', 'Misc_Wall_lamp');
INSERT INTO `building` VALUES ('359', 'MK19_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('360', 'Obstacle_saddle');
INSERT INTO `building` VALUES ('540', 'OutHouse_DZ');
INSERT INTO `building` VALUES ('361', 'Paleta1');
INSERT INTO `building` VALUES ('362', 'Paleta2');
INSERT INTO `building` VALUES ('363', 'PARACHUTE_TARGET');
INSERT INTO `building` VALUES ('364', 'Pile_of_wood');
INSERT INTO `building` VALUES ('365', 'Plastic_Pole_EP1');
INSERT INTO `building` VALUES ('366', 'PowGen_Big');
INSERT INTO `building` VALUES ('367', 'PowGen_Big_EP1');
INSERT INTO `building` VALUES ('368', 'RampConcrete');
INSERT INTO `building` VALUES ('369', 'Red_Light_Blinking_EP1');
INSERT INTO `building` VALUES ('370', 'RoadBarrier_light');
INSERT INTO `building` VALUES ('371', 'RoadBarrier_long');
INSERT INTO `building` VALUES ('383', 'RUBasicAmmunitionBox');
INSERT INTO `building` VALUES ('384', 'RUBasicWeaponsBox');
INSERT INTO `building` VALUES ('385', 'RULaunchersBox');
INSERT INTO `building` VALUES ('386', 'RUOrdnanceBox');
INSERT INTO `building` VALUES ('387', 'RUSpecialWeaponsBox');
INSERT INTO `building` VALUES ('388', 'RUVehicleBox');
INSERT INTO `building` VALUES ('372', 'RU_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('373', 'RU_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('374', 'RU_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('375', 'RU_WarfareBBarracks');
INSERT INTO `building` VALUES ('376', 'RU_WarfareBContructionSite');
INSERT INTO `building` VALUES ('377', 'RU_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('378', 'RU_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('379', 'RU_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('380', 'RU_WarfareBLightFactory');
INSERT INTO `building` VALUES ('381', 'RU_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('382', 'RU_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('524', 'Sandbag1_DZ');
INSERT INTO `building` VALUES ('538', 'SandNest_DZ');
INSERT INTO `building` VALUES ('391', 'SignM_FARP_Winchester_EP1');
INSERT INTO `building` VALUES ('392', 'SignM_FOB_Blanik_EP1');
INSERT INTO `building` VALUES ('393', 'SignM_FOB_Prostejov_EP1');
INSERT INTO `building` VALUES ('394', 'SignM_FOB_Revolve_EP1');
INSERT INTO `building` VALUES ('395', 'SignM_UN_Base_EP1');
INSERT INTO `building` VALUES ('389', 'Sign_Armex_EP1');
INSERT INTO `building` VALUES ('390', 'Sign_Direction_EP1');
INSERT INTO `building` VALUES ('396', 'SKODAWreck');
INSERT INTO `building` VALUES ('397', 'SpecialWeaponsBox');
INSERT INTO `building` VALUES ('398', 'SPG9_TK_GUE_Bag_EP1');
INSERT INTO `building` VALUES ('399', 'SPG9_TK_INS_Bag_EP1');
INSERT INTO `building` VALUES ('400', 'Sr_border');
INSERT INTO `building` VALUES ('544', 'StickFence_DZ');
INSERT INTO `building` VALUES ('541', 'StorageShed_DZ');
INSERT INTO `building` VALUES ('401', 'T72Wreck');
INSERT INTO `building` VALUES ('402', 'T72WreckTurret');
INSERT INTO `building` VALUES ('450', 'TKBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('451', 'TKBasicWeapons_EP1');
INSERT INTO `building` VALUES ('452', 'TKLaunchers_EP1');
INSERT INTO `building` VALUES ('453', 'TKOrdnanceBox_EP1');
INSERT INTO `building` VALUES ('454', 'TKSpecialWeapons_EP1');
INSERT INTO `building` VALUES ('455', 'TKVehicleBox_EP1');
INSERT INTO `building` VALUES ('403', 'TK_ALICE_Pack_EP1');
INSERT INTO `building` VALUES ('404', 'TK_Assault_Pack_EP1');
INSERT INTO `building` VALUES ('405', 'TK_GUE_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('406', 'TK_GUE_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('407', 'TK_GUE_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('408', 'TK_GUE_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('409', 'TK_GUE_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('410', 'TK_GUE_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('411', 'TK_GUE_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('412', 'TK_GUE_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('415', 'TK_GUE_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('416', 'TK_GUE_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('413', 'TK_GUE_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('414', 'TK_GUE_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('417', 'TK_GUE_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('418', 'TK_GUE_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('419', 'TK_GUE_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('420', 'TK_GUE_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('421', 'TK_GUE_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('422', 'TK_GUE_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('423', 'TK_GUE_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('424', 'TK_GUE_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('425', 'TK_GUE_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('426', 'TK_GUE_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('427', 'TK_RPG_Backpack_EP1');
INSERT INTO `building` VALUES ('428', 'TK_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('429', 'TK_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('430', 'TK_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('431', 'TK_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('432', 'TK_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('433', 'TK_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('434', 'TK_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('435', 'TK_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('438', 'TK_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('439', 'TK_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('436', 'TK_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('437', 'TK_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('440', 'TK_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('441', 'TK_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('442', 'TK_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('443', 'TK_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('444', 'TK_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('445', 'TK_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('446', 'TK_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('447', 'TK_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('448', 'TK_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('449', 'TK_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('456', 'TOW_TriPod_US_Bag_EP1');
INSERT INTO `building` VALUES ('457', 'Training_target_EP1');
INSERT INTO `building` VALUES ('458', 'Tripod_Bag');
INSERT INTO `building` VALUES ('459', 'UAZWreck');
INSERT INTO `building` VALUES ('460', 'UNBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('461', 'UNBasicWeapons_EP1');
INSERT INTO `building` VALUES ('462', 'UralWreck');
INSERT INTO `building` VALUES ('489', 'USBasicAmmunitionBox');
INSERT INTO `building` VALUES ('490', 'USBasicAmmunitionBox_EP1');
INSERT INTO `building` VALUES ('491', 'USBasicBag');
INSERT INTO `building` VALUES ('493', 'USBasicWeaponsBox');
INSERT INTO `building` VALUES ('492', 'USBasicWeapons_EP1');
INSERT INTO `building` VALUES ('495', 'USLaunchersBox');
INSERT INTO `building` VALUES ('494', 'USLaunchers_EP1');
INSERT INTO `building` VALUES ('496', 'USMC_WarfareBAircraftFactory');
INSERT INTO `building` VALUES ('497', 'USMC_WarfareBAntiAirRadar');
INSERT INTO `building` VALUES ('498', 'USMC_WarfareBArtilleryRadar');
INSERT INTO `building` VALUES ('499', 'USMC_WarfareBBarracks');
INSERT INTO `building` VALUES ('500', 'USMC_WarfareBContructionSite');
INSERT INTO `building` VALUES ('501', 'USMC_WarfareBContructionSite1');
INSERT INTO `building` VALUES ('502', 'USMC_WarfareBFieldhHospital');
INSERT INTO `building` VALUES ('503', 'USMC_WarfareBHeavyFactory');
INSERT INTO `building` VALUES ('504', 'USMC_WarfareBLightFactory');
INSERT INTO `building` VALUES ('505', 'USMC_WarfareBUAVterminal');
INSERT INTO `building` VALUES ('506', 'USMC_WarfareBVehicleServicePoint');
INSERT INTO `building` VALUES ('507', 'USOrdnanceBox');
INSERT INTO `building` VALUES ('508', 'USOrdnanceBox_EP1');
INSERT INTO `building` VALUES ('510', 'USSpecialWeaponsBox');
INSERT INTO `building` VALUES ('509', 'USSpecialWeapons_EP1');
INSERT INTO `building` VALUES ('511', 'USVehicleBox');
INSERT INTO `building` VALUES ('512', 'USVehicleBox_EP1');
INSERT INTO `building` VALUES ('463', 'US_Assault_Pack_EP1');
INSERT INTO `building` VALUES ('464', 'US_Backpack_EP1');
INSERT INTO `building` VALUES ('465', 'US_Patrol_Pack_EP1');
INSERT INTO `building` VALUES ('466', 'US_UAV_Pack_EP1');
INSERT INTO `building` VALUES ('467', 'US_WarfareBAircraftFactory_Base_EP1');
INSERT INTO `building` VALUES ('468', 'US_WarfareBAircraftFactory_EP1');
INSERT INTO `building` VALUES ('469', 'US_WarfareBAntiAirRadar_Base_EP1');
INSERT INTO `building` VALUES ('470', 'US_WarfareBAntiAirRadar_EP1');
INSERT INTO `building` VALUES ('471', 'US_WarfareBArtilleryRadar_Base_EP1');
INSERT INTO `building` VALUES ('472', 'US_WarfareBArtilleryRadar_EP1');
INSERT INTO `building` VALUES ('473', 'US_WarfareBBarracks_Base_EP1');
INSERT INTO `building` VALUES ('474', 'US_WarfareBBarracks_EP1');
INSERT INTO `building` VALUES ('477', 'US_WarfareBContructionSite1_Base_EP1');
INSERT INTO `building` VALUES ('478', 'US_WarfareBContructionSite1_EP1');
INSERT INTO `building` VALUES ('475', 'US_WarfareBContructionSite_Base_EP1');
INSERT INTO `building` VALUES ('476', 'US_WarfareBContructionSite_EP1');
INSERT INTO `building` VALUES ('479', 'US_WarfareBFieldhHospital_Base_EP1');
INSERT INTO `building` VALUES ('480', 'US_WarfareBFieldhHospital_EP1');
INSERT INTO `building` VALUES ('481', 'US_WarfareBHeavyFactory_Base_EP1');
INSERT INTO `building` VALUES ('482', 'US_WarfareBHeavyFactory_EP1');
INSERT INTO `building` VALUES ('483', 'US_WarfareBLightFactory_base_EP1');
INSERT INTO `building` VALUES ('484', 'US_WarfareBLightFactory_EP1');
INSERT INTO `building` VALUES ('485', 'US_WarfareBUAVterminal_Base_EP1');
INSERT INTO `building` VALUES ('486', 'US_WarfareBUAVterminal_EP1');
INSERT INTO `building` VALUES ('487', 'US_WarfareBVehicleServicePoint_Base_EP1');
INSERT INTO `building` VALUES ('488', 'US_WarfareBVehicleServicePoint_EP1');
INSERT INTO `building` VALUES ('513', 'WarfareBAircraftFactory_CDF');
INSERT INTO `building` VALUES ('514', 'WarfareBAircraftFactory_Gue');
INSERT INTO `building` VALUES ('515', 'WarfareBAircraftFactory_Ins');
INSERT INTO `building` VALUES ('516', 'WarfareBAirport');
INSERT INTO `building` VALUES ('517', 'WarfareBCamp');
INSERT INTO `building` VALUES ('518', 'WarfareBDepot');
INSERT INTO `building` VALUES ('519', 'WarfareBunkerSign');
INSERT INTO `building` VALUES ('520', 'WaterBasin_conc_EP1');
INSERT INTO `building` VALUES ('543', 'Wooden_shed_DZ');
INSERT INTO `building` VALUES ('521', 'WoodGate_DZ');
INSERT INTO `building` VALUES ('542', 'WoodShack_DZ');
INSERT INTO `building` VALUES ('531', 'WorkBench_DZ');

-- ----------------------------
-- Table structure for character_data
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '1000',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39572 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for character_dead
-- ----------------------------
DROP TABLE IF EXISTS `character_dead`;
CREATE TABLE `character_dead` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(100) NOT NULL DEFAULT '[]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `Classtype` int(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`) USING BTREE,
  KEY `PlayerUID` (`PlayerUID`) USING BTREE,
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31929 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_dead
-- ----------------------------

-- ----------------------------
-- Table structure for character_variables
-- ----------------------------
DROP TABLE IF EXISTS `character_variables`;
CREATE TABLE `character_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `characterID` int(11) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `characterID` (`characterID`) USING BTREE,
  CONSTRAINT `characterID` FOREIGN KEY (`characterID`) REFERENCES `character_data` (`CharacterID`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=760 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of character_variables
-- ----------------------------


-- ----------------------------
-- Table structure for cust_loadout
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout`;
CREATE TABLE `cust_loadout` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inventory` varchar(2048) NOT NULL,
  `backpack` varchar(2048) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout
-- ----------------------------

-- ----------------------------
-- Table structure for cust_loadout_profile
-- ----------------------------
DROP TABLE IF EXISTS `cust_loadout_profile`;
CREATE TABLE `cust_loadout_profile` (
  `cust_loadout_id` bigint(20) unsigned NOT NULL,
  `unique_id` varchar(128) NOT NULL,
  PRIMARY KEY (`cust_loadout_id`,`unique_id`),
  KEY `fk2_cust_loadout_profile` (`unique_id`) USING BTREE,
  CONSTRAINT `cust_loadout_profile_ibfk_1` FOREIGN KEY (`cust_loadout_id`) REFERENCES `cust_loadout` (`id`),
  CONSTRAINT `cust_loadout_profile_ibfk_2` FOREIGN KEY (`unique_id`) REFERENCES `profile` (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cust_loadout_profile
-- ----------------------------

-- ----------------------------
-- Table structure for global_state
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
-- Records of instance_building
-- ----------------------------

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
-- Records of instance_garage
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=5407245 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of instance_movement
-- ----------------------------


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
-- Records of instance_squad
-- ----------------------------

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
-- Records of instance_state
-- ----------------------------

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

-- ----------------------------
-- Records of instance_user
-- ----------------------------
INSERT INTO `instance_user` VALUES ('1', '173.14.59.241', '2');
INSERT INTO `instance_user` VALUES ('2', '63.141.230.170', '1');
INSERT INTO `instance_user` VALUES ('3', '176.57.142.74', '3');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `payload` varchar(1024) NOT NULL,
  `loop_interval` int(10) unsigned NOT NULL DEFAULT '0',
  `start_delay` int(10) unsigned NOT NULL DEFAULT '30',
  `instance_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_message` (`instance_id`) USING BTREE,
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`instance_id`) REFERENCES `instance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for object_classes
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_M2_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('KamazReammo', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRepair_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_ATV_D', '0.50', '3', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_RU', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M998A2_SOV_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('M1030_US_DES_EP1', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_M998_crows_MK19_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_UN_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('S1203_ambulance_EP1', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi171Sh_CZ_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UralSalvage_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Wire_cat1', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('SUV_TK_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Supply_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_TK_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UAZ_MG_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Smallboat_1', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('UH60M_MEV_EP1', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('BAF_ATV_W', '0.50', '3', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('UH60M_EP1', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralSupply_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SUV_PMC', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralOpen_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_DZ', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_INS_EP1', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('RHIB', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_W', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Merlin_HC3_D', '0.25', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Ka52', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH64D', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('TentStorage', '0.59', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('MH6J_DZ', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('KamazRepair', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('RHIB2Turret', '0.50', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('MH6J_EP1', '0.60', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('TT650_TK_EP1', '0.75', '3', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MTVR_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Sandbag1_DZ', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('UralOpen_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.75', '10', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_MG_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_MK19', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_Ins', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Lada2', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MTVR', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_CZ_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_rockets_RU', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralReammo_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '6', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('MtvrSupply_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('An2_1_TK_CIV_EP1', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('V3S_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('AH1Z', '0.10', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MtvrReammo', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrRepair', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('Pickup_PK_INS', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Offroad_D', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MMT_USMC', '0.75', '20', '0.05000', 'bicycle');
INSERT INTO `object_classes` VALUES ('AH6J_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('Ural_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Fishing_Boat', '0.61', '3', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('AH64D_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi171Sh_rockets_CZ_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('KamazOpen', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Pickup_PK_TK_GUE_EP1', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Pickup_PK_GUE', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_UN_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrSalvage_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareReammoTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1151_M2_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Open_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_Special_CZ_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Skoda', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Terminal_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '5', '0.05000', 'atv');
INSERT INTO `object_classes` VALUES ('CH_47F_BAF', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UH1Y', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_SPG9_TK_INS_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('AW159_Lynx_BAF', '0.50', '3', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('AH6X_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('StashSmall', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.75', '5', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('HMMWV_Avenger', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrReammo_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_1_open', '0.59', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.50', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Salvage_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M2', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.75', '3', '0.05000', 'tractor');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_USMC', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralReammo_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('CH_47F_EP1', '0.50', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_Ins', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('StashMedium', '0', '0', '0', 'object');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_SPG9_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MtvrRepair_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Repair_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('KamazRefuel', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Hedgehog_DZ', '0', '3', '0', 'object');
INSERT INTO `object_classes` VALUES ('WarfareSalvageTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_AGS30_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UralRepair_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('tractorOld', '0.75', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('An2_2_TK_CIV_EP1', '0.75', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareSupplyTruck_RU', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Smallboat_2', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('Tractor', '0.75', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('M1030', '0.75', '8', '0.05000', 'motorcycle');
INSERT INTO `object_classes` VALUES ('UralReammo_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRepair_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_SPG9_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.75', '5', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('Ka52Black', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Ural_ZU23_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('MV22', '0.60', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('An2_TK_EP1', '0.50', '3', '0.05000', 'airplane');
INSERT INTO `object_classes` VALUES ('Kamaz', '0.65', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_UN_CDF_EP1', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('MH60S', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('Mi17_medevac_CDF', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.65', '2', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('MtvrRefuel', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Refuel_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Offroad_DSHKM_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_Reammo_TK_GUE_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UAZ_INS', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Mi17_CDF', '0.10', '1', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('UAZ_MG_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('BAF_Apache_AH1_D', '0.10', '2', '0.05000', 'helicopter');
INSERT INTO `object_classes` VALUES ('HMMWV_TOW', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.59', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.59', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('PBX', '0.75', '5', '0.05000', 'boat');
INSERT INTO `object_classes` VALUES ('LandRover_MG_TK_INS_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.65', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('HMMWV_Ambulance_CZ_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('WarfareRepairTruck_Gue', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_Armored', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('HMMWV_M1035_DES_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('UralRefuel_CDF', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.65', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.75', '3', '0.05000', 'car');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1', '0.60', '3', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_TK_CIV_EP1', '0.75', '5', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.65', '3', '0.05000', 'bus');
INSERT INTO `object_classes` VALUES ('MtvrRefuel_DES_EP1', '0.60', '2', '0.05000', 'truck');
INSERT INTO `object_classes` VALUES ('SUV_PMC_BAF', '0.75', '5', '0.05000', 'truck');

-- ----------------------------
-- Table structure for object_data
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` varchar(500) NOT NULL DEFAULT '[]',
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  UNIQUE KEY `CheckUID` (`ObjectUID`,`Instance`) USING BTREE,
  KEY `ObjectUID` (`ObjectUID`) USING BTREE,
  KEY `Instance` (`Damage`,`Instance`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10243 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_data
-- ----------------------------

-- ----------------------------
-- Table structure for object_spawns_types
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns_types`;
CREATE TABLE `object_spawns_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spawn` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawns_types
-- ----------------------------
INSERT INTO `object_spawns_types` VALUES ('1', 'air', 'airplane');
INSERT INTO `object_spawns_types` VALUES ('2', 'heli', 'helicopter');
INSERT INTO `object_spawns_types` VALUES ('3', 'land', 'atv');
INSERT INTO `object_spawns_types` VALUES ('4', 'land', 'tank');
INSERT INTO `object_spawns_types` VALUES ('5', 'land', 'car');
INSERT INTO `object_spawns_types` VALUES ('6', 'water', 'boat');
INSERT INTO `object_spawns_types` VALUES ('7', 'land', 'bus');
INSERT INTO `object_spawns_types` VALUES ('8', 'land', 'motorcycle');
INSERT INTO `object_spawns_types` VALUES ('9', 'land', 'bicycle');

-- ----------------------------
-- Table structure for object_spawn_locations
-- ----------------------------
DROP TABLE IF EXISTS `object_spawn_locations`;
CREATE TABLE `object_spawn_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worldspace` varchar(255) DEFAULT NULL,
  `spawn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawn_locations
-- ----------------------------
INSERT INTO `object_spawn_locations` VALUES ('1', '[179,[16641.314,18245.367,0.068502426]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('2', '[297,[14416.242,13946.687,-0.041317463]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('3', '[41,[14554.765,14152.262,0.34490299]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('4', '[157,[8787.0732,15747.566,1.0695839]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('5', '[6,[6513.9268,9699.5264,-0.29185581]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('6', '[257,[14460.332,16833.764,5.7220459e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('7', '[223,[14673.721,16587.174,1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('8', '[349,[14339.723,17168.854,-1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('9', '[298,[15762.344,13258.503,0.37532806]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('10', '[308,[15857.736,13289.368,-0.029737473]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('11', '[56,[13989.696,14231.648,-0.13696194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('12', '[282,[14128.93,13985.526,0.16818571]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('13', '[313,[10665.858,15837.456,-0.27557755]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('14', '[133,[10619.911,16178.079,-0.19310522]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('15', '[315,[10123.216,16299.46,0.05255127]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('16', '[46,[9035.0342,16130.201,0.27921677]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('17', '[330,[6712.6548,16965.586,0.16895771]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('18', '[74,[5637.9873,15362.442,-0.11415863]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('19', '[164,[6040.8901,13552.661,0.11583328]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('20', '[291,[6048.021,10636.678,0.44082278]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('21', '[245,[6346.312,9855.8135,0.21545219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('22', '[187,[6123.7778,10615.569,0.0057630539]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('23', '[166,[10698.374,16097.903,0.34481049]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('24', '[114,[8744.7773,16350.059,0.048419796]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('25', '[183,[5788.8628,15372.238,0.014533997]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('26', '[226,[5884.5156,13636.438,-0.15112305]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('27', '[212,[11341.55,8676.0869,-0.13813782]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('28', '[232,[15438.357,13233.176,-0.14840031]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('29', '[310,[15622.641,13203.957,-0.23830509]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('30', '[254,[14375.589,13890.831,-0.0057909489]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('31', '[88,[14920.194,14159.303,-0.07971859]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('32', '[86,[12028.973,15380.481,-0.016323155]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('33', '[113,[16630.197,18270.813,0.009223938]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('34', '[286,[17065.734,13843.54,-0.0034102711]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('35', '[230,[14574.313,13753.917,0.7173152]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('36', '[194,[14600.395,14082.441,0.32738304]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('37', '[313,[8780.2695,15751.578,0.73342705]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('38', '[219,[6380.8604,9612.5078,-0.039051056]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('39', '[88,[7880.2251,9132.3262,0.98060036]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('40', '[315,[10753.189,15784.874,-0.27317047]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('41', '[86,[8901.7041,16382.906,-0.52287233]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('42', '[309,[5866.5811,15399.4,-0.086795166]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('43', '[261,[5584.7217,12009.304,-0.13244633]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('44', '[109,[11051.388,8543.5684,0.098106384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('45', '[347,[15348.821,13439.043,0.57016087]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('46', '[329,[15727.822,13295.508,-0.08376091]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('47', '[351,[14459.812,13867.48,0.088867188]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('48', '[97,[14970.779,14077.785,0.53214264]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('49', '[53,[8843.8379,16233.506,-0.34364596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('50', '[80,[5843.166,15274.034,-0.16550805]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('51', '[322,[5834.4082,11701.255,-0.04875946]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('52', '[297,[6841.0957,9678.5498,-0.051107734]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('53', '[199,[11162.582,8597.5811,0.073539734]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('54', '[7,[14375.737,13753.993,0.056969643]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('55', '[256,[14548.383,14118.009,0.38021564]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('56', '[293,[12183.381,15405.473,0.089565277]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('57', '[30,[10258.299,18334.043,0.0013871577]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('58', '[135,[9184.7061,17283.559,-0.093870297]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('59', '[202,[8621.0635,14314.621,-0.058616556]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('60', '[268,[10444.26,14252.066,-0.18938921]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('61', '[134,[12568.371,13496.952,-0.016068187]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('62', '[162,[4474.6138,8103.7905,-0.12552194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('63', '[149,[11150.629,7801.4014,-2.9103241]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('64', '[152,[16610.771,9663.1816,-2.7253418]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('65', '[319,[14232.718,12725.76,0.17801024]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('66', '[352,[12761.965,11701.684,-3.2845917]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('67', '[40,[11149.501,7807.5029,-2.1053925]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('68', '[71,[16609.645,9669.2832,-2.1824951]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('69', '[69,[14293.855,12605.584,-0.10924029]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('70', '[34,[15445.79,13136.636,0.69085789]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('71', '[47,[15845.489,13254.738,-0.098415375]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('72', '[129,[13977.115,14155.497,-0.29106522]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('73', '[9,[14224.196,14152.162,0.44491911]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('74', '[327,[10781.746,15392.802,-0.16520657]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('75', '[286,[10668.965,16176.471,-0.24919176]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('76', '[247,[10083.138,16551.754,-0.091879971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('77', '[316,[9038.3027,16129.516,0.41601181]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('78', '[241,[6477.1143,16515.473,0.40218258]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('79', '[8,[5875.0107,15080.307,-0.2639389]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('80', '[118,[6139.6157,13697.097,0.042643815]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('81', '[167,[6067.5684,10551.878,0.097700402]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('82', '[0,[6455.4966,10292.691,-0.079717219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('83', '[313,[6273.5771,10628.323,-0.0016698837]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('84', '[98,[10923.082,15866.077,-0.13291931]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('85', '[288,[8890.7754,16425.59,-0.31359971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('86', '[255,[5821.7671,11729.394,-0.33867073]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('87', '[291,[6710.3745,9598.3682,-0.40943384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('88', '[269,[11416.186,8797.1885,0.096565247]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('89', '[152,[14460.49,14099.189,0.11409593]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('90', '[260,[14605.526,13939.602,0.6713171]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('91', '[182,[11638.491,14873.074,0.36336327]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('92', '[104,[9987.4922,18050.98,0.45072174]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('93', '[62,[9136.3389,17299.031,-0.14133488]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('94', '[86,[8604.4404,14280.05,0.17060436]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('95', '[21,[10316.385,14057.329,0.43193054]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('96', '[266,[12518.292,13561.69,0.52007294]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('97', '[66,[7454.3496,6679.998,-0.21913147]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('98', '[332,[3631.1431,9860.251,-0.22136688]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('99', '[307,[4481.4434,8097.375,-0.11422729]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('100', '[117,[10084.686,7548.8384,0.03282547]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('101', '[193,[16579.092,9691.9111,0.047290139]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('102', '[86,[14279.027,12672.748,-0.10100651]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('103', '[241,[12753.756,11685.046,-0.37569386]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('104', '[179,[11152.78,7811.3545,-2.6618195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('105', '[350,[16612.922,9673.1348,-2.1203003]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('106', '[157,[14317.825,12508.881,-2.0933142]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('107', '[261,[15390.828,13120.053]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('108', '[293,[15810.675,13386.433]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('109', '[42,[14243.334,14057.41]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('110', '[89,[14112.446,14114.838,4.7683716e-007]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('111', '[237,[10056.372,16314.351,0.37594041]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('112', '[149,[9032.1787,16131.344,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('113', '[240,[5397.2026,16072.269,-3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('114', '[19,[5890.4048,13474.105,3.4332275e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('115', '[162,[6247.2832,10778.26]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('116', '[162,[6386.1484,10170.973,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('117', '[73,[6404.9409,10557.507]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('118', '[104,[15175.568,15965.272,4.196167e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('119', '[96,[10873.901,15766.048,-0.030750275]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('120', '[215,[8836.1211,16336.259,-1.4623375]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('121', '[321,[5889.1509,15481.597,-0.41191825]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('122', '[152,[5891.1396,13708.631,0.97233862]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('123', '[87,[5872.1499,11685.472,-0.13291398]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('124', '[76,[11041.728,8626.624,0.10169983]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('125', '[104,[15546.052,13179.851,0.60366821]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('126', '[60,[14351.394,13743.921,0.10310078]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('127', '[170,[14854.902,14039.073,0.7709074]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('128', '[172,[12015.701,15281.786,0.28789032]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('129', '[236,[10863.475,15715.426,-0.33679962]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('130', '[95,[6888.7314,9608.6816,-1.7401905]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('131', '[276,[14257.823,13806.57,-0.0071401596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('132', '[40,[14919.69,14241.767,0.50658512]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('133', '[116,[10176.125,18333.334,0.0044983537]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('134', '[123,[9184.9814,17533.213,-0.079093941]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('135', '[178,[8535.7012,14288.537,0.022169547]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('136', '[340,[10582.012,14143.74,-0.06512899]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('137', '[346,[12514.671,13570.565,0.13918956]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('138', '[222,[9932.6992,7697.624,-0.18499614]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('139', '[320,[10321.648,7254.0654,0.020488739]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('140', '[184,[11147.278,7809.5439,-1.6029816]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('141', '[128,[16607.422,9671.3242,-1.8335876]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('142', '[315,[15923.914,10390.978,0.065592304]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('143', '[36,[14278.757,12683.308,-0.055742219]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('144', '[330,[12758.614,11709.826,-1.3274841]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('145', '[344,[14037.424,14212.402]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('146', '[292,[8865.5996,16198.282,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('147', '[290,[13564.722,19701.713,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('148', '[213,[18366.305,17072.34,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('149', '[216,[16609.045,18268.834]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('150', '[84,[17145.238,13867.454]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('151', '[219,[16202.461,15507.758]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('152', '[129,[14592.128,13803.277,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('153', '[64,[14411.316,14253.356]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('154', '[281,[8787.0625,15752.43,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('155', '[139,[6548.7754,16602.83,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('156', '[56,[6429.1465,9563.9521]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('157', '[305,[7850.0107,9219.124]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('158', '[28,[10205.222,18321.516,0.87607116]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('159', '[30,[9148.2383,17253.543,0.1132509]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('160', '[222,[8621.5518,14330.931,0.19091861]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('161', '[179,[10111.047,13995.624,0.12921555]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('162', '[223,[12593.712,13860.452,-0.044941075]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('163', '[198,[9911.7041,7683.4077,-0.056767486]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('164', '[140,[7341.543,6852.8081,0.0047355974]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('165', '[16,[4476.3115,8122.9238,0.013352858]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('166', '[181,[10293.979,7115.5566,0.0067443848]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('167', '[222,[11146.38,7803.6533,-2.1533203]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('168', '[126,[16606.523,9665.4336,-2.1264648]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('169', '[151,[15930.034,10392.619,-0.029946132]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('170', '[233,[14311.425,12501.18,-0.41638756]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('171', '[6,[12757.716,11703.936,-2.6741104]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('172', '[324,[10797.101,15816.361,-0.21506119]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('173', '[38,[8838.918,16340.856,-1.3884468]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('174', '[290,[5859.3853,15408.245,0.06036796]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('175', '[170,[6003.6353,13576.399,-0.031255648]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('176', '[357,[5864.0527,11647.133,-1.1481094]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('177', '[325,[6891.2275,9607.3281,-1.916276]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('178', '[54,[11324.433,8758.5303,0.067847334]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('179', '[159,[15400.271,13446,0.058018561]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('180', '[278,[15560.346,13225.937,1.8889103]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('181', '[8,[14342.371,13839.202,0.020810366]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('182', '[331,[14985.43,14165.211,0.67830658]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('183', '[218,[11978.928,15321.878,-0.058079999]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('184', '[79,[10233.178,18332.525,-0.0096525317]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('185', '[132,[9109.3213,17273.176,-0.12450205]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('186', '[316,[8830.8662,14354.831,-0.053121448]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('187', '[319,[10586.344,14072.07,0.046318348]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('188', '[267,[12562.927,13812.304,-0.026442744]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('189', '[2,[9960.9941,7504.6602,-0.02241189]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('190', '[195,[6803.4961,5382.9414,-0.029525757]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('191', '[180,[7481.7256,7235.0239,-0.069056526]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('192', '[248,[4476.165,8109.5127,-0.24843407]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('193', '[256,[10419.466,7407.7144,0.03213501]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('194', '[58,[13062.431,6871.6479,-0.032897949]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('195', '[301,[16601.969,9672.8145,-1.188324]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('196', '[95,[15747.839,9880.5098,0.078106336]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('197', '[24,[14287.704,12615.442,-0.10717487]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('198', '[143,[12857.922,11733.393,0.1046195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('199', '[169,[16857.227,5164.6616,-0.00017356873]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('200', '[181,[18442.873,17465.936,-0.18510628]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('201', '[2,[1325.543,3069.8281,-0.16130616]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('202', '[179,[16823.016,5164.6733,-0.24224854]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('203', '[159,[14512.621,13753.569,0.38204718]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('204', '[56,[14436.111,14061.548,0.48373413]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('205', '[34,[8783.4561,15747.725,1.3230991]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('206', '[134,[6357.2739,9707.5,-0.25344753]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('207', '[104,[16884.389,18383.178]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('208', '[204,[18330.074,17116.488]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('209', '[329,[16931.182,5046.5596,0.11086837]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('210', '[145,[16597.65,18228.482,0.36522865]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('211', '[180,[16960.059,5178.604,-0.12886047]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('212', '[102,[15340.347,13328.549,0.17743778]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('213', '[8,[14126.225,13762.564,-0.055890083]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('214', '[246,[14344.513,14167.41,-0.23482895]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('215', '[211,[10804.409,15821.528,-0.40860748]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('216', '[85,[8787.584,16378.222,-0.012916565]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('217', '[270,[5772.0562,15254.425,-0.12950897]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('218', '[256,[5652.0742,11701.943,-0.23953035]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('219', '[319,[7007.4121,9644.4229,-0.447855]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('220', '[328,[10986.962,8617.0947,0.14422607]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('221', '[219,[15724.873,13002.475,0.016004773]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('222', '[77,[14292.008,13784.789,-0.018298149]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('223', '[333,[14750.954,14044.857,0.0054101944]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('224', '[141,[11963.963,15311.409,0.16621971]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('225', '[49,[8987.3447,16420.063]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('226', '[6,[5719.688,15333.236,3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('227', '[63,[5995.3511,13689.834,-3.8146973e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('228', '[157,[5795.2241,11693.686]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('229', '[274,[11465.989,8825.0703]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('230', '[228,[15301.432,13345.984]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('231', '[218,[15588.535,13143.864]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('232', '[181,[14497.405,13748.195,-4.7683716e-007]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('233', '[118,[14873.657,14164.392]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('234', '[131,[12118.12,15336.363]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('235', '[45,[8847.4307,16388.428,-0.54956627]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('236', '[60,[5783.4854,15288.559,-0.17341232]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('237', '[137,[7869.5356,9217.9355,-0.33691025]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('238', '[189,[11620.387,8899.4688,0.013755798]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('239', '[44,[15311.908,13377.369,0.072171211]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('240', '[52,[15701.107,12992.767,-0.26783562]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('241', '[215,[14209.455,13859.497,0.043473721]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('242', '[109,[14788.007,13781.773,0.24672413]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('243', '[41,[12010.156,15195.486,-0.06098599]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('244', '[15,[15479.278,13196.94,-0.081950933]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('245', '[177,[15787.595,13247.768,-0.26617548]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('246', '[307,[14180.613,13976.24,-0.30108833]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('247', '[135,[14005.508,14149.485,1.2357154]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('248', '[36,[10707.754,15344.074,-0.16409683]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('249', '[179,[10589.858,16242.658,0.64194894]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('250', '[143,[10233.349,16564.66,0.027361253]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('251', '[263,[9036.1846,16137.969,-0.87280083]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('252', '[21,[5815.4551,15266.173,-0.38064194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('253', '[169,[6116.8262,13556.924,0.50834274]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('254', '[19,[6149.8091,10614.883,0.4916535]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('255', '[188,[6109.2935,10260.923,0.0051426888]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('256', '[116,[6431.2456,10891.89,-0.14227486]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('257', '[326,[15109.976,16452.41,-1.9073486e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('258', '[72,[10337.966,17704.709,0.078620568]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('259', '[207,[9221.707,17702.715,0.098889582]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('260', '[341,[8362.542,14548.259,0.44694319]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('261', '[241,[10580.141,14043.175,0.5129773]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('262', '[150,[12588.282,13591.627,-0.25419426]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('263', '[150,[10045.218,7629.3237,0.061309315]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('264', '[108,[10304.039,7092.4048,0.038532257]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('265', '[179,[16625.232,9711.6592,-0.37637705]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('266', '[162,[15692.822,10324.34,0.16298492]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('267', '[297,[14387.361,13013.268,-0.11317539]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('268', '[341,[12727.424,11809.682,-0.59694785]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('269', '[75,[16643.07,18274.84,-0.021310806]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('270', '[84,[17098.119,13849.832,-0.044782106]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('271', '[26,[16286.962,15404.418,0.26465988]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('272', '[7,[14581.016,13837.694,0.30701256]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('273', '[61,[14700.763,14054.791,-0.012958527]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('274', '[228,[8783.6533,15754.443,-0.18962288]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('275', '[31,[6518.3936,16613.938,-0.039086342]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('276', '[242,[6518.978,9608.2285,0.021951675]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('277', '[1,[7893.9429,9101.4326,0.34924698]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('278', '[168,[10056.433,18570.559,-0.0087738037]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('279', '[321,[9019.7021,17214.926,-0.010534286]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('280', '[119,[7391.9097,14237.989,-0.41635132]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('281', '[130,[8675.9121,14462.824,0.44496155]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('282', '[98,[10299.823,13843.912,0.44814301]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('283', '[133,[12384.005,13562.851,0.032843329]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('284', '[350,[9974.7256,7479.1514,-0.20792389]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('285', '[216,[7378.9082,6885.4077,-0.032180786]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('286', '[87,[10206.286,6878.6763,0.0043983459]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('287', '[125,[13057.195,6865.0415,-0.0017929077]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('288', '[126,[16650.037,9680.335,-0.025995737]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('289', '[358,[15613.325,10143.203,-0.0067596436]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('290', '[233,[14543.472,12580.558,-0.071885109]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('291', '[134,[12752.907,11771.123,-0.072349548]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('292', '[300,[10073.552,18249.021]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('293', '[291,[9146.832,17277.48,-0.22695178]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('294', '[338,[8559.7598,14296.831]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('295', '[84,[10548.104,14004.294,3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('296', '[235,[12663.256,13846.225,-0.055094268]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('297', '[315,[9902.9639,7719.8765]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('298', '[301,[7483.7358,6649.9287,1.9073486e-005]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('299', '[81,[4480.5459,8121.6299]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('300', '[302,[10205.278,6960.6279,-3.8146973e-006]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('301', '[220,[11161.952,7847.9009]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('302', '[248,[16629.629,9686.2881]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('303', '[3,[15934.4,10377.512,0]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('304', '[166,[14394.814,12432.986]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('305', '[77,[12678.394,11654.823]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('306', '[179,[10243.161,18317.027,-0.093670703]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('307', '[289,[9106.8047,17217.389,-0.0072902995]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('308', '[267,[8801.126,14341.049,0.039859537]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('309', '[156,[10450.567,14092.313,0.0099034049]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('310', '[63,[12572.181,13844.104,0.067039847]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('311', '[175,[9985.999,7518.7197,-1.4961853]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('312', '[126,[10327.636,7247.3984,-0.016540527]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('313', '[130,[11153.551,7805.7998,-2.6903687]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('314', '[63,[13089.637,6916.4639,-1.6534348]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('315', '[165,[16613.693,9667.5801,-2.6562805]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('316', '[153,[15921.183,10391.513,0.11331525]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('317', '[222,[14318.596,12503.326,-2.0157614]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('318', '[310,[12764.887,11706.082,-2.4377213]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('319', '[68,[10185.248,18337.227,-0.19313033]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('320', '[211,[12525.771,13559.673,0.021727379]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('321', '[245,[7471.3154,7214.541,-0.22439194]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('322', '[41,[16617.414,9692.625,0.10859197]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('323', '[126,[15906.309,10392.449,0.029843135]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('324', '[139,[14382.646,12476.114,-0.063508034]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('325', '[98,[12824.199,11814.879,-0.0028726123]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('326', '[211,[10111.374,18287.914,-0.17154503]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('327', '[65,[10124.965,14003.032,0.073008731]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('328', '[357,[12594.524,13854.655,-0.065336309]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('329', '[316,[9969.4746,7491.2178,-0.14460368]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('330', '[106,[7258.1763,6579.2041,-0.1415596]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('331', '[346,[16616.555,9670.1924,-0.14235115]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('332', '[33,[14148.795,12688.249,-0.17750263]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('333', '[248,[12943.742,11590.15,-0.49687195]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('334', '[311,[10147.066,7395.7979,0.025886536]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('335', '[180,[14311.065,12513.548,-0.12010002]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('336', '[37,[12752.17,11702.803,-2.7215271]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('337', '[188,[16666.535,18258.182,0.30707741]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('338', '[159,[10390.571,17886.035,-0.13711929]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('339', '[102,[7348.856,14197.724,-0.085718736]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('340', '[194,[7494.9609,7236.0957,-0.013462067]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('341', '[82,[14200.882,12645.263,-0.070645332]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('342', '[193,[12726.009,11682.42,0.12322235]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('343', '[284,[9986.2217,18069.139,-0.033742249]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('344', '[4,[11150.028,7816.458,-2.4303894]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('345', '[48,[14275.445,12730.209,-0.39606977]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('346', '[280,[12982.338,11700.104,-0.25634113]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('347', '[195,[10805.371,15734.297,-0.43709946]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('348', '[48,[9021.7363,16563.748,-0.10378934]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('349', '[119,[5955.8071,15390.888,0.1553652]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('350', '[342,[15520.12,13177.97,1.4741507]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('351', '[307,[14570.348,13837.392,-0.010950089]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('352', '[129,[14870.256,14432.666,0.35590363]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('353', '[210,[11960.041,15223.785,0.25103569]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('354', '[139,[8829.9414,16423.84,-0.18867683]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('355', '[238,[5843.5518,15706.942,-0.31457901]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('356', '[122,[5778.6987,14089.674,0.25874329]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('357', '[34,[11107.048,8992.2373,0.15635681]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('358', '[38,[15804.833,13304.503,0.21482792]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('359', '[168,[15621.226,13261.992,0.0034589835]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('360', '[49,[14284.261,13949.108,-0.010529518]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('361', '[29,[14710.757,14108.477,0.1234026]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('362', '[320,[12082.568,15219.214,0.20069313]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('363', '[213,[8816.1055,16380.899,-0.35792351]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('364', '[40,[5764.1733,15211.694,-0.1111384]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('365', '[216,[5679.562,11666.237,-0.19072583]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('366', '[166,[11234.154,8661.7354,0.16228485]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('367', '[43,[15677.05,13080.488,-0.098333262]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('368', '[59,[14787.329,13768.584,-0.014340878]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('369', '[242,[14819.951,14172.028,0.23300076]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('370', '[298,[12253.889,15479.261,0.20911407]]', 'land');
INSERT INTO `object_spawn_locations` VALUES ('371', '[157,[14631.369,14394.837,-0.16102248]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('372', '[25,[12003.231,15683.734,0.011208534]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('373', '[23,[10673.596,16286.279,-0.055622101]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('374', '[181,[8932.3027,17542.605,-0.0022696853]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('375', '[285,[8087.752,17346.396,0.075778306]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('376', '[19,[8277.125,16235.389,0.39055371]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('377', '[167,[7492.1855,16356.206,0.6910162]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('378', '[181,[6819.2422,16971.518,0.57606232]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('379', '[92,[5325.8599,16184.229,0.6459049]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('380', '[7,[3890.8613,14601.687,0.57088029]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('381', '[250,[5169.9502,11447.054,0.56925422]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('382', '[18,[6139.7446,10801.119,0.51003939]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('383', '[316,[15851.777,13095.714,0.54047644]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('384', '[109,[4572.4653,12594.047,0.54803491]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('385', '[221,[16862.371,5288.4971,0.58236504]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('386', '[215,[14383.276,14464.678,-0.052592158]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('387', '[264,[12048.788,15650.743,0.0019052029]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('388', '[119,[10772.534,16231.78,-0.1333223]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('389', '[179,[9822.1152,18057.426,-0.018188477]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('390', '[120,[8845.9053,17325.678,-0.0020009279]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('391', '[51,[8079.3613,17338.496,-0.068151176]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('392', '[98,[8268.7344,16227.488,0.24613792]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('393', '[309,[7483.7949,16348.306,0.3771615]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('394', '[256,[6810.8516,16963.617,0.32639301]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('395', '[135,[5317.4692,16176.329,0.28533399]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('396', '[300,[3882.4707,14593.786,0.22469437]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('397', '[26,[5161.5596,11439.153,0.25662684]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('398', '[234,[6131.354,10793.219,0.089182556]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('399', '[177,[15843.387,13087.813,0.098038793]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('400', '[78,[4564.0747,12586.146,0.27501512]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('401', '[73,[16841.949,5267.1299,0.23405427]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('402', '[353,[14532.572,14386.419,-0.092286766]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('403', '[72,[12408.254,15640.146,0.015512228]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('404', '[23,[10716.553,16287.638,-0.10364038]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('405', '[178,[8937.8877,17629.115,0.028858364]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('406', '[180,[8073.5815,17330.633,-0.15450078]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('407', '[91,[8262.9541,16219.625,-0.018260479]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('408', '[108,[7478.0151,16340.442,-0.007222414]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('409', '[244,[6805.0718,16955.754,0.019721746]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('410', '[324,[5311.6895,16168.466,-0.050078332]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('411', '[8,[3876.6909,14585.923,-0.033810794]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('412', '[352,[5155.7798,11431.29,-0.0046123266]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('413', '[55,[6125.5742,10785.355,-0.080679357]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('414', '[248,[15837.606,13079.95,0]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('415', '[80,[4558.2949,12578.283,0]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('416', '[272,[16840.873,5302.0298]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('417', '[287,[14586.908,14405.509,-0.083498478]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('418', '[81,[12379.22,15682.278,0.0026472807]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('419', '[342,[10719.649,16250.785,-0.19571131]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('420', '[341,[8986.7109,17627.465,-0.13789767]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('421', '[348,[8094.876,17328.656,-0.19774395]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('422', '[29,[14416.9,14447.135,0.078388274]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('423', '[141,[12441.209,15523.438,0.19060564]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('424', '[118,[10615.922,16364.14,0.052655339]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('425', '[314,[9817.4375,18057,0.15692854]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('426', '[12,[9012.8574,17784.705,0.18322641]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('427', '[337,[8082.4741,17328.141,0.07034415]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('428', '[82,[8271.8467,16217.133,0.12980908]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('429', '[152,[7486.9077,16337.95,0.3260349]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('430', '[226,[6813.9644,16953.262,0.22995949]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('431', '[11,[5320.582,16165.974,0.10834301]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('432', '[46,[3885.5835,14583.431,0.21652299]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('433', '[251,[5164.6724,11428.798,0.4670068]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('434', '[105,[6134.4668,10782.863,0.33198076]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('435', '[281,[15846.499,13077.458,0.15925467]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('436', '[149,[4567.1875,12575.791,0.32794917]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('437', '[252,[16872.869,5269.4014,0.43635881]]', 'water');
INSERT INTO `object_spawn_locations` VALUES ('438', '[0,[16542.316,18457.746,29.458904]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('439', '[0,[16503.443,18428.953,36.666317]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('440', '[0,[16547.834,18411.918,33.361797]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('441', '[0,[16606.139,18419.836,27.032728]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('442', '[0,[16578.787,18372.088,34.814518]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('443', '[0,[16531.758,18361.291,39.442078]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('444', '[0,[16642.131,18346.414,31.90307]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('445', '[0,[16656.768,18387.205,27.181751]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('446', '[0,[16615.256,18322.66,36.390648]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('447', '[0,[16690.598,18327.699,32.032215]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('448', '[0,[16395.467,18441.025,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('449', '[0,[16293.805,18503.688,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('450', '[0,[16007.349,18861.445,77.942924]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('451', '[0,[842.66895,6771.3022,59.023827]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('452', '[0,[574.75647,6931.854,55.138458]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('453', '[0,[857.89447,7090.6074,43.72147]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('454', '[0,[1073.9305,6669.9912,45.655293]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('455', '[0,[1157.3988,6327.9346,51.489563]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('456', '[0,[18406.941,17036.012,23.447294]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('457', '[0,[18662.713,17171.891,28.21191]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('458', '[0,[18736.934,17389.982,27.153971]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('459', '[0,[18677.557,17609.217,28.930536]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('460', '[0,[18164.871,17286.076,31.864689]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('461', '[0,[16445.525,18468.563,40.386597]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('462', '[0,[16400.887,18505.896,40.163982]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('463', '[0,[16538.104,18245.467,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('464', '[0,[16571.697,18244.266,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('465', '[0,[16577.695,18280.258,40.083252]]', 'heli');
INSERT INTO `object_spawn_locations` VALUES ('466', '[76,[3968.0347,4487.7549,71.581947]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('467', '[76,[4049.3162,4503.2847,71.593369]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('468', '[76,[4117.5923,4514.355,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('469', '[76,[4185.8682,4521.7368,71.597321]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('470', '[76,[4237.5371,4530.9644,71.576218]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('471', '[76,[4305.8135,4545.7261,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('472', '[76,[4355.6362,4554.9521,71.589111]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('473', '[76,[4434.9844,4569.7153,71.601753]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('474', '[76,[4499.5698,4580.7856,71.611504]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('475', '[76,[4571.5366,4599.2393,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('476', '[76,[4641.6582,4612.1567,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('477', '[76,[4741.3042,4625.0742,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('478', '[76,[4811.4258,4643.5278,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('479', '[76,[4876.0112,4652.7534,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('480', '[76,[4933.2158,4660.1343,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('481', '[76,[4999.6465,4669.3613,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('482', '[76,[5069.7681,4678.5874,71.614212]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('483', '[76,[5126.9722,4687.8149,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('484', '[76,[5182.332,4698.8853,71.61451]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('485', '[76,[4658.7017,4809.062,71.656944]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('486', '[253,[4777.1401,4830.9946,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('487', '[76,[4859.2324,4844.1548,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('488', '[253,[5005.8691,4869.8457,71.656952]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('489', '[50,[18156.477,2018.7715,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('490', '[50,[18186.119,2041.2263,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('491', '[50,[18219.35,2073.5627,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('492', '[50,[18254.381,2113.0842,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('493', '[50,[18280.43,2135.5391,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('494', '[50,[18301.088,2175.9578,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('495', '[50,[18340.607,2202.9048,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('496', '[50,[18363.064,2237.0356,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('497', '[50,[18384.621,2270.2693,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('498', '[50,[18408.873,2296.3167,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('499', '[50,[18435.818,2332.2456,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('500', '[50,[18472.646,2369.9714,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('501', '[50,[18503.186,2397.8145,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('502', '[50,[18523.842,2426.5583,134.6132]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('503', '[136,[18174.189,2129.917,134.84067]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('504', '[136,[18227.818,2195.675,134.69392]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('505', '[136,[18310.178,2292.7173,134.69392]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('506', '[136,[14399.187,17096.348,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('507', '[136,[14436.521,17056.438,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('508', '[136,[14467.42,17019.102,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('509', '[136,[14507.331,16974.041,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('510', '[136,[14548.527,16934.133,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('511', '[136,[14584.576,16886.498,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('512', '[136,[14629.636,16833.713,16.41144]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('513', '[136,[14672.12,16786.078,16.408302]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('514', '[136,[14634.42,16782.666,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('515', '[136,[14719.756,16734.582,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('516', '[136,[14764.815,16685.658,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('517', '[136,[14798.288,16640.6,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('518', '[136,[14845.924,16590.391,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('519', '[136,[14887.121,16544.043,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('520', '[136,[14929.606,16500.271,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('521', '[136,[14966.941,16452.637,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('522', '[136,[15008.139,16403.715,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('523', '[136,[15042.898,16362.517,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('524', '[136,[15077.66,16318.744,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('525', '[136,[15117.57,16281.41,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('526', '[136,[15151.043,16236.349,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('527', '[136,[15188.379,16191.289,16.402887]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('528', '[136,[14392.257,16888.391,16.542381]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('529', '[320,[14473.394,16796.271,16.483616]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('530', '[136,[14621.025,16630.031,16.483612]]', 'air');
INSERT INTO `object_spawn_locations` VALUES ('531', '[320,[14695.453,16542.492,16.482428]]', 'air');

-- ----------------------------
-- Table structure for object_spawn_parts
-- ----------------------------
DROP TABLE IF EXISTS `object_spawn_parts`;
CREATE TABLE `object_spawn_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parts` varchar(1024) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of object_spawn_parts
-- ----------------------------
INSERT INTO `object_spawn_parts` VALUES ('1', '[[\"motor\",0.5]]', 'boat');
INSERT INTO `object_spawn_parts` VALUES ('2', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]', 'helicopter');
INSERT INTO `object_spawn_parts` VALUES ('3', '[[\"motor\",0.5],[\"elektronika\",0.5],[\"mala vrtule\",0.5],[\"velka vrtule\",0.5]]', 'airplane');
INSERT INTO `object_spawn_parts` VALUES ('4', '[]', 'bicycle');
INSERT INTO `object_spawn_parts` VALUES ('5', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]', 'motorcycle');
INSERT INTO `object_spawn_parts` VALUES ('6', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'car');
INSERT INTO `object_spawn_parts` VALUES ('8', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'truck');
INSERT INTO `object_spawn_parts` VALUES ('9', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8]]', 'atv');
INSERT INTO `object_spawn_parts` VALUES ('10', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tank');
INSERT INTO `object_spawn_parts` VALUES ('11', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'bus');
INSERT INTO `object_spawn_parts` VALUES ('12', '[[\"palivo\",0.5],[\"motor\",0.5],[\"karoserie\",0.5],[\"wheel_1_1_steering\",0.5],[\"wheel_1_2_steering\",0.5],[\"wheel_2_1_steering\",0.5],[\"wheel_2_2_steering\",0.5]]', 'tractor');

-- ----------------------------
-- Table structure for player_data
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL AUTO_INCREMENT,
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`playerID`),
  KEY `playerID` (`playerID`) USING BTREE,
  KEY `playerUID` (`playerUID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11648 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_data
-- ----------------------------


-- ----------------------------
-- Table structure for player_login
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=94424 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_login
-- ----------------------------

-- ----------------------------
-- Table structure for player_variables
-- ----------------------------
DROP TABLE IF EXISTS `player_variables`;
CREATE TABLE `player_variables` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` varchar(55) DEFAULT NULL,
  `variable_name` varchar(255) DEFAULT NULL,
  `variable_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `playerID` (`playerID`) USING BTREE,
  CONSTRAINT `playerID` FOREIGN KEY (`playerID`) REFERENCES `player_data` (`playerUID`) ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_variables
-- ----------------------------

-- ----------------------------
-- Table structure for quest
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
-- Records of squad
-- ----------------------------

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
-- Records of squad_rank
-- ----------------------------

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

-- ----------------------------
-- Records of squad_rank_name
-- ----------------------------

-- ----------------------------
-- View structure for character_survival
-- ----------------------------
DROP VIEW IF EXISTS `character_survival`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`%` SQL SECURITY DEFINER  VIEW `character_survival` AS SELECT (((SELECT SUM(duration) FROM character_dead)+(SELECT SUM(duration) FROM character_data)) DIV ((SELECT count(*) FROM character_data) +(SELECT count(*) FROM character_dead))) as survivaltime ;

-- ----------------------------
-- View structure for tents
-- ----------------------------
DROP VIEW IF EXISTS `tents`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`%` SQL SECURITY DEFINER  VIEW `tents` AS select `player_data`.`playerName` AS `playerName`,`character_data`.`CharacterID` AS `CharacterID`,`object_data`.`ObjectID` AS `ObjectID`,`object_data`.`Classname` AS `Classname` from ((`object_data` join `character_data` on((`object_data`.`CharacterID` = `character_data`.`CharacterID`))) join `player_data` on((`character_data`.`PlayerUID` = `player_data`.`playerUID`))) ;

-- ----------------------------
-- View structure for webserver_antihack_admins
-- ----------------------------
DROP VIEW IF EXISTS `webserver_antihack_admins`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`%` SQL SECURITY DEFINER  VIEW `webserver_antihack_admins` AS select `antihack_admins`.`ID` AS `ID`,`antihack_admins`.`instance` AS `instance`,`antihack_admins`.`playername` AS `playername`,`antihack_admins`.`playerID` AS `playerID`,`antihack_admins`.`adminlevel` AS `adminlevel`,`antihack_admins`.`added` AS `added` from `antihack_admins` ;

-- ----------------------------
-- View structure for webserver_antihack_bans
-- ----------------------------
DROP VIEW IF EXISTS `webserver_antihack_bans`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dayzserver`@`%` SQL SECURITY DEFINER  VIEW `webserver_antihack_bans` AS select `antihack_bans`.`ID` AS `ID`,`antihack_bans`.`playername` AS `playername`,`antihack_bans`.`playerID` AS `playerID`,`antihack_bans`.`banned` AS `banned`,`antihack_bans`.`added` AS `added` from `antihack_bans` ;

-- ----------------------------
-- Procedure structure for pCleanup
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` PROCEDURE `pCleanup`()
BEGIN

#starts outofbounds cleanup
	CALL pCleanupOOB();
	
#remove dead players from data table
	insert into character_dead
		select * from character_data
		WHERE Alive=0;	

	DELETE 
		FROM character_data 
		WHERE Alive=0;	
	
#remove vehicles with 100% damage
	DELETE
		FROM Object_DATA 
		WHERE Damage = '1';	

#remove unused vehicles older then 14 days
	DELETE
		FROM Object_DATA
		WHERE DATE(last_updated) < CURDATE() - INTERVAL 14 DAY
			AND Classname != 'dummy'
			AND Classname != 'Hedgehog_DZ'
			AND Classname != 'Wire_cat1'
			AND Classname != 'Sandbag1_DZ'
			AND Classname != 'TrapBear'
			AND Classname != 'StashSmall'
			AND Classname != 'StashMedium';

#remove tents/stash's whose owner has been dead for four days
	DELETE
		FROM Object_DATA
		USING Object_DATA, character_data
		WHERE Object_DATA.Classname = 'TentStorage' or Object_DATA.Classname = 'StashSmall' or Object_DATA.Classname = 'StashMedium'
			AND Object_DATA.CharacterID = character_data.CharacterID
			AND character_data.Alive = 0
			AND DATE(character_data.last_updated) < CURDATE() - INTERVAL 4 DAY;

#remove empty tents older than seven days
	DELETE
		FROM Object_DATA
		WHERE Classname = 'TentStorage' or Classname = 'StashSmall' or Classname = 'StashMedium'
			AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[[[],[]],[[],[]],[[],[]]]';
	
	DELETE
		FROM Object_DATA
		WHERE Classname = 'TentStorage' or Classname = 'StashSmall' or Classname = 'StashMedium'
			AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
			AND Inventory = '[]';		

#remove barbed wire older than two days
	DELETE
		FROM Object_DATA
		WHERE Classname = 'Wire_cat1'
			AND DATE(last_updated) < CURDATE() - INTERVAL 2 DAY;
			
#remove Tank Traps older than fifteen days
	DELETE
		FROM Object_DATA
		WHERE Classname = 'Hedgehog_DZ'
			AND DATE(last_updated) < CURDATE() - INTERVAL 15 DAY;

#remove Sandbags older than twenty days
	DELETE
		FROM Object_DATA
		WHERE Classname = 'Sandbag1_DZ'
			AND DATE(last_updated) < CURDATE() - INTERVAL 20 DAY;

#remove Bear Traps older than five days
	DELETE
		FROM Object_DATA
		WHERE Classname = 'TrapBear'
			AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pCleanupOOB
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` PROCEDURE `pCleanupOOB`()
BEGIN

	DECLARE intLineCount	INT DEFAULT 0;
	DECLARE intDummyCount	INT DEFAULT 0;
	DECLARE intDoLine			INT DEFAULT 0;
	DECLARE intWest				INT DEFAULT 0;
	DECLARE intNorth			INT DEFAULT 0;

	SELECT COUNT(*)
		INTO intLineCount
		FROM Object_DATA;

	SELECT COUNT(*)
		INTO intDummyCount
		FROM Object_DATA
		WHERE Classname = 'dummy';

	WHILE (intLineCount > intDummyCount) DO
	
		SET intDoLine = intLineCount - 1;

		SELECT ObjectUID, Worldspace
			INTO @rsObjectUID, @rsWorldspace
			FROM Object_DATA
			LIMIT intDoLine, 1;

		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;

		SELECT INSTR(@West, '-') INTO intWest;
		SELECT INSTR(@North, '-') INTO intNorth;

		IF (intNorth = 0) THEN
			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
		END IF;

		IF (intWest > 0 OR intNorth > 15360) THEN
			DELETE FROM Object_DATA
				WHERE ObjectUID = @rsObjectUID;
		END IF;
			
		SET intLineCount = intLineCount - 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pMain
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` PROCEDURE `pMain`(IN `i` INT)
    MODIFIES SQL DATA
BEGIN

# maximum number of INSTANCE id's USED.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT i;
#-----------------------------------------------
#maximum number of vehicles allowed !!! theoretical max. amount
#-----------------------------------------------
	DECLARE iVehSpawnMax INT DEFAULT 100;
#-----------------------------------------------	

# DECLARE iVehSpawnMin				INT DEFAULT 0;		#ToDo !!!
	DECLARE iTimeoutMax 				INT DEFAULT 2000;	#number of loops before timeout
	DECLARE iTimeout 						INT DEFAULT 0;		#internal counter for loops done; used to prevent infinite loops - DO NOT CHANGE
	DECLARE iNumVehExisting 		INT DEFAULT 0;		#internal counter for already existing vehicles - DO NOT CHANGE
	DECLARE iNumClassExisting 	INT DEFAULT 0;		#internal counter for already existing class types - DO NOT CHANGE
	DECLARE i INT DEFAULT 1; #internal counter for vehicles spawns - DO NOT CHANGE

#Starts Cleanup
	CALL pCleanup();
	
		SELECT COUNT(*) 				#retrieve the amount of already spawned vehicles...
			INTO iNumVehExisting
			FROM Object_DATA 
			WHERE Instance = sInstance
			AND Classname != '-'						#exclude dummys
			AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
			AND Classname != 'Wire_cat1'				#exclude wirecat
			AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
			AND Classname != 'TrapBear'			#exclude trap
			AND Classname != 'TentStorage';		#exclude TentStorage

		WHILE (iNumVehExisting < iVehSpawnMax) DO		#loop until maximum amount of vehicles is reached

			#select a random vehicle class
			SELECT Classname, Chance, MaxNum, Damage
				INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
				FROM object_classes ORDER BY RAND() LIMIT 1;

			#count number of same class already spawned
			SELECT COUNT(*) 
				INTO iNumClassExisting 
				FROM Object_DATA 
				WHERE Instance = sInstance
				AND Classname = @rsClassname;

			IF (iNumClassExisting < @rsMaxNum) THEN

				IF (rndspawn(@rschance) = 1) THEN
				
					INSERT INTO Object_DATA (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
						SELECT ObjectUID, sInstance, Classname, RAND(@rsDamage), '0', Worldspace, Inventory, Hitpoints, RAND(1), SYSDATE() 
							FROM object_spawns 
							WHERE Classname = @rsClassname 
								AND NOT ObjectUID IN (select objectuid from Object_DATA where instance = sInstance)
							ORDER BY RAND()
							LIMIT 0, 1;
							
					SELECT COUNT(*) 
						INTO iNumVehExisting 
						FROM Object_DATA 
						WHERE Instance = sInstance
							AND Classname != '-'						#exclude dummys
							AND Classname != 'Hedgehog_DZ'			#exclude hedgehog
							AND Classname != 'Wire_cat1'				#exclude wirecat
							AND Classname != 'Sandbag1_DZ'			#exclude Sanbag
							AND Classname != 'TrapBear'			#exclude trap
							AND Classname != 'TentStorage';		#exclude TentStorage
		
					#update number of same class already spawned
					SELECT COUNT(*) 
						INTO iNumClassExisting 
						FROM Object_DATA 
						WHERE Instance = sInstance
						AND Classname = @rsClassname;
				
				END IF;
			END IF;	
			
			SET iTimeout = iTimeout + 1; #raise timeout counter
			IF (iTimeout >= iTimeoutMax) THEN
				SET iNumVehExisting = iVehSpawnMax;
			END IF;
		END WHILE;
	SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for aliveduration
-- ----------------------------
DROP FUNCTION IF EXISTS `aliveduration`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` FUNCTION `aliveduration`(`count` int,`duration` int) RETURNS int(11)
BEGIN
DECLARE recordduration INT DEFAULT 0;
DECLARE recordcount INT DEFAULT 0;
DECLARE recordreturn INT DEFAULT 0;
SELECT count(*) INTO recordcount FROM character_data;
SELECT SUM(duration) INTO recordduration FROM character_data;
SELECT (recordduration DIV recordcount) INTO recordreturn;
return recordreturn;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rndspawn
-- ----------------------------
DROP FUNCTION IF EXISTS `rndspawn`;
DELIMITER ;;
CREATE DEFINER=`dayzserver`@`%` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

	DECLARE bspawn tinyint(1) DEFAULT 0;

	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;

	RETURN bspawn;

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `after_character_data_update`;
DELIMITER ;;
CREATE TRIGGER `after_character_data_update` AFTER UPDATE ON `character_data` FOR EACH ROW BEGIN
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
