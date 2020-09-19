/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : tx_metric_db

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-09-19 15:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for busi_department
-- ----------------------------
DROP TABLE IF EXISTS `busi_department`;
CREATE TABLE `busi_department` (
  `dept_cd` varchar(6) NOT NULL COMMENT '部门代码 -- ',
  `dept_nm` varchar(60) DEFAULT NULL COMMENT '部门名称 -- ',
  `is_admin_dept` int(11) DEFAULT NULL COMMENT '是否负责系统维护 -- 0：不负责公共指标维护，1：负责公共指标维护',
  PRIMARY KEY (`dept_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务部门 -- ';

-- ----------------------------
-- Records of busi_department
-- ----------------------------

-- ----------------------------
-- Table structure for daily_metric
-- ----------------------------
DROP TABLE IF EXISTS `daily_metric`;
CREATE TABLE `daily_metric` (
  `date_dim_id` int(11) NOT NULL COMMENT '日期维度标识 -- ',
  `dept_dim_id` int(11) NOT NULL COMMENT '部门维度标识 -- ',
  `metric_row_id` bigint(20) NOT NULL COMMENT '指标记录标识 -- ',
  `metric_value` decimal(20,4) DEFAULT NULL COMMENT '指标值 -- ',
  PRIMARY KEY (`date_dim_id`,`dept_dim_id`,`metric_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日粒度指标 -- ';

-- ----------------------------
-- Records of daily_metric
-- ----------------------------

-- ----------------------------
-- Table structure for date_dim
-- ----------------------------
DROP TABLE IF EXISTS `date_dim`;
CREATE TABLE `date_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_date` date DEFAULT NULL COMMENT '日期 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='日期维度 -- ';

-- ----------------------------
-- Records of date_dim
-- ----------------------------
INSERT INTO `date_dim` VALUES ('1', '2020-01-01');
INSERT INTO `date_dim` VALUES ('2', '2020-01-02');
INSERT INTO `date_dim` VALUES ('3', '2020-01-03');

-- ----------------------------
-- Table structure for dept_dim
-- ----------------------------
DROP TABLE IF EXISTS `dept_dim`;
CREATE TABLE `dept_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `dept_cd` varchar(16) DEFAULT NULL COMMENT '部门代码 -- ',
  `dept_nm` varchar(60) DEFAULT NULL COMMENT '部门名称 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门维度 -- ';

-- ----------------------------
-- Records of dept_dim
-- ----------------------------

-- ----------------------------
-- Table structure for eva_metric_obj
-- ----------------------------
DROP TABLE IF EXISTS `eva_metric_obj`;
CREATE TABLE `eva_metric_obj` (
  `object_id` int(11) NOT NULL COMMENT '考核对象标识 -- ',
  `metric_row_id` bigint(20) NOT NULL COMMENT '指标记录标识 -- ',
  PRIMARY KEY (`object_id`,`metric_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核指标关联对象 -- ';

-- ----------------------------
-- Records of eva_metric_obj
-- ----------------------------

-- ----------------------------
-- Table structure for eva_metric_review
-- ----------------------------
DROP TABLE IF EXISTS `eva_metric_review`;
CREATE TABLE `eva_metric_review` (
  `metric_row_id` bigint(20) NOT NULL COMMENT '指标记录标识 -- ',
  `period_id` int(11) NOT NULL COMMENT '考核周期标识 -- ',
  `review_status` int(11) DEFAULT NULL COMMENT '审核状态 -- 0：未审核，1：审核通过，2：审核拒绝',
  `review_comment` varchar(512) DEFAULT NULL COMMENT '审核意见 -- ',
  `review_user_id` varchar(16) DEFAULT NULL COMMENT '考核审核员 -- ',
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间 -- ',
  PRIMARY KEY (`metric_row_id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核指标审核 -- ';

-- ----------------------------
-- Records of eva_metric_review
-- ----------------------------

-- ----------------------------
-- Table structure for eva_object
-- ----------------------------
DROP TABLE IF EXISTS `eva_object`;
CREATE TABLE `eva_object` (
  `object_id` int(11) NOT NULL COMMENT '考核对象标识 -- ',
  `object_nm` varchar(60) DEFAULT NULL COMMENT '考核对象名称 -- ',
  `object_type` int(11) DEFAULT NULL COMMENT '考核对象类型 -- 0：部门考核对象',
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核对象 -- ';

-- ----------------------------
-- Records of eva_object
-- ----------------------------

-- ----------------------------
-- Table structure for eva_period
-- ----------------------------
DROP TABLE IF EXISTS `eva_period`;
CREATE TABLE `eva_period` (
  `period_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考核周期标识 -- ',
  `eva_cycle_type` int(11) DEFAULT NULL COMMENT '考核周期类型 -- 0：日，1：月，2：季度，3：半年，4：年',
  `period_start_dt` date DEFAULT NULL COMMENT '考核周期开始日期 -- ',
  `period_end_dt` date DEFAULT NULL COMMENT '考核周期结束日期 -- ',
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核周期 -- ';

-- ----------------------------
-- Records of eva_period
-- ----------------------------

-- ----------------------------
-- Table structure for eva_task
-- ----------------------------
DROP TABLE IF EXISTS `eva_task`;
CREATE TABLE `eva_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务标识 -- ',
  `task_nm` varchar(60) DEFAULT NULL COMMENT '任务名称 -- ',
  `task_type` int(11) DEFAULT NULL COMMENT '任务类型 -- 0、自动考核评分，1：自动评分加人工干预，2：人工考核评分',
  `eva_cycle_type` int(11) DEFAULT NULL COMMENT '考核周期类型 -- 0：日，1：月，2：季度，3：半年，4：年',
  `effective_dt` date DEFAULT NULL COMMENT '生效日期 -- ',
  `expire_dt` date DEFAULT NULL COMMENT '失效日期 -- ',
  `schedule_id` varchar(32) DEFAULT NULL COMMENT '任务调度标识 -- 如果本次任务执行是通过调度系统执行的任务，填写在调度系统中注册的作业ID。',
  `task_desc` varchar(512) DEFAULT NULL COMMENT '任务备注 -- ',
  `update_user_id` varchar(16) DEFAULT NULL COMMENT '考核操作员 -- ',
  `review_type` int(11) DEFAULT NULL COMMENT '审核类型 -- 0：不需要审核，1：需要审核',
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间 -- ',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核任务 -- ';

-- ----------------------------
-- Records of eva_task
-- ----------------------------

-- ----------------------------
-- Table structure for eva_task_his
-- ----------------------------
DROP TABLE IF EXISTS `eva_task_his`;
CREATE TABLE `eva_task_his` (
  `task_id` int(11) NOT NULL COMMENT '任务标识 -- ',
  `task_start_tm` datetime NOT NULL COMMENT '任务启动时间 -- ',
  `task_run_mode` int(11) DEFAULT NULL COMMENT '任务执行方式 -- 0：人工执行，1：自动执行',
  `task_result` int(11) DEFAULT NULL COMMENT '任务执行结果 -- 0：执行成功，其他值表示失败返回值。',
  `task_finish_tm` datetime DEFAULT NULL COMMENT '任务完成时间 -- ',
  `exec_user_id` varchar(32) DEFAULT NULL COMMENT '任务执行用户 -- 执行任务的用户ID，只适用于人工执行方式。',
  `period_id` int(11) DEFAULT NULL COMMENT '考核周期标识 -- ',
  PRIMARY KEY (`task_id`,`task_start_tm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务执行历史 -- ';

-- ----------------------------
-- Records of eva_task_his
-- ----------------------------

-- ----------------------------
-- Table structure for eva_task_metric
-- ----------------------------
DROP TABLE IF EXISTS `eva_task_metric`;
CREATE TABLE `eva_task_metric` (
  `task_id` int(11) NOT NULL COMMENT '任务标识 -- ',
  `metric_row_id` bigint(20) NOT NULL COMMENT '指标记录标识 -- ',
  PRIMARY KEY (`task_id`,`metric_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考核任务关联指标 -- ';

-- ----------------------------
-- Records of eva_task_metric
-- ----------------------------

-- ----------------------------
-- Table structure for metric
-- ----------------------------
DROP TABLE IF EXISTS `metric`;
CREATE TABLE `metric` (
  `metric_row_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '指标记录标识 -- ',
  `metric_cd` varchar(10) DEFAULT NULL COMMENT '指标代码 -- 不得重复',
  `metric_nm` varchar(60) DEFAULT NULL COMMENT '指标名称 -- ',
  `metric_type` int(11) DEFAULT NULL COMMENT '指标类型 -- 0：基础指标（数据映射）\r\n1：衍生指标（公式计算）\r\n2：考核指标',
  `dept_cd` varchar(4) DEFAULT NULL COMMENT '业务部门代码 -- ',
  `metric_unit` varchar(16) DEFAULT NULL COMMENT '指标数据单位 -- ',
  `metric_tbl_cd` varchar(6) DEFAULT NULL COMMENT '指标主表代码 -- ',
  `metric_tbl_col_cd` varchar(10) DEFAULT NULL COMMENT '指标度量字段代码 -- ',
  `metric_src_cd` char(4) DEFAULT NULL COMMENT '指标数据源代码 -- ',
  `metric_formula` varchar(1024) DEFAULT NULL COMMENT '指标计算模板 -- 对于基础指标表示SQL语句模板、文件字段列表等，对于衍生指标表示计算表达式\r\n',
  `load_cycle` int(11) DEFAULT NULL COMMENT '指标更新周期 -- 0：不自动更新\r\n1：每天更新\r\n2：每周更新\r\n3：每月更新\r\n4：每季度更新\r\n5：每年更新',
  `default_sec_level` char(2) DEFAULT NULL COMMENT '默认安全级别 -- 安全级别采用数字编码，码值越小表示安全级别越低',
  `metric_desc` varchar(512) DEFAULT NULL COMMENT '指标描述 -- ',
  `update_flag` int(11) DEFAULT NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除\r\n，4：失效。\r\n增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：\r\n1、新增记录，将该记录修改标识更新为0。\r\n2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。\r\n3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。',
  `review_status` int(11) DEFAULT NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝',
  `update_user_id` varchar(16) DEFAULT NULL COMMENT '更新用户 -- ',
  `review_user_id` varchar(16) DEFAULT NULL COMMENT '审核用户 -- ',
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间 -- ',
  `review_tm` datetime DEFAULT NULL COMMENT '审核时间 -- ',
  `task_flow_id` int(11) DEFAULT NULL COMMENT '审批流编号 -- ',
  PRIMARY KEY (`metric_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标 -- ';

-- ----------------------------
-- Records of metric
-- ----------------------------

-- ----------------------------
-- Table structure for metric_class
-- ----------------------------
DROP TABLE IF EXISTS `metric_class`;
CREATE TABLE `metric_class` (
  `mc_row_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '指标目录记录标识 -- ',
  `metric_class_cd` varchar(8) DEFAULT NULL COMMENT '指标目录代码 -- 不得重复',
  `metric_class_nm` varchar(60) DEFAULT NULL COMMENT '指标目录名称 -- ',
  `super_class_cd` varchar(8) DEFAULT NULL COMMENT '上级指标目录代码 -- ',
  `dept_cd` varchar(6) DEFAULT NULL COMMENT '部门代码 -- ',
  `disp_order` int(11) DEFAULT NULL COMMENT '显示顺序 -- ',
  `metric_class_desc` varchar(512) DEFAULT NULL COMMENT '指标目录描述 -- ',
  `update_flag` int(11) DEFAULT NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除\r\n，4：失效。\r\n增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：\r\n1、新增记录，将该记录修改标识更新为0。\r\n2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。\r\n3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。',
  `review_status` int(11) DEFAULT NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝',
  `update_user_id` varchar(16) DEFAULT NULL COMMENT '更新用户 -- ',
  `review_user_id` varchar(16) DEFAULT NULL COMMENT '审核用户 -- ',
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间 -- ',
  `review_tm` datetime DEFAULT NULL COMMENT '审核时间 -- ',
  `task_flow_id` int(11) DEFAULT NULL COMMENT '审批流编号 -- ',
  PRIMARY KEY (`mc_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标目录 -- ';

-- ----------------------------
-- Records of metric_class
-- ----------------------------

-- ----------------------------
-- Table structure for metric_class_r
-- ----------------------------
DROP TABLE IF EXISTS `metric_class_r`;
CREATE TABLE `metric_class_r` (
  `mc_r_row_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '指标分类记录标识 -- ',
  `metric_cd` varchar(10) DEFAULT NULL COMMENT '指标代码 -- ',
  `metric_class_cd` varchar(8) DEFAULT NULL COMMENT '指标目录代码 -- ',
  `disp_order` int(11) DEFAULT NULL COMMENT '显示顺序 -- ',
  `update_flag` int(11) DEFAULT NULL COMMENT '修改标识 -- ',
  `review_status` int(11) DEFAULT NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝',
  `update_user_id` varchar(16) DEFAULT NULL COMMENT '更新用户 -- ',
  `review_user_id` varchar(16) DEFAULT NULL COMMENT '审核用户 -- ',
  `update_tm` datetime DEFAULT NULL COMMENT '更新时间 -- ',
  `review_tm` datetime DEFAULT NULL COMMENT '审核时间 -- ',
  `task_flow_id` int(11) DEFAULT NULL COMMENT '审批流编号 -- ',
  PRIMARY KEY (`mc_r_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标分类 -- ';

-- ----------------------------
-- Records of metric_class_r
-- ----------------------------

-- ----------------------------
-- Table structure for metric_column
-- ----------------------------
DROP TABLE IF EXISTS `metric_column`;
CREATE TABLE `metric_column` (
  `metric_col_cd` varchar(10) NOT NULL COMMENT '指标字段代码 -- ',
  `metric_col_nm` varchar(60) DEFAULT NULL COMMENT '指标字段名称 -- ',
  `metric_col_type` int(11) DEFAULT NULL COMMENT '指标字段类型 -- 0：指标维度\r\n1：指标度量',
  `metric_col_data_type` varchar(20) DEFAULT NULL COMMENT '指标字段数据类型 -- ',
  `metric_col_phy_nm` varchar(30) DEFAULT NULL COMMENT '指标字段物理名称 -- ',
  `metric_col_desc` varchar(60) DEFAULT NULL COMMENT '指标字段备注 -- ',
  PRIMARY KEY (`metric_col_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标字段 -- ';

-- ----------------------------
-- Records of metric_column
-- ----------------------------
INSERT INTO `metric_column` VALUES ('000001', '日期维度值', '0', 'DATE', 'd_date', null);
INSERT INTO `metric_column` VALUES ('000002', '月份维度值', '0', 'INT', 'd_month', null);
INSERT INTO `metric_column` VALUES ('000003', '部门维度值', '0', 'VARCHAR(16)', 'dept_nm', null);
INSERT INTO `metric_column` VALUES ('000004', '季度维度值', '0', 'INT', 'd_quarter', null);
INSERT INTO `metric_column` VALUES ('000005', '年度维度值', '0', 'INT', 'd_year', null);

-- ----------------------------
-- Table structure for metric_dim
-- ----------------------------
DROP TABLE IF EXISTS `metric_dim`;
CREATE TABLE `metric_dim` (
  `dim_cd` varchar(4) NOT NULL COMMENT '维度代码 -- ',
  `dim_nm` varchar(60) DEFAULT NULL COMMENT '维度名称 -- ',
  `dim_tbl_phy_nm` varchar(30) DEFAULT NULL COMMENT '维度物理表名称 -- ',
  `dim_desc` varchar(512) DEFAULT NULL COMMENT '维度说明 -- ',
  `update_user_id` varchar(16) DEFAULT NULL COMMENT '更新用户 -- ',
  `metric_src_cd` char(4) DEFAULT NULL COMMENT '维度数据源代码 -- ',
  `src_tbl_nm` varchar(60) DEFAULT NULL COMMENT '源表名称 -- ',
  `src_col_nm` varchar(60) DEFAULT NULL COMMENT '源字段名称 -- ',
  PRIMARY KEY (`dim_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标维度 -- ';

-- ----------------------------
-- Records of metric_dim
-- ----------------------------
INSERT INTO `metric_dim` VALUES ('0001', '日期', 'date_dim', '日期', null, null, null, null);
INSERT INTO `metric_dim` VALUES ('0002', '月份', 'month_dim', '月份', null, null, null, null);
INSERT INTO `metric_dim` VALUES ('0003', '部门', 'dept_dim', '部门', null, null, null, null);
INSERT INTO `metric_dim` VALUES ('0004', '季度', 'quarter_dim', '季度', null, null, null, null);
INSERT INTO `metric_dim` VALUES ('0005', '年度', 'year_dim', '年度', null, null, null, null);

-- ----------------------------
-- Table structure for metric_dim_col
-- ----------------------------
DROP TABLE IF EXISTS `metric_dim_col`;
CREATE TABLE `metric_dim_col` (
  `dim_cd` varchar(4) NOT NULL COMMENT '维度代码 -- ',
  `metric_dim_col_cd` varchar(10) NOT NULL COMMENT '维度字段代码 -- ',
  `dim_level` int(11) DEFAULT NULL COMMENT '维度级别 -- 从0开始顺序增加，逐级汇总',
  PRIMARY KEY (`dim_cd`,`metric_dim_col_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标维度字段 -- ';

-- ----------------------------
-- Records of metric_dim_col
-- ----------------------------
INSERT INTO `metric_dim_col` VALUES ('0001', '000001', '1');
INSERT INTO `metric_dim_col` VALUES ('0002', '000002', '1');
INSERT INTO `metric_dim_col` VALUES ('0003', '000003', '1');
INSERT INTO `metric_dim_col` VALUES ('0004', '000004', '1');
INSERT INTO `metric_dim_col` VALUES ('0005', '000005', '1');

-- ----------------------------
-- Table structure for metric_param
-- ----------------------------
DROP TABLE IF EXISTS `metric_param`;
CREATE TABLE `metric_param` (
  `param_cd` varchar(20) NOT NULL COMMENT '参数代码 -- ',
  `param_type` int(11) DEFAULT NULL COMMENT '参数类型 -- 0：指标加载参数，1：指标系统参数。注：指标加载参数就是可以嵌入基础指标和衍生指标计算公式或者语句的参数，指标系统参数是除了指标加载参数之外的其他参数。',
  `param_nm` varchar(60) DEFAULT NULL COMMENT '参数名称 -- ',
  `param_value` varchar(512) DEFAULT NULL COMMENT '参数值 -- ',
  PRIMARY KEY (`param_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标计算参数 -- ';

-- ----------------------------
-- Records of metric_param
-- ----------------------------

-- ----------------------------
-- Table structure for metric_relation
-- ----------------------------
DROP TABLE IF EXISTS `metric_relation`;
CREATE TABLE `metric_relation` (
  `ustream_metric` varchar(10) NOT NULL COMMENT '上游指标代码 -- ',
  `dstream_metric` varchar(10) NOT NULL COMMENT '下游指标代码 -- ',
  `relation_type` int(11) DEFAULT NULL COMMENT '依赖类型 -- 0：弱依赖，如果不满足则取默认值\r\n1：强依赖，如果不满足则不计算',
  `ustream_dft_value` decimal(20,4) DEFAULT NULL COMMENT '上游指标默认值 -- ',
  PRIMARY KEY (`ustream_metric`,`dstream_metric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标依赖关系 -- ';

-- ----------------------------
-- Records of metric_relation
-- ----------------------------

-- ----------------------------
-- Table structure for metric_src
-- ----------------------------
DROP TABLE IF EXISTS `metric_src`;
CREATE TABLE `metric_src` (
  `metric_src_cd` char(4) NOT NULL COMMENT '指标数据源代码 -- ',
  `metric_src_nm` varchar(60) DEFAULT NULL COMMENT '指标数据源名称 -- ',
  `metric_src_param` varchar(256) DEFAULT NULL COMMENT '数据源访问参数 -- ',
  `metric_src_type_cd` char(2) DEFAULT NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统',
  PRIMARY KEY (`metric_src_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标数据源 -- ';

-- ----------------------------
-- Records of metric_src
-- ----------------------------

-- ----------------------------
-- Table structure for metric_src_type
-- ----------------------------
DROP TABLE IF EXISTS `metric_src_type`;
CREATE TABLE `metric_src_type` (
  `metric_src_type_cd` char(2) NOT NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统',
  `metric_src_type_nm` varchar(60) DEFAULT NULL COMMENT '指标数据源类型名称 -- ',
  PRIMARY KEY (`metric_src_type_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标数据源类型 -- ';

-- ----------------------------
-- Records of metric_src_type
-- ----------------------------

-- ----------------------------
-- Table structure for metric_tbl
-- ----------------------------
DROP TABLE IF EXISTS `metric_tbl`;
CREATE TABLE `metric_tbl` (
  `metric_tbl_cd` varchar(6) NOT NULL COMMENT '指标主表代码 -- ',
  `metric_tbl_nm` varchar(60) DEFAULT NULL COMMENT '指标主表名称 -- ',
  `metric_tbl_phy_nm` varchar(30) DEFAULT NULL COMMENT '指标主表物理表名称 -- ',
  `dept_cd` varchar(6) DEFAULT NULL COMMENT '部门代码 -- ',
  PRIMARY KEY (`metric_tbl_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标主表 -- ';

-- ----------------------------
-- Records of metric_tbl
-- ----------------------------
INSERT INTO `metric_tbl` VALUES ('0001', '日粒度指标', 'daily_metric', null);
INSERT INTO `metric_tbl` VALUES ('0002', '月粒度指标', 'monthly_metric', null);

-- ----------------------------
-- Table structure for metric_tbl_dim
-- ----------------------------
DROP TABLE IF EXISTS `metric_tbl_dim`;
CREATE TABLE `metric_tbl_dim` (
  `metric_tbl_cd` varchar(6) NOT NULL COMMENT '指标主表代码 -- ',
  `dim_cd` varchar(4) NOT NULL COMMENT '维度代码 -- ',
  `dim_order` int(11) DEFAULT NULL COMMENT '维度序号 -- 从1开始递增',
  PRIMARY KEY (`metric_tbl_cd`,`dim_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指标主表维度 -- ';

-- ----------------------------
-- Records of metric_tbl_dim
-- ----------------------------
INSERT INTO `metric_tbl_dim` VALUES ('0001', '0001', '1');
INSERT INTO `metric_tbl_dim` VALUES ('0001', '0003', '2');
INSERT INTO `metric_tbl_dim` VALUES ('0002', '0002', '1');
INSERT INTO `metric_tbl_dim` VALUES ('0002', '0003', '2');

-- ----------------------------
-- Table structure for monthly_metric
-- ----------------------------
DROP TABLE IF EXISTS `monthly_metric`;
CREATE TABLE `monthly_metric` (
  `month_dim_id` int(11) NOT NULL COMMENT '月份维度标识 -- ',
  `dept_dim_id` int(11) NOT NULL COMMENT '部门维度标识 -- ',
  `metric_row_id` bigint(20) NOT NULL COMMENT '指标记录标识 -- ',
  `metric_value` decimal(20,4) DEFAULT NULL COMMENT '指标值 -- ',
  PRIMARY KEY (`month_dim_id`,`dept_dim_id`,`metric_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月粒度指标 -- ';

-- ----------------------------
-- Records of monthly_metric
-- ----------------------------

-- ----------------------------
-- Table structure for month_dim
-- ----------------------------
DROP TABLE IF EXISTS `month_dim`;
CREATE TABLE `month_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_month` int(11) DEFAULT NULL COMMENT '月份 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='月份维度 -- ';

-- ----------------------------
-- Records of month_dim
-- ----------------------------
INSERT INTO `month_dim` VALUES ('1', '202001');
INSERT INTO `month_dim` VALUES ('2', '202002');
INSERT INTO `month_dim` VALUES ('3', '202003');
INSERT INTO `month_dim` VALUES ('4', '202004');
INSERT INTO `month_dim` VALUES ('5', '202005');

-- ----------------------------
-- Table structure for quarter_dim
-- ----------------------------
DROP TABLE IF EXISTS `quarter_dim`;
CREATE TABLE `quarter_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_quarter` int(11) DEFAULT NULL COMMENT '季度 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='季度维度 -- ';

-- ----------------------------
-- Records of quarter_dim
-- ----------------------------
INSERT INTO `quarter_dim` VALUES ('1', '20201');
INSERT INTO `quarter_dim` VALUES ('2', '20202');
INSERT INTO `quarter_dim` VALUES ('3', '20203');
INSERT INTO `quarter_dim` VALUES ('4', '20204');

-- ----------------------------
-- Table structure for task_schedule
-- ----------------------------
DROP TABLE IF EXISTS `task_schedule`;
CREATE TABLE `task_schedule` (
  `schedule_id` varchar(32) NOT NULL COMMENT '任务调度标识 -- 如果本次任务执行是通过调度系统执行的任务，填写在调度系统中注册的作业ID。',
  `schedule_cycle` int(11) DEFAULT NULL COMMENT '调度周期 -- 0：天，1：月，2：季度，3：半年，4：年',
  `first_schedule_dt` date DEFAULT NULL COMMENT '首次运行日期 -- ',
  `schedule_tm` time DEFAULT NULL COMMENT '调度时间 -- ',
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务调度 -- ';

-- ----------------------------
-- Records of task_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for year_dim
-- ----------------------------
DROP TABLE IF EXISTS `year_dim`;
CREATE TABLE `year_dim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维度标识 -- ',
  `d_year` int(11) DEFAULT NULL COMMENT '年份 -- ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='年份维度 -- ';

-- ----------------------------
-- Records of year_dim
-- ----------------------------
INSERT INTO `year_dim` VALUES ('1', '2019');
INSERT INTO `year_dim` VALUES ('2', '2020');
INSERT INTO `year_dim` VALUES ('3', '2021');
