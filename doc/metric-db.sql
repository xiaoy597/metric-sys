
CREATE TABLE busi_department
(
	dept_cd              VARCHAR(3) NOT NULL,
	dept_nm              VARCHAR(60) NULL,
	PRIMARY KEY (dept_cd)
);

CREATE TABLE metric
(
	metric_row_id        BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	metric_nm            VARCHAR(60) NULL,
	metric_type          INTEGER NULL,
	dept_cd              VARCHAR(3) NULL,
	metric_unit          VARCHAR(16) NULL,
	metric_tbl_cd        CHAR(6) NULL,
	metric_tbl_col_cd    CHAR(10) NULL,
	metric_src_cd        CHAR(4) NULL,
	metric_formula       VARCHAR(1024) NULL,
	load_cycle           INTEGER NULL,
	metric_desc          VARCHAR(512) NULL,
	update_flag          INTEGER NULL,
	commiter             CHAR(16) NULL,
	approver             CHAR(10) NULL,
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
	super_class_nm       CHAR(8) NULL,
	update_flag          INTEGER NULL,
	commiter             CHAR(10) NULL,
	approver             CHAR(10) NULL,
	update_tm            DATETIME NULL,
	approve_tm           DATETIME NULL,
	disp_order           INTEGER NULL,
	dept_cd              VARCHAR(3) NULL,
	metric_class_desc    VARCHAR(512) NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mc_row_id)
);

CREATE TABLE metric_class_r
(
	mc_r_row_id          BIGINT AUTO_INCREMENT,
	disp_order           INTEGER NULL,
	metric_cd            VARCHAR(10) NULL,
	metric_class_cd      CHAR(8) NULL,
	update_flag          INTEGER NULL,
	commiter             CHAR(10) NULL,
	approver             CHAR(10) NULL,
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

CREATE TABLE metric_if_content
(
	metric_if_cd         CHAR(8) NOT NULL,
	metric_cd            VARCHAR(10) NOT NULL,
	data_filter          VARCHAR(1024) NULL,
	PRIMARY KEY (metric_if_cd,metric_cd)
);

CREATE TABLE metric_interface
(
	mif_row_id           BIGINT AUTO_INCREMENT,
	metric_if_cd         CHAR(8) NULL,
	metric_if_nm         VARCHAR(60) NULL,
	approve_status       INTEGER NULL,
	applicant            CHAR(10) NULL,
	approver             CHAR(10) NULL,
	expire_dt            DATE NULL,
	freq_limit           INTEGER NULL,
	volume_limit         INTEGER NULL,
	access_token         CHAR(32) NULL,
	applicate_tm         DATETIME NULL,
	approve_tm           DATETIME NULL,
	token_expire_tm      DATETIME NULL,
	app_memo             VARCHAR(512) NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mif_row_id)
);

CREATE TABLE metric_param
(
	param_cd             CHAR(6) NOT NULL,
	param_nm             VARCHAR(60) NULL,
	param_value          VARCHAR(128) NULL,
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

CREATE TABLE metric_sec_level
(
	dim_cd               CHAR(4) NOT NULL,
	metric_dim_col_cd    CHAR(10) NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	sec_level_cd         CHAR(2) NULL,
	PRIMARY KEY (dim_cd,metric_dim_col_cd,metric_row_id)
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
	dept_cd              VARCHAR(3) NULL,
	PRIMARY KEY (metric_tbl_cd)
);

CREATE TABLE metric_tbl_dim
(
	metric_tbl_cd        CHAR(6) NOT NULL,
	dim_cd               CHAR(4) NOT NULL,
	PRIMARY KEY (metric_tbl_cd,dim_cd)
);

CREATE TABLE organization
(
	org_cd               CHAR(8) NOT NULL,
	org_nm               VARCHAR(60) NULL,
	dept_cd              VARCHAR(3) NULL,
	org_type             INTEGER NULL,
	local_admin_org_cd   CHAR(8) NULL,
	super_admin_org_cd   CHAR(8) NULL,
	PRIMARY KEY (org_cd)
);

CREATE TABLE role_mapping
(
	external_role_cd     CHAR(16) NOT NULL,
	sys_role_cd          CHAR(2) NOT NULL,
	PRIMARY KEY (external_role_cd,sys_role_cd)
);

CREATE TABLE role_privilege
(
	sys_role_cd          CHAR(2) NOT NULL,
	sys_func_cd          CHAR(4) NOT NULL,
	PRIMARY KEY (sys_role_cd,sys_func_cd)
);

CREATE TABLE security_level
(
	sec_level_cd         CHAR(2) NOT NULL,
	sec_level_nm         VARCHAR(60) NULL,
	PRIMARY KEY (sec_level_cd)
);

CREATE TABLE sys_role
(
	sys_role_cd          CHAR(2) NOT NULL,
	sys_role_nm          VARCHAR(60) NULL,
	sys_role_desc        VARCHAR(512) NULL,
	sec_level_cd         CHAR(2) NULL,
	PRIMARY KEY (sys_role_cd)
);

CREATE TABLE system_func
(
	sys_func_cd          CHAR(4) NOT NULL,
	sys_func_nm          VARCHAR(60) NULL,
	sys_func_url         VARCHAR(128) NULL,
	PRIMARY KEY (sys_func_cd)
);

CREATE TABLE user_mapping
(
	user_cd              INTEGER NOT NULL,
	external_user_cd     CHAR(16) NULL,
	user_nm              VARCHAR(60) NULL,
	org_cd               CHAR(8) NULL,
	user_login_id        CHAR(10) NULL,
	PRIMARY KEY (user_cd)
);

ALTER TABLE busi_department COMMENT = '业务部门 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE busi_department MODIFY COLUMN `dept_cd` VARCHAR(3) NOT NULL COMMENT '部门代码 -- ';
  ALTER TABLE busi_department MODIFY COLUMN `dept_nm` VARCHAR(60) NULL COMMENT '部门名称 -- ';
  
ALTER TABLE metric COMMENT = '指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric MODIFY COLUMN `metric_row_id` BIGINT AUTO_INCREMENT COMMENT '指标记录标识 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- 不得重复';
  ALTER TABLE metric MODIFY COLUMN `metric_nm` VARCHAR(60) NULL COMMENT '指标名称 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_type` INTEGER NULL COMMENT '指标类型 -- 0：基础指标
1：衍生指标';
  ALTER TABLE metric MODIFY COLUMN `dept_cd` VARCHAR(3) NULL COMMENT '业务部门代码 -- ';
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
  ALTER TABLE metric MODIFY COLUMN `metric_desc` VARCHAR(512) NULL COMMENT '指标描述 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric MODIFY COLUMN `commiter` CHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `approver` CHAR(10) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class COMMENT = '指标目录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class MODIFY COLUMN `mc_row_id` BIGINT AUTO_INCREMENT COMMENT '指标目录记录标识 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT '指标目录代码 -- 不得重复';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_nm` VARCHAR(60) NULL COMMENT '指标目录名称 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `super_class_nm` CHAR(8) NULL COMMENT '上级指标目录代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric_class MODIFY COLUMN `commiter` CHAR(10) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approver` CHAR(10) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `dept_cd` VARCHAR(3) NULL COMMENT '部门代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_desc` VARCHAR(512) NULL COMMENT '指标目录描述 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class_r COMMENT = '指标分类 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class_r MODIFY COLUMN `mc_r_row_id` BIGINT AUTO_INCREMENT COMMENT '指标分类记录标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT '指标目录代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `commiter` CHAR(10) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approver` CHAR(10) NULL COMMENT '审核用户 -- ';
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
  
ALTER TABLE metric_dim COMMENT = '指标维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_nm` VARCHAR(60) NULL COMMENT '维度名称 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_tbl_phy_nm` VARCHAR(30) NULL COMMENT '维度物理表名称 -- ';
  
ALTER TABLE metric_dim_col COMMENT = '指标维度字段 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `metric_dim_col_cd` CHAR(10) NOT NULL COMMENT '维度字段代码 -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_level` INTEGER NULL COMMENT '维度级别 -- 从1开始顺序增加，逐级汇总';
  
ALTER TABLE metric_if_content COMMENT = '指标接口内容 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_if_cd` CHAR(8) NOT NULL COMMENT '指标接口代码 -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_cd` VARCHAR(10) NOT NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `data_filter` VARCHAR(1024) NULL COMMENT '数据筛选条件 -- ';
  
ALTER TABLE metric_interface COMMENT = '指标数据接口 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_interface MODIFY COLUMN `mif_row_id` BIGINT AUTO_INCREMENT COMMENT '接口记录标识 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_cd` CHAR(8) NULL COMMENT '指标接口代码 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_nm` VARCHAR(60) NULL COMMENT '指标接口名称 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '审核状态 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `applicant` CHAR(10) NULL COMMENT '申请用户 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approver` CHAR(10) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `expire_dt` DATE NULL COMMENT '接口失效日期 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `freq_limit` INTEGER NULL COMMENT '访问频次阈值 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `volume_limit` INTEGER NULL COMMENT '访问数据量阈值 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `access_token` CHAR(32) NULL COMMENT '接口访问令牌 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `applicate_tm` DATETIME NULL COMMENT '申请时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `token_expire_tm` DATETIME NULL COMMENT '令牌失效时间 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `app_memo` VARCHAR(512) NULL COMMENT '接口申请备注 -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_param COMMENT = '指标计算参数 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_param MODIFY COLUMN `param_cd` CHAR(6) NOT NULL COMMENT '参数代码 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_nm` VARCHAR(60) NULL COMMENT '参数名称 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_value` VARCHAR(128) NULL COMMENT '参数值 -- ';
  
ALTER TABLE metric_relation COMMENT = '指标依赖关系 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_metric` VARCHAR(10) NOT NULL COMMENT '上游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `dstream_metric` VARCHAR(10) NOT NULL COMMENT '下游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `relation_type` INTEGER NULL COMMENT '依赖类型 -- 0：弱依赖，如果不满足则取默认值
1：强依赖，如果不满足则不计算';
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_dft_value` NUMERIC(20,4) NULL COMMENT '上游指标默认值 -- ';
  
ALTER TABLE metric_sec_level COMMENT = '指标数据安全级别 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_sec_level MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `metric_dim_col_cd` CHAR(10) NOT NULL COMMENT '维度字段代码 -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '安全级别代码 -- ';
  
ALTER TABLE metric_src COMMENT = '指标数据源 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_cd` CHAR(4) NOT NULL COMMENT '指标数据源代码 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_nm` VARCHAR(60) NULL COMMENT '指标数据源名称 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_param` VARCHAR(256) NULL COMMENT '数据源访问参数 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_type_cd` CHAR(2) NULL COMMENT '指标数据源类型代码 -- ';
  
ALTER TABLE metric_src_type COMMENT = '指标数据源类型 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_cd` CHAR(2) NOT NULL COMMENT '指标数据源类型代码 -- ';
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_nm` VARCHAR(60) NULL COMMENT '指标数据源类型名称 -- ';
  
ALTER TABLE metric_tbl COMMENT = '指标主表 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_nm` VARCHAR(60) NULL COMMENT '指标主表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_phy_nm` VARCHAR(30) NULL COMMENT '指标主表物理表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `dept_cd` VARCHAR(3) NULL COMMENT '部门代码 -- ';
  
ALTER TABLE metric_tbl_dim COMMENT = '指标主表维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT '维度代码 -- ';
  
ALTER TABLE organization COMMENT = '组织机构 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE organization MODIFY COLUMN `org_cd` CHAR(8) NOT NULL COMMENT '机构代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `org_nm` VARCHAR(60) NULL COMMENT '机构名称 -- ';
  ALTER TABLE organization MODIFY COLUMN `dept_cd` VARCHAR(3) NULL COMMENT '部门代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `org_type` INTEGER NULL COMMENT '机构类型 -- 0：管理机构
1：业务部门';
  ALTER TABLE organization MODIFY COLUMN `local_admin_org_cd` CHAR(8) NULL COMMENT '本级管理机构代码 -- ';
  ALTER TABLE organization MODIFY COLUMN `super_admin_org_cd` CHAR(8) NULL COMMENT '上级管理机构代码 -- ';
  
ALTER TABLE role_mapping COMMENT = '角色映射 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE role_mapping MODIFY COLUMN `external_role_cd` CHAR(16) NOT NULL COMMENT '外部角色代码 -- ';
  ALTER TABLE role_mapping MODIFY COLUMN `sys_role_cd` CHAR(2) NOT NULL COMMENT '用户角色代码 -- ';
  
ALTER TABLE role_privilege COMMENT = '角色权限 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE role_privilege MODIFY COLUMN `sys_role_cd` CHAR(2) NOT NULL COMMENT '用户角色代码 -- ';
  ALTER TABLE role_privilege MODIFY COLUMN `sys_func_cd` CHAR(4) NOT NULL COMMENT '功能代码 -- ';
  
ALTER TABLE security_level COMMENT = '数据安全级别 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE security_level MODIFY COLUMN `sec_level_cd` CHAR(2) NOT NULL COMMENT '安全级别代码 -- ';
  ALTER TABLE security_level MODIFY COLUMN `sec_level_nm` VARCHAR(60) NULL COMMENT '安全级别名称 -- ';
  
ALTER TABLE sys_role COMMENT = '用户角色 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE sys_role MODIFY COLUMN `sys_role_cd` CHAR(2) NOT NULL COMMENT '用户角色代码 -- ';
  ALTER TABLE sys_role MODIFY COLUMN `sys_role_nm` VARCHAR(60) NULL COMMENT '用户角色名称 -- ';
  ALTER TABLE sys_role MODIFY COLUMN `sys_role_desc` VARCHAR(512) NULL COMMENT '用户角色描述 -- ';
  ALTER TABLE sys_role MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '安全级别代码 -- ';
  
ALTER TABLE system_func COMMENT = '系统功能 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE system_func MODIFY COLUMN `sys_func_cd` CHAR(4) NOT NULL COMMENT '功能代码 -- ';
  ALTER TABLE system_func MODIFY COLUMN `sys_func_nm` VARCHAR(60) NULL COMMENT '功能名称 -- ';
  ALTER TABLE system_func MODIFY COLUMN `sys_func_url` VARCHAR(128) NULL COMMENT '功能访问地址 -- ';
  
ALTER TABLE user_mapping COMMENT = '用户映射 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_mapping MODIFY COLUMN `user_cd` INTEGER NOT NULL COMMENT '用户代码 -- ';
  ALTER TABLE user_mapping MODIFY COLUMN `external_user_cd` CHAR(16) NULL COMMENT '外部用户代码 -- ';
  ALTER TABLE user_mapping MODIFY COLUMN `user_nm` VARCHAR(60) NULL COMMENT '用户名称 -- ';
  ALTER TABLE user_mapping MODIFY COLUMN `org_cd` CHAR(8) NULL COMMENT '机构代码 -- ';
  ALTER TABLE user_mapping MODIFY COLUMN `user_login_id` CHAR(10) NULL COMMENT '用户登录标识 -- ';
  


