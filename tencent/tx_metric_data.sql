
DROP TABLE daily_metric;

DROP TABLE monthly_metric;

DROP TABLE dim_code;

CREATE TABLE daily_metric
(
	dept_cd              CHAR(18) NOT NULL,
	d_date               DATE NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	metric_value         NUMERIC(20,4) NULL,
	metric_amend_value   NUMERIC(20,4) NULL,
	PRIMARY KEY (dept_cd,d_date,metric_row_id)
);

CREATE TABLE dim_code
(
	dim_code_id          INTEGER NOT NULL,
	dim_code_type        CHAR(4) NULL,
	dim_code_cd          VARCHAR(60) NULL,
	dim_code_desc        VARCHAR(512) NULL,
	PRIMARY KEY (dim_code_id)
);

CREATE TABLE monthly_metric
(
	dept_cd              VARCHAR(20) NOT NULL,
	d_month              INTEGER NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	metric_value         NUMERIC(20,4) NULL,
	metric_amend_value   NUMERIC(20,4) NULL,
	PRIMARY KEY (dept_cd,d_month,metric_row_id)
);

ALTER TABLE daily_metric COMMENT = '日粒度指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE daily_metric MODIFY COLUMN `dept_cd` CHAR(18) NOT NULL COMMENT '部门代码 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `d_date` DATE NOT NULL COMMENT '日期 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `metric_value` NUMERIC(20,4) NULL COMMENT '指标值 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `metric_amend_value` NUMERIC(20,4) NULL COMMENT '指标修订值 -- ';
  
ALTER TABLE dim_code COMMENT = '维度代码表 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE dim_code MODIFY COLUMN `dim_code_id` INTEGER NOT NULL COMMENT '维度代码标识 -- ';
  ALTER TABLE dim_code MODIFY COLUMN `dim_code_type` CHAR(4) NULL COMMENT '维度代码类型 -- ';
  ALTER TABLE dim_code MODIFY COLUMN `dim_code_cd` VARCHAR(60) NULL COMMENT '维度代码值 -- ';
  ALTER TABLE dim_code MODIFY COLUMN `dim_code_desc` VARCHAR(512) NULL COMMENT '维度代码描述 -- ';
  
ALTER TABLE monthly_metric COMMENT = '月粒度指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE monthly_metric MODIFY COLUMN `dept_cd` VARCHAR(20) NOT NULL COMMENT '部门代码 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `d_month` INTEGER NOT NULL COMMENT '月份 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `metric_value` NUMERIC(20,4) NULL COMMENT '指标值 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `metric_amend_value` NUMERIC(20,4) NULL COMMENT '指标修订值 -- ';
  


