
CREATE TABLE admin_unit
(
	admin_cd             VARCHAR(20) NOT NULL,
	admin_nm             VARCHAR(20) NULL,
	PRIMARY KEY (admin_cd)
);

CREATE TABLE business
(
	busi_cd              VARCHAR(20) NOT NULL,
	busi_nm              VARCHAR(20) NULL,
	PRIMARY KEY (busi_cd)
);

CREATE TABLE corp_finance_index
(
	corp_id              INTEGER NOT NULL,
	data_dt              DATE NOT NULL,
	total_asset          NUMERIC(20,4) NULL,
	main_busi_income     NUMERIC(20,4) NULL,
	net_profit           NUMERIC(20,4) NULL,
	PRIMARY KEY (corp_id,data_dt)
);

CREATE TABLE corporation
(
	corp_id              INTEGER AUTO_INCREMENT,
	corp_nm              VARCHAR(20) NULL,
	social_code          VARCHAR(20) NULL,
	corp_addr            VARCHAR(20) NULL,
	reg_dt               DATE NULL,
	cancel_dt            DATE NULL,
	busi_cd              VARCHAR(20) NULL,
	reg_admin_cd         VARCHAR(20) NULL,
	corp_scale           INTEGER NULL,
	PRIMARY KEY (corp_id)
);

CREATE TABLE covid_treatment
(
	person_id            INTEGER NOT NULL,
	begin_dt             DATE NOT NULL,
	treat_result         INTEGER NULL,
	end_dt               DATE NULL,
	PRIMARY KEY (person_id,begin_dt)
);

CREATE TABLE person
(
	person_id            INTEGER AUTO_INCREMENT,
	person_nm            VARCHAR(20) NULL,
	cert_number          VARCHAR(20) NULL,
	birth_dt             DATE NULL,
	death_dt             DATE NULL,
	degree               INTEGER NULL,
	addr_admin_cd        VARCHAR(20) NULL,
	corp_id              INTEGER NULL,
	PRIMARY KEY (person_id)
);

CREATE TABLE person_health_record
(
	person_id            INTEGER NOT NULL,
	data_dt              DATE NOT NULL,
	body_temp            INTEGER NULL,
	is_cough             INTEGER NULL,
	is_chest_tight       INTEGER NULL,
	PRIMARY KEY (person_id,data_dt)
);

CREATE TABLE quarantine_record
(
	person_id            INTEGER NOT NULL,
	begin_dt             DATE NOT NULL,
	quar_type            INTEGER NULL,
	end_dt               DATE NULL,
	PRIMARY KEY (person_id,begin_dt)
);

CREATE TABLE rna_test_record
(
	person_id            INTEGER NOT NULL,
	data_dt              DATE NOT NULL,
	test_output          INTEGER NULL,
	PRIMARY KEY (person_id,data_dt)
);

ALTER TABLE admin_unit COMMENT = '行政区划 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE admin_unit MODIFY COLUMN `admin_cd` VARCHAR(20) NOT NULL COMMENT '行政区划代码 -- ';
  ALTER TABLE admin_unit MODIFY COLUMN `admin_nm` VARCHAR(20) NULL COMMENT '行政区划名称 -- ';
  
ALTER TABLE business COMMENT = '行业 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE business MODIFY COLUMN `busi_cd` VARCHAR(20) NOT NULL COMMENT '行业代码 -- ';
  ALTER TABLE business MODIFY COLUMN `busi_nm` VARCHAR(20) NULL COMMENT '行业名称 -- ';
  
ALTER TABLE corp_finance_index COMMENT = '企业财务指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE corp_finance_index MODIFY COLUMN `corp_id` INTEGER NOT NULL COMMENT '企业标识 -- ';
  ALTER TABLE corp_finance_index MODIFY COLUMN `data_dt` DATE NOT NULL COMMENT '数据日期 -- ';
  ALTER TABLE corp_finance_index MODIFY COLUMN `total_asset` NUMERIC(20,4) NULL COMMENT '总资产 -- ';
  ALTER TABLE corp_finance_index MODIFY COLUMN `main_busi_income` NUMERIC(20,4) NULL COMMENT '主营业务收入 -- ';
  ALTER TABLE corp_finance_index MODIFY COLUMN `net_profit` NUMERIC(20,4) NULL COMMENT '净利润 -- ';
  
ALTER TABLE corporation COMMENT = '企业 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE corporation MODIFY COLUMN `corp_id` INTEGER AUTO_INCREMENT COMMENT '企业标识 -- ';
  ALTER TABLE corporation MODIFY COLUMN `corp_nm` VARCHAR(20) NULL COMMENT '企业名称 -- ';
  ALTER TABLE corporation MODIFY COLUMN `social_code` VARCHAR(20) NULL COMMENT '社会统一代码 -- ';
  ALTER TABLE corporation MODIFY COLUMN `corp_addr` VARCHAR(20) NULL COMMENT '注册地址 -- ';
  ALTER TABLE corporation MODIFY COLUMN `reg_dt` DATE NULL COMMENT '注册日期 -- ';
  ALTER TABLE corporation MODIFY COLUMN `cancel_dt` DATE NULL COMMENT '注销日期 -- ';
  ALTER TABLE corporation MODIFY COLUMN `busi_cd` VARCHAR(20) NULL COMMENT '行业代码 -- ';
  ALTER TABLE corporation MODIFY COLUMN `reg_admin_cd` VARCHAR(20) NULL COMMENT '注册地区 -- ';
  ALTER TABLE corporation MODIFY COLUMN `corp_scale` INTEGER NULL COMMENT '企业规模 -- 0：小微企业，1：中型企业，2：大型企业';
  
ALTER TABLE covid_treatment COMMENT = '新冠治疗记录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE covid_treatment MODIFY COLUMN `person_id` INTEGER NOT NULL COMMENT '人口标识 -- ';
  ALTER TABLE covid_treatment MODIFY COLUMN `begin_dt` DATE NOT NULL COMMENT '确诊日期 -- ';
  ALTER TABLE covid_treatment MODIFY COLUMN `treat_result` INTEGER NULL COMMENT '治疗结果 -- 0：治愈，1：死亡';
  ALTER TABLE covid_treatment MODIFY COLUMN `end_dt` DATE NULL COMMENT '治疗结束日期 -- ';
  
ALTER TABLE person COMMENT = '人口 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE person MODIFY COLUMN `person_id` INTEGER AUTO_INCREMENT COMMENT '人口标识 -- ';
  ALTER TABLE person MODIFY COLUMN `person_nm` VARCHAR(20) NULL COMMENT '姓名 -- ';
  ALTER TABLE person MODIFY COLUMN `cert_number` VARCHAR(20) NULL COMMENT '身份证号码 -- ';
  ALTER TABLE person MODIFY COLUMN `birth_dt` DATE NULL COMMENT '出生日期 -- ';
  ALTER TABLE person MODIFY COLUMN `death_dt` DATE NULL COMMENT '死亡日期 -- ';
  ALTER TABLE person MODIFY COLUMN `degree` INTEGER NULL COMMENT '教育水平 -- 0：文盲，1：小学，2：初中，3：高中，4：大专，5：本科，6：硕士，7：博士，8：博士后';
  ALTER TABLE person MODIFY COLUMN `addr_admin_cd` VARCHAR(20) NULL COMMENT '常住地区 -- ';
  ALTER TABLE person MODIFY COLUMN `corp_id` INTEGER NULL COMMENT '企业标识 -- ';
  
ALTER TABLE person_health_record COMMENT = '人口健康记录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE person_health_record MODIFY COLUMN `person_id` INTEGER NOT NULL COMMENT '人口标识 -- ';
  ALTER TABLE person_health_record MODIFY COLUMN `data_dt` DATE NOT NULL COMMENT '数据日期 -- ';
  ALTER TABLE person_health_record MODIFY COLUMN `body_temp` INTEGER NULL COMMENT '体温 -- ';
  ALTER TABLE person_health_record MODIFY COLUMN `is_cough` INTEGER NULL COMMENT '是否咳嗽 -- ';
  ALTER TABLE person_health_record MODIFY COLUMN `is_chest_tight` INTEGER NULL COMMENT '是否胸闷 -- ';
  
ALTER TABLE quarantine_record COMMENT = '隔离记录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE quarantine_record MODIFY COLUMN `person_id` INTEGER NOT NULL COMMENT '人口标识 -- ';
  ALTER TABLE quarantine_record MODIFY COLUMN `begin_dt` DATE NOT NULL COMMENT '隔离开始日期 -- ';
  ALTER TABLE quarantine_record MODIFY COLUMN `quar_type` INTEGER NULL COMMENT '隔离方式 -- 0：居家隔离，1：集中隔离';
  ALTER TABLE quarantine_record MODIFY COLUMN `end_dt` DATE NULL COMMENT '隔离结束日期 -- ';
  
ALTER TABLE rna_test_record COMMENT = '核酸检测记录 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE rna_test_record MODIFY COLUMN `person_id` INTEGER NOT NULL COMMENT '人口标识 -- ';
  ALTER TABLE rna_test_record MODIFY COLUMN `data_dt` DATE NOT NULL COMMENT '检测日期 -- ';
  ALTER TABLE rna_test_record MODIFY COLUMN `test_output` INTEGER NULL COMMENT '检测结果 -- 0：阴性，1：阳性';
  


