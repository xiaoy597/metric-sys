
delete from metric_src_type;

insert into metric_src_type values ('01', 'Hive');
insert into metric_src_type values ('02', 'MySQL');
insert into metric_src_type values ('03', 'MPP');
insert into metric_src_type values ('04', 'Filesystem');


delete from metric_src;

insert into metric_src values ('0001', '大数据平台主题库', '', '01');
insert into metric_src values ('0002', '大数据平台基础库', '', '01');
insert into metric_src values ('0003', '测试关系数据库', '
{
	"ip": "127.0.0.1",
	"port": 3306,
	"db": "metric_src_db",
	"user": "root",
	"password": "root",
	"ftp-user": "ftp",
	"dump-path": "/tmp"
}', '02');
insert into metric_src values ('0004', '测试文件系统', '', '04');

delete from metric_param;

insert into metric_param values ('S00001', 1, '指标数据仓库连接参数','
{
	"type": "mysql",
	"connect-params": {
		"ip": "127.0.0.1",
		"port": 3306,
		"db": "metric_warehouse",
		"user": "root",
		"password": "root"
	},
  "ftp-user": "ftp",
  "dump-path": "/tmp",
  "temp-db": "tmpdb"
}
');

insert into metric_param values ('S00002', 1, '指标管理机构代码','110000C005');

insert into metric_param values ('L00001', 0, '数据更新日期','2020-06-20');
insert into metric_param values ('sys_date', 0, '数据更新日期','2020-06-20');

delete from metric_dim;

insert into metric_dim values ('0001', '日期', 'date_dim');
insert into metric_dim values ('0002', '行政区划', 'admin_dim');
-- insert into metric_dim values ('0003', '部门', 'org_dim');
insert into metric_dim values ('0004', '行业', 'busi_dim');

delete from metric_tbl;

insert into metric_tbl values ('C00001', '指标主表1-日期', 'metric_tbl_1', null);
insert into metric_tbl values ('C00002', '指标主表2-日期-区划', 'metric_tbl_2', null);
insert into metric_tbl values ('C00003', '指标主表3-日期-区划-行业', 'metric_tbl_3', null);


delete from metric_tbl_dim;

insert into metric_tbl_dim values ('C00001', '0001', 1);
insert into metric_tbl_dim values ('C00002', '0001', 1);
insert into metric_tbl_dim values ('C00002', '0002', 2);
insert into metric_tbl_dim values ('C00003', '0001', 1);
insert into metric_tbl_dim values ('C00003', '0002', 2);
insert into metric_tbl_dim values ('C00003', '0004', 3);


delete from metric_column;

insert into metric_column values ('D000000001', '日期', 0, 'DATE', 'd_date', '');
insert into metric_column values ('D000000002', '月份', 0, 'INT', 'd_month', '');
insert into metric_column values ('D000000003', '季度', 0, 'INT', 'd_quarter', '');
insert into metric_column values ('D000000004', '年份', 0, 'INT', 'd_year', '');

insert into metric_column values ('D000000011', '村/社区', 0, 'VARCHAR(40)', 'd_village', '');
insert into metric_column values ('D000000012', '乡镇/街道', 0, 'VARCHAR(40)', 'd_town', '');
insert into metric_column values ('D000000013', '区/县', 0, 'VARCHAR(40)', 'd_county', '');
insert into metric_column values ('D000000014', '市', 0, 'VARCHAR(40)', 'd_city', '');
insert into metric_column values ('D000000015', '省', 0, 'VARCHAR(40)', 'd_province', '');

insert into metric_column values ('D000000021', '行业3级分类', 0, 'VARCHAR(40)', 'd_class3', '');
insert into metric_column values ('D000000022', '行业2级分类', 0, 'VARCHAR(40)', 'd_class2', '');
insert into metric_column values ('D000000023', '行业1级分类', 0, 'VARCHAR(40)', 'd_class1', '');
insert into metric_column values ('D000000024', '行业门类', 0, 'VARCHAR(40)', 'd_category', '');

insert into metric_column values ('M000000001', '大专学历以上人口数量', 1, 'NUMERIC', 'b000000001', '大专学历以上人口数量');
insert into metric_column values ('M000000002', '累计新冠患者数量', 1, 'NUMERIC', 'b000000002', '累计新冠患者数量');
insert into metric_column values ('M000000003', '新增新冠患者数量', 1, 'NUMERIC', 'b000000003', '新增新冠患者数量');
insert into metric_column values ('M000000004', '基础指标0004', 1, 'NUMERIC', 'b000000004', '基础指标0004');
insert into metric_column values ('M000000005', '基础指标0005', 1, 'NUMERIC', 'b000000005', '基础指标0005');

insert into metric_column values ('M000000020', '新冠患者占人口比例', 1, 'NUMERIC', 'd000000001', '新冠患者占人口比例');

insert into metric_column values ('M000000006', '人口规模', 1, 'NUMERIC', 'b000000010', '人口规模');
insert into metric_column values ('M000000007', '核酸检测人次', 1, 'NUMERIC', 'b000000011', '核酸检测人次');
insert into metric_column values ('M000000016', '健康异常人数', 1, 'NUMERIC', 'b000000012', '健康异常人数');

insert into metric_column values ('M000000008', '健康异常人口比例', 1, 'NUMERIC', 'd000000011', '健康异常人口比例');
insert into metric_column values ('M000000009', '衍生指标0012', 1, 'NUMERIC', 'd000000012', '衍生指标0012');
insert into metric_column values ('M000000010', '衍生指标0013', 1, 'NUMERIC', 'd000000013', '衍生指标0013');

insert into metric_column values ('M000000011', '就业人数', 1, 'NUMERIC', 'b000000020', '就业人数');
insert into metric_column values ('M000000012', '小微企业数量', 1, 'NUMERIC', 'b000000021', '小微企业数量');
insert into metric_column values ('M000000017', '中型企业数量', 1, 'NUMERIC', 'b000000022', '中型企业数量');
insert into metric_column values ('M000000018', '大型企业数量', 1, 'NUMERIC', 'b000000023', '大型企业数量');
insert into metric_column values ('M000000019', '企业净利润', 1, 'NUMERIC', 'b000000024', '企业净利润');


insert into metric_column values ('M000000013', '中小企业数量', 1, 'NUMERIC', 'd000000021', '中小企业数量');
insert into metric_column values ('M000000014', '中小企业数量占比', 1, 'NUMERIC', 'd000000022', '中小企业数量占比');
insert into metric_column values ('M000000015', '衍生指标0023', 1, 'NUMERIC', 'd000000023', '衍生指标0023');

delete from metric_dim_col;

insert into metric_dim_col values ('0001', 'D000000001', 0);
insert into metric_dim_col values ('0001', 'D000000002', 1);
insert into metric_dim_col values ('0001', 'D000000003', 2);
insert into metric_dim_col values ('0001', 'D000000004', 3);

insert into metric_dim_col values ('0002', 'D000000011', 0);
insert into metric_dim_col values ('0002', 'D000000012', 1);
insert into metric_dim_col values ('0002', 'D000000013', 2);
insert into metric_dim_col values ('0002', 'D000000014', 3);
insert into metric_dim_col values ('0002', 'D000000015', 4);

insert into metric_dim_col values ('0004', 'D000000021', 0);
insert into metric_dim_col values ('0004', 'D000000022', 1);
insert into metric_dim_col values ('0004', 'D000000023', 2);
insert into metric_dim_col values ('0004', 'D000000024', 3);

delete from metric;

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000001', '大专学历以上人口数量', 0, 'C00001', 'M000000001', '0003', '00'
, 'select ${sys_date}, count(*) from person  where degree > 3 and birth_dt <= ${sys_date} and (death_dt > ${sys_date} or death_dt is null)');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000002', '累计新冠患者数量', 0, 'C00001', 'M000000002', '0003', '00'
, 'select ${sys_date}, count(*) from covid_treatment where begin_dt <= ${sys_date}');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000003', '新增新冠患者数量', 0, 'C00001', 'M000000003', '0003', '00'
, 'select ${sys_date}, count(*) from covid_treatment where begin_dt = ${sys_date}');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000004', '基础指标0004', 0, 'C00001', 'M000000004', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000005', '基础指标0005', 0, 'C00001', 'M000000005', '0003', '00');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000010', '人口规模', 0, 'C00002', 'M000000006', '0003', '00'
, 'select ${sys_date}, addr_admin_cd, count(*) from person where birth_dt <= ${sys_date} and (death_dt > ${sys_date} or death_dt is null) group by addr_admin_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000011', '核酸检测人次', 0, 'C00002', 'M000000007', '0003', '00'
, 'select ${sys_date}, addr_admin_cd, count(*) 
from person p, rna_test_record r
where p.person_id = r.person_id and r.data_dt = ${sys_date}
group by p.addr_admin_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000012', '健康异常人数', 0, 'C00002', 'M000000016', '0003', '00'
, 'select ${sys_date}, addr_admin_cd, count(*)
from person p, person_health_record r
where p.person_id = r.person_id and r.data_dt = ${sys_date}
and (r.is_cough <> 0 or r.is_chest_tight <> 0 or r.body_temp > 37) 
group by p.addr_admin_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000020', '就业人数', 0, 'C00003', 'M000000011', '0003', '00'
, 'select ${sys_date}, addr_admin_cd, busi_cd, count(*)
from person p, corporation c 
where p.corp_id = c.corp_id
and p.birth_dt <= ${sys_date} and (p.death_dt > ${sys_date} or p.death_dt is null)
group by addr_admin_cd, busi_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000021', '小微企业数量', 0, 'C00003', 'M000000012', '0003', '00'
, 'select ${sys_date}, reg_admin_cd, busi_cd, count(*)
from corporation
where reg_dt <= ${sys_date} and corp_scale = 0
group by reg_admin_cd, busi_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000022', '中型企业数量', 0, 'C00003', 'M000000017', '0003', '00'
, 'select ${sys_date}, reg_admin_cd, busi_cd, count(*)
from corporation
where reg_dt <= ${sys_date} and corp_scale = 1
group by reg_admin_cd, busi_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000023', '大型企业数量', 0, 'C00003', 'M000000018', '0003', '00'
, 'select ${sys_date}, reg_admin_cd, busi_cd, count(*)
from corporation
where reg_dt <= ${sys_date} and corp_scale = 2
group by reg_admin_cd, busi_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('b000000024', '企业净利润', 0, 'C00003', 'M000000019', '0003', '00'
, 'select ${sys_date}, reg_admin_cd, busi_cd, sum(net_profit)
from corporation c, corp_finance_index i
where c.corp_id = i.corp_id 
and i.data_dt = ${sys_date}
group by c.reg_admin_cd, c.busi_cd');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('d000000001', '新冠患者占人口比例', 1, 'C00001', 'M000000020', '0003', '00'
, '$[b000000002]/$[b000000010]*100');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('d000000011', '健康异常人口比例', 1, 'C00002', 'M000000008', '0003', '00'
, '$[b000000012]/$[b000000010]*100');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000012', '衍生指标0012', 1, 'C00002', 'M000000009', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000013', '衍生指标0013', 1, 'C00002', 'M000000010', '0003', '00');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('d000000021', '中小企业数量', 1, 'C00003', 'M000000013', '0003', '00'
, '$[b000000021]+$[b000000022]');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level, metric_formula)
values ('d000000022', '中小企业数量占比', 1, 'C00003', 'M000000014', '0003', '00'
, '$[d000000021]/($[d000000021]+$[b000000023])');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000023', '衍生指标0023', 1, 'C00003', 'M000000015', '0003', '00');

update metric set update_flag = 0;


delete from metric_dim_rollup;

insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000001';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000002';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000003';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000010';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000010';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000011';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000011';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000012';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000012';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000020';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000020';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000020';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000021';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000021';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000021';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000022';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000022';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000022';
insert into metric_dim_rollup select '0001', m.metric_row_id, 4 from metric m where m.metric_cd = 'b000000023';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000023';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000023';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000024';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000024';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'b000000024';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000001';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000011';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000011';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000021';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000021';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000021';
insert into metric_dim_rollup select '0001', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000022';
insert into metric_dim_rollup select '0002', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000022';
insert into metric_dim_rollup select '0004', m.metric_row_id, 0 from metric m where m.metric_cd = 'd000000022';


delete from metric_relation;

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000002', 'd000000001', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000010', 'd000000001', 1);

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000012', 'd000000011', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000010', 'd000000011', 1);

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000021', 'd000000021', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000022', 'd000000021', 1);

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000023', 'd000000022', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('d000000021', 'd000000022', 1);


delete from metric_class;

INSERT INTO `metric_class` VALUES ('1', '00000000', '全部指标', null, null, '0', null, '0', null, null, null, null, null, null);
INSERT INTO `metric_class` VALUES ('11', 'A001', '疫情分析指标体系', '00000000', '0000', '1', '疫情分析指标体系', '0', null, null, '0', null, '2020-07-30 17:26:28', null);
INSERT INTO `metric_class` VALUES ('12', 'B001', '企业发展情况指标体系', '00000000', '0000', '2', '企业发展情况指标体系', '0', null, null, '0', null, '2020-07-30 17:26:38', null);
INSERT INTO `metric_class` VALUES ('13', 'A001001', '人口健康情况', 'A001', '0000', '1', '人口健康情况指标目录', '0', null, null, '0', null, '2020-07-30 17:25:54', null);
INSERT INTO `metric_class` VALUES ('14', 'A001002', '人口基本情况', 'A001', '0000', '4', '人口基本情况指标目录', '0', null, null, '0', null, '2020-07-30 17:26:10', null);
INSERT INTO `metric_class` VALUES ('15', 'A001003', '疫情情况', 'A001', '0000', '5', '疫情情况指标目录', '0', null, null, '0', null, '2020-07-30 17:26:19', null);


delete from metric_class_r;

INSERT INTO `metric_class_r` VALUES ('23', 'b000000012', 'A001001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('24', 'd000000011', 'A001001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('25', 'b000000001', 'A001002', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('26', 'b000000002', 'A001003', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('27', 'b000000003', 'A001003', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('28', 'b000000011', 'A001003', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('29', 'd000000001', 'A001003', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('30', 'b000000021', 'B001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('31', 'b000000023', 'B001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('32', 'b000000024', 'B001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('33', 'd000000022', 'B001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('34', 'd000000021', 'B001', null, '1', null, null, null, null, null, null);
INSERT INTO `metric_class_r` VALUES ('35', 'b000000022', 'B001', null, '1', null, null, null, null, null, null);

delete from security_level;

insert into security_level values ('00', '公开');
insert into security_level values ('01', '共享');
insert into security_level values ('02', '保密');
insert into security_level values ('03', '绝密');

delete from user_role;

insert into user_role values (1, '普通指标用户', '', '00');
insert into user_role values (2, '指标操作员', '', '00');
insert into user_role values (3, '指标管理员', '', '00');
insert into user_role values (4, '安全管理员', '', '03');
insert into user_role values (5, '系统管理员', '', '00');
insert into user_role values (6, '内部指标用户', '', '01');
insert into user_role values (7, '保密指标用户', '', '02');
insert into user_role values (8, '绝密指标用户', '', '03');



delete from organization;

insert into organization (org_cd, org_nm, org_type, local_admin_org_cd, super_admin_org_cd, super_busi_org_cd)
select d.department_cd, d.department_nm, 0, s.department_cd, s.department_cd, s.department_cd
from cleanse_db.department d, cleanse_db.department s
where d.super_dept_id = s.department_id
;

update organization set local_admin_org_cd = substr(local_admin_org_cd, 1, 7);
update organization set super_admin_org_cd = substr(super_admin_org_cd, 1, 6);
update organization set org_type = 1 where length(org_cd) > 7;
update organization set dept_cd = case when length(org_cd) > 9 then substr(org_cd, 7, 4) else '0000' end;


delete from organization 
where 
org_cd like '%E%' 
or org_cd like '%F%'
or org_cd like '%G%'
or org_cd like '%H%'
or org_cd like '%I%'
or org_cd like '%J%'
or org_cd like '%K%'
or org_cd like '%L%'
or org_cd like '%Y%'
or org_cd like '%Z%'
;


delete from organization
where org_cd like '110329%'
or org_cd like '110000001%'
or org_cd like '1100002312%'
or org_cd like '110330%';

update organization set super_admin_org_cd = '110000' where length(org_cd) = 7;


delete from busi_department;

insert into busi_department
select distinct dept_cd, dept_nm
from (
select o2.org_cd, o2.org_nm, o2.dept_cd, o2.super_admin_org_cd, concat(o1.org_nm, '-', o2.org_nm) as dept_nm
from
organization o1,
(select * from organization where length(org_cd) = 10 and super_admin_org_cd = '110000') o2
where o1.org_cd = o2.super_busi_org_cd
) t;


delete from user;

insert into `user` (user_id, user_name, user_name_cn) values (1, 'sysadmin'  , '系统管理员'    );
insert into `user` (user_id, user_name, user_name_cn) values (2, 'user1'     , '普通指标用户');
insert into `user` (user_id, user_name, user_name_cn) values (3, 'operator'  , '指标操作员'    );
insert into `user` (user_id, user_name, user_name_cn) values (4, 'supervisor', '指标管理员'    );
insert into `user` (user_id, user_name, user_name_cn) values (5, 'datadmin'  , '安全管理员'    );
insert into `user` (user_id, user_name, user_name_cn) values (6, 'user2'     , '内部指标用户');
insert into `user` (user_id, user_name, user_name_cn) values (7, 'user3'     , '保密指标用户');
insert into `user` (user_id, user_name, user_name_cn) values (8, 'user4'     , '绝密指标用户');

delete from role_mapping;

insert into role_mapping values ('01', 1);
insert into role_mapping values ('02', 2);
insert into role_mapping values ('03', 3);
insert into role_mapping values ('04', 4);
insert into role_mapping values ('05', 5);
insert into role_mapping values ('06', 6);
insert into role_mapping values ('07', 7);
insert into role_mapping values ('08', 8);

delete from user_organization_assign;

insert into user_organization_assign values (1, 1, '110000C005');
insert into user_organization_assign values (2, 2, '110000C005');
insert into user_organization_assign values (3, 3, '110000C005');
insert into user_organization_assign values (4, 4, '110000C005');
insert into user_organization_assign values (5, 5, '110000C005');
insert into user_organization_assign values (6, 6, '110000C005');
insert into user_organization_assign values (7, 7, '110000C005');
insert into user_organization_assign values (8, 8, '110000C005');


delete from external_user_role;

insert into external_user_role values ('01', '外部用户角色01');
insert into external_user_role values ('02', '外部用户角色02');
insert into external_user_role values ('03', '外部用户角色03');
insert into external_user_role values ('04', '外部用户角色04');
insert into external_user_role values ('05', '外部用户角色05');
insert into external_user_role values ('06', '外部用户角色06');
insert into external_user_role values ('07', '外部用户角色07');
insert into external_user_role values ('08', '外部用户角色08');

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('0','admin',3,NULL,0,NULL,'-1ef523c6b645a65441a91fa80df077c2','超级管理员',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `app_module` WRITE;
/*!40000 ALTER TABLE `app_module` DISABLE KEYS */;
INSERT INTO `app_module` VALUES (1,0,'指标查询分析','/metricAnalysis'),(2,0,'指标体系管理','/metricStructure'),(3,0,'指标接口管理','/metricInterface'),(4,0,'系统管理','/sysManage'),(5,0,'数据权限管理','/dataPermission'),(6,0,'权限管理','/sys'),(11,1,'指标数据查询','/metricAnalysis/dataQuery'),(12,1,'指标仪表盘','/metricAnalysis/charts'),(21,2,'指标目录维护','/metricStructure/cataMaintain'),(22,2,'指标维护','/metricStructure/metricMaintain'),(23,2,'指标目录审核','/metricStructure/cataVerify'),(24,2,'指标审核','/metricStructure/metricVerify'),(31,3,'指标接口维护','/metricInterface/maintain'),(32,3,'指标接口审核','/metricInterface/verify'),(42,4,'系统日志分析','/sysManage/logAnalysis'),(43,4,'用户角色管理','/sysManage/userRole'),(44,4,'数据源管理','/sysManage/dataSource'),(45,4,'指标仓库管理','/sysManage/warehouse'),(46,4,'系统运行报告','/sysManage/logReport'),(55,5,'数据安全级别维护','/dataPermission/safetyMaintain'),(61,6,'功能查看','/sys/menu'),(62,6,'用户管理','/sys/user'),(63,6,'角色管理','/sys/role'),(64,6,'机构管理','/sys/record/recordOriginManager');
/*!40000 ALTER TABLE `app_module` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `user_organization_assign` WRITE;
/*!40000 ALTER TABLE `user_organization_assign` DISABLE KEYS */;
INSERT INTO `user_organization_assign` VALUES (0,'0','110000');
/*!40000 ALTER TABLE `user_organization_assign` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (9,'超级管理员岗','此角色为临时加入，测试角色','00');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `user_role_assign` WRITE;
/*!40000 ALTER TABLE `user_role_assign` DISABLE KEYS */;
INSERT INTO `user_role_assign` VALUES ('0',9);
/*!40000 ALTER TABLE `user_role_assign` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `user_role_privilege` WRITE;
/*!40000 ALTER TABLE `user_role_privilege` DISABLE KEYS */;
INSERT INTO `user_role_privilege` VALUES (5,1,NULL),(9,1,NULL),(9,2,NULL),(9,3,NULL),(9,4,NULL),(9,5,NULL),(9,11,NULL),(9,12,NULL),(9,21,NULL),(9,22,NULL),(9,23,NULL),(9,24,NULL),(9,31,NULL),(9,32,NULL),(9,42,NULL),(9,43,NULL),(9,44,NULL),(9,45,NULL),(9,46,NULL),(9,55,NULL);
/*!40000 ALTER TABLE `user_role_privilege` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `user_organizations_assign`;
DROP TABLE IF EXISTS `sys_origin`;
DROP TABLE IF EXISTS `rcd_person_config`;
DROP TABLE IF EXISTS `rcd_person_group`;


