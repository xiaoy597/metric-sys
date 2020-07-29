
delete from metric_tbl_1;

-- Load base metric b000000001 （大专学历以上人口数量） 
insert into metric_tbl_1(date_dim_id, b000000001)
select date_dim_id, measure
from (
select d.id as date_dim_id, count(*) as measure 
from metric_src_db.person p, date_dim d
where d.d_date is not NULL
and p.degree > 3 
and p.birth_dt <= d.d_date and (death_dt > d.d_date or death_dt is null)
group by d.id
) t
on duplicate key update b000000001 = t.measure
;

-- Load base metric b000000002 （累计新冠患者数量） 
insert into metric_tbl_1(date_dim_id, b000000002)
select date_dim_id, measure
from (
select d.id as date_dim_id, sum(case when c.person_id is not null then 1 else 0 end) as measure 
from date_dim d left join metric_src_db.covid_treatment c
on c.begin_dt <= d.d_date
where 
	d.d_date is not NULL
group by d.id
) t
on duplicate key update b000000002 = t.measure
;


-- Load base metric b000000003 （新增新冠患者数量） 
insert into metric_tbl_1(date_dim_id, b000000003)
select date_dim_id, measure
from (
select d.id as date_dim_id, sum(case when c.person_id is not null then 1 else 0 end) as measure
from date_dim d left join metric_src_db.covid_treatment c
on c.begin_dt = d.d_date
where d.d_date is not NULL
group by d.id
) t 
on duplicate key update b000000003 = t.measure
;



delete from metric_tbl_2;

-- Load base metric b000000010 （人口规模）
insert into metric_tbl_2(date_dim_id, admin_dim_id, b000000010)
select date_dim_id, admin_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, count(*) as measure
from metric_src_db.person p, date_dim d, admin_dim a 
where d.d_date is not NULL
and p.birth_dt <= d.d_date and (p.death_dt > d.d_date or p.death_dt is null)
and p.addr_admin_cd = a.d_village
group by d.id, a.id
) t
on duplicate key update b000000010 = t.measure
;

-- Load base metric b000000011 （核酸检测人次）
insert into metric_tbl_2(date_dim_id, admin_dim_id, b000000011)
select date_dim_id, admin_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, count(*) as measure 
from metric_src_db.person p, metric_src_db.rna_test_record r, date_dim d, admin_dim a
where p.person_id = r.person_id 
and r.data_dt = d.d_date
and p.addr_admin_cd = a.d_village
group by d.id, a.id
) t
on duplicate key update b000000011 = t.measure
;

-- Load base metric b000000012 （健康异常人数）
insert into metric_tbl_2(date_dim_id, admin_dim_id, b000000012)
select date_dim_id, admin_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, count(*) as measure
from metric_src_db.person p, metric_src_db.person_health_record r, date_dim d, admin_dim a
where p.person_id = r.person_id 
and r.data_dt = d.d_date
and p.addr_admin_cd = a.d_village
and (r.is_cough <> 0 or r.is_chest_tight <> 0 or r.body_temp > 37) 
group by d.id, a.id
) t
on duplicate key update b000000012 = t.measure
;


delete from metric_tbl_3;

-- Load base metric b000000020 （就业人数）
insert into metric_tbl_3(date_dim_id, admin_dim_id, busi_dim_id, b000000020)
select date_dim_id, admin_dim_id, busi_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, b.id as busi_dim_id, count(*) as measure
from metric_src_db.person p, metric_src_db.corporation c, 
     date_dim d, admin_dim a, busi_dim b
where p.corp_id = c.corp_id
and p.birth_dt <= d.d_date and (p.death_dt > d.d_date or p.death_dt is null)
and p.addr_admin_cd = a.d_village
and b.d_class3 = c.busi_cd
group by d.id, a.id, b.id
) t
on duplicate key update b000000020 = t.measure
;


-- Load base metric b000000021 （小微企业数量）
insert into metric_tbl_3(date_dim_id, admin_dim_id, busi_dim_id, b000000021)
select date_dim_id, admin_dim_id, busi_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, b.id as busi_dim_id, count(*) as measure
from metric_src_db.corporation c, date_dim d, admin_dim a, busi_dim b
where c.reg_dt <= d.d_date 
and corp_scale = 0
and c.reg_admin_cd = a.d_village
and c.busi_cd = b.d_class3
group by d.id, a.id, b.id
) t
on duplicate key update b000000021 = t.measure
;

-- Load base metric b000000022 （中型企业数量）
insert into metric_tbl_3(date_dim_id, admin_dim_id, busi_dim_id, b000000022)
select date_dim_id, admin_dim_id, busi_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, b.id as busi_dim_id, count(*) as measure
from metric_src_db.corporation c, date_dim d, admin_dim a, busi_dim b
where c.reg_dt <= d.d_date 
and corp_scale = 1
and c.reg_admin_cd = a.d_village
and c.busi_cd = b.d_class3
group by d.id, a.id, b.id
) t
on duplicate key update b000000022 = t.measure
;

-- Load base metric b000000023 （大型企业数量）
insert into metric_tbl_3(date_dim_id, admin_dim_id, busi_dim_id, b000000023)
select date_dim_id, admin_dim_id, busi_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, b.id as busi_dim_id, count(*) as measure
from metric_src_db.corporation c, date_dim d, admin_dim a, busi_dim b
where c.reg_dt <= d.d_date 
and corp_scale = 2
and c.reg_admin_cd = a.d_village
and c.busi_cd = b.d_class3
group by d.id, a.id, b.id
) t
on duplicate key update b000000023 = t.measure
;

-- Load base metric b000000024 （企业净利润）
insert into metric_tbl_3(date_dim_id, admin_dim_id, busi_dim_id, b000000024)
select date_dim_id, admin_dim_id, busi_dim_id, measure
from (
select d.id as date_dim_id, a.id as admin_dim_id, b.id as busi_dim_id, sum(net_profit) as measure
from metric_src_db.corporation c, metric_src_db.corp_finance_index i,
     date_dim d, admin_dim a, busi_dim b
where c.corp_id = i.corp_id 
and i.data_dt = d.d_date
and c.reg_admin_cd = a.d_village
and c.busi_cd = b.d_class3
group by d.id, a.id, b.id
) t
on duplicate key update b000000024 = t.measure
;
