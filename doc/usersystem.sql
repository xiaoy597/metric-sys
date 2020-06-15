/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : usersystem

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2020-06-11 11:20:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_module
-- ----------------------------
DROP TABLE IF EXISTS `app_module`;
CREATE TABLE `app_module` (
  `module_id` int(11) NOT NULL,
  `super_module_id` int(11) DEFAULT NULL,
  `module_name` varchar(40) DEFAULT NULL,
  `module_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of app_module
-- ----------------------------
INSERT INTO `app_module` VALUES ('1', '0', '填报指标', '/rcdconfig');
INSERT INTO `app_module` VALUES ('2', '0', '填报任务', '/rcdjobconfig');
INSERT INTO `app_module` VALUES ('3', '0', '填报', '/rcdjob');
INSERT INTO `app_module` VALUES ('4', '0', '审批管理', '/rcdflow');
INSERT INTO `app_module` VALUES ('6', '0', '权限管理', '/sys');
INSERT INTO `app_module` VALUES ('11', '1', '填报指标体系', '/rcdconfig/fldconfig');
INSERT INTO `app_module` VALUES ('12', '1', '数据字典', '/rcdconfig/dictconfig');
INSERT INTO `app_module` VALUES ('21', '2', '填报任务维护', '/rcdjobconfig/jobconfig');
INSERT INTO `app_module` VALUES ('22', '2', '上报信息表维护', '/rcdjobconfig/unitconfig');
INSERT INTO `app_module` VALUES ('23', '2', '填报人维护', '/rcdjobconfig/rcdusercg');
INSERT INTO `app_module` VALUES ('24', '2', '填报提醒维护', '/rcdjobconfig/rcdnotice');
INSERT INTO `app_module` VALUES ('31', '3', '数据填报', '/rcdjob/datareport');
INSERT INTO `app_module` VALUES ('42', '4', '任务定义审批', '/rcdflow/jobConfigReview');
INSERT INTO `app_module` VALUES ('43', '4', '填报数据审核', '/rcdflow/dtRpReview');
INSERT INTO `app_module` VALUES ('61', '6', '功能查看', '/sys/menu');
INSERT INTO `app_module` VALUES ('62', '6', '用户管理', '/sys/user');
INSERT INTO `app_module` VALUES ('63', '6', '角色管理', '/sys/role');
INSERT INTO `app_module` VALUES ('64', '6', '机构管理', '/sys/record/recordOriginManager');

-- ----------------------------
-- Table structure for sys_origin
-- ----------------------------
DROP TABLE IF EXISTS `sys_origin`;
CREATE TABLE `sys_origin` (
  `origin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机构编号',
  `origin_name` varchar(45) DEFAULT NULL COMMENT '机构名称',
  `parent_origin_id` int(11) DEFAULT NULL COMMENT '上级机构编号',
  `origin_status` char(1) DEFAULT NULL COMMENT '0:启用 1:停用',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_user` int(11) DEFAULT NULL COMMENT '创建人',
  `origin_smp_name` varchar(45) DEFAULT NULL,
  `origin_type` char(1) NOT NULL DEFAULT '0' COMMENT '1:燃气企业\n2:管输企业\n0:全部\n9:未设定',
  `origin_address` varchar(200) DEFAULT NULL,
  `origin_address_detail` varchar(200) DEFAULT NULL,
  `origin_address_province` varchar(45) DEFAULT NULL,
  `origin_address_city` varchar(45) DEFAULT NULL,
  `origin_address_area` varchar(45) DEFAULT NULL,
  `origin_address_street` varchar(45) DEFAULT NULL,
  `origin_nature` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`origin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6590026 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_origin
-- ----------------------------
INSERT INTO `sys_origin` VALUES ('1', '全国', '0', '0', '2019-04-29', null, '全国', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('2', '全部二', '0', '0', null, null, '全部二', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('1100000', '北京市', '1', '3', '2019-04-29', null, '北京市', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('1101000', '北京', '1100000', '3', '2019-05-14', null, '北京', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('2100000', '河北省', '1', '3', '2019-04-29', null, '河北省', '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590010', '测试新增机构', '2100000', '3', '2020-03-30', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590011', 'asdsad', '1', '3', '2020-02-20', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590012', '多级机构北京1', '1101000', '3', '2020-02-29', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590013', '多级机构北京2', '6590012', '3', '2020-02-29', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590014', '多级机构北京3', '6590013', '3', '2020-02-29', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590015', '大兴区委', '1', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590016', '大兴区政府', '1', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590017', '区反恐办', '6590016', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590018', '保障房公司', '6590016', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590019', '黄村街道', '6590016', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590020', '大兴区委-企业', '6590015', '0', '2020-03-27', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590021', '测试新增企业', '6590020', '0', '2020-04-16', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590022', '测', '6590015', '0', '2020-04-16', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590023', '测测11122', '6590022', '0', '2020-04-16', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590024', '测测测', '1', '0', '2020-04-16', null, null, '0', null, null, null, null, null, null, null);
INSERT INTO `sys_origin` VALUES ('6590025', '测试', '2', '0', '2020-04-16', null, null, '0', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_type` int(11) DEFAULT '1' COMMENT '1：填报用户\n2：监管用户\n0：审核用户\n3：系统用户',
  `reg_date` date DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL COMMENT '(0,"正常")\n(1,"锁定")\n(2,"软删除")\n(3,"密码过期")\n(4,"停用")\n(5,"从未登陆")\n(6,"非正常标记")',
  `last_login_time` datetime DEFAULT NULL,
  `user_pwd` varchar(100) DEFAULT NULL,
  `user_name_cn` varchar(200) DEFAULT NULL,
  `office_phone` varchar(45) DEFAULT NULL COMMENT '办公电话',
  `mobile_phone` varchar(45) DEFAULT NULL COMMENT '手机号',
  `email` varchar(45) DEFAULT NULL COMMENT 'email地址',
  `social_code` varchar(45) DEFAULT NULL COMMENT '统一社会代码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'admin', '3', '2020-02-04', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '超级管理员', null, '18012341234', '1234@123.com', null);
INSERT INTO `user` VALUES ('813382', 'dxqzf2', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '大兴区政府2', null, null, null, null);
INSERT INTO `user` VALUES ('1174898', 'qfkb1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '区反恐办', null, null, null, null);
INSERT INTO `user` VALUES ('1314148', 'mobile', '1', '2020-04-06', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '移动端填报用户', '13456789012', '13456789012', null, null);
INSERT INTO `user` VALUES ('1887631', 'dxqzf1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '大兴区政府1', null, null, null, null);
INSERT INTO `user` VALUES ('1971129', 'hcjd1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '黄村街道', null, null, null, null);
INSERT INTO `user` VALUES ('2102712', 'qy1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '企业用户', null, null, null, null);
INSERT INTO `user` VALUES ('3527639', 'dxqw1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '大兴区委', null, null, null, null);
INSERT INTO `user` VALUES ('23386932', 'test-cu', '1', '2020-04-16', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '测试新增企业用户', null, null, '', null);
INSERT INTO `user` VALUES ('62720240', 'ptadmin', '1', '2020-05-08', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '普通管理员', null, null, null, null);
INSERT INTO `user` VALUES ('73787376', 'bzf1', '1', '2020-03-27', '0', null, '-1ef523c6b645a65441a91fa80df077c2', '保障房公司', null, null, null, null);

-- ----------------------------
-- Table structure for user_organizations_assign
-- ----------------------------
DROP TABLE IF EXISTS `user_organizations_assign`;
CREATE TABLE `user_organizations_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_organizations_assign
-- ----------------------------

-- ----------------------------
-- Table structure for user_origin_assign
-- ----------------------------
DROP TABLE IF EXISTS `user_origin_assign`;
CREATE TABLE `user_origin_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `origin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_origin_assign
-- ----------------------------
INSERT INTO `user_origin_assign` VALUES ('1', '12575276', '6590010');
INSERT INTO `user_origin_assign` VALUES ('2', '509317', '6590010');
INSERT INTO `user_origin_assign` VALUES ('3', '8798936', '6590010');
INSERT INTO `user_origin_assign` VALUES ('4', '2179054', '1101000');
INSERT INTO `user_origin_assign` VALUES ('5', '20', '6590010');
INSERT INTO `user_origin_assign` VALUES ('6', '1217720', '6590014');
INSERT INTO `user_origin_assign` VALUES ('7', '0', '1');
INSERT INTO `user_origin_assign` VALUES ('8', '3527639', '6590015');
INSERT INTO `user_origin_assign` VALUES ('9', '2102712', '6590020');
INSERT INTO `user_origin_assign` VALUES ('10', '1887631', '6590016');
INSERT INTO `user_origin_assign` VALUES ('11', '813382', '6590016');
INSERT INTO `user_origin_assign` VALUES ('12', '1174898', '6590017');
INSERT INTO `user_origin_assign` VALUES ('13', '73787376', '6590018');
INSERT INTO `user_origin_assign` VALUES ('14', '1971129', '6590019');
INSERT INTO `user_origin_assign` VALUES ('15', '1314148', '6590019');
INSERT INTO `user_origin_assign` VALUES ('16', '23386932', '6590021');
INSERT INTO `user_origin_assign` VALUES ('17', '62720240', '1');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '超级管理员岗');
INSERT INTO `user_role` VALUES ('6', '下发岗');
INSERT INTO `user_role` VALUES ('7', '审核岗');
INSERT INTO `user_role` VALUES ('8', '填报岗');

-- ----------------------------
-- Table structure for user_role_assign
-- ----------------------------
DROP TABLE IF EXISTS `user_role_assign`;
CREATE TABLE `user_role_assign` (
  `user_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`user_role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_role_assign
-- ----------------------------
INSERT INTO `user_role_assign` VALUES ('0', '1');
INSERT INTO `user_role_assign` VALUES ('813382', '7');
INSERT INTO `user_role_assign` VALUES ('1174898', '8');
INSERT INTO `user_role_assign` VALUES ('1314148', '8');
INSERT INTO `user_role_assign` VALUES ('1887631', '6');
INSERT INTO `user_role_assign` VALUES ('1971129', '8');
INSERT INTO `user_role_assign` VALUES ('2102712', '8');
INSERT INTO `user_role_assign` VALUES ('3527639', '6');
INSERT INTO `user_role_assign` VALUES ('62720240', '1');
INSERT INTO `user_role_assign` VALUES ('73787376', '8');

-- ----------------------------
-- Table structure for user_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `user_role_privilege`;
CREATE TABLE `user_role_privilege` (
  `user_role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `access_privilege` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`,`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_role_privilege
-- ----------------------------
INSERT INTO `user_role_privilege` VALUES ('1', '1', null);
INSERT INTO `user_role_privilege` VALUES ('1', '2', null);
INSERT INTO `user_role_privilege` VALUES ('1', '3', null);
INSERT INTO `user_role_privilege` VALUES ('1', '4', null);
INSERT INTO `user_role_privilege` VALUES ('1', '6', null);
INSERT INTO `user_role_privilege` VALUES ('1', '11', null);
INSERT INTO `user_role_privilege` VALUES ('1', '12', null);
INSERT INTO `user_role_privilege` VALUES ('1', '21', null);
INSERT INTO `user_role_privilege` VALUES ('1', '22', null);
INSERT INTO `user_role_privilege` VALUES ('1', '23', null);
INSERT INTO `user_role_privilege` VALUES ('1', '24', null);
INSERT INTO `user_role_privilege` VALUES ('1', '31', null);
INSERT INTO `user_role_privilege` VALUES ('1', '42', null);
INSERT INTO `user_role_privilege` VALUES ('1', '43', null);
INSERT INTO `user_role_privilege` VALUES ('1', '61', null);
INSERT INTO `user_role_privilege` VALUES ('1', '62', null);
INSERT INTO `user_role_privilege` VALUES ('1', '63', null);
INSERT INTO `user_role_privilege` VALUES ('1', '64', null);
INSERT INTO `user_role_privilege` VALUES ('6', '1', null);
INSERT INTO `user_role_privilege` VALUES ('6', '2', null);
INSERT INTO `user_role_privilege` VALUES ('6', '3', null);
INSERT INTO `user_role_privilege` VALUES ('6', '4', null);
INSERT INTO `user_role_privilege` VALUES ('6', '11', null);
INSERT INTO `user_role_privilege` VALUES ('6', '12', null);
INSERT INTO `user_role_privilege` VALUES ('6', '21', null);
INSERT INTO `user_role_privilege` VALUES ('6', '22', null);
INSERT INTO `user_role_privilege` VALUES ('6', '23', null);
INSERT INTO `user_role_privilege` VALUES ('6', '24', null);
INSERT INTO `user_role_privilege` VALUES ('6', '31', null);
INSERT INTO `user_role_privilege` VALUES ('6', '43', null);
INSERT INTO `user_role_privilege` VALUES ('7', '4', null);
INSERT INTO `user_role_privilege` VALUES ('7', '42', null);
INSERT INTO `user_role_privilege` VALUES ('8', '3', null);
INSERT INTO `user_role_privilege` VALUES ('8', '31', null);
