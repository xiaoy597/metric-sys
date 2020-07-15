
CREATE TABLE admin_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_village            VARCHAR(20) NULL,
	d_town               VARCHAR(20) NULL,
	d_county             VARCHAR(20) NULL,
	d_city               VARCHAR(20) NULL,
	d_province           VARCHAR(20) NULL,
	dim_desc             VARCHAR(20) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE busi_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_class3             VARCHAR(20) NULL,
	d_class2             VARCHAR(20) NULL,
	d_class1             VARCHAR(20) NULL,
	d_category           VARCHAR(20) NULL,
	dim_desc             VARCHAR(20) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE date_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_date               DATE NULL,
	d_month              INTEGER NULL,
	d_quarter            INTEGER NULL,
	d_year               INTEGER NULL,
	dim_desc             VARCHAR(20) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE metric_tbl_1
(
	date_dim_id          INTEGER NOT NULL,
	b000000001           NUMERIC(20,4) NULL,
	b000000002           NUMERIC(20,4) NULL,
	b000000003           NUMERIC(20,4) NULL,
	b000000004           NUMERIC(20,4) NULL,
	b000000005           NUMERIC(20,4) NULL,
	PRIMARY KEY (date_dim_id)
);

CREATE TABLE metric_tbl_2
(
	date_dim_id          INTEGER NOT NULL,
	admin_dim_id         INTEGER NOT NULL,
	b000000010           NUMERIC(20,4) NULL,
	b000000011           NUMERIC(20,4) NULL,
	b000000012           NUMERIC(20,4) NULL,
	d000000011           NUMERIC(20,4) NULL,
	d000000012           NUMERIC(20,4) NULL,
	d000000013           NUMERIC(20,4) NULL,
	PRIMARY KEY (date_dim_id,admin_dim_id)
);

CREATE TABLE metric_tbl_3
(
	date_dim_id          INTEGER NOT NULL,
	admin_dim_id         INTEGER NOT NULL,
	busi_dim_id          INTEGER NOT NULL,
	b000000020           NUMERIC(20,4) NULL,
	b000000021           NUMERIC(20,4) NULL,
	b000000022           NUMERIC(20,4) NULL,
	b000000023           NUMERIC(20,4) NULL,
	b000000024           NUMERIC(20,4) NULL,
	d000000021           NUMERIC(20,4) NULL,
	d000000022           NUMERIC(20,4) NULL,
	d000000023           NUMERIC(20,4) NULL,
	PRIMARY KEY (date_dim_id,admin_dim_id,busi_dim_id)
);

ALTER TABLE admin_dim COMMENT = '行政区划维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE admin_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `d_village` VARCHAR(20) NULL COMMENT '村/社区 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `d_town` VARCHAR(20) NULL COMMENT '乡镇/街道 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `d_county` VARCHAR(20) NULL COMMENT '区/县 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `d_city` VARCHAR(20) NULL COMMENT '市 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `d_province` VARCHAR(20) NULL COMMENT '省 -- ';
  ALTER TABLE admin_dim MODIFY COLUMN `dim_desc` VARCHAR(20) NULL COMMENT '维度描述 -- ';
  
ALTER TABLE busi_dim COMMENT = '行业维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE busi_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE busi_dim MODIFY COLUMN `d_class3` VARCHAR(20) NULL COMMENT '行业3级分类 -- ';
  ALTER TABLE busi_dim MODIFY COLUMN `d_class2` VARCHAR(20) NULL COMMENT '行业2级分类 -- ';
  ALTER TABLE busi_dim MODIFY COLUMN `d_class1` VARCHAR(20) NULL COMMENT '行业1级分类 -- ';
  ALTER TABLE busi_dim MODIFY COLUMN `d_category` VARCHAR(20) NULL COMMENT '行业门类 -- ';
  ALTER TABLE busi_dim MODIFY COLUMN `dim_desc` VARCHAR(20) NULL COMMENT '维度描述 -- ';
  
ALTER TABLE date_dim COMMENT = '日期维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE date_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `d_date` DATE NULL COMMENT '日期 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `d_month` INTEGER NULL COMMENT '月份 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `d_quarter` INTEGER NULL COMMENT '季度 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `d_year` INTEGER NULL COMMENT '年份 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `dim_desc` VARCHAR(20) NULL COMMENT '维度描述 -- ';
  
ALTER TABLE metric_tbl_1 COMMENT = '指标主表1 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `date_dim_id` INTEGER NOT NULL COMMENT '日期维度标识 -- ';
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `b000000001` NUMERIC(20,4) NULL COMMENT '大专学历以上人口数量 -- ';
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `b000000002` NUMERIC(20,4) NULL COMMENT '累计新冠患者数量 -- ';
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `b000000003` NUMERIC(20,4) NULL COMMENT '基础指标0003 -- ';
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `b000000004` NUMERIC(20,4) NULL COMMENT '基础指标0004 -- ';
  ALTER TABLE metric_tbl_1 MODIFY COLUMN `b000000005` NUMERIC(20,4) NULL COMMENT '基础指标0005 -- ';
  
ALTER TABLE metric_tbl_2 COMMENT = '指标主表2 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `date_dim_id` INTEGER NOT NULL COMMENT '日期维度标识 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `admin_dim_id` INTEGER NOT NULL COMMENT '行政区划维度标识 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `b000000010` NUMERIC(20,4) NULL COMMENT '人口规模 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `b000000011` NUMERIC(20,4) NULL COMMENT '核酸检测人次 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `b000000012` NUMERIC(20,4) NULL COMMENT '健康异常人数 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `d000000011` NUMERIC(20,4) NULL COMMENT '衍生指标0011 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `d000000012` NUMERIC(20,4) NULL COMMENT '衍生指标0012 -- ';
  ALTER TABLE metric_tbl_2 MODIFY COLUMN `d000000013` NUMERIC(20,4) NULL COMMENT '衍生指标0013 -- ';
  
ALTER TABLE metric_tbl_3 COMMENT = '指标主表3 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `date_dim_id` INTEGER NOT NULL COMMENT '日期维度标识 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `admin_dim_id` INTEGER NOT NULL COMMENT '行政区划维度标识 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `busi_dim_id` INTEGER NOT NULL COMMENT '行业维度标识 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `b000000020` NUMERIC(20,4) NULL COMMENT '就业人数 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `b000000021` NUMERIC(20,4) NULL COMMENT '小微企业数量 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `b000000022` NUMERIC(20,4) NULL COMMENT '中型企业数量 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `b000000023` NUMERIC(20,4) NULL COMMENT '大型企业数量 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `b000000024` NUMERIC(20,4) NULL COMMENT '企业净利润 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `d000000021` NUMERIC(20,4) NULL COMMENT '衍生指标0021 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `d000000022` NUMERIC(20,4) NULL COMMENT '衍生指标0022 -- ';
  ALTER TABLE metric_tbl_3 MODIFY COLUMN `d000000023` NUMERIC(20,4) NULL COMMENT '衍生指标0023 -- ';
  


