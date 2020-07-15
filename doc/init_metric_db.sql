delete from metric_src_type;

insert into metric_src_type values ('01', 'Hive');
insert into metric_src_type values ('02', 'MySQL');
insert into metric_src_type values ('03', 'GreenPlump');
insert into metric_src_type values ('04', 'Filesystem');


delete from metric_src;

insert into metric_src values ('0001', '大数据平台主题库', '', '01');
insert into metric_src values ('0002', '大数据平台基础库', '', '01');
insert into metric_src values ('0003', '测试关系数据库', '
{
	"ip": "localhost",
	"port": 3306,
	"db": "metric_src_db",
	"user": "root",
	"password": "root"
}', '02');
insert into metric_src values ('0004', '测试文件系统', '', '04');

delete from metric_param;

insert into metric_param values ('S00001', 1, '指标数据仓库连接参数','
{
	"type": "mysql",
	"connect-params": {
		"ip": "localhost",
		"port": 3306,
		"db": "metric_warehouse",
		"user": "root",
		"password": "root"
	}
}
');

insert into metric_param values ('S00002', 1, '指标管理机构代码','110000C005');

insert into metric_param values ('L00001', 0, '数据更新日期','2020-06-20');

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

insert into metric_tbl_dim values ('C00001', '0001');
insert into metric_tbl_dim values ('C00002', '0001');
insert into metric_tbl_dim values ('C00002', '0002');
insert into metric_tbl_dim values ('C00003', '0001');
insert into metric_tbl_dim values ('C00003', '0002');
insert into metric_tbl_dim values ('C00003', '0004');


delete from metric_column;

insert into metric_column values ('D000000001', '日期', 0, 'DATE', 'd_date', '');
insert into metric_column values ('D000000002', '月份', 0, 'INT', 'd_month', '');
insert into metric_column values ('D000000003', '季度', 0, 'INT', 'd_quarter', '');
insert into metric_column values ('D000000004', '年份', 0, 'INT', 'd_year', '');

insert into metric_column values ('D000000011', '村/社区', 0, 'STRING', 'd_village', '');
insert into metric_column values ('D000000012', '乡镇/街道', 0, 'STRING', 'd_town', '');
insert into metric_column values ('D000000013', '区/县', 0, 'STRING', 'd_county', '');
insert into metric_column values ('D000000014', '市', 0, 'STRING', 'd_city', '');
insert into metric_column values ('D000000015', '省', 0, 'STRING', 'd_province', '');

insert into metric_column values ('D000000021', '行业3级分类', 0, 'STRING', 'd_class3', '');
insert into metric_column values ('D000000022', '行业2级分类', 0, 'STRING', 'd_class2', '');
insert into metric_column values ('D000000023', '行业1级分类', 0, 'STRING', 'd_class1', '');
insert into metric_column values ('D000000024', '行业门类', 0, 'STRING', 'd_category', '');

insert into metric_column values ('M000000001', '大专学历以上人口数量', 1, 'NUMERIC', 'b000000001', '大专学历以上人口数量');
insert into metric_column values ('M000000002', '累计新冠患者数量', 1, 'NUMERIC', 'b000000002', '累计新冠患者数量');
insert into metric_column values ('M000000003', '基础指标0003', 1, 'NUMERIC', 'b000000003', '基础指标0003');
insert into metric_column values ('M000000004', '基础指标0004', 1, 'NUMERIC', 'b000000004', '基础指标0004');
insert into metric_column values ('M000000005', '基础指标0005', 1, 'NUMERIC', 'b000000005', '基础指标0005');

insert into metric_column values ('M000000006', '人口规模', 1, 'NUMERIC', 'b000000010', '人口规模');
insert into metric_column values ('M000000007', '核酸检测人次', 1, 'NUMERIC', 'b000000011', '核酸检测人次');
insert into metric_column values ('M000000016', '健康异常人数', 1, 'NUMERIC', 'b000000012', '健康异常人数');

insert into metric_column values ('M000000008', '衍生指标0011', 1, 'NUMERIC', 'd000000011', '衍生指标0011');
insert into metric_column values ('M000000009', '衍生指标0012', 1, 'NUMERIC', 'd000000012', '衍生指标0012');
insert into metric_column values ('M000000010', '衍生指标0013', 1, 'NUMERIC', 'd000000013', '衍生指标0013');

insert into metric_column values ('M000000011', '就业人数', 1, 'NUMERIC', 'b000000020', '就业人数');
insert into metric_column values ('M000000012', '小微企业数量', 1, 'NUMERIC', 'b000000021', '小微企业数量');
insert into metric_column values ('M000000017', '中型企业数量', 1, 'NUMERIC', 'b000000022', '中型企业数量');
insert into metric_column values ('M000000018', '大型企业数量', 1, 'NUMERIC', 'b000000023', '大型企业数量');
insert into metric_column values ('M000000019', '企业净利润', 1, 'NUMERIC', 'b000000024', '企业净利润');


insert into metric_column values ('M000000013', '衍生指标0021', 1, 'NUMERIC', 'd000000021', '衍生指标0021');
insert into metric_column values ('M000000014', '衍生指标0022', 1, 'NUMERIC', 'd000000022', '衍生指标0022');
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

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000001', '大专学历以上人口数量', 0, 'C00001', 'M000000001', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000002', '累计新冠患者数量', 0, 'C00001', 'M000000002', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000003', '基础指标0003', 0, 'C00001', 'M000000003', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000004', '基础指标0004', 0, 'C00001', 'M000000004', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000005', '基础指标0005', 0, 'C00001', 'M000000005', '0003', '00');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000010', '人口规模', 0, 'C00002', 'M000000006', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000011', '核酸检测人次', 0, 'C00002', 'M000000007', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000012', '健康异常人数', 0, 'C00002', 'M000000016', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000020', '就业人数', 0, 'C00003', 'M000000011', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000021', '小微企业数量', 0, 'C00003', 'M000000012', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000022', '中型企业数量', 0, 'C00003', 'M000000017', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000023', '大型企业数量', 0, 'C00003', 'M000000018', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('b000000024', '企业净利润', 0, 'C00003', 'M000000019', '0003', '00');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000011', '衍生指标0011', 1, 'C00002', 'M000000008', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000012', '衍生指标0012', 1, 'C00002', 'M000000009', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000013', '衍生指标0013', 1, 'C00002', 'M000000010', '0003', '00');

insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000021', '衍生指标0021', 1, 'C00003', 'M000000013', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000022', '衍生指标0022', 1, 'C00003', 'M000000014', '0003', '00');
insert into metric (metric_cd, metric_nm, metric_type, metric_tbl_cd, metric_tbl_col_cd, metric_src_cd, default_sec_level)
values ('d000000023', '衍生指标0023', 1, 'C00003', 'M000000015', '0003', '00');

delete from metric_relation;

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000010', 'd000000011', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000010', 'd000000012', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000011', 'd000000012', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000010', 'd000000013', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000011', 'd000000013', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('d000000011', 'd000000013', 1);

insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000020', 'd000000011', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000020', 'd000000012', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('b000000021', 'd000000012', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('d000000021', 'd000000023', 1);
insert into metric_relation (ustream_metric, dstream_metric, relation_type) values ('d000000022', 'd000000023', 1);


delete from metric_class;

insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('00000000', '全部指标', null, 0, 0);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('10000000', '指标体系1', '00000000', 0, 0);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('20000000', '指标体系2', '00000000', 0, 1);

insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('11000000', '指标分类1', '10000000', 0, 0);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('12000000', '指标分类2', '10000000', 0, 1);

insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('21000000', '指标分类3', '20000000', 0, 0);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('21100000', '指标子类31', '21000000', 0, 0);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('21200000', '指标子类32', '21000000', 0, 1);
insert into metric_class (metric_class_cd, metric_class_nm, super_class_cd, update_flag, disp_order)
values ('22000000', '指标分类4', '20000000', 0, 1);


delete from metric_class_r;

insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000001', '11000000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000002', '11000000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000003', '12000000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000004', '12000000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000005', '22000000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000010', '21100000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000011', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000020', '21100000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000021', '21200000', 0);

insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000001', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000002', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000004', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'b000000021', '21100000', 0);


insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000011', '21100000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000012', '21100000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000013', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000021', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000022', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000023', '21200000', 0);
insert into metric_class_r (disp_order, metric_cd, metric_class_cd, update_flag) values (0, 'd000000011', '21200000', 0);

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

