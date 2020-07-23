
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (16, 6, 100);
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (16, 7, 100);
insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010) values (17, 7, 100);


insert into metric_tbl_2 (date_dim_id, admin_dim_id, b000000010)
select d.id as date_dim_id, admin_dim_id, b000000010
-- ,d.d_month, d.d_quarter, d.d_year 
from 
(
	select admin_dim_id, d_month, d_quarter, d_year, sum(b000000010) as b000000010
	from metric_tbl_2 t, date_dim d
	where d.id = t.date_dim_id
	group by admin_dim_id, d_year, d_quarter, d_month
	with ROLLUP
	having admin_dim_id is not NULL
) t, date_dim d
where 
		(t.d_month = d.d_month or t.d_month is null and d.d_month is null)
and (t.d_quarter = d.d_quarter or t.d_quarter is null and d.d_quarter is null)
and (t.d_year = d.d_year or t.d_year is null and d.d_year is null)
and d.d_date is null
;

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
