
CREATE TABLE daily_metric
(
	date_dim_id          INTEGER NOT NULL,
	dept_dim_id          INTEGER NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	metric_value         NUMERIC(20,4) NULL,
	PRIMARY KEY (date_dim_id,dept_dim_id,metric_row_id)
);

CREATE TABLE date_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_date               DATE NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dept_dim
(
	id                   INTEGER AUTO_INCREMENT,
	dept_cd              VARCHAR(16) NULL,
	dept_nm              VARCHAR(60) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE month_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_month              INTEGER NULL,
	PRIMARY KEY (id)
);

CREATE TABLE monthly_metric
(
	month_dim_id         INTEGER NOT NULL,
	dept_dim_id          INTEGER NOT NULL,
	metric_row_id        BIGINT NOT NULL,
	metric_value         NUMERIC(20,4) NULL,
	PRIMARY KEY (month_dim_id,dept_dim_id,metric_row_id)
);

CREATE TABLE quarter_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_quarter            INTEGER NULL,
	PRIMARY KEY (id)
);

CREATE TABLE year_dim
(
	id                   INTEGER AUTO_INCREMENT,
	d_year               INTEGER NULL,
	PRIMARY KEY (id)
);

ALTER TABLE daily_metric COMMENT = '日粒度指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE daily_metric MODIFY COLUMN `date_dim_id` INTEGER NOT NULL COMMENT '日期维度标识 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `dept_dim_id` INTEGER NOT NULL COMMENT '部门维度标识 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE daily_metric MODIFY COLUMN `metric_value` NUMERIC(20,4) NULL COMMENT '指标值 -- ';
  
ALTER TABLE date_dim COMMENT = '日期维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE date_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE date_dim MODIFY COLUMN `d_date` DATE NULL COMMENT '日期 -- ';
  
ALTER TABLE dept_dim COMMENT = '部门维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE dept_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE dept_dim MODIFY COLUMN `dept_cd` VARCHAR(16) NULL COMMENT '部门代码 -- ';
  ALTER TABLE dept_dim MODIFY COLUMN `dept_nm` VARCHAR(60) NULL COMMENT '部门名称 -- ';
  
ALTER TABLE month_dim COMMENT = '月份维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE month_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE month_dim MODIFY COLUMN `d_month` INTEGER NULL COMMENT '月份 -- ';
  
ALTER TABLE monthly_metric COMMENT = '月粒度指标 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE monthly_metric MODIFY COLUMN `month_dim_id` INTEGER NOT NULL COMMENT '月份维度标识 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `dept_dim_id` INTEGER NOT NULL COMMENT '部门维度标识 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `metric_row_id` BIGINT NOT NULL COMMENT '指标记录标识 -- ';
  ALTER TABLE monthly_metric MODIFY COLUMN `metric_value` NUMERIC(20,4) NULL COMMENT '指标值 -- ';
  
ALTER TABLE quarter_dim COMMENT = '季度维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE quarter_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE quarter_dim MODIFY COLUMN `d_quarter` INTEGER NULL COMMENT '季度 -- ';
  
ALTER TABLE year_dim COMMENT = '年份维度 -- ' ENGINE=InnoDB DEFAULT CHARSET=utf8;
  ALTER TABLE year_dim MODIFY COLUMN `id` INTEGER AUTO_INCREMENT COMMENT '维度标识 -- ';
  ALTER TABLE year_dim MODIFY COLUMN `d_year` INTEGER NULL COMMENT '年份 -- ';
  


