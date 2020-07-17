
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
	data_filter          VARCHAR(1024) NULL,
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
	user_role_id         INTEGER NOT NULL,
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

ALTER TABLE app_module COMMENT = 'ϵͳ���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE app_module MODIFY COLUMN `module_id` INTEGER NOT NULL COMMENT '���ܴ��� -- ';
  ALTER TABLE app_module MODIFY COLUMN `super_module_id` INTEGER NULL COMMENT '�ϼ����ܴ��� -- ';
  ALTER TABLE app_module MODIFY COLUMN `module_name` VARCHAR(60) NULL COMMENT '�������� -- ';
  ALTER TABLE app_module MODIFY COLUMN `module_url` VARCHAR(128) NULL COMMENT '���ܷ��ʵ�ַ -- ';
  
ALTER TABLE busi_department COMMENT = 'ҵ���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE busi_department MODIFY COLUMN `dept_cd` VARCHAR(4) NOT NULL COMMENT '���Ŵ��� -- ';
  ALTER TABLE busi_department MODIFY COLUMN `dept_nm` VARCHAR(60) NULL COMMENT '�������� -- ';
  
ALTER TABLE common_metric_query COMMENT = '����ָ�����ݲ�ѯ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_id` INTEGER AUTO_INCREMENT COMMENT '����ָ�����ݲ�ѯ��ʶ -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_name` VARCHAR(20) NULL COMMENT '����ָ�����ݲ�ѯ���� -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `metric_row_id` BIGINT NULL COMMENT 'ָ���¼��ʶ -- ';
  ALTER TABLE common_metric_query MODIFY COLUMN `common_mqry_condition` TEXT NULL COMMENT 'ָ���ѯ���� -- ʹ��JSON�ṹ��ʾ��ѯ�����ĸ�Ԫ�ء����ж��ڼ򵥲�ѯ����Ҫ�����ν���е��ֶ����ƣ��������Ͳ���������ν��֮��ֻ֧��AND�����Զ����ѯ��ֱ�ӱ��������Ĳ�ѯ������JSON����Ҫ�����ֶ����ּ򵥲�ѯ���Զ����ѯ��';
  
ALTER TABLE external_user_role COMMENT = '�ⲿ�û���ɫ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE external_user_role MODIFY COLUMN `external_role_cd` VARCHAR(16) NOT NULL COMMENT '�ⲿ��ɫ���� -- ';
  ALTER TABLE external_user_role MODIFY COLUMN `external_role_nm` VARCHAR(60) NULL COMMENT '�ⲿ��ɫ���� -- ';
  
ALTER TABLE metric COMMENT = 'ָ�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric MODIFY COLUMN `metric_row_id` BIGINT AUTO_INCREMENT COMMENT 'ָ���¼��ʶ -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT 'ָ����� -- �����ظ�';
  ALTER TABLE metric MODIFY COLUMN `metric_nm` VARCHAR(60) NULL COMMENT 'ָ������ -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_type` INTEGER NULL COMMENT 'ָ������ -- 0������ָ��
1������ָ��';
  ALTER TABLE metric MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT 'ҵ���Ŵ��� -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_unit` VARCHAR(16) NULL COMMENT 'ָ�����ݵ�λ -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_cd` CHAR(6) NULL COMMENT 'ָ��������� -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_tbl_col_cd` CHAR(10) NULL COMMENT 'ָ������ֶδ��� -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_src_cd` CHAR(4) NULL COMMENT 'ָ������Դ���� -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_formula` VARCHAR(1024) NULL COMMENT 'ָ�����ģ�� -- ���ڻ���ָ���ʾSQL���ģ�塢�ļ��ֶ��б�ȣ���������ָ���ʾ������ʽ
';
  ALTER TABLE metric MODIFY COLUMN `load_cycle` INTEGER NULL COMMENT 'ָ��������� -- 0�����Զ�����
1��ÿ�����
2��ÿ�ܸ���
3��ÿ�¸���
4��ÿ���ȸ���
5��ÿ�����';
  ALTER TABLE metric MODIFY COLUMN `default_sec_level` CHAR(2) NULL COMMENT 'Ĭ�ϰ�ȫ���� -- ';
  ALTER TABLE metric MODIFY COLUMN `metric_desc` VARCHAR(512) NULL COMMENT 'ָ������ -- ';
  ALTER TABLE metric MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '�޸ı�ʶ -- 0�����޸ģ�1��������2�����£�3��ɾ��
��4��ʧЧ��
��ɾ�Ĳ����ύʱ�����¼�¼����ɾ����¼��������У�ʹ�������ļ�¼��ʶ����������Щ��¼���޸ı�ʶ����Ϊ��Ӧ��ֵ��1-3����ָ����ϵ���ͨ���󣬶��ڣ�
1��������¼�����ü�¼�޸ı�ʶ����Ϊ0��
2���޸ļ�¼�����޸�ǰ��¼״̬��Ϊ4�����޸ĺ��¼״̬��Ϊ0��
3��ɾ����¼������ɾ����¼״̬��0��Ϊ4��ɾ��״̬Ϊ3�ļ�¼��';
  ALTER TABLE metric MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '���״̬ -- 0������ˣ�1�����ͨ����2����˾ܾ�';
  ALTER TABLE metric MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '�����û� -- ';
  ALTER TABLE metric MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '����û� -- ';
  ALTER TABLE metric MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '����ʱ�� -- ';
  ALTER TABLE metric MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '���ʱ�� -- ';
  ALTER TABLE metric MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '��������� -- ';
  
ALTER TABLE metric_class COMMENT = 'ָ��Ŀ¼ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class MODIFY COLUMN `mc_row_id` BIGINT AUTO_INCREMENT COMMENT 'ָ��Ŀ¼��¼��ʶ -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT 'ָ��Ŀ¼���� -- �����ظ�';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_nm` VARCHAR(60) NULL COMMENT 'ָ��Ŀ¼���� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `super_class_cd` CHAR(8) NULL COMMENT '�ϼ�ָ��Ŀ¼���� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '���Ŵ��� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '��ʾ˳�� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `metric_class_desc` VARCHAR(512) NULL COMMENT 'ָ��Ŀ¼���� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '�޸ı�ʶ -- 0�����޸ģ�1��������2�����£�3��ɾ��
��4��ʧЧ��
��ɾ�Ĳ����ύʱ�����¼�¼����ɾ����¼��������У�ʹ�������ļ�¼��ʶ����������Щ��¼���޸ı�ʶ����Ϊ��Ӧ��ֵ��1-3����ָ����ϵ���ͨ���󣬶��ڣ�
1��������¼�����ü�¼�޸ı�ʶ����Ϊ0��
2���޸ļ�¼�����޸�ǰ��¼״̬��Ϊ4�����޸ĺ��¼״̬��Ϊ0��
3��ɾ����¼������ɾ����¼״̬��0��Ϊ4��ɾ��״̬Ϊ3�ļ�¼��';
  ALTER TABLE metric_class MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '���״̬ -- 0������ˣ�1�����ͨ����2����˾ܾ�';
  ALTER TABLE metric_class MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '�����û� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '����û� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '����ʱ�� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '���ʱ�� -- ';
  ALTER TABLE metric_class MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '��������� -- ';
  
ALTER TABLE metric_class_r COMMENT = 'ָ����� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_class_r MODIFY COLUMN `mc_r_row_id` BIGINT AUTO_INCREMENT COMMENT 'ָ������¼��ʶ -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_cd` VARCHAR(10) NULL COMMENT 'ָ����� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `metric_class_cd` CHAR(8) NULL COMMENT 'ָ��Ŀ¼���� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `disp_order` INTEGER NULL COMMENT '��ʾ˳�� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_flag` INTEGER NULL COMMENT '�޸ı�ʶ -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '���״̬ -- 0������ˣ�1�����ͨ����2����˾ܾ�';
  ALTER TABLE metric_class_r MODIFY COLUMN `commiter` VARCHAR(16) NULL COMMENT '�����û� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '����û� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `update_tm` DATETIME NULL COMMENT '����ʱ�� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '���ʱ�� -- ';
  ALTER TABLE metric_class_r MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '��������� -- ';
  
ALTER TABLE metric_column COMMENT = 'ָ���ֶ� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_cd` CHAR(10) NOT NULL COMMENT 'ָ���ֶδ��� -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_nm` VARCHAR(60) NULL COMMENT 'ָ���ֶ����� -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_type` INTEGER NULL COMMENT 'ָ���ֶ����� -- 0��ָ��ά��
1��ָ�����';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_data_type` VARCHAR(20) NULL COMMENT 'ָ���ֶ��������� -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_phy_nm` VARCHAR(30) NULL COMMENT 'ָ���ֶ��������� -- ';
  ALTER TABLE metric_column MODIFY COLUMN `metric_col_desc` VARCHAR(60) NULL COMMENT 'ָ���ֶα�ע -- ';
  
ALTER TABLE metric_dim COMMENT = 'ָ��ά�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT 'ά�ȴ��� -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_nm` VARCHAR(60) NULL COMMENT 'ά������ -- ';
  ALTER TABLE metric_dim MODIFY COLUMN `dim_tbl_phy_nm` VARCHAR(30) NULL COMMENT 'ά����������� -- ';
  
ALTER TABLE metric_dim_col COMMENT = 'ָ��ά���ֶ� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT 'ά�ȴ��� -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `metric_dim_col_cd` CHAR(10) NOT NULL COMMENT 'ά���ֶδ��� -- ';
  ALTER TABLE metric_dim_col MODIFY COLUMN `dim_level` INTEGER NULL COMMENT 'ά�ȼ��� -- ��1��ʼ˳�����ӣ��𼶻���';
  
ALTER TABLE metric_dim_rollup COMMENT = 'ָ��ά���Ͼ� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT 'ά�ȴ��� -- ';
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT 'ָ���¼��ʶ -- ';
  ALTER TABLE metric_dim_rollup MODIFY COLUMN `rollup_type` INTEGER NULL COMMENT 'ָ���Ͼ�ʽ -- 0��SUM��1��MIN��2��MAX��3��AVG';
  
ALTER TABLE metric_if_content COMMENT = 'ָ��ӿ����� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_if_cd` CHAR(8) NOT NULL COMMENT 'ָ��ӿڴ��� -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `metric_cd` VARCHAR(10) NOT NULL COMMENT 'ָ����� -- ';
  ALTER TABLE metric_if_content MODIFY COLUMN `data_filter` VARCHAR(1024) NULL COMMENT '����ɸѡ���� -- ';
  
ALTER TABLE metric_interface COMMENT = 'ָ�����ݽӿ� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_interface MODIFY COLUMN `mif_row_id` BIGINT AUTO_INCREMENT COMMENT '�ӿڼ�¼��ʶ -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_cd` CHAR(8) NULL COMMENT 'ָ��ӿڴ��� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `metric_if_nm` VARCHAR(60) NULL COMMENT 'ָ��ӿ����� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `expire_dt` DATE NULL COMMENT '�ӿ�ʧЧ���� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `volume_limit` INTEGER NULL COMMENT '������������ֵ -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `freq_limit` INTEGER NULL COMMENT '����Ƶ����ֵ -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `app_memo` VARCHAR(512) NULL COMMENT '�ӿ����뱸ע -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_memo` VARCHAR(512) NULL COMMENT '�ӿ���˱�ע -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `access_token` CHAR(32) NULL COMMENT '�ӿڷ������� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `token_expire_tm` DATETIME NULL COMMENT '����ʧЧʱ�� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_status` INTEGER NULL COMMENT '���״̬ -- 0������ˣ�1�����ͨ����2����˾ܾ�';
  ALTER TABLE metric_interface MODIFY COLUMN `applicant` VARCHAR(16) NULL COMMENT '�����û� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approver` VARCHAR(16) NULL COMMENT '����û� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `applicate_tm` DATETIME NULL COMMENT '����ʱ�� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `approve_tm` DATETIME NULL COMMENT '���ʱ�� -- ';
  ALTER TABLE metric_interface MODIFY COLUMN `task_flow_id` INTEGER NULL COMMENT '��������� -- ';
  
ALTER TABLE metric_param COMMENT = 'ָ�������� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_param MODIFY COLUMN `param_cd` CHAR(6) NOT NULL COMMENT '�������� -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_type` INTEGER NULL COMMENT '�������� -- 0��ָ����ز�����1��ָ��ϵͳ������ע��ָ����ز������ǿ���Ƕ�����ָ�������ָ����㹫ʽ�������Ĳ�����ָ��ϵͳ�����ǳ���ָ����ز���֮�������������';
  ALTER TABLE metric_param MODIFY COLUMN `param_nm` VARCHAR(60) NULL COMMENT '�������� -- ';
  ALTER TABLE metric_param MODIFY COLUMN `param_value` VARCHAR(512) NULL COMMENT '����ֵ -- ';
  
ALTER TABLE metric_relation COMMENT = 'ָ��������ϵ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_metric` VARCHAR(10) NOT NULL COMMENT '����ָ����� -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `dstream_metric` VARCHAR(10) NOT NULL COMMENT '����ָ����� -- ';
  ALTER TABLE metric_relation MODIFY COLUMN `relation_type` INTEGER NULL COMMENT '�������� -- 0���������������������ȡĬ��ֵ
1��ǿ����������������򲻼���';
  ALTER TABLE metric_relation MODIFY COLUMN `ustream_dft_value` NUMERIC(20,4) NULL COMMENT '����ָ��Ĭ��ֵ -- ';
  
ALTER TABLE metric_sec_level COMMENT = 'ָ�����ݰ�ȫ���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_sec_level MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT 'ά�ȴ��� -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `metric_dim_col_cd` CHAR(10) NOT NULL COMMENT 'ά���ֶδ��� -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT 'ָ���¼��ʶ -- ';
  ALTER TABLE metric_sec_level MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '��ȫ������� -- ';
  
ALTER TABLE metric_src COMMENT = 'ָ������Դ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_cd` CHAR(4) NOT NULL COMMENT 'ָ������Դ���� -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_nm` VARCHAR(60) NULL COMMENT 'ָ������Դ���� -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_param` VARCHAR(256) NULL COMMENT '����Դ���ʲ��� -- ';
  ALTER TABLE metric_src MODIFY COLUMN `metric_src_type_cd` CHAR(2) NULL COMMENT 'ָ������Դ���ʹ��� -- 01��Hive��02��MySQL��03��MPP��04���ļ�ϵͳ';
  
ALTER TABLE metric_src_type COMMENT = 'ָ������Դ���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_cd` CHAR(2) NOT NULL COMMENT 'ָ������Դ���ʹ��� -- 01��Hive��02��MySQL��03��MPP��04���ļ�ϵͳ';
  ALTER TABLE metric_src_type MODIFY COLUMN `metric_src_type_nm` VARCHAR(60) NULL COMMENT 'ָ������Դ�������� -- ';
  
ALTER TABLE metric_tbl COMMENT = 'ָ������ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT 'ָ��������� -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_nm` VARCHAR(60) NULL COMMENT 'ָ���������� -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `metric_tbl_phy_nm` VARCHAR(30) NULL COMMENT 'ָ��������������� -- ';
  ALTER TABLE metric_tbl MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '���Ŵ��� -- ';
  
ALTER TABLE metric_tbl_dim COMMENT = 'ָ������ά�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `metric_tbl_cd` CHAR(6) NOT NULL COMMENT 'ָ��������� -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_cd` CHAR(4) NOT NULL COMMENT 'ά�ȴ��� -- ';
  ALTER TABLE metric_tbl_dim MODIFY COLUMN `dim_order` INTEGER NULL COMMENT 'ά����� -- ��1��ʼ����';
  
ALTER TABLE organization COMMENT = '��֯���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE organization MODIFY COLUMN `org_cd` VARCHAR(20) NOT NULL COMMENT '�������� -- ';
  ALTER TABLE organization MODIFY COLUMN `org_nm` VARCHAR(60) NULL COMMENT '�������� -- ';
  ALTER TABLE organization MODIFY COLUMN `dept_cd` VARCHAR(4) NULL COMMENT '���Ŵ��� -- ';
  ALTER TABLE organization MODIFY COLUMN `org_type` INTEGER NULL COMMENT '�������� -- 0���������
1��ҵ����';
  ALTER TABLE organization MODIFY COLUMN `local_admin_org_cd` VARCHAR(20) NULL COMMENT '��������������� -- ';
  ALTER TABLE organization MODIFY COLUMN `super_admin_org_cd` VARCHAR(20) NULL COMMENT '�ϼ������������ -- ';
  ALTER TABLE organization MODIFY COLUMN `super_busi_org_cd` VARCHAR(20) NULL COMMENT '�ϼ�ҵ��������� -- ';
  
ALTER TABLE role_mapping COMMENT = '�ⲿ��ɫӳ�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE role_mapping MODIFY COLUMN `external_role_cd` VARCHAR(16) NOT NULL COMMENT '�ⲿ��ɫ���� -- ';
  ALTER TABLE role_mapping MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '�û���ɫ���� -- ';
  
ALTER TABLE security_level COMMENT = '���ݰ�ȫ���� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE security_level MODIFY COLUMN `sec_level_cd` CHAR(2) NOT NULL COMMENT '��ȫ������� -- ';
  ALTER TABLE security_level MODIFY COLUMN `sec_level_nm` VARCHAR(60) NULL COMMENT '��ȫ�������� -- ';
  
ALTER TABLE user COMMENT = '�û� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user MODIFY COLUMN `user_id` VARCHAR(16) NOT NULL COMMENT '�û����� -- ';
  ALTER TABLE user MODIFY COLUMN `user_name` VARCHAR(60) NULL COMMENT '�û����� -- �û���¼���õ�ID';
  ALTER TABLE user MODIFY COLUMN `user_type` INTEGER NULL COMMENT '�û����� -- ';
  ALTER TABLE user MODIFY COLUMN `reg_dt` DATE NULL COMMENT 'ע������ -- ';
  ALTER TABLE user MODIFY COLUMN `user_status` INTEGER NULL COMMENT '�û�״̬ -- ';
  ALTER TABLE user MODIFY COLUMN `last_login_time` DATETIME NULL COMMENT '�ϴε�¼ʱ�� -- ';
  ALTER TABLE user MODIFY COLUMN `user_pwd` VARCHAR(100) NULL COMMENT '�û����� -- ';
  ALTER TABLE user MODIFY COLUMN `user_name_cn` VARCHAR(200) NULL COMMENT '�û��������� -- ';
  ALTER TABLE user MODIFY COLUMN `office_phone` VARCHAR(45) NULL COMMENT '�칫�绰 -- ';
  ALTER TABLE user MODIFY COLUMN `mobile_phone` VARCHAR(45) NULL COMMENT '�ƶ��绰 -- ';
  ALTER TABLE user MODIFY COLUMN `email` VARCHAR(45) NULL COMMENT '�����ʼ� -- ';
  ALTER TABLE user MODIFY COLUMN `social_code` VARCHAR(45) NULL COMMENT '���ͳһ���� -- ';
  
ALTER TABLE user_organization_assign COMMENT = '�û����� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_organization_assign MODIFY COLUMN `id` INTEGER NOT NULL COMMENT '��¼��ʶ -- ';
  ALTER TABLE user_organization_assign MODIFY COLUMN `user_id` VARCHAR(16) NULL COMMENT '�û����� -- ';
  ALTER TABLE user_organization_assign MODIFY COLUMN `org_cd` VARCHAR(20) NULL COMMENT '�������� -- ';
  
ALTER TABLE user_role COMMENT = '�û���ɫ -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '�û���ɫ���� -- ';
  ALTER TABLE user_role MODIFY COLUMN `user_role_name` VARCHAR(60) NULL COMMENT '�û���ɫ���� -- ';
  ALTER TABLE user_role MODIFY COLUMN `user_role_desc` VARCHAR(512) NULL COMMENT '�û���ɫ���� -- ';
  ALTER TABLE user_role MODIFY COLUMN `sec_level_cd` CHAR(2) NULL COMMENT '��ȫ������� -- ';
  
ALTER TABLE user_role_assign COMMENT = '�û���ɫӳ�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role_assign MODIFY COLUMN `user_id` VARCHAR(16) NOT NULL COMMENT '�û����� -- ';
  ALTER TABLE user_role_assign MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '�û���ɫ���� -- ';
  
ALTER TABLE user_role_privilege COMMENT = '��ɫȨ�� -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE user_role_privilege MODIFY COLUMN `user_role_id` INTEGER NOT NULL COMMENT '�û���ɫ���� -- ';
  ALTER TABLE user_role_privilege MODIFY COLUMN `module_id` INTEGER NOT NULL COMMENT '���ܴ��� -- ';
  ALTER TABLE user_role_privilege MODIFY COLUMN `access_privilege` VARCHAR(128) NULL COMMENT '���ܷ���Ȩ�� -- ';
  


