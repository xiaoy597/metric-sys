
CREATE TABLE busi_department
(
	dept_cd              VARCHAR(6) NOT NULL,
	dept_nm              VARCHAR(60) NULL,
	is_admin_dept        INTEGER NULL,
	PRIMARY KEY (dept_cd)
);

CREATE TABLE eva_metric_obj
(
	object_id            INTEGER NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	PRIMARY KEY (object_id,metric_row_id)
);

CREATE TABLE eva_metric_review
(
	metric_row_id        BIGINT NOT NULL,
	period_id            INTEGER NOT NULL,
	review_status        INTEGER NULL,
	review_comment       VARCHAR(512) NULL,
	review_user_id       VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	PRIMARY KEY (metric_row_id,period_id)
);

CREATE TABLE eva_object
(
	object_id            INTEGER NOT NULL,
	object_nm            VARCHAR(60) NULL,
	object_type          INTEGER NULL,
	PRIMARY KEY (object_id)
);

CREATE TABLE eva_period
(
	period_id            INTEGER AUTO_INCREMENT,
	eva_cycle_type       INTEGER NULL,
	period_start_dt      DATE NULL,
	period_end_dt        DATE NULL,
	PRIMARY KEY (period_id)
);

CREATE TABLE eva_task
(
	task_id              INTEGER AUTO_INCREMENT,
	task_nm              VARCHAR(60) NULL,
	task_type            INTEGER NULL,
	eva_cycle_type       INTEGER NULL,
	effective_dt         DATE NULL,
	expire_dt            DATE NULL,
	schedule_id          VARCHAR(32) NULL,
	task_desc            VARCHAR(512) NULL,
	update_user_id       VARCHAR(16) NULL,
	review_type          INTEGER NULL,
	update_tm            DATETIME NULL,
	PRIMARY KEY (task_id)
);

CREATE TABLE eva_task_his
(
	task_id              INTEGER NOT NULL,
	task_start_tm        DATETIME NOT NULL,
	task_run_mode        INTEGER NULL,
	task_result          INTEGER NULL,
	task_finish_tm       DATETIME NULL,
	exec_user_id         VARCHAR(32) NULL,
	period_id            INTEGER NULL,
	PRIMARY KEY (task_id,task_start_tm)
);

CREATE TABLE eva_task_metric
(
	task_id              INTEGER NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	PRIMARY KEY (task_id,metric_row_id)
);

CREATE TABLE metric
(
	metric_row_id        BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	metric_nm            VARCHAR(60) NULL,
	metric_type          INTEGER NULL,
	dept_cd              VARCHAR(4) NULL,
	metric_unit          VARCHAR(16) NULL,
	metric_tbl_cd        VARCHAR(6) NULL,
	metric_tbl_col_cd    VARCHAR(10) NULL,
	metric_src_cd        CHAR(4) NULL,
	metric_formula       VARCHAR(1024) NULL,
	load_cycle           INTEGER NULL,
	default_sec_level    CHAR(2) NULL,
	metric_desc          VARCHAR(512) NULL,
	update_flag          INTEGER NULL,
	review_status        INTEGER NULL,
	update_user_id       VARCHAR(16) NULL,
	review_user_id       VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	review_tm            DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (metric_row_id)
);

CREATE TABLE metric_class
(
	mc_row_id            BIGINT AUTO_INCREMENT,
	metric_class_cd      VARCHAR(8) NULL,
	metric_class_nm      VARCHAR(60) NULL,
	super_class_cd       VARCHAR(8) NULL,
	dept_cd              VARCHAR(6) NULL,
	disp_order           INTEGER NULL,
	metric_class_desc    VARCHAR(512) NULL,
	update_flag          INTEGER NULL,
	review_status        INTEGER NULL,
	update_user_id       VARCHAR(16) NULL,
	review_user_id       VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	review_tm            DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mc_row_id)
);

CREATE TABLE metric_class_r
(
	mc_r_row_id          BIGINT AUTO_INCREMENT,
	metric_cd            VARCHAR(10) NULL,
	metric_class_cd      VARCHAR(8) NULL,
	disp_order           INTEGER NULL,
	update_flag          INTEGER NULL,
	review_status        INTEGER NULL,
	update_user_id       VARCHAR(16) NULL,
	review_user_id       VARCHAR(16) NULL,
	update_tm            DATETIME NULL,
	review_tm            DATETIME NULL,
	task_flow_id         INTEGER NULL,
	PRIMARY KEY (mc_r_row_id)
);

CREATE TABLE metric_dim
(
	dim_cd               VARCHAR(4) NOT NULL,
	dim_nm               VARCHAR(60) NULL,
	dim_code_type        VARCHAR(30) NULL,
	dim_desc             VARCHAR(512) NULL,
	update_user_id       VARCHAR(16) NULL,
	metric_src_cd        CHAR(4) NULL,
	src_tbl_nm           VARCHAR(60) NULL,
	src_col_nm           VARCHAR(60) NULL,
	PRIMARY KEY (dim_cd)
);

CREATE TABLE metric_param
(
	param_cd             VARCHAR(20) NOT NULL,
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
	metric_tbl_cd        VARCHAR(6) NOT NULL,
	metric_tbl_nm        VARCHAR(60) NULL,
	metric_tbl_phy_nm    VARCHAR(30) NULL,
	dept_cd              VARCHAR(6) NULL,
	PRIMARY KEY (metric_tbl_cd)
);

CREATE TABLE metric_tbl_dim
(
	metric_tbl_cd        VARCHAR(6) NOT NULL,
	dim_cd               VARCHAR(4) NOT NULL,
	dim_order            INTEGER NULL,
	PRIMARY KEY (metric_tbl_cd,dim_cd)
);

CREATE TABLE task_schedule
(
	schedule_id          VARCHAR(32) NOT NULL,
	schedule_cycle       INTEGER NULL,
	first_schedule_dt    DATE NULL,
	schedule_tm          TIME NULL,
	PRIMARY KEY (schedule_id)
);

ALTER TABLE busi_department COMMENT = '业务部门 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE busi_department MODIFY COLUMN `dept_cd` VARCHAR(6) NOT NULL COMMENT '部门代码 -- ';
  ALTER TABLE busi_department MODIFY COLUMN `dept_nm` VARCHAR(60) NULL COMMENT '部门名称 -- ';
  ALTER TABLE busi_department MODIFY COLUMN `is_admin_dept` INTEGER NULL COMMENT '是否负责系统维护 -- 0：不负责公共指标维护，1：负责公共指标维护';
  
ALTER TABLE eva_metric_obj COMMENT = '考核指标关联对象 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_metric_obj MODIFY COLUMN `object_id` INTEGER NOT NULL COMMENT '考核对象标识 -- ';
  ALTER TABLE eva_metric_obj MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  
ALTER TABLE eva_metric_review COMMENT = '考核指标审核 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_metric_review MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE eva_metric_review MODIFY COLUMN `period_id` INTEGER NOT NULL COMMENT '考核周期标识 -- ';
  ALTER TABLE eva_metric_review MODIFY COLUMN `review_status` INTEGER NULL COMMENT '审核状态 -- 0：未审核，1：审核通过，2：审核拒绝';
  ALTER TABLE eva_metric_review MODIFY COLUMN `review_comment` VARCHAR(512) NULL COMMENT '审核意见 -- ';
  ALTER TABLE eva_metric_review MODIFY COLUMN `review_user_id` VARCHAR(16) NULL COMMENT '考核审核员 -- ';
  ALTER TABLE eva_metric_review MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  
ALTER TABLE eva_object COMMENT = '考核对象 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_object MODIFY COLUMN `object_id` INTEGER NOT NULL COMMENT '考核对象标识 -- ';
  ALTER TABLE eva_object MODIFY COLUMN `object_nm` VARCHAR(60) NULL COMMENT '考核对象名称 -- ';
  ALTER TABLE eva_object MODIFY COLUMN `object_type` INTEGER NULL COMMENT '考核对象类型 -- 0：部门考核对象';
  
ALTER TABLE eva_period COMMENT = '考核周期 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_period MODIFY COLUMN `period_id` INTEGER AUTO_INCREMENT COMMENT '考核周期标识 -- ';
  ALTER TABLE eva_period MODIFY COLUMN `eva_cycle_type` INTEGER NULL COMMENT '考核周期类型 -- 0：日，1：月，2：季度，3：半年，4：年';
  ALTER TABLE eva_period MODIFY COLUMN `period_start_dt` DATE NULL COMMENT '考核周期开始日期 -- ';
  ALTER TABLE eva_period MODIFY COLUMN `period_end_dt` DATE NULL COMMENT '考核周期结束日期 -- ';
  
ALTER TABLE eva_task COMMENT = '考核任务 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_task MODIFY COLUMN `task_id` INTEGER AUTO_INCREMENT COMMENT '任务标识 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `task_nm` VARCHAR(60) NULL COMMENT '任务名称 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `task_type` INTEGER NULL COMMENT '任务类型 -- 0、自动考核评分，1：自动评分加人工干预，2：人工考核评分';
  ALTER TABLE eva_task MODIFY COLUMN `eva_cycle_type` INTEGER NULL COMMENT '考核周期类型 -- 0：日，1：月，2：季度，3：半年，4：年';
  ALTER TABLE eva_task MODIFY COLUMN `effective_dt` DATE NULL COMMENT '生效日期 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `expire_dt` DATE NULL COMMENT '失效日期 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `schedule_id` VARCHAR(32) NULL COMMENT '任务调度标识 -- 如果本次任务执行是通过调度系统执行的任务，填写在调度系统中注册的作业ID。';
  ALTER TABLE eva_task MODIFY COLUMN `task_desc` VARCHAR(512) NULL COMMENT '任务备注 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `update_user_id` VARCHAR(16) NULL COMMENT '考核操作员 -- ';
  ALTER TABLE eva_task MODIFY COLUMN `review_type` INTEGER NULL COMMENT '审核类型 -- 0：不需要审核，1：需要审核';
  ALTER TABLE eva_task MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  
ALTER TABLE eva_task_his COMMENT = '任务执行历史 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_task_his MODIFY COLUMN `task_id` INTEGER NOT NULL COMMENT '任务标识 -- ';
  ALTER TABLE eva_task_his MODIFY COLUMN `task_start_tm` DATETIME NOT NULL COMMENT '任务启动时间 -- ';
  ALTER TABLE eva_task_his MODIFY COLUMN `task_run_mode` INTEGER NULL COMMENT '任务执行方式 -- 0：人工执行，1：自动执行';
  ALTER TABLE eva_task_his MODIFY COLUMN `task_result` INTEGER NULL COMMENT '任务执行结果 -- 0：执行成功，其他值表示失败返回值。';
  ALTER TABLE eva_task_his MODIFY COLUMN `task_finish_tm` DATETIME NULL COMMENT '任务完成时间 -- ';
  ALTER TABLE eva_task_his MODIFY COLUMN `exec_user_id` VARCHAR(32) NULL COMMENT '任务执行用户 -- 执行任务的用户ID，只适用于人工执行方式。';
  ALTER TABLE eva_task_his MODIFY COLUMN `period_id` INTEGER NULL COMMENT '考核周期标识 -- ';
  
ALTER TABLE eva_task_metric COMMENT = '考核任务关联指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE eva_task_metric MODIFY COLUMN `task_id` INTEGER NOT NULL COMMENT '任务标识 -- ';
  ALTER TABLE eva_task_metric MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  
ALTER TABLE metric COMMENT = '指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric MODIFY COLUMN `metric_row_id` BIGINT AUTO_INCREMENT COMMENT '指标记录标识 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- 不得重复';
  ALTER TABLE metric MODIFY COLUMN `metric_nm` VARCHAR(60) NULL COMMENT '指标名称 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_type` INTEGER NULL COMMENT '指标类型 -- 0：基础指标（数据映射）
1：衍生指标（公式计算）
2：考核指标';
  ALTER TABLE metric MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '业务部门代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_unit` VARCHAR(16) NULL COMMENT '指标数据单位 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_cd` VARCHAR(6) NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_col_cd` VARCHAR(10) NULL COMMENT '指标度量字段代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_src_cd` CHAR(4) NULL COMMENT '指标数据源代码 -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_formula` VARCHAR(1024) NULL COMMENT '指标计算模板 -- 对于基础指标表示SQL语句模板、文件字段列表等，对于衍生指标表示计算表达式
';
  ALTER TABLE metric MODIFY COLUMN `load_cycle` INTEGER NULL COMMENT '指标更新周期 -- 0：不自动更新
1：每天更新
2：每周更新
3：每月更新
4：每季度更新
5：每年更新';
  ALTER TABLE metric MODIFY COLUMN `default_sec_level` CHAR(2) NULL COMMENT '默认安全级别 -- 安全级别采用数字编码，码值越小表示安全级别越低';
  ALTER TABLE metric MODIFY COLUMN `metric_desc` VARCHAR(512) NULL COMMENT '指标描述 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric MODIFY COLUMN `review_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric MODIFY COLUMN `update_user_id` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `review_user_id` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `review_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class COMMENT = '指标目录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class MODIFY COLUMN `mc_row_id` BIGINT AUTO_INCREMENT COMMENT '指标目录记录标识 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_cd` VARCHAR(8) NULL COMMENT '指标目录代码 -- 不得重复';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_nm` VARCHAR(60) NULL COMMENT '指标目录名称 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `super_class_cd` VARCHAR(8) NULL COMMENT '上级指标目录代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `dept_cd` VARCHAR(6) NULL COMMENT '部门代码 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_desc` VARCHAR(512) NULL COMMENT '指标目录描述 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- 0：无修改，1：新增，2：更新，3：删除
，4：失效。
增删改操作提交时，将新记录（或被删除记录）插入表中（使用自增的记录标识），并将这些记录的修改标识设置为相应的值（1-3）。指标体系审核通过后，对于：
1、新增记录，将该记录修改标识更新为0。
2、修改记录，将修改前记录状态置为4，将修改后记录状态置为0。
3、删除记录，将被删除记录状态从0改为4，删除状态为3的记录。';
  ALTER TABLE metric_class MODIFY COLUMN `review_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric_class MODIFY COLUMN `update_user_id` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `review_user_id` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `review_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_class MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_class_r COMMENT = '指标分类 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class_r MODIFY COLUMN `mc_r_row_id` BIGINT AUTO_INCREMENT COMMENT '指标分类记录标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT '指标代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_class_cd` VARCHAR(8) NULL COMMENT '指标目录代码 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '显示顺序 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '修改标识 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `review_status` INTEGER NULL COMMENT '审核状态 -- 0：待审核，1：审核通过，2：审核拒绝';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_user_id` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `review_user_id` VARCHAR(16) NULL COMMENT '审核用户 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '更新时间 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `review_tm` DATETIME NULL COMMENT '审核时间 -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '审批流编号 -- ';
  
ALTER TABLE metric_dim COMMENT = '指标维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim MODIFY COLUMN `dim_cd` VARCHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_nm` VARCHAR(60) NULL COMMENT '维度名称 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_code_type` VARCHAR(30) NULL COMMENT '维度代码类型 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_desc` VARCHAR(512) NULL COMMENT '维度说明 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `update_user_id` VARCHAR(16) NULL COMMENT '更新用户 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `metric_src_cd` CHAR(4) NULL COMMENT '维度数据源代码 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `src_tbl_nm` VARCHAR(60) NULL COMMENT '源表名称 -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `src_col_nm` VARCHAR(60) NULL COMMENT '源字段名称 -- ';
  
ALTER TABLE metric_param COMMENT = '指标计算参数 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_param MODIFY COLUMN `param_cd` VARCHAR(20) NOT NULL COMMENT '参数代码 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_type` INTEGER NULL COMMENT '参数类型 -- 0：指标加载参数，1：指标系统参数。注：指标加载参数就是可以嵌入基础指标和衍生指标计算公式或者语句的参数，指标系统参数是除了指标加载参数之外的其他参数。';
  ALTER TABLE metric_param MODIFY COLUMN `param_nm` VARCHAR(60) NULL COMMENT '参数名称 -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_value` VARCHAR(512) NULL COMMENT '参数值 -- ';
  
ALTER TABLE metric_relation COMMENT = '指标依赖关系 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_metric` VARCHAR(10) NOT NULL COMMENT '上游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `dstream_metric` VARCHAR(10) NOT NULL COMMENT '下游指标代码 -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `relation_type` INTEGER NULL COMMENT '依赖类型 -- 0：弱依赖，如果不满足则取默认值
1：强依赖，如果不满足则不计算';
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_dft_value` NUMERIC(20,4) NULL COMMENT '上游指标默认值 -- ';
  
ALTER TABLE metric_src COMMENT = '指标数据源 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_cd` CHAR(4) NOT NULL COMMENT '指标数据源代码 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_nm` VARCHAR(60) NULL COMMENT '指标数据源名称 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_param` VARCHAR(256) NULL COMMENT '数据源访问参数 -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_type_cd` CHAR(2) NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统';
  
ALTER TABLE metric_src_type COMMENT = '指标数据源类型 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_cd` CHAR(2) NOT NULL COMMENT '指标数据源类型代码 -- 01：Hive，02：MySQL，03：MPP，04：文件系统';
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_nm` VARCHAR(60) NULL COMMENT '指标数据源类型名称 -- ';
  
ALTER TABLE metric_tbl COMMENT = '指标主表 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_cd` VARCHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_nm` VARCHAR(60) NULL COMMENT '指标主表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_phy_nm` VARCHAR(30) NULL COMMENT '指标主表物理表名称 -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `dept_cd` VARCHAR(6) NULL COMMENT '部门代码 -- ';
  
ALTER TABLE metric_tbl_dim COMMENT = '指标主表维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `metric_tbl_cd` VARCHAR(6) NOT NULL COMMENT '指标主表代码 -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_cd` VARCHAR(4) NOT NULL COMMENT '维度代码 -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_order` INTEGER NULL COMMENT '维度序号 -- 从1开始递增';
  
ALTER TABLE task_schedule COMMENT = '任务调度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE task_schedule MODIFY COLUMN `schedule_id` VARCHAR(32) NOT NULL COMMENT '任务调度标识 -- 如果本次任务执行是通过调度系统执行的任务，填写在调度系统中注册的作业ID。';
  ALTER TABLE task_schedule MODIFY COLUMN `schedule_cycle` INTEGER NULL COMMENT '调度周期 -- 0：天，1：月，2：季度，3：半年，4：年';
  ALTER TABLE task_schedule MODIFY COLUMN `first_schedule_dt` DATE NULL COMMENT '首次运行日期 -- ';
  ALTER TABLE task_schedule MODIFY COLUMN `schedule_tm` TIME NULL COMMENT '调度时间 -- ';
  


