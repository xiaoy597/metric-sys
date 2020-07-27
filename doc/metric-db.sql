
CREATE TABLE app_module
(
	module_id            INTEGER NOT NULL,
	super_module_id      INTEGER NULL,
	module_name          VARCHAR(60) NULL,
	module_url           VARCHAR(128) NULL,
	PRIMARY KEY (module_id)
);

CREATE TABLE busi_department
(
	dept_cd              VARCHAR(4) NOT NULL,
	dept_nm              VARCHAR(60) NULL,
	PRIMARY KEY (dept_cd)
);

CREATE TABLE common_metric_query
(
	common_mqry_id       INTEGER AUTO_INCREMENT,
	common_mqry_name     VARCHAR(20) NULL,
	metric_row_id        BIGINT NULL,
	common_mqry_condition TEXT NULL,
	PRIMARY KEY (common_mqry_id)
);

CREATE TABLE external_user_role
(
	external_role_cd     VARCHAR(16) NOT NULL,
	external_role_nm     VARCHAR(60) NULL,
	PRIMARY KEY (external_role_cd)
);

CREATE TABLE metric
(
	metric_row_id        BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	metric_nm            VARCHAR(60) NULL,
	metric_type          INTEGER NULL,
	dept_cd              VARCHAR(4) NULL,
	metric_unit          VARCHAR(16) NULL,
	metric_tbl_cd        CHAR(6) NULL,
	metric_tbl_col_cd    CHAR(10) NULL,
	metric_src_cd        CHAR(4) NULL,
	metric_formula       VARCHAR(1024) NULL,
	load_cycle           INTEGER NULL,
	default_sec_level    CHAR(2) NULL,
	metric_desc          VARCHAR(512) NULL,
	update_flag          INTEGER NULL,
	approve_status       INTEGER NULL,
	commiter             VARCHAR(16) NULL,
	approver             VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	approve_tm           DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (metric_row_id)
);

CREATE TABLE metric_class
(
	mc_row_id            BIGINT AUTO_INCREMENT,
	metric_class_cd      CHAR(8) NULL,
	metric_class_nm      VARCHAR(60) NULL,
	super_class_cd       CHAR(8) NULL,
	dept_cd              VARCHAR(4) NULL,
	disp_order           INTEGER NULL,
	metric_class_desc    VARCHAR(512) NULL,
	update_flag          INTEGER NULL,
	approve_status       INTEGER NULL,
	commiter             VARCHAR(16) NULL,
	approver             VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	approve_tm           DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mc_row_id)
);

CREATE TABLE metric_class_r
(
	mc_r_row_id          BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	metric_class_cd      CHAR(8) NULL,
	disp_order           INTEGER NULL,
	update_flag          INTEGER NULL,
	approve_status       INTEGER NULL,
	commiter             VARCHAR(16) NULL,
	approver             VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	approve_tm           DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mc_r_row_id)
);

CREATE TABLE metric_column
(
	metric_col_cd        CHAR(10) NOT NULL,
	metric_col_nm        VARCHAR(60) NULL,
	metric_col_type      INTEGER NULL,
	metric_col_data_type VARCHAR(20) NULL,
	metric_col_phy_nm    VARCHAR(30) NULL,
	metric_col_desc      VARCHAR(60) NULL,
	PRIMARY KEY (metric_col_cd)
);

CREATE TABLE metric_dim
(
	dim_cd               CHAR(4) NOT NULL,
	dim_nm               VARCHAR(60) NULL,
	dim_tbl_phy_nm       VARCHAR(30) NULL,
	PRIMARY KEY (dim_cd)
);

CREATE TABLE metric_dim_col
(
	dim_cd               CHAR(4) NOT NULL,
	metric_dim_col_cd    CHAR(10) NOT NULL,
	dim_level            INTEGER NULL,
	PRIMARY KEY (dim_cd,metric_dim_col_cd)
);

CREATE TABLE metric_dim_rollup
(
	dim_cd               CHAR(4) NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	rollup_type          INTEGER NULL,
	PRIMARY KEY (dim_cd,metric_row_id)
);

CREATE TABLE metric_if_content
(
	metric_if_cd         CHAR(8) NOT NULL,
	metric_cd            VARCHAR(10) NOT NULL,
	data_filter          TEXT NULL,
	PRIMARY KEY (metric_if_cd,metric_cd)
);

CREATE TABLE metric_interface
(
	mif_row_id           BIGINT AUTO_INCREMENT,
	metric_if_cd         CHAR(8) NULL,
	metric_if_nm         VARCHAR(60) NULL,
	expire_dt            DATE NULL,
	volume_limit         INTEGER NULL,
	freq_limit           INTEGER NULL,
	app_memo             VARCHAR(512) NULL,
	approve_memo         VARCHAR(512) NULL,
	access_token         CHAR(32) NULL,
	token_expire_tm      DATETIME NULL,
	approve_status       INTEGER NULL,
	applicant            VARCHAR(16) NULL,
	approver             VARCHAR(16) NULL,
	applicate_tm         DATETIME NULL,
	approve_tm           DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mif_row_id)
);

CREATE TABLE metric_param
(
	param_cd             CHAR(6) NOT NULL,
	param_type           INTEGER NULL,
	param_nm             VARCHAR(60) NULL,
	param_value          VARCHAR(512) NULL,
	PRIMARY KEY (param_cd)
);

CREATE TABLE metric_relation
(
	ustream_metric       VARCHAR(10) NOT NULL,
	dstream_metric       VARCHAR(10) NOT NULL,
	relation_type        INTEGER NULL,
	ustream_dft_value    NUMERIC(20,4) NULL,
	PRIMARY KEY (ustream_metric,dstream_metric)
);

CREATE TABLE metric_sec_control
(
	metric_sec_ctrl_id   BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	sec_level_cd         CHAR(2) NULL,
	metric_sec_ctrl_def  VARCHAR(512) NULL,
	PRIMARY KEY (metric_sec_ctrl_id)
);

CREATE TABLE metric_src
(
	metric_src_cd        CHAR(4) NOT NULL,
	metric_src_nm        VARCHAR(60) NULL,
	metric_src_param     VARCHAR(256) NULL,
	metric_src_type_cd   CHAR(2) NULL,
	PRIMARY KEY (metric_src_cd)
);

CREATE TABLE metric_src_type
(
	metric_src_type_cd   CHAR(2) NOT NULL,
	metric_src_type_nm   VARCHAR(60) NULL,
	PRIMARY KEY (metric_src_type_cd)
);

CREATE TABLE metric_tbl
(
	metric_tbl_cd        CHAR(6) NOT NULL,
	metric_tbl_nm        VARCHAR(60) NULL,
	metric_tbl_phy_nm    VARCHAR(30) NULL,
	dept_cd              VARCHAR(4) NULL,
	PRIMARY KEY (metric_tbl_cd)
);

CREATE TABLE metric_tbl_dim
(
	metric_tbl_cd        CHAR(6) NOT NULL,
	dim_cd               CHAR(4) NOT NULL,
	dim_order            INTEGER NULL,
	PRIMARY KEY (metric_tbl_cd,dim_cd)
);

CREATE TABLE organization
(
	org_cd               VARCHAR(20) NOT NULL,
	org_nm               VARCHAR(60) NULL,
	dept_cd              VARCHAR(4) NULL,
	org_type             INTEGER NULL,
	local_admin_org_cd   VARCHAR(20) NULL,
	super_admin_org_cd   VARCHAR(20) NULL,
	super_busi_org_cd    VARCHAR(20) NULL,
	PRIMARY KEY (org_cd)
);

CREATE TABLE role_mapping
(
	external_role_cd     VARCHAR(16) NOT NULL,
	user_role_id         INTEGER NOT NULL,
	PRIMARY KEY (external_role_cd,user_role_id)
);

CREATE TABLE security_level
(
	sec_level_cd         CHAR(2) NOT NULL,
	sec_level_nm         VARCHAR(60) NULL,
	PRIMARY KEY (sec_level_cd)
);

CREATE TABLE user
(
	user_id              VARCHAR(16) NOT NULL,
	user_name            VARCHAR(60) NULL,
	user_type            INTEGER NULL,
	reg_dt               DATE NULL,
	user_status          INTEGER NULL,
	last_login_time      DATETIME NULL,
	user_pwd             VARCHAR(100) NULL,
	user_name_cn         VARCHAR(200) NULL,
	office_phone         VARCHAR(45) NULL,
	mobile_phone         VARCHAR(45) NULL,
	email                VARCHAR(45) NULL,
	social_code          VARCHAR(45) NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE user_organization_assign
(
	id                   INTEGER NOT NULL,
	user_id              VARCHAR(16) NULL,
	org_cd               VARCHAR(20) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE user_role
(
	user_role_id         INTEGER AUTO_INCREMENT,
	user_role_name       VARCHAR(60) NULL,
	user_role_desc       VARCHAR(512) NULL,
	sec_level_cd         CHAR(2) NULL,
	PRIMARY KEY (user_role_id)
);

CREATE TABLE user_role_assign
(
	user_id              VARCHAR(16) NOT NULL,
	user_role_id         INTEGER NOT NULL,
	PRIMARY KEY (user_id,user_role_id)
);

CREATE TABLE user_role_privilege
(
	user_role_id         INTEGER NOT NULL,
	module_id            INTEGER NOT NULL,
	access_privilege     VARCHAR(128) NULL,
	PRIMARY KEY (user_role_id,module_id)
);

ALTER TABLE app_module COMMENT = '系统功能 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE app_module MODIFY COLUMN `module_id` INTEGER NOT NULL COMMENT '功能代码 -- ';
  ALTER TABLE app_module MODIFY COLUMN `super_module_id` INTEGER NULL COMMENT '上级功能代码 -- ';
  ALTER TABLE app_module MODIFY COLUMN `module_name` VARCHAR(60) NULL COMMENT '功能名称 -- ';
  ALTER TABLE app_module MODIFY COLUMN `module_url` VARCHAR(128) NULL COMMENT '功能访问地址 -- ';
  
ALTER TABLE busi_department COMMENT = '业务部门 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE busi_department MODIFY COLUMN `dept_cd` VARCHAR(4) NOT NULL COMMENT '部门代码 -- ';
  ALTER TABLE busi_department MODIFY COLUMN `dept_nm` VARCHAR(60) NULL COMMENT '部门名称 -- ';
  
ALTER TABLE common_metric_query COMMENT = '常用指标数据查询 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_id` INTEGER AUTO_INCREMENT COMMENT '常用指标数据查询标识 -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_name` VARCHAR(20) NULL COMMENT '常用指标数据查询名称 -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `metric_row_id` BIGINT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_condition` TEXT NULL COMMENT '指标查询条件 -- 使用JSON结构表示查询条件的各元素。其中对于简单查询，需要保存各谓词中的字段名称，操作符和操作数，各谓词之间只支持AND‘；自定义查询可直接保存完整的查询条件。JSON中需要设置字段区分简单查询和自定义查询。';
  
ALTER TABLE external_user_role COMMENT = '外部用户角色 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE external_user_role MODIFY COLUMN `external_role_cd` VARCHAR(16) NOT NULL COMMENT '外部角色代码 -- ';
  ALTER TABLE external_user_role MODIFY COLUMN `external_role_nm` VARCHAR(60) NULL COMMENT '外部角色名称 -- ';
  
ALTER TABLE metric COMMENT = '指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric MODIFY COLUMN `metric_row_id` BIGINT AUTO_INCREMENT COMMENT '指标记录标识 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- 不得重复';
  ALTER TABLE metric MODIFY COLUMN `metric_nm` VARCHAR(60) NULL COMMENT '指标名称 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_type` INTEGER NULL COMMENT '指标类型 -- 0：基础指标
1：衍生指标';
  ALTER TABLE metric MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '业务部门代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_unit` VARCHAR(16) NULL COMMENT '指标数据单位 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_cd` CHAR(6) NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_col_cd` CHAR(10) NULL COMMENT '指标度量字段代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_src_cd` CHAR(4) NULL COMMENT '指标数据源代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_formula` VARCHAR(1024) NULL COMMENT '指标计算模板 -- 对于基础指标表示SQL语句模板、文件字段列表等，对于衍生指标表示计算表达式
';
  ALTER TABLE metric MODIFY COLUMN `load_cycle` INTEGER NULL COMMENT '指标更新周期 -- 0：不自动更新
1：每天更新
2：每周更新
3：每月更新
4：每季度更新
5：每年更新';
  ALTER TABLE metric MODIFY COLUMN `default_sec_level` CHAR(2) NULL COMMENT '默认安全级别 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_desc` VARCHAR(512) NULL COMMENT '指标描述 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class COMMENT = '指标目录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class MODIFY COLUMN `mc_row_id` BIGINT AUTO_INCREMENT COMMENT '指标目录记录标识 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT '指标目录代码 -- 不得重复';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_nm` VARCHAR(60) NULL COMMENT '指标目录名称 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `super_class_cd` CHAR(8) NULL COMMENT '上级指标目录代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '部门代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_desc` VARCHAR(512) NULL COMMENT '指标目录描述 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric_class MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric_class MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class_r COMMENT = '指标分类 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class_r MODIFY COLUMN `mc_r_row_id` BIGINT AUTO_INCREMENT COMMENT '指标分类记录标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT '指标目录代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric_class_r MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_column COMMENT = '指标字段 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_cd` CHAR(10) NOT NULL COMMENT '指标字段代码 -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_nm` VARCHAR(60) NULL COMMENT '指标字段名称 -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_type` INTEGER NULL COMMENT '指标字段类型 -- 0：指标维度
1：指标度量';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_data_type` VARCHAR(20) NULL COMMENT '指标字段数据类型 -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_phy_nm` VARCHAR(30) NULL COMMENT '指标字段物理名称 -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_desc` VARCHAR(60) NULL COMMENT '指标字段备注 -- ';
  
ALTER TABLE metric_dim COMMENT = '指标维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_nm` VARCHAR(60) NULL COMMENT '维度名称 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_tbl_phy_nm` VARCHAR(30) NULL COMMENT '维度物理表名称 -- ';
  
ALTER TABLE metric_dim_col COMMENT = '指标维度字段 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `metric_dim_col_cd` CHAR(10) NOT NULL COMMENT '维度字段代码 -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_level` INTEGER NULL COMMENT '维度级别 -- 从1开始顺序增加，逐级汇总';
  
ALTER TABLE metric_dim_rollup COMMENT = '指标维度上卷 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `rollup_type` INTEGER NULL COMMENT '指标上卷方式 -- 0：SUM，1：MIN，2：MAX，3：AVG，4：LAST';
  
ALTER TABLE metric_if_content COMMENT = '指标接口内容 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_if_cd` CHAR(8) NOT NULL COMMENT '指标接口代码 -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_cd` VARCHAR(10) NOT NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `data_filter` TEXT NULL COMMENT '数据筛选条件 -- ';
  
ALTER TABLE metric_interface COMMENT = '指标数据接口 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_interface MODIFY COLUMN `mif_row_id` BIGINT AUTO_INCREMENT COMMENT '接口记录标识 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_cd` CHAR(8) NULL COMMENT '指标接口代码 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_nm` VARCHAR(60) NULL COMMENT '指标接口名称 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `expire_dt` DATE NULL COMMENT '接口失效日期 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `volume_limit` INTEGER NULL COMMENT '访问数据量阈值 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `freq_limit` INTEGER NULL COMMENT '访问频次阈值 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `app_memo` VARCHAR(512) NULL COMMENT '接口申请备注 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_memo` VARCHAR(512) NULL COMMENT '接口审核备注 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `access_token` CHAR(32) NULL COMMENT '接口访问令牌 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `token_expire_tm` DATETIME NULL COMMENT '令牌失效时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric_interface MODIFY COLUMN `applicant` VARCHAR(16) NULL COMMENT '申请用户 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `applicate_tm` DATETIME NULL COMMENT '申请时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_param COMMENT = '指标计算参数 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_param MODIFY COLUMN `param_cd` CHAR(6) NOT NULL COMMENT '参数代码 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_type` INTEGER NULL COMMENT '参数类型 -- 0：指标加载参数，1：指标系统参数。注：指标加载参数就是可以嵌入基础指标和衍生指标计算公式或者语句的参数，指标系统参数是除了指标加载参数之外的其他参数。';
  ALTER TABLE metric_param MODIFY COLUMN `param_nm` VARCHAR(60) NULL COMMENT '参数名称 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_value` VARCHAR(512) NULL COMMENT '参数值 -- ';
  
ALTER TABLE metric_relation COMMENT = '指标依赖关系 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_metric` VARCHAR(10) NOT NULL COMMENT '上游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `dstream_metric` VARCHAR(10) NOT NULL COMMENT '下游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `relation_type` INTEGER NULL COMMENT '依赖类型 -- 0：弱依赖，如果不满足则取默认值
1：强依赖，如果不满足则不计算';
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_dft_value` NUMERIC(20,4) NULL COMMENT '上游指标默认值 -- ';
  
ALTER TABLE metric_sec_control COMMENT = '指标数据安全控制 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_sec_control MODIFY COLUMN `metric_sec_ctrl_id` BIGINT AUTO_INCREMENT COMMENT '指标数据安全控制标识 -- ';
  ALTER TABLE metric_sec_control MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_sec_control MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '安全级别代码 -- ';
  ALTER TABLE metric_sec_control MODIFY COLUMN `metric_sec_ctrl_def` VARCHAR(512) NULL COMMENT '指标数据安全控制定义 -- 指标数据的维度及粒度组合，定义的形式为：{ "dim_1":"dim_level_1", "dim_2":"dim_level_2, "dim_3":""}，未指定级别的维度表示对所有级别有效。';
  
ALTER TABLE metric_src COMMENT = '指标数据源 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_cd` CHAR(4) NOT NULL COMMENT '指标数据源代码 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_nm` VARCHAR(60) NULL COMMENT '指标数据源名称 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_param` VARCHAR(256) NULL COMMENT '数据源访问参数 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_type_cd` CHAR(2) NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统';
  
ALTER TABLE metric_src_type COMMENT = '指标数据源类型 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_cd` CHAR(2) NOT NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统';
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_nm` VARCHAR(60) NULL COMMENT '指标数据源类型名称 -- ';
  
ALTER TABLE metric_tbl COMMENT = '指标主表 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_nm` VARCHAR(60) NULL COMMENT '指标主表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_phy_nm` VARCHAR(30) NULL COMMENT '指标主表物理表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '部门代码 -- ';
  
ALTER TABLE metric_tbl_dim COMMENT = '指标主表维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_order` INTEGER NULL COMMENT '维度序号 -- 从1开始递增';
  
ALTER TABLE organization COMMENT = '组织机构 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE organization MODIFY COLUMN `org_cd` VARCHAR(20) NOT NULL COMMENT '机构代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `org_nm` VARCHAR(60) NULL COMMENT '机构名称 -- ';
  ALTER TABLE organization MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '部门代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `org_type` INTEGER NULL COMMENT '机构类型 -- 0：管理机构
1：业务部门';
  ALTER TABLE organization MODIFY COLUMN `local_admin_org_cd` VARCHAR(20) NULL COMMENT '本级管理机构代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `super_admin_org_cd` VARCHAR(20) NULL COMMENT '上级管理机构代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `super_busi_org_cd` VARCHAR(20) NULL COMMENT '上级业务机构代码 -- ';
  
ALTER TABLE role_mapping COMMENT = '外部角色映射 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE role_mapping MODIFY COLUMN `external_role_cd` VARCHAR(16) NOT NULL COMMENT '外部角色代码 -- ';
  ALTER TABLE role_mapping MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '用户角色代码 -- ';
  
ALTER TABLE security_level COMMENT = '数据安全级别 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE security_level MODIFY COLUMN `sec_level_cd` CHAR(2) NOT NULL COMMENT '安全级别代码 -- ';
  ALTER TABLE security_level MODIFY COLUMN `sec_level_nm` VARCHAR(60) NULL COMMENT '安全级别名称 -- ';
  
ALTER TABLE user COMMENT = '用户 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user MODIFY COLUMN `user_id` VARCHAR(16) NOT NULL COMMENT '用户代码 -- ';
  ALTER TABLE user MODIFY COLUMN `user_name` VARCHAR(60) NULL COMMENT '用户名称 -- 用户登录所用的ID';
  ALTER TABLE user MODIFY COLUMN `user_type` INTEGER NULL COMMENT '用户类型 -- ';
  ALTER TABLE user MODIFY COLUMN `reg_dt` DATE NULL COMMENT '注册日期 -- ';
  ALTER TABLE user MODIFY COLUMN `user_status` INTEGER NULL COMMENT '用户状态 -- ';
  ALTER TABLE user MODIFY COLUMN `last_login_time` DATETIME NULL COMMENT '上次登录时间 -- ';
  ALTER TABLE user MODIFY COLUMN `user_pwd` VARCHAR(100) NULL COMMENT '用户密码 -- ';
  ALTER TABLE user MODIFY COLUMN `user_name_cn` VARCHAR(200) NULL COMMENT '用户中文名称 -- ';
  ALTER TABLE user MODIFY COLUMN `office_phone` VARCHAR(45) NULL COMMENT '办公电话 -- ';
  ALTER TABLE user MODIFY COLUMN `mobile_phone` VARCHAR(45) NULL COMMENT '移动电话 -- ';
  ALTER TABLE user MODIFY COLUMN `email` VARCHAR(45) NULL COMMENT '电子邮件 -- ';
  ALTER TABLE user MODIFY COLUMN `social_code` VARCHAR(45) NULL COMMENT '社会统一代码 -- ';
  
ALTER TABLE user_organization_assign COMMENT = '用户机构 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_organization_assign MODIFY COLUMN `id` INTEGER NOT NULL COMMENT '记录标识 -- ';
  ALTER TABLE user_organization_assign MODIFY COLUMN `user_id` VARCHAR(16) NULL COMMENT '用户代码 -- ';
  ALTER TABLE user_organization_assign MODIFY COLUMN `org_cd` VARCHAR(20) NULL COMMENT '机构代码 -- ';
  
ALTER TABLE user_role COMMENT = '用户角色 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role MODIFY COLUMN `user_role_id` INTEGER AUTO_INCREMENT COMMENT '用户角色代码 -- ';
  ALTER TABLE user_role MODIFY COLUMN `user_role_name` VARCHAR(60) NULL COMMENT '用户角色名称 -- ';
  ALTER TABLE user_role MODIFY COLUMN `user_role_desc` VARCHAR(512) NULL COMMENT '用户角色描述 -- ';
  ALTER TABLE user_role MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '安全级别代码 -- ';
  
ALTER TABLE user_role_assign COMMENT = '用户角色映射 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role_assign MODIFY COLUMN `user_id` VARCHAR(16) NOT NULL COMMENT '用户代码 -- ';
  ALTER TABLE user_role_assign MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '用户角色代码 -- ';
  
ALTER TABLE user_role_privilege COMMENT = '角色权限 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role_privilege MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '用户角色代码 -- ';
  ALTER TABLE user_role_privilege MODIFY COLUMN `module_id` INTEGER NOT NULL COMMENT '功能代码 -- ';
  ALTER TABLE user_role_privilege MODIFY COLUMN `access_privilege` VARCHAR(128) NULL COMMENT '功能访问权限 -- ';
  


