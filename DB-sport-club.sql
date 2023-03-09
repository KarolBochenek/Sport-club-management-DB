/*
Navicat MySQL Data Transfer

Source Server         : zadania1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : konsultacje

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-09 14:10:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mecze`
-- ----------------------------
DROP TABLE IF EXISTS `mecze`;
CREATE TABLE `mecze` (
  `id_mecz` int(11) NOT NULL AUTO_INCREMENT,
  `id_sekcja` int(11) NOT NULL,
  `data` date NOT NULL DEFAULT curdate(),
  `id_przeciwnik` int(11) NOT NULL,
  `wynik_nasz` int(11) NOT NULL DEFAULT 0,
  `wynik_przeciwnik` int(11) NOT NULL DEFAULT 0,
  `rezultat` varchar(50) GENERATED ALWAYS AS (case 1 when `wynik_nasz` > `wynik_przeciwnik` then 'Wygrana' when `wynik_przeciwnik` > `wynik_nasz` then 'Przegrana' else 'Remis' end) VIRTUAL,
  PRIMARY KEY (`id_mecz`,`data`) USING BTREE,
  KEY `fk_przeciwnik` (`id_przeciwnik`) USING BTREE,
  KEY `fk_sekcja_m` (`id_sekcja`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC
 PARTITION BY RANGE (year(`data`))
(PARTITION `p_mecze_do_2017` VALUES LESS THAN (2018) ENGINE = InnoDB,
 PARTITION `p_mecze_2018` VALUES LESS THAN (2019) ENGINE = InnoDB,
 PARTITION `p_mecze_2019` VALUES LESS THAN (2020) ENGINE = InnoDB,
 PARTITION `p_mecze_2020` VALUES LESS THAN (2021) ENGINE = InnoDB,
 PARTITION `p_mecze_2021` VALUES LESS THAN (2022) ENGINE = InnoDB,
 PARTITION `p_mecze_max` VALUES LESS THAN MAXVALUE ENGINE = InnoDB);

-- ----------------------------
-- Records of mecze
-- ----------------------------
INSERT INTO `mecze` VALUES ('18', '1', '2017-05-13', '9', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('20', '1', '2017-07-05', '6', '6', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('22', '1', '2017-10-30', '8', '2', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('24', '1', '2017-12-02', '7', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('33', '1', '2017-12-23', '6', '2', '2', 'Remis');
INSERT INTO `mecze` VALUES ('40', '1', '2017-11-24', '5', '1', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('45', '1', '2017-12-12', '3', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('48', '1', '2017-03-17', '5', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('51', '1', '2017-04-15', '4', '5', '5', 'Remis');
INSERT INTO `mecze` VALUES ('57', '1', '2017-12-20', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('58', '1', '2017-04-13', '3', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('59', '1', '2017-04-29', '6', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('69', '1', '2017-03-19', '5', '5', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('86', '1', '2017-08-30', '1', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('92', '1', '2017-06-25', '1', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('103', '1', '2017-11-22', '2', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('108', '1', '2017-03-02', '5', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('110', '1', '2017-10-04', '4', '1', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('116', '1', '2017-05-14', '4', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('121', '1', '2017-03-30', '3', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('122', '1', '2017-11-26', '2', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('124', '1', '2017-04-14', '5', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('125', '1', '2017-04-28', '4', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('126', '1', '2017-05-08', '4', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('128', '1', '2017-09-18', '6', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('129', '1', '2017-01-21', '2', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('130', '1', '2017-09-11', '4', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('134', '1', '2017-05-09', '1', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('149', '1', '2017-03-16', '4', '1', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('153', '1', '2017-07-18', '2', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('155', '1', '2017-02-15', '4', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('159', '1', '2017-12-13', '5', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('162', '1', '2017-07-03', '2', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('163', '1', '2017-05-29', '5', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('179', '1', '2017-08-31', '6', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('185', '1', '2017-11-20', '6', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('187', '1', '2017-10-12', '2', '5', '5', 'Remis');
INSERT INTO `mecze` VALUES ('190', '1', '2017-04-26', '4', '3', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('194', '1', '2017-03-18', '3', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('195', '1', '2017-03-29', '3', '5', '5', 'Remis');
INSERT INTO `mecze` VALUES ('199', '1', '2017-07-06', '3', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('221', '1', '2017-09-10', '6', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('229', '1', '2017-09-30', '4', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('234', '1', '2017-02-08', '4', '6', '5', 'Wygrana');
INSERT INTO `mecze` VALUES ('236', '1', '2017-01-20', '4', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('244', '1', '2017-06-12', '5', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('248', '1', '2017-11-02', '4', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('249', '1', '2017-05-26', '3', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('251', '1', '2017-11-10', '6', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('260', '1', '2017-02-17', '6', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('261', '1', '2017-02-02', '5', '1', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('263', '1', '2017-06-27', '6', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('267', '1', '2017-05-24', '3', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('269', '1', '2017-04-08', '5', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('270', '1', '2017-05-04', '4', '5', '5', 'Remis');
INSERT INTO `mecze` VALUES ('280', '1', '2017-07-16', '4', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('282', '1', '2017-10-13', '4', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('283', '1', '2017-12-28', '6', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('16', '1', '2018-08-23', '10', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('26', '1', '2018-05-26', '2', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('27', '1', '2018-02-27', '10', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('28', '1', '2018-10-09', '10', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('29', '1', '2018-07-12', '7', '2', '2', 'Remis');
INSERT INTO `mecze` VALUES ('34', '1', '2018-12-04', '2', '6', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('36', '1', '2018-10-22', '5', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('37', '1', '2018-01-05', '5', '4', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('38', '1', '2018-02-24', '5', '6', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('43', '1', '2018-10-10', '5', '2', '2', 'Remis');
INSERT INTO `mecze` VALUES ('49', '1', '2018-07-22', '3', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('54', '1', '2018-03-17', '1', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('60', '1', '2018-12-21', '4', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('65', '1', '2018-01-27', '2', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('66', '1', '2018-06-13', '1', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('67', '1', '2018-09-01', '3', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('76', '1', '2018-09-13', '5', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('77', '1', '2018-09-12', '2', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('79', '1', '2018-03-10', '1', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('81', '1', '2018-11-05', '3', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('82', '1', '2018-09-26', '3', '5', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('87', '1', '2018-11-26', '5', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('96', '1', '2018-03-15', '5', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('104', '1', '2018-06-22', '1', '1', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('106', '1', '2018-09-24', '1', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('109', '1', '2018-02-03', '6', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('113', '1', '2018-09-07', '3', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('117', '1', '2018-08-28', '3', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('119', '1', '2018-07-21', '4', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('140', '1', '2018-03-06', '2', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('147', '1', '2018-06-27', '1', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('151', '1', '2018-08-17', '6', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('152', '1', '2018-07-02', '3', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('156', '1', '2018-07-23', '2', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('166', '1', '2018-05-16', '4', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('169', '1', '2018-04-14', '5', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('176', '1', '2018-11-06', '1', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('178', '1', '2018-10-21', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('182', '1', '2018-09-16', '3', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('184', '1', '2018-10-12', '6', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('192', '1', '2018-11-02', '2', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('193', '1', '2018-10-20', '4', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('201', '1', '2018-02-13', '4', '3', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('206', '1', '2018-02-20', '5', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('209', '1', '2018-09-04', '1', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('214', '1', '2018-09-11', '4', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('215', '1', '2018-09-30', '6', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('216', '1', '2018-07-06', '2', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('219', '1', '2018-04-26', '4', '2', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('235', '1', '2018-05-01', '5', '6', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('237', '1', '2018-09-25', '4', '6', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('239', '1', '2018-02-07', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('245', '1', '2018-10-23', '5', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('247', '1', '2018-08-10', '1', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('256', '1', '2018-08-15', '4', '6', '6', 'Remis');
INSERT INTO `mecze` VALUES ('274', '1', '2018-08-22', '1', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('281', '1', '2018-07-15', '3', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('286', '1', '2018-04-27', '1', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('289', '1', '2018-12-31', '6', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('291', '1', '2018-06-06', '5', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('292', '1', '2018-08-20', '5', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('293', '1', '2018-06-18', '4', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('295', '1', '2018-10-04', '2', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('297', '1', '2018-01-14', '1', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('21', '1', '2019-09-19', '9', '6', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('30', '1', '2019-04-17', '8', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('31', '1', '2019-01-22', '7', '4', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('41', '1', '2019-11-23', '2', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('61', '1', '2019-10-20', '3', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('62', '1', '2019-04-30', '4', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('63', '1', '2019-07-02', '2', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('72', '1', '2019-03-18', '4', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('73', '1', '2019-11-13', '2', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('83', '1', '2019-06-14', '3', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('85', '1', '2019-08-13', '4', '6', '5', 'Wygrana');
INSERT INTO `mecze` VALUES ('89', '1', '2019-05-18', '3', '6', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('95', '1', '2019-11-05', '4', '6', '6', 'Remis');
INSERT INTO `mecze` VALUES ('100', '1', '2019-11-01', '5', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('102', '1', '2019-01-15', '4', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('105', '1', '2019-07-08', '2', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('107', '1', '2019-10-11', '1', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('111', '1', '2019-05-28', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('115', '1', '2019-06-30', '1', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('120', '1', '2019-02-02', '5', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('127', '1', '2019-02-10', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('135', '1', '2019-02-11', '3', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('136', '1', '2019-02-27', '2', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('143', '1', '2019-04-03', '6', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('148', '1', '2019-06-24', '6', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('157', '1', '2019-12-17', '4', '2', '2', 'Remis');
INSERT INTO `mecze` VALUES ('168', '1', '2019-08-25', '2', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('171', '1', '2019-11-27', '1', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('172', '1', '2019-01-27', '5', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('173', '1', '2019-01-25', '2', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('174', '1', '2019-10-16', '6', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('181', '1', '2019-06-04', '6', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('183', '1', '2019-11-30', '2', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('197', '1', '2019-03-07', '4', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('203', '1', '2019-02-05', '2', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('208', '1', '2019-09-23', '2', '3', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('217', '1', '2019-12-27', '6', '6', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('222', '1', '2019-01-19', '3', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('225', '1', '2019-04-13', '3', '4', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('226', '1', '2019-12-06', '3', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('231', '1', '2019-06-17', '4', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('233', '1', '2019-12-31', '3', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('240', '1', '2019-11-26', '2', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('241', '1', '2019-08-20', '5', '5', '5', 'Remis');
INSERT INTO `mecze` VALUES ('243', '1', '2019-10-12', '6', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('246', '1', '2019-05-24', '2', '4', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('259', '1', '2019-04-28', '5', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('262', '1', '2019-08-14', '2', '6', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('264', '1', '2019-02-01', '2', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('265', '1', '2019-12-02', '4', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('266', '1', '2019-07-16', '3', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('272', '1', '2019-10-01', '2', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('284', '1', '2019-08-30', '3', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('285', '1', '2019-11-29', '1', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('288', '1', '2019-09-11', '5', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('290', '1', '2019-04-10', '3', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('4', '1', '2020-02-19', '3', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('8', '1', '2020-12-17', '8', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('9', '1', '2020-11-19', '9', '1', '0', 'Wygrana');
INSERT INTO `mecze` VALUES ('10', '1', '2020-02-19', '10', '0', '1', 'Przegrana');
INSERT INTO `mecze` VALUES ('17', '1', '2020-11-09', '6', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('19', '1', '2020-05-27', '10', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('23', '1', '2020-09-05', '10', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('39', '1', '2020-08-26', '4', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('47', '1', '2020-10-19', '5', '1', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('52', '1', '2020-01-06', '2', '5', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('53', '1', '2020-04-18', '2', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('55', '1', '2020-12-01', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('68', '1', '2020-03-20', '2', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('71', '1', '2020-03-17', '3', '5', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('91', '1', '2020-11-08', '3', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('94', '1', '2020-08-11', '1', '4', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('97', '1', '2020-05-06', '4', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('98', '1', '2020-11-30', '5', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('112', '1', '2020-03-02', '6', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('118', '1', '2020-11-11', '2', '6', '5', 'Wygrana');
INSERT INTO `mecze` VALUES ('123', '1', '2020-04-16', '6', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('132', '1', '2020-01-09', '4', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('133', '1', '2020-12-24', '2', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('139', '1', '2020-07-06', '2', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('142', '1', '2020-06-10', '5', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('144', '1', '2020-02-29', '2', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('145', '1', '2020-07-26', '1', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('158', '1', '2020-09-13', '2', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('160', '1', '2020-12-11', '4', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('165', '1', '2020-08-12', '5', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('167', '1', '2020-06-02', '2', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('175', '1', '2020-05-20', '1', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('180', '1', '2020-06-24', '3', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('188', '1', '2020-04-18', '4', '2', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('198', '1', '2020-03-23', '1', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('202', '1', '2020-01-07', '6', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('205', '1', '2020-12-04', '5', '5', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('207', '1', '2020-02-11', '6', '5', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('218', '1', '2020-08-28', '4', '1', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('220', '1', '2020-02-15', '3', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('224', '1', '2020-12-26', '2', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('228', '1', '2020-03-24', '3', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('230', '1', '2020-03-08', '2', '3', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('232', '1', '2020-07-11', '5', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('250', '1', '2020-11-27', '5', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('254', '1', '2020-07-31', '3', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('255', '1', '2020-05-19', '2', '4', '4', 'Remis');
INSERT INTO `mecze` VALUES ('258', '1', '2020-05-04', '6', '6', '5', 'Wygrana');
INSERT INTO `mecze` VALUES ('268', '1', '2020-06-08', '2', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('271', '1', '2020-07-03', '4', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('273', '1', '2020-05-17', '4', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('277', '1', '2020-05-02', '2', '3', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('278', '1', '2020-09-06', '4', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('279', '1', '2020-03-05', '4', '5', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('287', '1', '2020-07-23', '2', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('296', '1', '2020-05-18', '5', '2', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('298', '1', '2020-08-24', '4', '2', '2', 'Remis');
INSERT INTO `mecze` VALUES ('299', '1', '2020-05-23', '5', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('1', '1', '2021-05-28', '1', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('2', '2', '2021-05-04', '2', '3', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('3', '1', '2021-04-07', '4', '5', '0', 'Wygrana');
INSERT INTO `mecze` VALUES ('5', '1', '2021-02-10', '5', '0', '0', 'Remis');
INSERT INTO `mecze` VALUES ('6', '1', '2021-02-03', '6', '2', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('7', '1', '2021-01-07', '7', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('11', '1', '2021-05-20', '1', '0', '0', 'Remis');
INSERT INTO `mecze` VALUES ('12', '1', '2021-05-29', '1', '1', '1', 'Remis');
INSERT INTO `mecze` VALUES ('25', '1', '2021-04-18', '9', '1', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('42', '1', '2021-03-12', '4', '4', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('44', '1', '2021-03-02', '3', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('46', '1', '2021-02-17', '1', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('50', '1', '2021-04-12', '1', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('56', '1', '2021-02-02', '1', '6', '4', 'Wygrana');
INSERT INTO `mecze` VALUES ('64', '1', '2021-03-14', '1', '1', '2', 'Przegrana');
INSERT INTO `mecze` VALUES ('75', '1', '2021-03-23', '5', '5', '1', 'Wygrana');
INSERT INTO `mecze` VALUES ('88', '1', '2021-03-29', '4', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('93', '1', '2021-03-18', '2', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('99', '1', '2021-05-03', '3', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('137', '1', '2021-04-22', '5', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('138', '1', '2021-03-11', '5', '2', '4', 'Przegrana');
INSERT INTO `mecze` VALUES ('146', '1', '2021-03-05', '2', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('150', '1', '2021-03-06', '6', '3', '3', 'Remis');
INSERT INTO `mecze` VALUES ('154', '1', '2021-02-06', '5', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('161', '1', '2021-04-29', '3', '4', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('191', '1', '2021-02-07', '2', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('211', '1', '2021-01-11', '5', '2', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('223', '1', '2021-03-15', '3', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('227', '1', '2021-02-12', '1', '1', '3', 'Przegrana');
INSERT INTO `mecze` VALUES ('238', '1', '2021-03-17', '4', '5', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('242', '1', '2021-02-23', '2', '3', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('252', '1', '2021-04-24', '5', '2', '5', 'Przegrana');
INSERT INTO `mecze` VALUES ('257', '1', '2021-01-14', '3', '6', '3', 'Wygrana');
INSERT INTO `mecze` VALUES ('276', '1', '2021-02-08', '6', '4', '6', 'Przegrana');
INSERT INTO `mecze` VALUES ('294', '1', '2021-03-27', '2', '4', '2', 'Wygrana');
INSERT INTO `mecze` VALUES ('301', '1', '2021-06-18', '3', '2', '1', 'Wygrana');

-- ----------------------------
-- Table structure for `osiagniecia_sekcje`
-- ----------------------------
DROP TABLE IF EXISTS `osiagniecia_sekcje`;
CREATE TABLE `osiagniecia_sekcje` (
  `id_osiagniecie` int(11) NOT NULL AUTO_INCREMENT,
  `id_sekcja` int(11) NOT NULL,
  `data` date NOT NULL DEFAULT curdate(),
  `nazwa` varchar(255) NOT NULL DEFAULT 'Trofeum',
  `id_trener` int(11) NOT NULL,
  PRIMARY KEY (`id_osiagniecie`) USING BTREE,
  KEY `fk_sekcja_o` (`id_sekcja`) USING BTREE,
  KEY `fk_trener_o` (`id_trener`) USING BTREE,
  CONSTRAINT `osiagniecia_sekcje_ibfk_1` FOREIGN KEY (`id_sekcja`) REFERENCES `sekcje` (`id_sekcja`) ON DELETE CASCADE,
  CONSTRAINT `osiagniecia_sekcje_ibfk_2` FOREIGN KEY (`id_trener`) REFERENCES `trenerzy` (`id_trener`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of osiagniecia_sekcje
-- ----------------------------
INSERT INTO `osiagniecia_sekcje` VALUES ('1', '1', '2020-07-09', 'MISTRZOSTWO POLSKI', '1');
INSERT INTO `osiagniecia_sekcje` VALUES ('2', '1', '2018-07-12', 'LIGA MISTRZOW', '1');
INSERT INTO `osiagniecia_sekcje` VALUES ('3', '2', '2021-05-05', 'PUCHAR POLSKI', '2');
INSERT INTO `osiagniecia_sekcje` VALUES ('4', '2', '2019-07-11', 'LIGA SWIATOWA', '2');
INSERT INTO `osiagniecia_sekcje` VALUES ('5', '1', '2019-06-05', 'MISTRZOSTWO POLSKI', '1');
INSERT INTO `osiagniecia_sekcje` VALUES ('6', '1', '2019-02-21', 'PUCHAR POLSKI', '1');
INSERT INTO `osiagniecia_sekcje` VALUES ('7', '1', '2021-06-18', 'Puchar Polsatu', '1');

-- ----------------------------
-- Table structure for `osiagniecia_zawod`
-- ----------------------------
DROP TABLE IF EXISTS `osiagniecia_zawod`;
CREATE TABLE `osiagniecia_zawod` (
  `id_osiagniecie_z` int(11) NOT NULL AUTO_INCREMENT,
  `id_zawodnik` int(11) NOT NULL,
  `data` date NOT NULL DEFAULT curdate(),
  `nazwa` varchar(255) NOT NULL DEFAULT 'Trofeum',
  PRIMARY KEY (`id_osiagniecie_z`) USING BTREE,
  KEY `osiagniecia_zaw_fk1` (`id_zawodnik`),
  CONSTRAINT `osiagniecia_zaw_fk1` FOREIGN KEY (`id_zawodnik`) REFERENCES `zawodnicy` (`id_zawodnik`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of osiagniecia_zawod
-- ----------------------------
INSERT INTO `osiagniecia_zawod` VALUES ('1', '1', '2021-06-18', 'Krol strzelcow C klasy');
INSERT INTO `osiagniecia_zawod` VALUES ('2', '1', '2021-06-18', 'Krol strzelcow Pucharu Polsatu');
INSERT INTO `osiagniecia_zawod` VALUES ('3', '1', '2021-06-18', 'Krol strzelcow Pucharu Polski');

-- ----------------------------
-- Table structure for `przeciwnicy`
-- ----------------------------
DROP TABLE IF EXISTS `przeciwnicy`;
CREATE TABLE `przeciwnicy` (
  `id_przeciwnik` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) NOT NULL DEFAULT 'Oponent',
  PRIMARY KEY (`id_przeciwnik`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of przeciwnicy
-- ----------------------------
INSERT INTO `przeciwnicy` VALUES ('1', 'FC BARCELONA');
INSERT INTO `przeciwnicy` VALUES ('2', 'REAL MADRYT');
INSERT INTO `przeciwnicy` VALUES ('3', 'JUVENTUS');
INSERT INTO `przeciwnicy` VALUES ('4', 'AC MILAN');
INSERT INTO `przeciwnicy` VALUES ('5', 'CHELSEA');
INSERT INTO `przeciwnicy` VALUES ('6', 'ARSENAL');
INSERT INTO `przeciwnicy` VALUES ('7', 'LEGIA WARSZAWA');
INSERT INTO `przeciwnicy` VALUES ('8', 'WISLA KRAKOW');
INSERT INTO `przeciwnicy` VALUES ('9', 'MAN UDT');
INSERT INTO `przeciwnicy` VALUES ('10', 'BORUSSIA');

-- ----------------------------
-- Table structure for `sekcje`
-- ----------------------------
DROP TABLE IF EXISTS `sekcje`;
CREATE TABLE `sekcje` (
  `id_sekcja` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) NOT NULL DEFAULT 'Sekcja',
  PRIMARY KEY (`id_sekcja`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sekcje
-- ----------------------------
INSERT INTO `sekcje` VALUES ('1', 'PILKA NOZNA');
INSERT INTO `sekcje` VALUES ('2', 'SIATKOWKA');
INSERT INTO `sekcje` VALUES ('3', 'PILKA RECZNA');

-- ----------------------------
-- Table structure for `sprzet`
-- ----------------------------
DROP TABLE IF EXISTS `sprzet`;
CREATE TABLE `sprzet` (
  `id_sprzet` int(11) NOT NULL AUTO_INCREMENT,
  `typ` varchar(255) NOT NULL DEFAULT 'Sprzet',
  `ilosc` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`id_sprzet`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sprzet
-- ----------------------------
INSERT INTO `sprzet` VALUES ('1', 'BUTY', '40');
INSERT INTO `sprzet` VALUES ('2', 'KOSZULKA', '10');
INSERT INTO `sprzet` VALUES ('3', 'SPODENKI', '15');
INSERT INTO `sprzet` VALUES ('4', 'GETRY', '20');
INSERT INTO `sprzet` VALUES ('5', 'OCHRANIACZE', '15');

-- ----------------------------
-- Table structure for `trenerzy`
-- ----------------------------
DROP TABLE IF EXISTS `trenerzy`;
CREATE TABLE `trenerzy` (
  `id_trener` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL DEFAULT 'Trener',
  `nazwisko` varchar(255) NOT NULL DEFAULT 'Trenerski',
  `identyfikator_tr` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_trener`) USING BTREE,
  UNIQUE KEY `identyfikator_tr` (`identyfikator_tr`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of trenerzy
-- ----------------------------
INSERT INTO `trenerzy` VALUES ('1', 'JAN', 'KOWAL', '20001');
INSERT INTO `trenerzy` VALUES ('2', 'MARIAN', 'NOWAK', '20002');
INSERT INTO `trenerzy` VALUES ('3', 'JOSE', 'RUDINIO', '20003');
INSERT INTO `trenerzy` VALUES ('4', 'SAULO', 'POUSA', '20004');

-- ----------------------------
-- Table structure for `trenerzy_archiwum`
-- ----------------------------
DROP TABLE IF EXISTS `trenerzy_archiwum`;
CREATE TABLE `trenerzy_archiwum` (
  `id_trener` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL DEFAULT 'Trener',
  `nazwisko` varchar(255) NOT NULL DEFAULT 'Trenerski',
  PRIMARY KEY (`id_trener`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of trenerzy_archiwum
-- ----------------------------
INSERT INTO `trenerzy_archiwum` VALUES ('6', 'Trener', 'Trenerski');

-- ----------------------------
-- Table structure for `trenerzy_sekcje`
-- ----------------------------
DROP TABLE IF EXISTS `trenerzy_sekcje`;
CREATE TABLE `trenerzy_sekcje` (
  `id_sekcja` int(11) NOT NULL,
  `id_trener` int(11) NOT NULL,
  KEY `id_sekcja_fk1` (`id_sekcja`),
  KEY `id_trenerzy_fk1` (`id_trener`),
  CONSTRAINT `id_sekcja_fk1` FOREIGN KEY (`id_sekcja`) REFERENCES `sekcje` (`id_sekcja`) ON DELETE CASCADE,
  CONSTRAINT `id_trenerzy_fk1` FOREIGN KEY (`id_trener`) REFERENCES `trenerzy` (`id_trener`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trenerzy_sekcje
-- ----------------------------
INSERT INTO `trenerzy_sekcje` VALUES ('1', '1');
INSERT INTO `trenerzy_sekcje` VALUES ('1', '2');
INSERT INTO `trenerzy_sekcje` VALUES ('1', '3');
INSERT INTO `trenerzy_sekcje` VALUES ('2', '3');
INSERT INTO `trenerzy_sekcje` VALUES ('3', '4');

-- ----------------------------
-- Table structure for `zawodnicy`
-- ----------------------------
DROP TABLE IF EXISTS `zawodnicy`;
CREATE TABLE `zawodnicy` (
  `id_zawodnik` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL DEFAULT 'Zawodnik',
  `nazwisko` varchar(255) NOT NULL DEFAULT 'Zawodnicki',
  `wiek` int(10) unsigned NOT NULL DEFAULT 18,
  `identyfikator` int(10) unsigned NOT NULL,
  `zdjecie` varbinary(8000) NOT NULL,
  PRIMARY KEY (`id_zawodnik`) USING BTREE,
  UNIQUE KEY `UX_zawodnicy_Identyfikator` (`identyfikator`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zawodnicy
-- ----------------------------
INSERT INTO `zawodnicy` VALUES ('1', 'WOJCIECH', 'SZCZESNY', '26', '10001', '');
INSERT INTO `zawodnicy` VALUES ('2', 'ROBERT', 'LEWANDOWSKI', '31', '10002', '');
INSERT INTO `zawodnicy` VALUES ('3', 'LEO ', 'MESSI', '30', '10003', '');
INSERT INTO `zawodnicy` VALUES ('4', 'CRISTIANO', 'RONALDO', '32', '10004', '');
INSERT INTO `zawodnicy` VALUES ('5', 'GRZEGORZ', 'KRZYCHOWIAK', '27', '10005', '');
INSERT INTO `zawodnicy` VALUES ('6', 'JAN', 'BEDNAREK', '24', '10006', '');
INSERT INTO `zawodnicy` VALUES ('7', 'BARTOSZ', 'KUREK', '26', '10007', '');
INSERT INTO `zawodnicy` VALUES ('8', 'PIOTR', 'GRUSZKA', '37', '10008', '');
INSERT INTO `zawodnicy` VALUES ('9', 'KRZYSZTOF', 'IGNACZAK', '35', '10009', '');
INSERT INTO `zawodnicy` VALUES ('10', 'PIOTR', 'NOWAKOWSKI', '32', '10010', '');
INSERT INTO `zawodnicy` VALUES ('11', 'LUIS', 'SUAREZ', '30', '10011', '');
INSERT INTO `zawodnicy` VALUES ('12', 'KRYSTIAN', 'BIELIK', '23', '10012', '');
INSERT INTO `zawodnicy` VALUES ('13', 'CARLES', 'PUYOL', '36', '10013', '');
INSERT INTO `zawodnicy` VALUES ('14', 'MARIUSZ', 'WLAZLY', '33', '10014', '');
INSERT INTO `zawodnicy` VALUES ('15', 'ADAM', 'MALYSZ', '40', '10015', '');
INSERT INTO `zawodnicy` VALUES ('16', 'ZBIGNIEW', 'BARTMAN', '20', '10016', '');
INSERT INTO `zawodnicy` VALUES ('17', 'MICHAL', 'WINIARSKI', '33', '10017', '');
INSERT INTO `zawodnicy` VALUES ('18', 'KYLIAN', 'MBAPPE', '19', '10018', '');
INSERT INTO `zawodnicy` VALUES ('19', 'ERLING', 'HAALAND', '21', '10019', '');
INSERT INTO `zawodnicy` VALUES ('20', 'MARIUSZ', 'PUDZIANOWSKI', '45', '10020', '');

-- ----------------------------
-- Table structure for `zawodnicy_archiwum`
-- ----------------------------
DROP TABLE IF EXISTS `zawodnicy_archiwum`;
CREATE TABLE `zawodnicy_archiwum` (
  `id_zawodnik` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) NOT NULL DEFAULT 'Zawodnik',
  `nazwisko` varchar(255) NOT NULL DEFAULT 'Zawodnicki',
  `wiek` int(10) unsigned NOT NULL DEFAULT 18,
  `identyfikator` int(10) unsigned NOT NULL,
  `zdjecie` varbinary(8000) NOT NULL,
  PRIMARY KEY (`id_zawodnik`) USING BTREE,
  UNIQUE KEY `UX_zawodnicy_Identyfikator` (`identyfikator`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zawodnicy_archiwum
-- ----------------------------
INSERT INTO `zawodnicy_archiwum` VALUES ('21', 'JEFFREY', 'EPSTEIN', '18', '10021', '');
INSERT INTO `zawodnicy_archiwum` VALUES ('22', 'ROBERT', 'MAKLOWICZ', '18', '10022', '');
INSERT INTO `zawodnicy_archiwum` VALUES ('23', 'BARTOSZ', 'RUDECKI', '22', '10023', '');
INSERT INTO `zawodnicy_archiwum` VALUES ('24', 'DOROTA', 'ZELMER', '18', '10024', '');
INSERT INTO `zawodnicy_archiwum` VALUES ('25', 'SZYMON', 'KOTLOWNIA', '99', '10025', '');

-- ----------------------------
-- Table structure for `zaw_sekcje`
-- ----------------------------
DROP TABLE IF EXISTS `zaw_sekcje`;
CREATE TABLE `zaw_sekcje` (
  `id_sekcja` int(11) NOT NULL,
  `id_zawodnik` int(11) NOT NULL,
  KEY `fk_sekcja_pos` (`id_sekcja`) USING BTREE,
  KEY `fk_zawodnik_pos` (`id_zawodnik`) USING BTREE,
  CONSTRAINT `zaw_sekcje_ibfk_1` FOREIGN KEY (`id_sekcja`) REFERENCES `sekcje` (`id_sekcja`) ON DELETE CASCADE,
  CONSTRAINT `zaw_sekcje_ibfk_2` FOREIGN KEY (`id_zawodnik`) REFERENCES `zawodnicy` (`id_zawodnik`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zaw_sekcje
-- ----------------------------
INSERT INTO `zaw_sekcje` VALUES ('1', '1');
INSERT INTO `zaw_sekcje` VALUES ('1', '2');
INSERT INTO `zaw_sekcje` VALUES ('1', '3');
INSERT INTO `zaw_sekcje` VALUES ('1', '4');
INSERT INTO `zaw_sekcje` VALUES ('1', '5');
INSERT INTO `zaw_sekcje` VALUES ('1', '6');
INSERT INTO `zaw_sekcje` VALUES ('2', '7');
INSERT INTO `zaw_sekcje` VALUES ('2', '8');
INSERT INTO `zaw_sekcje` VALUES ('2', '9');
INSERT INTO `zaw_sekcje` VALUES ('2', '10');
INSERT INTO `zaw_sekcje` VALUES ('1', '19');
INSERT INTO `zaw_sekcje` VALUES ('1', '18');
INSERT INTO `zaw_sekcje` VALUES ('1', '13');
INSERT INTO `zaw_sekcje` VALUES ('1', '11');
INSERT INTO `zaw_sekcje` VALUES ('1', '12');
INSERT INTO `zaw_sekcje` VALUES ('2', '14');
INSERT INTO `zaw_sekcje` VALUES ('2', '15');
INSERT INTO `zaw_sekcje` VALUES ('1', '20');
INSERT INTO `zaw_sekcje` VALUES ('2', '20');

-- ----------------------------
-- View structure for `bilansbramek`
-- ----------------------------
DROP VIEW IF EXISTS `bilansbramek`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bilansbramek` AS select sum(`mecze`.`wynik_nasz`) - sum(`mecze`.`wynik_przeciwnik`) AS `bilans_bramek` from `mecze` where `mecze`.`id_sekcja` = 1 ;

-- ----------------------------
-- View structure for `dni_od_ostatniego_meczu`
-- ----------------------------
DROP VIEW IF EXISTS `dni_od_ostatniego_meczu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dni_od_ostatniego_meczu` AS select to_days(curdate()) - to_days((select max(`mecze`.`data`) from `mecze`)) AS `DATEDIFF( curdate(),(SELECT MAX(data) FROM mecze))` ;

-- ----------------------------
-- View structure for `gole`
-- ----------------------------
DROP VIEW IF EXISTS `gole`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gole` AS select `mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`wynik_nasz` <> '0' ;

-- ----------------------------
-- View structure for `iloscsprzetu`
-- ----------------------------
DROP VIEW IF EXISTS `iloscsprzetu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iloscsprzetu` AS select `sprzet`.`id_sprzet` AS `id_sprzet`,`sprzet`.`typ` AS `typ`,`sprzet`.`ilosc` AS `ilosc` from `sprzet` where `sprzet`.`ilosc` < any (select count(`zaw_sekcje`.`id_zawodnik`) from `zaw_sekcje` where `zaw_sekcje`.`id_sekcja` = 1) ;

-- ----------------------------
-- View structure for `imiona`
-- ----------------------------
DROP VIEW IF EXISTS `imiona`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imiona` AS select `zawodnicy`.`imie` AS `imie` from `zawodnicy` union select `trenerzy`.`imie` AS `imie` from `trenerzy` order by `imie` ;

-- ----------------------------
-- View structure for `imiona_except`
-- ----------------------------
DROP VIEW IF EXISTS `imiona_except`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imiona_except` AS select `zawodnicy`.`imie` AS `imie` from `zawodnicy` except select `trenerzy`.`imie` AS `imie` from `trenerzy` order by `imie` ;

-- ----------------------------
-- View structure for `imiona_powtarzajace`
-- ----------------------------
DROP VIEW IF EXISTS `imiona_powtarzajace`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `imiona_powtarzajace` AS select `zawodnicy`.`imie` AS `imie` from `zawodnicy` intersect select `trenerzy`.`imie` AS `imie` from `trenerzy` order by `imie` ;

-- ----------------------------
-- View structure for `inicjaly`
-- ----------------------------
DROP VIEW IF EXISTS `inicjaly`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inicjaly` AS select `zawodnicy`.`imie` AS `imie`,`zawodnicy`.`nazwisko` AS `nazwisko`,concat(left(`zawodnicy`.`imie`,1),left(`zawodnicy`.`nazwisko`,1)) AS `inicjaly` from `zawodnicy` order by `zawodnicy`.`imie` ;

-- ----------------------------
-- View structure for `meczemniejnizdwagole`
-- ----------------------------
DROP VIEW IF EXISTS `meczemniejnizdwagole`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `meczemniejnizdwagole` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`data` > '2020-01-01' group by `mecze`.`data` having `mecze`.`wynik_nasz` < 2 ;

-- ----------------------------
-- View structure for `mecze_mniej_niz_2strzelone`
-- ----------------------------
DROP VIEW IF EXISTS `mecze_mniej_niz_2strzelone`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mecze_mniej_niz_2strzelone` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`data` > '2020-01-01' and `mecze`.`id_sekcja` = 1 group by `mecze`.`data` having `mecze`.`wynik_nasz` < 2 ;

-- ----------------------------
-- View structure for `mecze_od_2021`
-- ----------------------------
DROP VIEW IF EXISTS `mecze_od_2021`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mecze_od_2021` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`data` > '01-01-2021' ;

-- ----------------------------
-- View structure for `mecze_przeciwnicy`
-- ----------------------------
DROP VIEW IF EXISTS `mecze_przeciwnicy`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mecze_przeciwnicy` AS select `sekcje`.`id_sekcja` AS `id_sekcja`,`przeciwnicy`.`nazwa` AS `nazwa`,`mecze`.`data` AS `data` from ((`sekcje` join `mecze` on(`sekcje`.`id_sekcja` = `mecze`.`id_sekcja`)) join `przeciwnicy` on(`mecze`.`id_przeciwnik` = `przeciwnicy`.`id_przeciwnik`)) ;

-- ----------------------------
-- View structure for `mecze_wygrane`
-- ----------------------------
DROP VIEW IF EXISTS `mecze_wygrane`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mecze_wygrane` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`rezultat` = 'Wygrana' ;

-- ----------------------------
-- View structure for `przeciwnicy_wygrany_mecz`
-- ----------------------------
DROP VIEW IF EXISTS `przeciwnicy_wygrany_mecz`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `przeciwnicy_wygrany_mecz` AS select `przeciwnicy`.`nazwa` AS `nazwa`,`mecze`.`rezultat` AS `rezultat`,`mecze`.`data` AS `data` from (`przeciwnicy` join `mecze` on(`przeciwnicy`.`id_przeciwnik` = `mecze`.`id_przeciwnik`)) where `mecze`.`rezultat` = 'Wygrana' ;

-- ----------------------------
-- View structure for `sekcjazosignieciami`
-- ----------------------------
DROP VIEW IF EXISTS `sekcjazosignieciami`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sekcjazosignieciami` AS select `konsultacje`.`osiagniecia`.`id_sekcja` AS `id_sekcja`,`konsultacje`.`osiagniecia`.`nazwa` AS `nazwa` from `osiagniecia` where exists(select 1 from `osiagniecia` where `konsultacje`.`osiagniecia`.`id_sekcja` = `konsultacje`.`osiagniecia`.`id_sekcja` limit 1) ;

-- ----------------------------
-- View structure for `spotkania`
-- ----------------------------
DROP VIEW IF EXISTS `spotkania`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `spotkania` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`data` < '2021-01-01' group by `mecze`.`data` ;

-- ----------------------------
-- View structure for `spotkaniazgolami`
-- ----------------------------
DROP VIEW IF EXISTS `spotkaniazgolami`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `spotkaniazgolami` AS select `mecze`.`id_mecz` AS `id_mecz`,`mecze`.`id_sekcja` AS `id_sekcja`,`mecze`.`data` AS `data`,`mecze`.`id_przeciwnik` AS `id_przeciwnik`,`mecze`.`wynik_nasz` AS `wynik_nasz`,`mecze`.`wynik_przeciwnik` AS `wynik_przeciwnik`,`mecze`.`rezultat` AS `rezultat` from `mecze` where `mecze`.`data` > '2020-01-01' group by `mecze`.`data` having `mecze`.`wynik_nasz` < 2 ;

-- ----------------------------
-- View structure for `sredniagoli`
-- ----------------------------
DROP VIEW IF EXISTS `sredniagoli`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sredniagoli` AS select (sum(`mecze`.`wynik_nasz`) + sum(`mecze`.`wynik_przeciwnik`)) / count(`mecze`.`rezultat`) AS `(SUM(wynik_nasz)+SUM(wynik_przeciwnik))/COUNT(rezultat)` from `mecze` where `mecze`.`id_sekcja` = 1 ;

-- ----------------------------
-- View structure for `te_same_imiona`
-- ----------------------------
DROP VIEW IF EXISTS `te_same_imiona`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `te_same_imiona` AS select `zawodnicy`.`imie` AS `imie` from `zawodnicy` intersect select `trenerzy`.`imie` AS `imie` from `trenerzy` order by `imie` ;

-- ----------------------------
-- View structure for `trenerzy_osiagniecia`
-- ----------------------------
DROP VIEW IF EXISTS `trenerzy_osiagniecia`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trenerzy_osiagniecia` AS select `konsultacje`.`osiagniecia`.`nazwa` AS `nazwa`,`konsultacje`.`osiagniecia`.`data` AS `data`,`konsultacje`.`trenerzy`.`imie` AS `imie`,`konsultacje`.`trenerzy`.`nazwisko` AS `nazwisko` from (`trenerzy` join `osiagniecia` on(`konsultacje`.`trenerzy`.`id_trener` = `konsultacje`.`osiagniecia`.`id_trener`)) ;

-- ----------------------------
-- View structure for `trener_ilosc_zawodnikow`
-- ----------------------------
DROP VIEW IF EXISTS `trener_ilosc_zawodnikow`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trener_ilosc_zawodnikow` AS select `trenerzy`.`imie` AS `imie`,`trenerzy`.`nazwisko` AS `nazwisko`,count(0) AS `ilosc_zawodnikow` from (((`zawodnicy` join `zaw_sekcje` on(`zawodnicy`.`id_zawodnik` = `zaw_sekcje`.`id_zawodnik`)) join `sekcje` on(`zaw_sekcje`.`id_sekcja` = `sekcje`.`id_sekcja`)) join `trenerzy` on(`konsultacje`.`sekcje`.`id_trener` = `konsultacje`.`trenerzy`.`id_trener`)) ;

-- ----------------------------
-- View structure for `wiek`
-- ----------------------------
DROP VIEW IF EXISTS `wiek`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wiek` AS select `zawodnicy`.`id_zawodnik` AS `id_zawodnik`,`zawodnicy`.`imie` AS `imie`,`zawodnicy`.`nazwisko` AS `nazwisko`,`zawodnicy`.`wiek` AS `wiek`,`zawodnicy`.`identyfikator` AS `identyfikator`,`zawodnicy`.`zdjecie` AS `zdjecie` from `zawodnicy` where `zawodnicy`.`wiek` in ('33','32') ;

-- ----------------------------
-- View structure for `wiek_except`
-- ----------------------------
DROP VIEW IF EXISTS `wiek_except`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wiek_except` AS select `zawodnicy`.`wiek` AS `wiek` from `zawodnicy` where `zawodnicy`.`wiek` < 30 except select `zawodnicy`.`wiek` AS `wiek` from `zawodnicy` where `zawodnicy`.`wiek` > 25 ;

-- ----------------------------
-- View structure for `zawodnicy_wiek_20-22`
-- ----------------------------
DROP VIEW IF EXISTS `zawodnicy_wiek_20-22`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zawodnicy_wiek_20-22` AS select `zawodnicy`.`id_zawodnik` AS `id_zawodnik`,`zawodnicy`.`imie` AS `imie`,`zawodnicy`.`nazwisko` AS `nazwisko`,`zawodnicy`.`wiek` AS `wiek`,`zawodnicy`.`identyfikator` AS `identyfikator`,`zawodnicy`.`zdjecie` AS `zdjecie` from `zawodnicy` where `zawodnicy`.`wiek` between 20 and 22 ;

-- ----------------------------
-- View structure for `zawodnicy_w_sekcjach`
-- ----------------------------
DROP VIEW IF EXISTS `zawodnicy_w_sekcjach`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zawodnicy_w_sekcjach` AS select `zawodnicy`.`imie` AS `imie`,`zawodnicy`.`id_zawodnik` AS `id_zawodnik`,`sekcje`.`nazwa` AS `nazwa` from ((`zawodnicy` join `zaw_sekcje` on(`zawodnicy`.`id_zawodnik` = `zaw_sekcje`.`id_zawodnik`)) join `sekcje` on(`zaw_sekcje`.`id_sekcja` = `sekcje`.`id_sekcja`)) where `sekcje`.`id_sekcja` = '1' order by `zawodnicy`.`id_zawodnik` ;

-- ----------------------------
-- Procedure structure for `generuj_mecze`
-- ----------------------------
DROP PROCEDURE IF EXISTS `generuj_mecze`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generuj_mecze`(in vile int, in vod int, in vdo int)
BEGIN
for k in 1..vile do

insert into mecze (id_sekcja,data, id_przeciwnik, wynik_nasz, wynik_przeciwnik) values (1, from_unixtime( rand() * (vod - vdo) + vdo),rand() * 5+1, rand() *5+1, rand()*5+1);
end for;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `srednia_wieku_sekcja`
-- ----------------------------
DROP PROCEDURE IF EXISTS `srednia_wieku_sekcja`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `srednia_wieku_sekcja`(in sekcja int(11))
BEGIN
	#Routine body goes here...
	select avg(wiek) as `srednia_wieku` from zawodnicy 

	inner join zaw_sekcje on zawodnicy.id_zawodnik = zaw_sekcje.id_zawodnik
	inner join sekcje on zaw_sekcje.id_sekcja = sekcje.id_sekcja
	where sekcje.id_sekcja = sekcja;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `zwyciestwo_osiagniecie`
-- ----------------------------
DROP PROCEDURE IF EXISTS `zwyciestwo_osiagniecie`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zwyciestwo_osiagniecie`(in sekcja int(11), in przeciwnik int(11), in wynik_n int(11), in wynik_p int(11), in nazwa varchar (100), in trener int(11))
BEGIN
	START TRANSACTION;
	INSERT INTO mecze(id_mecz,id_sekcja,id_przeciwnik,wynik_nasz,wynik_przeciwnik,rezultat)
VALUES (null, sekcja,przeciwnik,wynik_n,wynik_p,NULL);

INSERT INTO osiagniecia(id_osiagniecie,id_sekcja,nazwa,id_trener)
VALUES (null,sekcja,nazwa,trener);
	COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `ilosc_zawodnikow`
-- ----------------------------
DROP FUNCTION IF EXISTS `ilosc_zawodnikow`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ilosc_zawodnikow`() RETURNS int(11)
BEGIN
	set @ilosc = (SELECT COUNT(*) from zawodnicy);

	RETURN @ilosc;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `nowa_partycja_mecze`
-- ----------------------------
DROP EVENT IF EXISTS `nowa_partycja_mecze`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `nowa_partycja_mecze` ON SCHEDULE EVERY 1 YEAR STARTS '2021-12-30 01:00:00' ON COMPLETION PRESERVE ENABLE DO begin
set @nowy_rok=year(now())+1;
set @part = concat("alter table mecze reorganize partition p_mecze_max into (partition p_mecze_", @nowy_rok, " values less than (", (@nowy_rok+1),"), partition p_mecze_max values less than maxvalue);");
prepare st1 from @part;
execute st1;
deallocate prepare st1;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tren_archiwum`;
DELIMITER ;;
CREATE TRIGGER `tren_archiwum` BEFORE DELETE ON `trenerzy` FOR EACH ROW begin
insert into trenerzy_archiwum 
values (old.id_trener,old.imie,old.nazwisko);
    
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `archiwum`;
DELIMITER ;;
CREATE TRIGGER `archiwum` BEFORE DELETE ON `zawodnicy` FOR EACH ROW begin
insert into zawodnicy_archiwum 
values (old.id_zawodnik,old.imie,old.nazwisko,old.wiek,old.identyfikator,old.zdjecie);
    
end
;;
DELIMITER ;
