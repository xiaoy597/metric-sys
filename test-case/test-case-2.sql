-- 日期维度采用LAST方式上卷
-- 行政区划维度采用SUM方式上卷


delete from metric_tbl_2;

insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (16, 6, 100);
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (16, 7, 100);
-- insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (17, 7, 100);
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (17, 6, 100);
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (35, 6, 100);

drop table if exists metric_tbl_2_tmp;
create table metric_tbl_2_tmp like metric_tbl_2;

insert into metric_tbl_2_tmp(date_dim_id, admin_dim_id, b000000010)
select d3.id, t.admin_dim_id, t.b000000010
from
(
	-- 获得各行政区划维度值下每个月有数据的最后一天的日期，以及对应的月份、季度、年份、行政区划
	-- 并得到该日期
	select max(d_date) as d_date, d_month, d_quarter, d_year, t.admin_dim_id
	from date_dim d, metric_tbl_2 t
	where d.id = t.date_dim_id
	group by d_month, d_quarter, d_year, t.admin_dim_id
) d1, date_dim d2, date_dim d3, metric_tbl_2 t
where 
-- d1和d2分别提供了用于从t中找到唯一的目标记录的两个维度的id值。
d1.d_date = d2.d_date
and d2.id = t.date_dim_id
and d1.admin_dim_id = t.admin_dim_id
-- 以下条件用于从d3中得到具有月粒度的日期维度记录id
and d1.d_month = d3.d_month
and d1.d_quarter = d3.d_quarter
and d1.d_year = d3.d_year
and d3.d_date is null
;

select * from metric_tbl_2_tmp;

insert into metric_tbl_2_tmp (date_dim_id, admin_dim_id, b000000010)
select d3.id, t.admin_dim_id, t.b000000010
from
(
	-- 获得各行政区划维度值下每个季度有数据的最后一个月的月份数
	select max(d_month) as d_month, d_quarter, d_year, t.admin_dim_id
	from date_dim d, metric_tbl_2_tmp t
	where d.id = t.date_dim_id
	group by d_quarter, d_year, t.admin_dim_id
) d1, date_dim d2, date_dim d3, metric_tbl_2_tmp t
where d1.d_month = d2.d_month
and d1.d_quarter = d2.d_quarter 
and d1.d_year = d2.d_year 
and d2.d_date is null
and d2.id = t.date_dim_id
and d1.admin_dim_id = t.admin_dim_id
and d1.d_quarter = d3.d_quarter
and d1.d_year= d3.d_year
and d3.d_month is null
;

select * from metric_tbl_2_tmp;

insert into metric_tbl_2_tmp (date_dim_id, admin_dim_id, b000000010)
select d3.id, t.admin_dim_id, t.b000000010
from
(
	select max(d_quarter) as d_quarter, d_year, t.admin_dim_id
	from date_dim d, metric_tbl_2_tmp t
	where d.id = t.date_dim_id
	group by d_year, t.admin_dim_id
) d1, date_dim d2, date_dim d3, metric_tbl_2_tmp t
where 
d1.d_quarter = d2.d_quarter 
and d1.d_year = d2.d_year 
and d2.d_date is null
and d2.d_month is null
and d2.id = t.date_dim_id
and d1.admin_dim_id = t.admin_dim_id
and d1.d_year= d3.d_year
and d3.d_month is null 
and d3.d_quarter is null
;

select * from metric_tbl_2_tmp;

insert into metric_tbl_2_tmp (date_dim_id, admin_dim_id, b000000010)
select d3.id, t.admin_dim_id, t.b000000010
from
(
	select max(d_year) as d_year, t.admin_dim_id
	from date_dim d, metric_tbl_2_tmp t
	where d.id = t.date_dim_id
	group by t.admin_dim_id
) d1, date_dim d2, date_dim d3, metric_tbl_2_tmp t
where 
d1.d_year = d2.d_year 
and d2.d_date is null
and d2.d_month is null
and d2.d_quarter is null
and d2.id = t.date_dim_id
and d1.admin_dim_id = t.admin_dim_id
and d3.d_month is null 
and d3.d_quarter is null
and d3.d_year is null
;

select * from metric_tbl_2_tmp;

insert into metric_tbl_2 select * from metric_tbl_2_tmp;


insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010)
select date_dim_id, d.id as admin_dim_id, b000000010
-- , d.d_town, d.d_county, d.d_city, d.d_province
from 
(
	select date_dim_id, d_town, d_county, d_city, d_province, sum(b000000010) as b000000010
	from metric_tbl_2 t, admin_dim d
	where d.id = t.admin_dim_id
	group by date_dim_id, d_province, d_city, d_county, d_town
	with ROLLUP
	having date_dim_id is not NULL
) t, admin_dim d
where 
		(t.d_town = d.d_town or t.d_town is null and d.d_town is null)
and (t.d_county = d.d_county or t.d_county is null and d.d_county is null)
and (t.d_city = d.d_city or t.d_city is null and d.d_city is null)
and (t.d_province = d.d_province or t.d_province is null and d.d_province is null)
and d.d_village is null
;

select d_date, d_month, d_quarter, d_year, d_village, d_town, d_county, d_city, d_province, b000000010
from metric_tbl_2 t, date_dim d1, admin_dim d2
where t.date_dim_id = d1.id
and t.admin_dim_id = d2.id;
