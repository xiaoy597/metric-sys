/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : metric_warehouse

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-07-20 17:59:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_dim
-- ----------------------------
DROP TABLE IF EXISTS `admin_dim`;
CREATE TABLE `admin_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_village` varchar(20) DEFAULT NULL COMMENT '村/社区 -- ',
  `d_town` varchar(20) DEFAULT NULL COMMENT '乡镇/街道 -- ',
  `d_county` varchar(20) DEFAULT NULL COMMENT '区/县 -- ',
  `d_city` varchar(20) DEFAULT NULL COMMENT '市 -- ',
  `d_province` varchar(20) DEFAULT NULL COMMENT '省 -- ',
  `dim_desc` varchar(60) DEFAULT NULL COMMENT '维度描述 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='行政区划维度 -- ';

-- ----------------------------
-- Records of admin_dim
-- ----------------------------
INSERT INTO `admin_dim` VALUES ('1', '110101001001', '110101001', '110101', '110000', '110', '北京市东城区东华门街道多福巷社区');
INSERT INTO `admin_dim` VALUES ('2', '110101001002', '110101001', '110101', '110000', '110', '北京市东城区东华门街道银闸社区');
INSERT INTO `admin_dim` VALUES ('3', '110101001005', '110101001', '110101', '110000', '110', '北京市东城区东华门街道东厂社区');
INSERT INTO `admin_dim` VALUES ('4', '110101001006', '110101001', '110101', '110000', '110', '北京市东城区东华门街道智德社区');
INSERT INTO `admin_dim` VALUES ('5', '110101001007', '110101001', '110101', '110000', '110', '北京市东城区东华门街道南池子社区');
INSERT INTO `admin_dim` VALUES ('6', '110101001008', '110101001', '110101', '110000', '110', '北京市东城区东华门街道黄图岗社区');
INSERT INTO `admin_dim` VALUES ('7', '110101001009', '110101001', '110101', '110000', '110', '北京市东城区东华门街道灯市口社区');
INSERT INTO `admin_dim` VALUES ('8', '110101001010', '110101001', '110101', '110000', '110', '北京市东城区东华门街道正义路社区');
INSERT INTO `admin_dim` VALUES ('9', '110101001011', '110101001', '110101', '110000', '110', '北京市东城区东华门街道甘雨社区');
INSERT INTO `admin_dim` VALUES ('10', '110101001013', '110101001', '110101', '110000', '110', '北京市东城区东华门街道台基厂社区');
INSERT INTO `admin_dim` VALUES ('11', '110101001014', '110101001', '110101', '110000', '110', '北京市东城区东华门街道韶九社区');
INSERT INTO `admin_dim` VALUES ('12', '110101001015', '110101001', '110101', '110000', '110', '北京市东城区东华门街道王府井社区');
INSERT INTO `admin_dim` VALUES ('13', '110101002001', '110101002', '110101', '110000', '110', '北京市东城区景山街道隆福寺社区');
INSERT INTO `admin_dim` VALUES ('14', '110101002002', '110101002', '110101', '110000', '110', '北京市东城区景山街道吉祥社区');
INSERT INTO `admin_dim` VALUES ('15', '110101002003', '110101002', '110101', '110000', '110', '北京市东城区景山街道黄化门社区');
INSERT INTO `admin_dim` VALUES ('16', '110101002004', '110101002', '110101', '110000', '110', '北京市东城区景山街道钟鼓社区');
INSERT INTO `admin_dim` VALUES ('17', '110101002005', '110101002', '110101', '110000', '110', '北京市东城区景山街道魏家社区');
INSERT INTO `admin_dim` VALUES ('18', '110101002006', '110101002', '110101', '110000', '110', '北京市东城区景山街道汪芝麻社区');
INSERT INTO `admin_dim` VALUES ('19', '110101002008', '110101002', '110101', '110000', '110', '北京市东城区景山街道景山东街社区');
INSERT INTO `admin_dim` VALUES ('20', '110101002009', '110101002', '110101', '110000', '110', '北京市东城区景山街道皇城根北街社区');
INSERT INTO `admin_dim` VALUES ('21', '110101003001', '110101003', '110101', '110000', '110', '北京市东城区交道口街道交东社区');
INSERT INTO `admin_dim` VALUES ('22', '110101003002', '110101003', '110101', '110000', '110', '北京市东城区交道口街道福祥社区');
INSERT INTO `admin_dim` VALUES ('23', '110101003003', '110101003', '110101', '110000', '110', '北京市东城区交道口街道大兴社区');
INSERT INTO `admin_dim` VALUES ('24', '110101003005', '110101003', '110101', '110000', '110', '北京市东城区交道口街道府学社区');
INSERT INTO `admin_dim` VALUES ('25', '110101003007', '110101003', '110101', '110000', '110', '北京市东城区交道口街道鼓楼苑社区');
INSERT INTO `admin_dim` VALUES ('26', '110101003008', '110101003', '110101', '110000', '110', '北京市东城区交道口街道菊儿社区');
INSERT INTO `admin_dim` VALUES ('27', '110101003009', '110101003', '110101', '110000', '110', '北京市东城区交道口街道南锣鼓巷社区');
INSERT INTO `admin_dim` VALUES ('28', '110101004001', '110101004', '110101', '110000', '110', '北京市东城区安定门街道交北头条社区');
INSERT INTO `admin_dim` VALUES ('29', '110101004002', '110101004', '110101', '110000', '110', '北京市东城区安定门街道北锣鼓巷社区');
INSERT INTO `admin_dim` VALUES ('30', '110101004003', '110101004', '110101', '110000', '110', '北京市东城区安定门街道国子监社区');
INSERT INTO `admin_dim` VALUES ('31', '110101004004', '110101004', '110101', '110000', '110', '北京市东城区安定门街道钟楼湾社区	');
INSERT INTO `admin_dim` VALUES ('32', '110101004005', '110101004', '110101', '110000', '110', '北京市东城区安定门街道宝钞南社区');
INSERT INTO `admin_dim` VALUES ('33', '110101004006', '110101004', '110101', '110000', '110', '北京市东城区安定门街道五道营社区');
INSERT INTO `admin_dim` VALUES ('34', '110101004009', '110101004', '110101', '110000', '110', '北京市东城区安定门街道分司厅社区');
INSERT INTO `admin_dim` VALUES ('35', '110101004011', '110101004', '110101', '110000', '110', '北京市东城区安定门街道国旺社区');
INSERT INTO `admin_dim` VALUES ('36', '110101004012', '110101004', '110101', '110000', '110', '北京市东城区安定门街道花园社区');
INSERT INTO `admin_dim` VALUES ('37', null, '110101001', '110101', '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('38', null, '110101002', '110101', '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('39', null, '110101003', '110101', '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('40', null, '110101004', '110101', '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('41', null, null, '110101', '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('42', null, null, null, '110000', '110', null);
INSERT INTO `admin_dim` VALUES ('43', null, null, null, null, '110', null);
INSERT INTO `admin_dim` VALUES ('44', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for busi_dim
-- ----------------------------
DROP TABLE IF EXISTS `busi_dim`;
CREATE TABLE `busi_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_class3` varchar(20) DEFAULT NULL COMMENT '行业3级分类 -- ',
  `d_class2` varchar(20) DEFAULT NULL COMMENT '行业2级分类 -- ',
  `d_class1` varchar(20) DEFAULT NULL COMMENT '行业1级分类 -- ',
  `d_category` varchar(20) DEFAULT NULL COMMENT '行业门类 -- ',
  `dim_desc` varchar(60) DEFAULT NULL COMMENT '维度描述 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='行业维度 -- ';

-- ----------------------------
-- Records of busi_dim
-- ----------------------------
INSERT INTO `busi_dim` VALUES ('1', '0111', '011', '01', 'A', '稻谷种植');
INSERT INTO `busi_dim` VALUES ('2', '0112', '011', '01', 'A', '小麦种植');
INSERT INTO `busi_dim` VALUES ('3', '0113', '011', '01', 'A', '玉米种植');
INSERT INTO `busi_dim` VALUES ('4', '0119', '011', '01', 'A', '其他谷物种植');
INSERT INTO `busi_dim` VALUES ('5', '0121', '012', '01', 'A', '豆类种植');
INSERT INTO `busi_dim` VALUES ('6', '0122', '012', '01', 'A', '油料种植');
INSERT INTO `busi_dim` VALUES ('7', '0123', '012', '01', 'A', '薯类种植');
INSERT INTO `busi_dim` VALUES ('8', '0131', '013', '01', 'A', '棉花种植');
INSERT INTO `busi_dim` VALUES ('9', '0132', '013', '01', 'A', '麻类种植');
INSERT INTO `busi_dim` VALUES ('10', '0133', '013', '01', 'A', '糖料种植');
INSERT INTO `busi_dim` VALUES ('11', '0134', '013', '01', 'A', '烟草种植');
INSERT INTO `busi_dim` VALUES ('12', '0141', '014', '01', 'A', '蔬菜种植');
INSERT INTO `busi_dim` VALUES ('13', '0142', '014', '01', 'A', '食用菌种植');
INSERT INTO `busi_dim` VALUES ('14', '0143', '014', '01', 'A', '花卉种植');
INSERT INTO `busi_dim` VALUES ('15', '0149', '014', '01', 'A', '其他园艺作物种植');
INSERT INTO `busi_dim` VALUES ('16', '0211', '021', '02', 'A', '林木育种');
INSERT INTO `busi_dim` VALUES ('17', '0212', '021', '02', 'A', '林木育苗');
INSERT INTO `busi_dim` VALUES ('18', '0220', '022', '02', 'A', '造林和更新');
INSERT INTO `busi_dim` VALUES ('19', '0231', '023', '02', 'A', '森林经营和管护');
INSERT INTO `busi_dim` VALUES ('20', '0232', '023', '02', 'A', '森林改培');
INSERT INTO `busi_dim` VALUES ('21', '0241', '024', '02', 'A', '木材采运');
INSERT INTO `busi_dim` VALUES ('22', '0242', '024', '02', 'A', '竹材采运');
INSERT INTO `busi_dim` VALUES ('23', '0251', '025', '02', 'A', '木竹材林产品采集');
INSERT INTO `busi_dim` VALUES ('24', '0252', '025', '02', 'A', '非木竹材林产品采集');
INSERT INTO `busi_dim` VALUES ('25', '0610', '061', '06', 'B', '烟煤和无烟煤开采洗选');
INSERT INTO `busi_dim` VALUES ('26', '0620', '062', '06', 'B', '褐煤开采洗选');
INSERT INTO `busi_dim` VALUES ('27', '0690', '069', '06', 'B', '其他煤炭采选');
INSERT INTO `busi_dim` VALUES ('28', '0711', '071', '07', 'B', '陆地石油开采');
INSERT INTO `busi_dim` VALUES ('29', '0712', '071', '07', 'B', '海洋石油开采');
INSERT INTO `busi_dim` VALUES ('30', '0721', '072', '07', 'B', '陆地天然气开采');
INSERT INTO `busi_dim` VALUES ('31', '0722', '072', '07', 'B', '海洋天然气及可燃冰开采');
INSERT INTO `busi_dim` VALUES ('32', null, '011', '01', 'A', null);
INSERT INTO `busi_dim` VALUES ('33', null, '012', '01', 'A', null);
INSERT INTO `busi_dim` VALUES ('34', null, '013', '01', 'A', null);
INSERT INTO `busi_dim` VALUES ('35', null, '014', '01', 'A', null);
INSERT INTO `busi_dim` VALUES ('36', null, null, '01', 'A', null);
INSERT INTO `busi_dim` VALUES ('37', null, '021', '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('38', null, '022', '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('39', null, '023', '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('40', null, '024', '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('41', null, '025', '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('42', null, null, '02', 'A', null);
INSERT INTO `busi_dim` VALUES ('43', null, null, null, 'A', null);
INSERT INTO `busi_dim` VALUES ('44', null, '061', '06', 'B', null);
INSERT INTO `busi_dim` VALUES ('45', null, '062', '06', 'B', null);
INSERT INTO `busi_dim` VALUES ('46', null, '069', '06', 'B', null);
INSERT INTO `busi_dim` VALUES ('47', null, null, '06', 'B', null);
INSERT INTO `busi_dim` VALUES ('48', null, '071', '07', 'B', null);
INSERT INTO `busi_dim` VALUES ('49', null, '072', '07', 'B', null);
INSERT INTO `busi_dim` VALUES ('50', null, null, '07', 'B', null);
INSERT INTO `busi_dim` VALUES ('51', null, null, null, 'B', null);
INSERT INTO `busi_dim` VALUES ('52', null, null, null, null, null);

-- ----------------------------
-- Table structure for date_dim
-- ----------------------------
DROP TABLE IF EXISTS `date_dim`;
CREATE TABLE `date_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_date` date DEFAULT NULL COMMENT '日期 -- ',
  `d_month` int(11) DEFAULT NULL COMMENT '月份 -- ',
  `d_quarter` int(11) DEFAULT NULL COMMENT '季度 -- ',
  `d_year` int(11) DEFAULT NULL COMMENT '年份 -- ',
  `dim_desc` varchar(60) DEFAULT NULL COMMENT '维度描述 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=794 DEFAULT CHARSET=utf8 COMMENT='日期维度 -- ';

-- ----------------------------
-- Records of date_dim
-- ----------------------------
INSERT INTO `date_dim` VALUES ('1', '2019-01-01', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('2', '2019-01-02', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('3', '2019-01-03', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('4', '2019-01-04', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('5', '2019-01-05', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('6', '2019-01-06', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('7', '2019-01-07', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('8', '2019-01-08', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('9', '2019-01-09', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('10', '2019-01-10', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('11', '2019-01-11', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('12', '2019-01-12', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('13', '2019-01-13', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('14', '2019-01-14', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('15', '2019-01-15', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('16', '2019-01-16', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('17', '2019-01-17', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('18', '2019-01-18', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('19', '2019-01-19', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('20', '2019-01-20', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('21', '2019-01-21', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('22', '2019-01-22', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('23', '2019-01-23', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('24', '2019-01-24', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('25', '2019-01-25', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('26', '2019-01-26', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('27', '2019-01-27', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('28', '2019-01-28', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('29', '2019-01-29', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('30', '2019-01-30', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('31', '2019-01-31', '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('32', '2019-02-01', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('33', '2019-02-02', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('34', '2019-02-03', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('35', '2019-02-04', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('36', '2019-02-05', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('37', '2019-02-06', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('38', '2019-02-07', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('39', '2019-02-08', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('40', '2019-02-09', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('41', '2019-02-10', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('42', '2019-02-11', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('43', '2019-02-12', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('44', '2019-02-13', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('45', '2019-02-14', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('46', '2019-02-15', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('47', '2019-02-16', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('48', '2019-02-17', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('49', '2019-02-18', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('50', '2019-02-19', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('51', '2019-02-20', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('52', '2019-02-21', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('53', '2019-02-22', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('54', '2019-02-23', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('55', '2019-02-24', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('56', '2019-02-25', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('57', '2019-02-26', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('58', '2019-02-27', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('59', '2019-02-28', '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('60', '2019-03-01', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('61', '2019-03-02', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('62', '2019-03-03', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('63', '2019-03-04', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('64', '2019-03-05', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('65', '2019-03-06', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('66', '2019-03-07', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('67', '2019-03-08', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('68', '2019-03-09', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('69', '2019-03-10', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('70', '2019-03-11', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('71', '2019-03-12', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('72', '2019-03-13', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('73', '2019-03-14', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('74', '2019-03-15', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('75', '2019-03-16', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('76', '2019-03-17', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('77', '2019-03-18', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('78', '2019-03-19', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('79', '2019-03-20', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('80', '2019-03-21', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('81', '2019-03-22', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('82', '2019-03-23', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('83', '2019-03-24', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('84', '2019-03-25', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('85', '2019-03-26', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('86', '2019-03-27', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('87', '2019-03-28', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('88', '2019-03-29', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('89', '2019-03-30', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('90', '2019-03-31', '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('91', '2019-04-01', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('92', '2019-04-02', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('93', '2019-04-03', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('94', '2019-04-04', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('95', '2019-04-05', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('96', '2019-04-06', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('97', '2019-04-07', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('98', '2019-04-08', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('99', '2019-04-09', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('100', '2019-04-10', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('101', '2019-04-11', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('102', '2019-04-12', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('103', '2019-04-13', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('104', '2019-04-14', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('105', '2019-04-15', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('106', '2019-04-16', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('107', '2019-04-17', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('108', '2019-04-18', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('109', '2019-04-19', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('110', '2019-04-20', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('111', '2019-04-21', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('112', '2019-04-22', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('113', '2019-04-23', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('114', '2019-04-24', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('115', '2019-04-25', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('116', '2019-04-26', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('117', '2019-04-27', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('118', '2019-04-28', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('119', '2019-04-29', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('120', '2019-04-30', '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('121', '2019-05-01', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('122', '2019-05-02', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('123', '2019-05-03', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('124', '2019-05-04', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('125', '2019-05-05', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('126', '2019-05-06', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('127', '2019-05-07', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('128', '2019-05-08', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('129', '2019-05-09', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('130', '2019-05-10', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('131', '2019-05-11', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('132', '2019-05-12', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('133', '2019-05-13', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('134', '2019-05-14', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('135', '2019-05-15', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('136', '2019-05-16', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('137', '2019-05-17', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('138', '2019-05-18', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('139', '2019-05-19', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('140', '2019-05-20', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('141', '2019-05-21', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('142', '2019-05-22', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('143', '2019-05-23', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('144', '2019-05-24', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('145', '2019-05-25', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('146', '2019-05-26', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('147', '2019-05-27', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('148', '2019-05-28', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('149', '2019-05-29', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('150', '2019-05-30', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('151', '2019-05-31', '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('152', '2019-06-01', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('153', '2019-06-02', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('154', '2019-06-03', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('155', '2019-06-04', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('156', '2019-06-05', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('157', '2019-06-06', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('158', '2019-06-07', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('159', '2019-06-08', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('160', '2019-06-09', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('161', '2019-06-10', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('162', '2019-06-11', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('163', '2019-06-12', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('164', '2019-06-13', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('165', '2019-06-14', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('166', '2019-06-15', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('167', '2019-06-16', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('168', '2019-06-17', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('169', '2019-06-18', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('170', '2019-06-19', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('171', '2019-06-20', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('172', '2019-06-21', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('173', '2019-06-22', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('174', '2019-06-23', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('175', '2019-06-24', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('176', '2019-06-25', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('177', '2019-06-26', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('178', '2019-06-27', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('179', '2019-06-28', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('180', '2019-06-29', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('181', '2019-06-30', '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('182', '2019-07-01', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('183', '2019-07-02', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('184', '2019-07-03', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('185', '2019-07-04', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('186', '2019-07-05', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('187', '2019-07-06', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('188', '2019-07-07', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('189', '2019-07-08', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('190', '2019-07-09', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('191', '2019-07-10', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('192', '2019-07-11', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('193', '2019-07-12', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('194', '2019-07-13', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('195', '2019-07-14', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('196', '2019-07-15', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('197', '2019-07-16', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('198', '2019-07-17', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('199', '2019-07-18', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('200', '2019-07-19', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('201', '2019-07-20', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('202', '2019-07-21', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('203', '2019-07-22', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('204', '2019-07-23', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('205', '2019-07-24', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('206', '2019-07-25', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('207', '2019-07-26', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('208', '2019-07-27', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('209', '2019-07-28', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('210', '2019-07-29', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('211', '2019-07-30', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('212', '2019-07-31', '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('213', '2019-08-01', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('214', '2019-08-02', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('215', '2019-08-03', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('216', '2019-08-04', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('217', '2019-08-05', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('218', '2019-08-06', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('219', '2019-08-07', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('220', '2019-08-08', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('221', '2019-08-09', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('222', '2019-08-10', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('223', '2019-08-11', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('224', '2019-08-12', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('225', '2019-08-13', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('226', '2019-08-14', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('227', '2019-08-15', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('228', '2019-08-16', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('229', '2019-08-17', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('230', '2019-08-18', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('231', '2019-08-19', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('232', '2019-08-20', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('233', '2019-08-21', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('234', '2019-08-22', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('235', '2019-08-23', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('236', '2019-08-24', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('237', '2019-08-25', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('238', '2019-08-26', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('239', '2019-08-27', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('240', '2019-08-28', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('241', '2019-08-29', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('242', '2019-08-30', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('243', '2019-08-31', '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('244', '2019-09-01', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('245', '2019-09-02', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('246', '2019-09-03', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('247', '2019-09-04', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('248', '2019-09-05', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('249', '2019-09-06', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('250', '2019-09-07', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('251', '2019-09-08', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('252', '2019-09-09', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('253', '2019-09-10', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('254', '2019-09-11', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('255', '2019-09-12', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('256', '2019-09-13', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('257', '2019-09-14', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('258', '2019-09-15', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('259', '2019-09-16', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('260', '2019-09-17', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('261', '2019-09-18', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('262', '2019-09-19', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('263', '2019-09-20', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('264', '2019-09-21', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('265', '2019-09-22', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('266', '2019-09-23', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('267', '2019-09-24', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('268', '2019-09-25', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('269', '2019-09-26', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('270', '2019-09-27', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('271', '2019-09-28', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('272', '2019-09-29', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('273', '2019-09-30', '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('274', '2019-10-01', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('275', '2019-10-02', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('276', '2019-10-03', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('277', '2019-10-04', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('278', '2019-10-05', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('279', '2019-10-06', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('280', '2019-10-07', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('281', '2019-10-08', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('282', '2019-10-09', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('283', '2019-10-10', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('284', '2019-10-11', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('285', '2019-10-12', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('286', '2019-10-13', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('287', '2019-10-14', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('288', '2019-10-15', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('289', '2019-10-16', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('290', '2019-10-17', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('291', '2019-10-18', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('292', '2019-10-19', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('293', '2019-10-20', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('294', '2019-10-21', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('295', '2019-10-22', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('296', '2019-10-23', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('297', '2019-10-24', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('298', '2019-10-25', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('299', '2019-10-26', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('300', '2019-10-27', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('301', '2019-10-28', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('302', '2019-10-29', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('303', '2019-10-30', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('304', '2019-10-31', '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('305', '2019-11-01', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('306', '2019-11-02', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('307', '2019-11-03', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('308', '2019-11-04', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('309', '2019-11-05', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('310', '2019-11-06', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('311', '2019-11-07', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('312', '2019-11-08', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('313', '2019-11-09', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('314', '2019-11-10', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('315', '2019-11-11', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('316', '2019-11-12', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('317', '2019-11-13', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('318', '2019-11-14', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('319', '2019-11-15', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('320', '2019-11-16', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('321', '2019-11-17', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('322', '2019-11-18', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('323', '2019-11-19', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('324', '2019-11-20', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('325', '2019-11-21', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('326', '2019-11-22', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('327', '2019-11-23', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('328', '2019-11-24', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('329', '2019-11-25', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('330', '2019-11-26', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('331', '2019-11-27', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('332', '2019-11-28', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('333', '2019-11-29', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('334', '2019-11-30', '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('335', '2019-12-01', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('336', '2019-12-02', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('337', '2019-12-03', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('338', '2019-12-04', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('339', '2019-12-05', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('340', '2019-12-06', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('341', '2019-12-07', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('342', '2019-12-08', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('343', '2019-12-09', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('344', '2019-12-10', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('345', '2019-12-11', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('346', '2019-12-12', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('347', '2019-12-13', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('348', '2019-12-14', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('349', '2019-12-15', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('350', '2019-12-16', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('351', '2019-12-17', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('352', '2019-12-18', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('353', '2019-12-19', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('354', '2019-12-20', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('355', '2019-12-21', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('356', '2019-12-22', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('357', '2019-12-23', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('358', '2019-12-24', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('359', '2019-12-25', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('360', '2019-12-26', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('361', '2019-12-27', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('362', '2019-12-28', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('363', '2019-12-29', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('364', '2019-12-30', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('365', '2019-12-31', '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('366', '2020-01-01', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('367', '2020-01-02', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('368', '2020-01-03', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('369', '2020-01-04', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('370', '2020-01-05', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('371', '2020-01-06', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('372', '2020-01-07', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('373', '2020-01-08', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('374', '2020-01-09', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('375', '2020-01-10', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('376', '2020-01-11', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('377', '2020-01-12', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('378', '2020-01-13', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('379', '2020-01-14', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('380', '2020-01-15', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('381', '2020-01-16', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('382', '2020-01-17', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('383', '2020-01-18', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('384', '2020-01-19', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('385', '2020-01-20', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('386', '2020-01-21', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('387', '2020-01-22', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('388', '2020-01-23', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('389', '2020-01-24', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('390', '2020-01-25', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('391', '2020-01-26', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('392', '2020-01-27', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('393', '2020-01-28', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('394', '2020-01-29', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('395', '2020-01-30', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('396', '2020-01-31', '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('397', '2020-02-01', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('398', '2020-02-02', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('399', '2020-02-03', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('400', '2020-02-04', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('401', '2020-02-05', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('402', '2020-02-06', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('403', '2020-02-07', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('404', '2020-02-08', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('405', '2020-02-09', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('406', '2020-02-10', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('407', '2020-02-11', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('408', '2020-02-12', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('409', '2020-02-13', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('410', '2020-02-14', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('411', '2020-02-15', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('412', '2020-02-16', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('413', '2020-02-17', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('414', '2020-02-18', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('415', '2020-02-19', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('416', '2020-02-20', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('417', '2020-02-21', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('418', '2020-02-22', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('419', '2020-02-23', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('420', '2020-02-24', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('421', '2020-02-25', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('422', '2020-02-26', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('423', '2020-02-27', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('424', '2020-02-28', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('425', '2020-02-29', '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('426', '2020-03-01', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('427', '2020-03-02', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('428', '2020-03-03', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('429', '2020-03-04', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('430', '2020-03-05', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('431', '2020-03-06', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('432', '2020-03-07', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('433', '2020-03-08', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('434', '2020-03-09', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('435', '2020-03-10', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('436', '2020-03-11', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('437', '2020-03-12', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('438', '2020-03-13', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('439', '2020-03-14', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('440', '2020-03-15', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('441', '2020-03-16', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('442', '2020-03-17', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('443', '2020-03-18', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('444', '2020-03-19', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('445', '2020-03-20', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('446', '2020-03-21', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('447', '2020-03-22', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('448', '2020-03-23', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('449', '2020-03-24', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('450', '2020-03-25', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('451', '2020-03-26', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('452', '2020-03-27', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('453', '2020-03-28', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('454', '2020-03-29', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('455', '2020-03-30', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('456', '2020-03-31', '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('457', '2020-04-01', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('458', '2020-04-02', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('459', '2020-04-03', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('460', '2020-04-04', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('461', '2020-04-05', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('462', '2020-04-06', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('463', '2020-04-07', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('464', '2020-04-08', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('465', '2020-04-09', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('466', '2020-04-10', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('467', '2020-04-11', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('468', '2020-04-12', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('469', '2020-04-13', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('470', '2020-04-14', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('471', '2020-04-15', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('472', '2020-04-16', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('473', '2020-04-17', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('474', '2020-04-18', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('475', '2020-04-19', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('476', '2020-04-20', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('477', '2020-04-21', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('478', '2020-04-22', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('479', '2020-04-23', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('480', '2020-04-24', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('481', '2020-04-25', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('482', '2020-04-26', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('483', '2020-04-27', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('484', '2020-04-28', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('485', '2020-04-29', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('486', '2020-04-30', '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('487', '2020-05-01', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('488', '2020-05-02', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('489', '2020-05-03', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('490', '2020-05-04', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('491', '2020-05-05', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('492', '2020-05-06', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('493', '2020-05-07', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('494', '2020-05-08', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('495', '2020-05-09', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('496', '2020-05-10', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('497', '2020-05-11', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('498', '2020-05-12', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('499', '2020-05-13', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('500', '2020-05-14', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('501', '2020-05-15', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('502', '2020-05-16', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('503', '2020-05-17', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('504', '2020-05-18', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('505', '2020-05-19', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('506', '2020-05-20', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('507', '2020-05-21', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('508', '2020-05-22', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('509', '2020-05-23', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('510', '2020-05-24', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('511', '2020-05-25', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('512', '2020-05-26', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('513', '2020-05-27', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('514', '2020-05-28', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('515', '2020-05-29', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('516', '2020-05-30', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('517', '2020-05-31', '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('518', '2020-06-01', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('519', '2020-06-02', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('520', '2020-06-03', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('521', '2020-06-04', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('522', '2020-06-05', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('523', '2020-06-06', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('524', '2020-06-07', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('525', '2020-06-08', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('526', '2020-06-09', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('527', '2020-06-10', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('528', '2020-06-11', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('529', '2020-06-12', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('530', '2020-06-13', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('531', '2020-06-14', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('532', '2020-06-15', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('533', '2020-06-16', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('534', '2020-06-17', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('535', '2020-06-18', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('536', '2020-06-19', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('537', '2020-06-20', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('538', '2020-06-21', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('539', '2020-06-22', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('540', '2020-06-23', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('541', '2020-06-24', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('542', '2020-06-25', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('543', '2020-06-26', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('544', '2020-06-27', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('545', '2020-06-28', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('546', '2020-06-29', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('547', '2020-06-30', '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('548', '2020-07-01', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('549', '2020-07-02', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('550', '2020-07-03', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('551', '2020-07-04', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('552', '2020-07-05', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('553', '2020-07-06', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('554', '2020-07-07', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('555', '2020-07-08', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('556', '2020-07-09', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('557', '2020-07-10', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('558', '2020-07-11', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('559', '2020-07-12', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('560', '2020-07-13', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('561', '2020-07-14', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('562', '2020-07-15', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('563', '2020-07-16', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('564', '2020-07-17', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('565', '2020-07-18', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('566', '2020-07-19', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('567', '2020-07-20', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('568', '2020-07-21', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('569', '2020-07-22', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('570', '2020-07-23', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('571', '2020-07-24', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('572', '2020-07-25', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('573', '2020-07-26', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('574', '2020-07-27', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('575', '2020-07-28', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('576', '2020-07-29', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('577', '2020-07-30', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('578', '2020-07-31', '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('579', '2020-08-01', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('580', '2020-08-02', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('581', '2020-08-03', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('582', '2020-08-04', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('583', '2020-08-05', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('584', '2020-08-06', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('585', '2020-08-07', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('586', '2020-08-08', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('587', '2020-08-09', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('588', '2020-08-10', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('589', '2020-08-11', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('590', '2020-08-12', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('591', '2020-08-13', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('592', '2020-08-14', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('593', '2020-08-15', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('594', '2020-08-16', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('595', '2020-08-17', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('596', '2020-08-18', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('597', '2020-08-19', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('598', '2020-08-20', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('599', '2020-08-21', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('600', '2020-08-22', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('601', '2020-08-23', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('602', '2020-08-24', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('603', '2020-08-25', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('604', '2020-08-26', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('605', '2020-08-27', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('606', '2020-08-28', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('607', '2020-08-29', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('608', '2020-08-30', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('609', '2020-08-31', '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('610', '2020-09-01', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('611', '2020-09-02', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('612', '2020-09-03', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('613', '2020-09-04', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('614', '2020-09-05', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('615', '2020-09-06', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('616', '2020-09-07', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('617', '2020-09-08', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('618', '2020-09-09', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('619', '2020-09-10', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('620', '2020-09-11', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('621', '2020-09-12', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('622', '2020-09-13', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('623', '2020-09-14', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('624', '2020-09-15', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('625', '2020-09-16', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('626', '2020-09-17', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('627', '2020-09-18', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('628', '2020-09-19', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('629', '2020-09-20', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('630', '2020-09-21', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('631', '2020-09-22', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('632', '2020-09-23', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('633', '2020-09-24', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('634', '2020-09-25', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('635', '2020-09-26', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('636', '2020-09-27', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('637', '2020-09-28', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('638', '2020-09-29', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('639', '2020-09-30', '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('640', '2020-10-01', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('641', '2020-10-02', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('642', '2020-10-03', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('643', '2020-10-04', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('644', '2020-10-05', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('645', '2020-10-06', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('646', '2020-10-07', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('647', '2020-10-08', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('648', '2020-10-09', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('649', '2020-10-10', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('650', '2020-10-11', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('651', '2020-10-12', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('652', '2020-10-13', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('653', '2020-10-14', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('654', '2020-10-15', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('655', '2020-10-16', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('656', '2020-10-17', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('657', '2020-10-18', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('658', '2020-10-19', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('659', '2020-10-20', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('660', '2020-10-21', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('661', '2020-10-22', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('662', '2020-10-23', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('663', '2020-10-24', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('664', '2020-10-25', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('665', '2020-10-26', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('666', '2020-10-27', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('667', '2020-10-28', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('668', '2020-10-29', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('669', '2020-10-30', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('670', '2020-10-31', '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('671', '2020-11-01', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('672', '2020-11-02', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('673', '2020-11-03', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('674', '2020-11-04', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('675', '2020-11-05', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('676', '2020-11-06', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('677', '2020-11-07', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('678', '2020-11-08', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('679', '2020-11-09', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('680', '2020-11-10', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('681', '2020-11-11', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('682', '2020-11-12', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('683', '2020-11-13', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('684', '2020-11-14', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('685', '2020-11-15', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('686', '2020-11-16', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('687', '2020-11-17', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('688', '2020-11-18', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('689', '2020-11-19', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('690', '2020-11-20', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('691', '2020-11-21', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('692', '2020-11-22', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('693', '2020-11-23', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('694', '2020-11-24', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('695', '2020-11-25', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('696', '2020-11-26', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('697', '2020-11-27', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('698', '2020-11-28', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('699', '2020-11-29', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('700', '2020-11-30', '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('701', '2020-12-01', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('702', '2020-12-02', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('703', '2020-12-03', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('704', '2020-12-04', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('705', '2020-12-05', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('706', '2020-12-06', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('707', '2020-12-07', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('708', '2020-12-08', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('709', '2020-12-09', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('710', '2020-12-10', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('711', '2020-12-11', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('712', '2020-12-12', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('713', '2020-12-13', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('714', '2020-12-14', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('715', '2020-12-15', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('716', '2020-12-16', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('717', '2020-12-17', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('718', '2020-12-18', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('719', '2020-12-19', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('720', '2020-12-20', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('721', '2020-12-21', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('722', '2020-12-22', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('723', '2020-12-23', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('724', '2020-12-24', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('725', '2020-12-25', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('726', '2020-12-26', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('727', '2020-12-27', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('728', '2020-12-28', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('729', '2020-12-29', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('730', '2020-12-30', '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('731', null, '1', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('732', null, '2', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('733', null, '3', '1', '2019', null);
INSERT INTO `date_dim` VALUES ('734', null, null, '1', '2019', null);
INSERT INTO `date_dim` VALUES ('735', null, '4', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('736', null, '5', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('737', null, '6', '2', '2019', null);
INSERT INTO `date_dim` VALUES ('738', null, null, '2', '2019', null);
INSERT INTO `date_dim` VALUES ('739', null, '7', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('740', null, '8', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('741', null, '9', '3', '2019', null);
INSERT INTO `date_dim` VALUES ('742', null, null, '3', '2019', null);
INSERT INTO `date_dim` VALUES ('743', null, '10', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('744', null, '11', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('745', null, '12', '4', '2019', null);
INSERT INTO `date_dim` VALUES ('746', null, null, '4', '2019', null);
INSERT INTO `date_dim` VALUES ('747', null, null, null, '2019', null);
INSERT INTO `date_dim` VALUES ('748', null, '1', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('749', null, '2', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('750', null, '3', '1', '2020', null);
INSERT INTO `date_dim` VALUES ('751', null, null, '1', '2020', null);
INSERT INTO `date_dim` VALUES ('752', null, '4', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('753', null, '5', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('754', null, '6', '2', '2020', null);
INSERT INTO `date_dim` VALUES ('755', null, null, '2', '2020', null);
INSERT INTO `date_dim` VALUES ('756', null, '7', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('757', null, '8', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('758', null, '9', '3', '2020', null);
INSERT INTO `date_dim` VALUES ('759', null, null, '3', '2020', null);
INSERT INTO `date_dim` VALUES ('760', null, '10', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('761', null, '11', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('762', null, '12', '4', '2020', null);
INSERT INTO `date_dim` VALUES ('763', null, null, '4', '2020', null);
INSERT INTO `date_dim` VALUES ('764', null, null, null, '2020', null);
INSERT INTO `date_dim` VALUES ('765', null, null, null, null, null);

-- ----------------------------
-- Table structure for metric_tbl_1
-- ----------------------------
DROP TABLE IF EXISTS `metric_tbl_1`;
CREATE TABLE `metric_tbl_1` (
  `date_dim_id` int(11) NOT NULL COMMENT '日期维度标识 -- ',
  `b000000001` decimal(20,4) DEFAULT NULL COMMENT '大专学历以上人口数量 -- ',
  `b000000002` decimal(20,4) DEFAULT NULL COMMENT '累计新冠患者数量 -- ',
  `b000000003` decimal(20,4) DEFAULT NULL COMMENT '基础指标0003 -- ',
  `b000000004` decimal(20,4) DEFAULT NULL COMMENT '基础指标0004 -- ',
  `b000000005` decimal(20,4) DEFAULT NULL COMMENT '基础指标0005 -- ',
  `d000000001` decimal(20,4) DEFAULT NULL COMMENT '新冠患者占人口比例 -- ',
  PRIMARY KEY (`date_dim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标主表1 -- ';

-- ----------------------------
-- Records of metric_tbl_1
-- ----------------------------

-- ----------------------------
-- Table structure for metric_tbl_2
-- ----------------------------
DROP TABLE IF EXISTS `metric_tbl_2`;
CREATE TABLE `metric_tbl_2` (
  `date_dim_id` int(11) NOT NULL COMMENT '日期维度标识 -- ',
  `admin_dim_id` int(11) NOT NULL COMMENT '行政区划维度标识 -- ',
  `b000000010` decimal(20,4) DEFAULT NULL COMMENT '人口规模 -- ',
  `b000000011` decimal(20,4) DEFAULT NULL COMMENT '核酸检测人次 -- ',
  `b000000012` decimal(20,4) DEFAULT NULL COMMENT '健康异常人数 -- ',
  `d000000011` decimal(20,4) DEFAULT NULL COMMENT '健康异常人口比例 -- ',
  `d000000012` decimal(20,4) DEFAULT NULL COMMENT '衍生指标0012 -- ',
  `d000000013` decimal(20,4) DEFAULT NULL COMMENT '衍生指标0013 -- ',
  PRIMARY KEY (`date_dim_id`,`admin_dim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标主表2 -- ';

-- ----------------------------
-- Records of metric_tbl_2
-- ----------------------------

-- ----------------------------
-- Table structure for metric_tbl_3
-- ----------------------------
DROP TABLE IF EXISTS `metric_tbl_3`;
CREATE TABLE `metric_tbl_3` (
  `date_dim_id` int(11) NOT NULL COMMENT '日期维度标识 -- ',
  `admin_dim_id` int(11) NOT NULL COMMENT '行政区划维度标识 -- ',
  `busi_dim_id` int(11) NOT NULL COMMENT '行业维度标识 -- ',
  `b000000020` decimal(20,4) DEFAULT NULL COMMENT '就业人数 -- ',
  `b000000021` decimal(20,4) DEFAULT NULL COMMENT '小微企业数量 -- ',
  `b000000022` decimal(20,4) DEFAULT NULL COMMENT '中型企业数量 -- ',
  `b000000023` decimal(20,4) DEFAULT NULL COMMENT '大型企业数量 -- ',
  `b000000024` decimal(20,4) DEFAULT NULL COMMENT '企业净利润 -- ',
  `d000000021` decimal(20,4) DEFAULT NULL COMMENT '中小企业数量 -- ',
  `d000000022` decimal(20,4) DEFAULT NULL COMMENT '中小企业数量占比 -- ',
  `d000000023` decimal(20,4) DEFAULT NULL COMMENT '衍生指标0023 -- ',
  PRIMARY KEY (`date_dim_id`,`admin_dim_id`,`busi_dim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标主表3 -- ';

-- ----------------------------
-- Records of metric_tbl_3
-- ----------------------------
