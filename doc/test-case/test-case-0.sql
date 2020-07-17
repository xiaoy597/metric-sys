tmp.date      tmp.value
'2020-01-16', 100

insert int mertric(date_dim_id,b000001)
select date_dim.id,tmp.value from tmp, date_dim where tmp.date=date_dim.d_date


insert into metric_tbl_1(date_dim_id, b00000001)
select d.id, t1.b00000001
from
(
select d_month, d_quarter, d_year, sum(b00000001) as b00000001
from metric_tbl_1 t, dim_date d
where t.date_dim_id = d.id
and d_date is not null
group by d_month, d_quarter, d_year
) t1, date_dim d
where t1.d_month = d.d_month
and t1.d_quarter = d.d_quarter
and t1.d_year = d.d_year
;


insert into metric_tbl_1(date_dim_id, b00000001)
select d.id, t1.b00000001
from
(
select d_quarter, d_year, sum(b00000001) as b00000001
from metric_tbl_1 t, dim_date d
where t.date_dim_id = d.id
and d_date is null and d_month is not null
group by d_quarter, d_year
) t1, date_dim d
where
t1.d_quarter = d.d_quarter
and t1.d_year = d.d_year
;
