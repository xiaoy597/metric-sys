/*
Navicat MySQL Data Transfer

Source Server         : Salmon
Source Server Version : 50648
Source Host           : salmon:3306
Source Database       : metric_src_db

Target Server Type    : MYSQL
Target Server Version : 50648
File Encoding         : 65001

Date: 2020-07-14 14:05:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_unit
-- ----------------------------
DROP TABLE IF EXISTS `admin_unit`;
CREATE TABLE `admin_unit` (
  `admin_cd` varchar(20) NOT NULL COMMENT '行政区划代码 -- ',
  `admin_nm` varchar(20) DEFAULT NULL COMMENT '行政区划名称 -- ',
  PRIMARY KEY (`admin_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行政区划 -- ';

-- ----------------------------
-- Records of admin_unit
-- ----------------------------
INSERT INTO `admin_unit` VALUES ('110101001001', '北京市东城区东华门街道多福巷社区');
INSERT INTO `admin_unit` VALUES ('110101001002', '北京市东城区东华门街道银闸社区');
INSERT INTO `admin_unit` VALUES ('110101001005', '北京市东城区东华门街道东厂社区');
INSERT INTO `admin_unit` VALUES ('110101001006', '北京市东城区东华门街道智德社区');
INSERT INTO `admin_unit` VALUES ('110101001007', '北京市东城区东华门街道南池子社区');
INSERT INTO `admin_unit` VALUES ('110101001008', '北京市东城区东华门街道黄图岗社区');
INSERT INTO `admin_unit` VALUES ('110101001009', '北京市东城区东华门街道灯市口社区');
INSERT INTO `admin_unit` VALUES ('110101001010', '北京市东城区东华门街道正义路社区');
INSERT INTO `admin_unit` VALUES ('110101001011', '北京市东城区东华门街道甘雨社区');
INSERT INTO `admin_unit` VALUES ('110101001013', '北京市东城区东华门街道台基厂社区');
INSERT INTO `admin_unit` VALUES ('110101001014', '北京市东城区东华门街道韶九社区');
INSERT INTO `admin_unit` VALUES ('110101001015', '北京市东城区东华门街道王府井社区');
INSERT INTO `admin_unit` VALUES ('110101002001', '北京市东城区景山街道隆福寺社区');
INSERT INTO `admin_unit` VALUES ('110101002002', '北京市东城区景山街道吉祥社区');
INSERT INTO `admin_unit` VALUES ('110101002003', '北京市东城区景山街道黄化门社区');
INSERT INTO `admin_unit` VALUES ('110101002004', '北京市东城区景山街道钟鼓社区');
INSERT INTO `admin_unit` VALUES ('110101002005', '北京市东城区景山街道魏家社区');
INSERT INTO `admin_unit` VALUES ('110101002006', '北京市东城区景山街道汪芝麻社区');
INSERT INTO `admin_unit` VALUES ('110101002008', '北京市东城区景山街道景山东街社区');
INSERT INTO `admin_unit` VALUES ('110101002009', '北京市东城区景山街道皇城根北街社区');
INSERT INTO `admin_unit` VALUES ('110101003001', '北京市东城区交道口街道交东社区');
INSERT INTO `admin_unit` VALUES ('110101003002', '北京市东城区交道口街道福祥社区');
INSERT INTO `admin_unit` VALUES ('110101003003', '北京市东城区交道口街道大兴社区');
INSERT INTO `admin_unit` VALUES ('110101003005', '北京市东城区交道口街道府学社区');
INSERT INTO `admin_unit` VALUES ('110101003007', '北京市东城区交道口街道鼓楼苑社区');
INSERT INTO `admin_unit` VALUES ('110101003008', '北京市东城区交道口街道菊儿社区');
INSERT INTO `admin_unit` VALUES ('110101003009', '北京市东城区交道口街道南锣鼓巷社区');
INSERT INTO `admin_unit` VALUES ('110101004001', '北京市东城区安定门街道交北头条社区');
INSERT INTO `admin_unit` VALUES ('110101004002', '北京市东城区安定门街道北锣鼓巷社区');
INSERT INTO `admin_unit` VALUES ('110101004003', '北京市东城区安定门街道国子监社区');
INSERT INTO `admin_unit` VALUES ('110101004004', '北京市东城区安定门街道钟楼湾社区	');
INSERT INTO `admin_unit` VALUES ('110101004005', '北京市东城区安定门街道宝钞南社区');
INSERT INTO `admin_unit` VALUES ('110101004006', '北京市东城区安定门街道五道营社区');
INSERT INTO `admin_unit` VALUES ('110101004009', '北京市东城区安定门街道分司厅社区');
INSERT INTO `admin_unit` VALUES ('110101004011', '北京市东城区安定门街道国旺社区');
INSERT INTO `admin_unit` VALUES ('110101004012', '北京市东城区安定门街道花园社区');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `busi_cd` varchar(20) NOT NULL COMMENT '行业代码 -- ',
  `busi_nm` varchar(20) DEFAULT NULL COMMENT '行业名称 -- ',
  PRIMARY KEY (`busi_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业 -- ';

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('0111', '稻谷种植');
INSERT INTO `business` VALUES ('0112', '小麦种植');
INSERT INTO `business` VALUES ('0113', '玉米种植');
INSERT INTO `business` VALUES ('0119', '其他谷物种植');
INSERT INTO `business` VALUES ('0121', '豆类种植');
INSERT INTO `business` VALUES ('0122', '油料种植');
INSERT INTO `business` VALUES ('0123', '薯类种植');
INSERT INTO `business` VALUES ('0131', '棉花种植');
INSERT INTO `business` VALUES ('0132', '麻类种植');
INSERT INTO `business` VALUES ('0133', '糖料种植');
INSERT INTO `business` VALUES ('0134', '烟草种植');
INSERT INTO `business` VALUES ('0141', '蔬菜种植');
INSERT INTO `business` VALUES ('0142', '食用菌种植');
INSERT INTO `business` VALUES ('0143', '花卉种植');
INSERT INTO `business` VALUES ('0149', '其他园艺作物种植');
INSERT INTO `business` VALUES ('0211', '林木育种');
INSERT INTO `business` VALUES ('0212', '林木育苗');
INSERT INTO `business` VALUES ('0220', '造林和更新');
INSERT INTO `business` VALUES ('0231', '森林经营和管护');
INSERT INTO `business` VALUES ('0232', '森林改培');
INSERT INTO `business` VALUES ('0241', '木材采运');
INSERT INTO `business` VALUES ('0242', '竹材采运');
INSERT INTO `business` VALUES ('0251', '木竹材林产品采集');
INSERT INTO `business` VALUES ('0252', '非木竹材林产品采集');
INSERT INTO `business` VALUES ('0610', '烟煤和无烟煤开采洗选');
INSERT INTO `business` VALUES ('0620', '褐煤开采洗选');
INSERT INTO `business` VALUES ('0690', '其他煤炭采选');
INSERT INTO `business` VALUES ('0711', '陆地石油开采');
INSERT INTO `business` VALUES ('0712', '海洋石油开采');
INSERT INTO `business` VALUES ('0721', '陆地天然气开采');
INSERT INTO `business` VALUES ('0722', '海洋天然气及可燃冰开采');

-- ----------------------------
-- Table structure for corp_finance_index
-- ----------------------------
DROP TABLE IF EXISTS `corp_finance_index`;
CREATE TABLE `corp_finance_index` (
  `corp_id` int(11) NOT NULL COMMENT '企业标识 -- ',
  `data_dt` date NOT NULL COMMENT '数据日期 -- ',
  `total_asset` decimal(20,4) DEFAULT NULL COMMENT '总资产 -- ',
  `main_busi_income` decimal(20,4) DEFAULT NULL COMMENT '主营业务收入 -- ',
  `net_profit` decimal(20,4) DEFAULT NULL COMMENT '净利润 -- ',
  PRIMARY KEY (`corp_id`,`data_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业财务指标 -- ';

-- ----------------------------
-- Records of corp_finance_index
-- ----------------------------
INSERT INTO `corp_finance_index` VALUES ('1', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('1', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('1', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('1', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('2', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('2', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('2', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('2', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('3', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('3', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('3', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('3', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('4', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('4', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('4', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('4', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('5', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('5', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('5', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('5', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('6', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('6', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('6', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('6', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('7', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('7', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('7', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('7', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('8', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('8', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('8', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('8', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('9', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('9', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('9', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('9', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('10', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('10', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('10', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('10', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('11', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('11', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('11', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('11', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('12', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('12', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('12', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('12', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('13', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('13', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('13', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('13', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('14', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('14', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('14', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('14', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('15', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('15', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('15', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('15', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('16', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('16', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('16', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('16', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('17', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('17', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('17', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('17', '2020-06-30', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('18', '2018-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('18', '2019-12-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('18', '2020-03-31', '1000.0000', '100.0000', '10.0000');
INSERT INTO `corp_finance_index` VALUES ('18', '2020-06-30', '1000.0000', '100.0000', '10.0000');

-- ----------------------------
-- Table structure for corporation
-- ----------------------------
DROP TABLE IF EXISTS `corporation`;
CREATE TABLE `corporation` (
  `corp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '企业标识 -- ',
  `corp_nm` varchar(20) DEFAULT NULL COMMENT '企业名称 -- ',
  `social_code` varchar(20) DEFAULT NULL COMMENT '社会统一代码 -- ',
  `corp_addr` varchar(20) DEFAULT NULL COMMENT '注册地址 -- ',
  `reg_dt` date DEFAULT NULL COMMENT '注册日期 -- ',
  `cancel_dt` date DEFAULT NULL COMMENT '注销日期 -- ',
  `busi_cd` varchar(20) DEFAULT NULL COMMENT '行业代码 -- ',
  `reg_admin_cd` varchar(20) DEFAULT NULL COMMENT '注册地区 -- ',
  `corp_scale` int(11) DEFAULT NULL COMMENT '企业规模 -- 0：小微企业，1：中型企业，2：大型企业',
  PRIMARY KEY (`corp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='企业 -- ';

-- ----------------------------
-- Records of corporation
-- ----------------------------
INSERT INTO `corporation` VALUES ('1', '农场1', '1', null, '2020-01-01', null, '0111', '110101001001', '0');
INSERT INTO `corporation` VALUES ('2', '农场2', '2', null, '2019-01-01', '2020-06-20', '0112', '110101001001', '1');
INSERT INTO `corporation` VALUES ('3', '农场3', '3', null, '2015-04-02', null, '0113', '110101002001', '2');
INSERT INTO `corporation` VALUES ('4', '农场4', '4', null, '2010-06-25', null, '0113', '110101002001', '1');
INSERT INTO `corporation` VALUES ('5', '农场5', '5', null, '2007-11-19', null, '0111', '110101003003', '0');
INSERT INTO `corporation` VALUES ('6', '农场6', '6', null, '2004-07-11', null, '0119', '110101004003', '2');
INSERT INTO `corporation` VALUES ('7', '农场7', '7', null, '2016-08-28', null, '0121', '110101004003', '1');
INSERT INTO `corporation` VALUES ('8', '农场8', '8', null, '2001-05-21', null, '0131', '110101004005', '2');
INSERT INTO `corporation` VALUES ('9', '农场9', '9', null, '1995-03-22', null, '0134', '110101004011', '0');
INSERT INTO `corporation` VALUES ('10', '林场1', '10', null, '1960-10-23', null, '0211', '110101001002', '2');
INSERT INTO `corporation` VALUES ('11', '林场2', '11', null, '1992-02-15', null, '0220', '110101002008', '1');
INSERT INTO `corporation` VALUES ('12', '林场3', '12', null, '2010-07-12', null, '0212', '110101003003', '1');
INSERT INTO `corporation` VALUES ('13', '林场4', '13', null, '2004-05-18', null, '0241', '110101004012', '1');
INSERT INTO `corporation` VALUES ('14', '矿场1', '14', null, '1986-03-22', null, '0610', '110101003008', '2');
INSERT INTO `corporation` VALUES ('15', '矿场2', '15', null, '2003-11-05', null, '0620', '110101003003', '1');
INSERT INTO `corporation` VALUES ('16', '矿场3', '16', null, '2016-03-10', null, '0711', '110101001009', '0');
INSERT INTO `corporation` VALUES ('17', '矿场4', '17', null, '2008-10-04', null, '0712', '110101004001', '2');
INSERT INTO `corporation` VALUES ('18', '矿场5', '18', null, '2017-12-30', null, '0721', '110101001015', '1');

-- ----------------------------
-- Table structure for covid_treatment
-- ----------------------------
DROP TABLE IF EXISTS `covid_treatment`;
CREATE TABLE `covid_treatment` (
  `person_id` int(11) NOT NULL COMMENT '人口标识 -- ',
  `begin_dt` date NOT NULL COMMENT '确诊日期 -- ',
  `treat_result` int(11) DEFAULT NULL COMMENT '治疗结果 -- 0：治愈，1：死亡',
  `end_dt` date DEFAULT NULL COMMENT '治疗结束日期 -- ',
  PRIMARY KEY (`person_id`,`begin_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新冠治疗记录 -- ';

-- ----------------------------
-- Records of covid_treatment
-- ----------------------------
INSERT INTO `covid_treatment` VALUES ('8', '2020-04-03', '0', '2020-05-10');
INSERT INTO `covid_treatment` VALUES ('19', '2020-04-16', '0', '2020-06-01');
INSERT INTO `covid_treatment` VALUES ('35', '2020-03-19', '0', '2020-04-30');
INSERT INTO `covid_treatment` VALUES ('58', '2020-03-23', '0', '2020-05-03');
INSERT INTO `covid_treatment` VALUES ('70', '2020-05-01', '0', '2020-05-30');
INSERT INTO `covid_treatment` VALUES ('92', '2020-03-10', '0', '2020-04-28');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '人口标识 -- ',
  `person_nm` varchar(20) DEFAULT NULL COMMENT '姓名 -- ',
  `cert_number` varchar(20) DEFAULT NULL COMMENT '身份证号码 -- ',
  `birth_dt` date DEFAULT NULL COMMENT '出生日期 -- ',
  `death_dt` date DEFAULT NULL COMMENT '死亡日期 -- ',
  `degree` int(11) DEFAULT NULL COMMENT '教育水平 -- 0：文盲，1：小学，2：初中，3：高中，4：大专，5：本科，6：硕士，7：博士，8：博士后',
  `addr_admin_cd` varchar(20) DEFAULT NULL COMMENT '常住地区 -- ',
  `corp_id` int(11) DEFAULT NULL COMMENT '企业标识 -- ',
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='人口 -- ';

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('0', '人员0', '0', '2020-01-01', null, '0', '110101001002', null);
INSERT INTO `person` VALUES ('1', '人员1', '1', '2020-01-01', null, '0', '110101001002', null);
INSERT INTO `person` VALUES ('2', '人员2', '2', '2020-01-01', null, '0', '110101001001', null);
INSERT INTO `person` VALUES ('3', '人员3', '3', '2020-01-01', null, '0', '110101004005', null);
INSERT INTO `person` VALUES ('4', '人员4', '4', '2020-01-01', null, '0', '110101001007', null);
INSERT INTO `person` VALUES ('5', '人员5', '5', '2020-01-01', null, '0', '110101003005', null);
INSERT INTO `person` VALUES ('6', '人员6', '6', '2020-01-01', null, '0', '110101001001', null);
INSERT INTO `person` VALUES ('7', '人员7', '7', '2020-01-01', null, '0', '110101002003', null);
INSERT INTO `person` VALUES ('8', '人员8', '8', '2020-01-01', null, '0', '110101001001', null);
INSERT INTO `person` VALUES ('9', '人员9', '9', '2020-01-01', null, '0', '110101004003', null);
INSERT INTO `person` VALUES ('10', '人员10', '10', '2010-01-01', null, '1', '110101001009', null);
INSERT INTO `person` VALUES ('11', '人员11', '11', '2010-01-01', null, '1', '110101001007', null);
INSERT INTO `person` VALUES ('12', '人员12', '12', '2010-01-01', null, '1', '110101001010', null);
INSERT INTO `person` VALUES ('13', '人员13', '13', '2010-01-01', null, '1', '110101001013', null);
INSERT INTO `person` VALUES ('14', '人员14', '14', '2010-01-01', null, '1', '110101001002', null);
INSERT INTO `person` VALUES ('15', '人员15', '15', '2010-01-01', null, '1', '110101004012', null);
INSERT INTO `person` VALUES ('16', '人员16', '16', '2010-01-01', null, '1', '110101001001', null);
INSERT INTO `person` VALUES ('17', '人员17', '17', '2010-01-01', null, '1', '110101002009', null);
INSERT INTO `person` VALUES ('18', '人员18', '18', '2010-01-01', null, '1', '110101002004', null);
INSERT INTO `person` VALUES ('19', '人员19', '19', '2010-01-01', null, '1', '110101004006', null);
INSERT INTO `person` VALUES ('20', '人员20', '20', '2007-01-01', null, '2', '110101003002', null);
INSERT INTO `person` VALUES ('21', '人员21', '21', '2007-01-01', null, '2', '110101001007', null);
INSERT INTO `person` VALUES ('22', '人员22', '22', '2007-01-01', null, '2', '110101001006', null);
INSERT INTO `person` VALUES ('23', '人员23', '23', '2007-01-01', null, '2', '110101001013', null);
INSERT INTO `person` VALUES ('24', '人员24', '24', '2007-01-01', null, '2', '110101004006', null);
INSERT INTO `person` VALUES ('25', '人员25', '25', '2007-01-01', null, '2', '110101004012', null);
INSERT INTO `person` VALUES ('26', '人员26', '26', '2007-01-01', null, '2', '110101001001', null);
INSERT INTO `person` VALUES ('27', '人员27', '27', '2007-01-01', null, '2', '110101002009', null);
INSERT INTO `person` VALUES ('28', '人员28', '28', '2007-01-01', null, '2', '110101004011', null);
INSERT INTO `person` VALUES ('29', '人员29', '29', '2007-01-01', null, '2', '110101004006', null);
INSERT INTO `person` VALUES ('30', '人员30', '30', '2004-01-01', null, '3', '110101001006', null);
INSERT INTO `person` VALUES ('31', '人员31', '31', '2004-01-01', null, '3', '110101001007', null);
INSERT INTO `person` VALUES ('32', '人员32', '32', '2004-01-01', null, '3', '110101001002', null);
INSERT INTO `person` VALUES ('33', '人员33', '33', '2004-01-01', null, '3', '110101004011', null);
INSERT INTO `person` VALUES ('34', '人员34', '34', '2004-01-01', null, '3', '110101004005', null);
INSERT INTO `person` VALUES ('35', '人员35', '35', '2004-01-01', null, '3', '110101004012', null);
INSERT INTO `person` VALUES ('36', '人员36', '36', '2004-01-01', null, '3', '110101001001', null);
INSERT INTO `person` VALUES ('37', '人员37', '37', '2004-01-01', null, '3', '110101001011', null);
INSERT INTO `person` VALUES ('38', '人员38', '38', '2004-01-01', null, '3', '110101002001', null);
INSERT INTO `person` VALUES ('39', '人员39', '39', '2004-01-01', null, '3', '110101004006', null);
INSERT INTO `person` VALUES ('40', '人员40', '40', '2000-01-01', null, '5', '110101001006', null);
INSERT INTO `person` VALUES ('41', '人员41', '41', '2000-01-01', null, '5', '110101003008', null);
INSERT INTO `person` VALUES ('42', '人员42', '42', '2000-01-01', null, '5', '110101001011', null);
INSERT INTO `person` VALUES ('43', '人员43', '43', '2000-01-01', null, '5', '110101004011', null);
INSERT INTO `person` VALUES ('44', '人员44', '44', '2000-01-01', null, '5', '110101001011', null);
INSERT INTO `person` VALUES ('45', '人员45', '45', '2000-01-01', null, '5', '110101002002', null);
INSERT INTO `person` VALUES ('46', '人员46', '46', '2000-01-01', null, '5', '110101001001', null);
INSERT INTO `person` VALUES ('47', '人员47', '47', '2000-01-01', null, '5', '110101001007', null);
INSERT INTO `person` VALUES ('48', '人员48', '48', '2000-01-01', null, '5', '110101004003', null);
INSERT INTO `person` VALUES ('49', '人员49', '49', '2000-01-01', null, '5', '110101004006', null);
INSERT INTO `person` VALUES ('50', '人员50', '50', '1995-01-01', null, '6', '110101002004', '1');
INSERT INTO `person` VALUES ('51', '人员51', '51', '1995-01-01', null, '6', '110101001005', '2');
INSERT INTO `person` VALUES ('52', '人员52', '52', '1995-01-01', null, '6', '110101003002', '3');
INSERT INTO `person` VALUES ('53', '人员53', '53', '1995-01-01', null, '6', '110101004011', '4');
INSERT INTO `person` VALUES ('54', '人员54', '54', '1995-01-01', null, '6', '110101001011', '5');
INSERT INTO `person` VALUES ('55', '人员55', '55', '1995-01-01', null, '5', '110101002002', '6');
INSERT INTO `person` VALUES ('56', '人员56', '56', '1995-01-01', null, '5', '110101001001', '7');
INSERT INTO `person` VALUES ('57', '人员57', '57', '1995-01-01', null, '5', '110101001007', '8');
INSERT INTO `person` VALUES ('58', '人员58', '58', '1995-01-01', null, '5', '110101003007', '9');
INSERT INTO `person` VALUES ('59', '人员59', '59', '1995-01-01', null, '5', '110101004005', '10');
INSERT INTO `person` VALUES ('60', '人员60', '60', '1990-01-01', null, '6', '110101001013', '11');
INSERT INTO `person` VALUES ('61', '人员61', '61', '1990-01-01', null, '6', '110101002004', '12');
INSERT INTO `person` VALUES ('62', '人员62', '62', '1990-01-01', null, '6', '110101001008', '13');
INSERT INTO `person` VALUES ('63', '人员63', '63', '1990-01-01', null, '6', '110101004011', '14');
INSERT INTO `person` VALUES ('64', '人员64', '64', '1990-01-01', null, '6', '110101001011', '15');
INSERT INTO `person` VALUES ('65', '人员65', '65', '1990-01-01', null, '5', '110101001006', '16');
INSERT INTO `person` VALUES ('66', '人员66', '66', '1990-01-01', null, '5', '110101001001', '17');
INSERT INTO `person` VALUES ('67', '人员67', '67', '1990-01-01', null, '5', '110101001007', '18');
INSERT INTO `person` VALUES ('68', '人员68', '68', '1990-01-01', null, '5', '110101004003', '9');
INSERT INTO `person` VALUES ('69', '人员69', '69', '1990-01-01', null, '5', '110101004005', '10');
INSERT INTO `person` VALUES ('70', '人员70', '70', '1980-01-01', null, '6', '110101001001', '11');
INSERT INTO `person` VALUES ('71', '人员71', '71', '1980-01-01', null, '7', '110101001006', '12');
INSERT INTO `person` VALUES ('72', '人员72', '72', '1980-01-01', null, '6', '110101001008', '13');
INSERT INTO `person` VALUES ('73', '人员73', '73', '1980-01-01', null, '6', '110101001015', '4');
INSERT INTO `person` VALUES ('74', '人员74', '74', '1980-01-01', null, '7', '110101001011', '5');
INSERT INTO `person` VALUES ('75', '人员75', '75', '1980-01-01', null, '5', '110101003003', '6');
INSERT INTO `person` VALUES ('76', '人员76', '76', '1980-01-01', null, '5', '110101004004', '7');
INSERT INTO `person` VALUES ('77', '人员77', '77', '1980-01-01', null, '7', '110101001007', '8');
INSERT INTO `person` VALUES ('78', '人员78', '78', '1980-01-01', null, '5', '110101004011', '9');
INSERT INTO `person` VALUES ('79', '人员79', '79', '1980-01-01', null, '5', '110101004005', '1');
INSERT INTO `person` VALUES ('80', '人员80', '80', '1970-01-01', null, '4', '110101001005', '4');
INSERT INTO `person` VALUES ('81', '人员81', '81', '1970-01-01', null, '7', '110101001006', '5');
INSERT INTO `person` VALUES ('82', '人员82', '82', '1970-01-01', null, '6', '110101001008', '6');
INSERT INTO `person` VALUES ('83', '人员83', '83', '1970-01-01', null, '6', '110101001008', '7');
INSERT INTO `person` VALUES ('84', '人员84', '84', '1970-01-01', null, '4', '110101003003', '8');
INSERT INTO `person` VALUES ('85', '人员85', '85', '1970-01-01', null, '5', '110101002005', '9');
INSERT INTO `person` VALUES ('86', '人员86', '86', '1970-01-01', null, '5', '110101004004', '17');
INSERT INTO `person` VALUES ('87', '人员87', '87', '1970-01-01', null, '7', '110101001007', '18');
INSERT INTO `person` VALUES ('88', '人员88', '88', '1970-01-01', null, '3', '110101003007', '9');
INSERT INTO `person` VALUES ('89', '人员89', '89', '1970-01-01', null, '5', '110101004003', '11');
INSERT INTO `person` VALUES ('90', '人员90', '90', '1960-01-01', null, '5', '110101002009', '4');
INSERT INTO `person` VALUES ('91', '人员91', '91', '1960-01-01', '2015-04-20', '3', '110101003008', '5');
INSERT INTO `person` VALUES ('92', '人员92', '92', '1960-01-01', null, '6', '110101002006', '6');
INSERT INTO `person` VALUES ('93', '人员93', '93', '1960-01-01', null, '3', '110101001011', '7');
INSERT INTO `person` VALUES ('94', '人员94', '94', '1960-01-01', null, '4', '110101003003', '8');
INSERT INTO `person` VALUES ('95', '人员95', '95', '1960-01-01', null, '3', '110101001010', '9');
INSERT INTO `person` VALUES ('96', '人员96', '96', '1960-01-01', '2019-11-30', '5', '110101004004', '17');
INSERT INTO `person` VALUES ('97', '人员97', '97', '1960-01-01', null, '4', '110101004006', '18');
INSERT INTO `person` VALUES ('98', '人员98', '98', '1960-01-01', null, '3', '110101003007', '9');
INSERT INTO `person` VALUES ('99', '人员99', '99', '1960-01-01', null, '5', '110101004004', '11');

-- ----------------------------
-- Table structure for person_health_record
-- ----------------------------
DROP TABLE IF EXISTS `person_health_record`;
CREATE TABLE `person_health_record` (
  `person_id` int(11) NOT NULL COMMENT '人口标识 -- ',
  `data_dt` date NOT NULL COMMENT '数据日期 -- ',
  `body_temp` int(11) DEFAULT NULL COMMENT '体温 -- ',
  `is_cough` int(11) DEFAULT NULL COMMENT '是否咳嗽 -- ',
  `is_chest_tight` int(11) DEFAULT NULL COMMENT '是否胸闷 -- ',
  PRIMARY KEY (`person_id`,`data_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人口健康记录 -- ';

-- ----------------------------
-- Records of person_health_record
-- ----------------------------
INSERT INTO `person_health_record` VALUES ('0', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('0', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('0', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('0', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('0', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('1', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('1', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('1', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('1', '2020-06-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('1', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('2', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('2', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('2', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('2', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('2', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('3', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('3', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('3', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('3', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('3', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('4', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('4', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('4', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('4', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('4', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('5', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('5', '2020-04-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('5', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('5', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('5', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('6', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('6', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('6', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('6', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('6', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('7', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('7', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('7', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('7', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('7', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('8', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('8', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('8', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('8', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('8', '2020-07-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('9', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('9', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('9', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('9', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('9', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('10', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('10', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('10', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('10', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('10', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('11', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('11', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('11', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('11', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('11', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('12', '2020-03-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('12', '2020-04-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('12', '2020-05-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('12', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('12', '2020-07-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('13', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('13', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('13', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('13', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('13', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('14', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('14', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('14', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('14', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('14', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('15', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('15', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('15', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('15', '2020-06-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('15', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('16', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('16', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('16', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('16', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('16', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('17', '2020-03-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('17', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('17', '2020-05-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('17', '2020-06-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('17', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('18', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('18', '2020-04-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('18', '2020-05-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('18', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('18', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('19', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('19', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('19', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('19', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('19', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('20', '2020-03-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('20', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('20', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('20', '2020-06-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('20', '2020-07-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('21', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('21', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('21', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('21', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('21', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('22', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('22', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('22', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('22', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('22', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('23', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('23', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('23', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('23', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('23', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('24', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('24', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('24', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('24', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('24', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('25', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('25', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('25', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('25', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('25', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('26', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('26', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('26', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('26', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('26', '2020-07-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('27', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('27', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('27', '2020-05-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('27', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('27', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('28', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('28', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('28', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('28', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('28', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('29', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('29', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('29', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('29', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('29', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('30', '2020-03-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('30', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('30', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('30', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('30', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('31', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('31', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('31', '2020-05-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('31', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('31', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('32', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('32', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('32', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('32', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('32', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('33', '2020-03-01', '37', '1', '1');
INSERT INTO `person_health_record` VALUES ('33', '2020-04-01', '37', '0', '1');
INSERT INTO `person_health_record` VALUES ('33', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('33', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('33', '2020-07-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('34', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('34', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('34', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('34', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('34', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('35', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('35', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('35', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('35', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('35', '2020-07-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('36', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('36', '2020-04-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('36', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('36', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('36', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('37', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('37', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('37', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('37', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('37', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('38', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('38', '2020-04-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('38', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('38', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('38', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('39', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('39', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('39', '2020-05-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('39', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('39', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('40', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('40', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('40', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('40', '2020-06-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('40', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('41', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('41', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('41', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('41', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('41', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('42', '2020-03-01', '39', '1', '1');
INSERT INTO `person_health_record` VALUES ('42', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('42', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('42', '2020-06-01', '37', '1', '0');
INSERT INTO `person_health_record` VALUES ('42', '2020-07-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('43', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('43', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('43', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('43', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('43', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('44', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('44', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('44', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('44', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('44', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('45', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('45', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('45', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('45', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('45', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('46', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('46', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('46', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('46', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('46', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('47', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('47', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('47', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('47', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('47', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('48', '2020-03-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('48', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('48', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('48', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('48', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('49', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('49', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('49', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('49', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('49', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('50', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('50', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('50', '2020-05-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('50', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('50', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('51', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('51', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('51', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('51', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('51', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('52', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('52', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('52', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('52', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('52', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('53', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('53', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('53', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('53', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('53', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('54', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('54', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('54', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('54', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('54', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('55', '2020-03-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('55', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('55', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('55', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('55', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('56', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('56', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('56', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('56', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('56', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('57', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('57', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('57', '2020-05-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('57', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('57', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('58', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('58', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('58', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('58', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('58', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('59', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('59', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('59', '2020-05-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('59', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('59', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('60', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('60', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('60', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('60', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('60', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('61', '2020-03-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('61', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('61', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('61', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('61', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('62', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('62', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('62', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('62', '2020-06-01', '37', '1', '0');
INSERT INTO `person_health_record` VALUES ('62', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('63', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('63', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('63', '2020-05-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('63', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('63', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('64', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('64', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('64', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('64', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('64', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('65', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('65', '2020-04-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('65', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('65', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('65', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('66', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('66', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('66', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('66', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('66', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('67', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('67', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('67', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('67', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('67', '2020-07-01', '39', '1', '1');
INSERT INTO `person_health_record` VALUES ('68', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('68', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('68', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('68', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('68', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('69', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('69', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('69', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('69', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('69', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('70', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('70', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('70', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('70', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('70', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('71', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('71', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('71', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('71', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('71', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('72', '2020-03-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('72', '2020-04-01', '38', '0', '0');
INSERT INTO `person_health_record` VALUES ('72', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('72', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('72', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('73', '2020-03-01', '38', '1', '0');
INSERT INTO `person_health_record` VALUES ('73', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('73', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('73', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('73', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('74', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('74', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('74', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('74', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('74', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('75', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('75', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('75', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('75', '2020-06-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('75', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('76', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('76', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('76', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('76', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('76', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('77', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('77', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('77', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('77', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('77', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('78', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('78', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('78', '2020-05-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('78', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('78', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('79', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('79', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('79', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('79', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('79', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('80', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('80', '2020-04-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('80', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('80', '2020-06-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('80', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('81', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('81', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('81', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('81', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('81', '2020-07-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('82', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('82', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('82', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('82', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('82', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('83', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('83', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('83', '2020-05-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('83', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('83', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('84', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('84', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('84', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('84', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('84', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('85', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('85', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('85', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('85', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('85', '2020-07-01', '37', '1', '0');
INSERT INTO `person_health_record` VALUES ('86', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('86', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('86', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('86', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('86', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('87', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('87', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('87', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('87', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('87', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('88', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('88', '2020-04-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('88', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('88', '2020-06-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('88', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('89', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('89', '2020-04-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('89', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('89', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('89', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('90', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('90', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('90', '2020-05-01', '36', '1', '0');
INSERT INTO `person_health_record` VALUES ('90', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('90', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('92', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('92', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('92', '2020-05-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('92', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('92', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('93', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('93', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('93', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('93', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('93', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('94', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('94', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('94', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('94', '2020-06-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('94', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('95', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('95', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('95', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('95', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('95', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('97', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('97', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('97', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('97', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('97', '2020-07-01', '36', '0', '1');
INSERT INTO `person_health_record` VALUES ('98', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('98', '2020-04-01', '38', '1', '1');
INSERT INTO `person_health_record` VALUES ('98', '2020-05-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('98', '2020-06-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('98', '2020-07-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('99', '2020-03-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('99', '2020-04-01', '36', '0', '0');
INSERT INTO `person_health_record` VALUES ('99', '2020-05-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('99', '2020-06-01', '37', '0', '0');
INSERT INTO `person_health_record` VALUES ('99', '2020-07-01', '36', '0', '0');

-- ----------------------------
-- Table structure for quarantine_record
-- ----------------------------
DROP TABLE IF EXISTS `quarantine_record`;
CREATE TABLE `quarantine_record` (
  `person_id` int(11) NOT NULL COMMENT '人口标识 -- ',
  `begin_dt` date NOT NULL COMMENT '隔离开始日期 -- ',
  `quar_type` int(11) DEFAULT NULL COMMENT '隔离方式 -- 0：居家隔离，1：集中隔离',
  `end_dt` date DEFAULT NULL COMMENT '隔离结束日期 -- ',
  PRIMARY KEY (`person_id`,`begin_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='隔离记录 -- ';

-- ----------------------------
-- Records of quarantine_record
-- ----------------------------
INSERT INTO `quarantine_record` VALUES ('18', '2020-03-20', '0', '2020-04-04');
INSERT INTO `quarantine_record` VALUES ('29', '2020-03-23', '1', '2020-04-07');
INSERT INTO `quarantine_record` VALUES ('40', '2020-04-02', '1', '2020-04-16');
INSERT INTO `quarantine_record` VALUES ('44', '2020-04-07', '1', '2020-04-22');
INSERT INTO `quarantine_record` VALUES ('56', '2020-04-11', '0', '2020-04-26');
INSERT INTO `quarantine_record` VALUES ('70', '2020-04-15', '1', '2020-04-29');
INSERT INTO `quarantine_record` VALUES ('84', '2020-04-15', '1', '2020-04-29');
INSERT INTO `quarantine_record` VALUES ('94', '2020-03-15', '1', '2020-03-30');

-- ----------------------------
-- Table structure for rna_test_record
-- ----------------------------
DROP TABLE IF EXISTS `rna_test_record`;
CREATE TABLE `rna_test_record` (
  `person_id` int(11) NOT NULL COMMENT '人口标识 -- ',
  `data_dt` date NOT NULL COMMENT '检测日期 -- ',
  `test_output` int(11) DEFAULT NULL COMMENT '检测结果 -- 0：阴性，1：阳性',
  PRIMARY KEY (`person_id`,`data_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='核酸检测记录 -- ';

-- ----------------------------
-- Records of rna_test_record
-- ----------------------------
INSERT INTO `rna_test_record` VALUES ('0', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('0', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('0', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('0', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('1', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('1', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('1', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('1', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('2', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('2', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('2', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('2', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('3', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('3', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('3', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('3', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('4', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('4', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('4', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('4', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('5', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('5', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('5', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('5', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('6', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('6', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('6', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('6', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('7', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('7', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('7', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('7', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('8', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('8', '2020-04-03', '1');
INSERT INTO `rna_test_record` VALUES ('8', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('9', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('9', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('9', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('9', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('10', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('10', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('10', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('10', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('11', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('11', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('11', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('11', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('12', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('12', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('12', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('12', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('13', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('13', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('13', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('13', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('14', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('14', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('14', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('14', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('15', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('15', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('15', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('15', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('16', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('16', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('16', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('16', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('17', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('17', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('17', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('17', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('18', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('18', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('18', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('18', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('19', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('19', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('19', '2020-04-16', '1');
INSERT INTO `rna_test_record` VALUES ('19', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('20', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('20', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('20', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('20', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('21', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('21', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('21', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('21', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('22', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('22', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('22', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('22', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('23', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('23', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('23', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('23', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('24', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('24', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('24', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('24', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('25', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('25', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('25', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('25', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('26', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('26', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('26', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('26', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('27', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('27', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('27', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('27', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('28', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('28', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('28', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('28', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('29', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('29', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('29', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('29', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('30', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('30', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('30', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('30', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('31', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('31', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('31', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('31', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('32', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('32', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('32', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('32', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('33', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('33', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('33', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('33', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('34', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('34', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('34', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('34', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('35', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('35', '2020-03-19', '1');
INSERT INTO `rna_test_record` VALUES ('35', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('35', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('36', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('36', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('36', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('36', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('37', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('37', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('37', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('37', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('38', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('38', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('38', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('38', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('39', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('39', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('39', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('39', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('40', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('40', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('40', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('40', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('41', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('41', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('41', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('41', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('42', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('42', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('42', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('42', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('43', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('43', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('43', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('43', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('44', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('44', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('44', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('44', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('45', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('45', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('45', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('45', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('46', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('46', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('46', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('46', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('47', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('47', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('47', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('47', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('48', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('48', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('48', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('48', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('49', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('49', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('49', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('49', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('50', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('50', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('50', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('50', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('51', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('51', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('51', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('51', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('52', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('52', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('52', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('52', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('53', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('53', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('53', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('53', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('54', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('54', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('54', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('54', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('55', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('55', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('55', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('55', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('56', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('56', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('56', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('56', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('57', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('57', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('57', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('57', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('58', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('58', '2020-03-23', '1');
INSERT INTO `rna_test_record` VALUES ('58', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('58', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('59', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('59', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('59', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('59', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('60', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('60', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('60', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('60', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('61', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('61', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('61', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('61', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('62', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('62', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('62', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('62', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('63', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('63', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('63', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('63', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('64', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('64', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('64', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('64', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('65', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('65', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('65', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('65', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('66', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('66', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('66', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('66', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('67', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('67', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('67', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('67', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('68', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('68', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('68', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('68', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('69', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('69', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('69', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('69', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('70', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('70', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('70', '2020-05-01', '1');
INSERT INTO `rna_test_record` VALUES ('70', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('71', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('71', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('71', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('71', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('72', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('72', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('72', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('72', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('73', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('73', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('73', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('73', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('74', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('74', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('74', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('74', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('75', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('75', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('75', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('75', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('76', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('76', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('76', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('76', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('77', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('77', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('77', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('77', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('78', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('78', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('78', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('78', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('79', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('79', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('79', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('79', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('80', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('80', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('80', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('80', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('81', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('81', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('81', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('81', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('82', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('82', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('82', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('82', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('83', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('83', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('83', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('83', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('84', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('84', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('84', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('84', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('85', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('85', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('85', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('85', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('86', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('86', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('86', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('86', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('87', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('87', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('87', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('87', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('88', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('88', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('88', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('88', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('89', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('89', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('89', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('89', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('90', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('90', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('90', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('90', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('92', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('92', '2020-03-10', '1');
INSERT INTO `rna_test_record` VALUES ('92', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('92', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('93', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('93', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('93', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('93', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('94', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('94', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('94', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('94', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('95', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('95', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('95', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('95', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('97', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('97', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('97', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('97', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('98', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('98', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('98', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('98', '2020-06-08', '0');
INSERT INTO `rna_test_record` VALUES ('99', '2020-03-08', '0');
INSERT INTO `rna_test_record` VALUES ('99', '2020-04-08', '0');
INSERT INTO `rna_test_record` VALUES ('99', '2020-05-08', '0');
INSERT INTO `rna_test_record` VALUES ('99', '2020-06-08', '0');
