-- drop table if exists busi_dim;
-- create table busi_dim (
-- 	id	bigint auto_increment,
-- 	d_class3	char(4),
-- 	d_class2 char(3),
-- 	d_class1 char(2),
-- 	d_category	char(1),
-- 	primary key (id)
-- );

-- 农业
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0111', '011', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0112', '011', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0113', '011', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0119', '011', '01', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0121', '012', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0122', '012', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0123', '012', '01', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0131', '013', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0132', '013', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0133', '013', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0134', '013', '01', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0141', '014', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0142', '014', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0143', '014', '01', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0149', '014', '01', 'A');

-- 林业
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0211', '021', '02', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0212', '021', '02', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0220', '022', '02', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0231', '023', '02', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0232', '023', '02', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0241', '024', '02', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0242', '024', '02', 'A');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0251', '025', '02', 'A');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0252', '025', '02', 'A');

-- 采矿业
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0610', '061', '06', 'B');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0620', '062', '06', 'B');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0690', '069', '06', 'B');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0711', '071', '07', 'B');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0712', '071', '07', 'B');

insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0721', '072', '07', 'B');
insert into busi_dim (d_class3, d_class2, d_class1, d_category) values ('0722', '072', '07', 'B');

insert into busi_dim (d_class2, d_class1, d_category)
select d_class2, d_class1, d_category from busi_dim
group by d_category, d_class1, d_class2
with ROLLUP;

create table busi_dim_tmp like busi_dim;

insert into busi_dim_tmp
select d.id, d.d_class3, d.d_class2, d.d_class1, d.d_category, coalesce(b.busi_nm, null)
from busi_dim d left join metric_src_db.business b
on d.d_class3 = b.busi_cd
;

drop table busi_dim;
alter table busi_dim_tmp rename to busi_dim;

-- 
-- drop table if exists admin_dim;
-- create table admin_dim (
-- 	id	bigint auto_increment,
-- 	d_village	char(12),
-- 	d_town char(9),
-- 	d_county char(6),
-- 	d_city	char(6),
-- 	d_province char(3),
-- 	primary key (id)
-- );

-- 东城区 东华门街道
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001001', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001002', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001005', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001006', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001007', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001008', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001009', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001010', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001011', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001013', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001014', '110101001', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101001015', '110101001', '110101', '110000', '110');

-- 东城区 景山街道
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002001', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002002', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002003', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002004', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002005', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002006', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002008', '110101002', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101002009', '110101002', '110101', '110000', '110');

-- 东城区 交道口街道
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003001', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003002', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003003', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003005', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003007', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003008', '110101003', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101003009', '110101003', '110101', '110000', '110');

-- 东城区 安定门街道
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004001', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004002', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004003', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004004', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004005', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004006', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004009', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004011', '110101004', '110101', '110000', '110');
insert into admin_dim (d_village, d_town, d_county, d_city, d_province) values ('110101004012', '110101004', '110101', '110000', '110');



insert into admin_dim (d_town, d_county, d_city, d_province)
select d_town, d_county, d_city, d_province
from admin_dim
group by d_province, d_city, d_county, d_town
with rollup;


drop table if exists admin_dim_tmp;
create table admin_dim_tmp like admin_dim;

insert into admin_dim_tmp
select d.id, d.d_village, d.d_town, d.d_county, d.d_city, d.d_province, coalesce(a.admin_nm, null)
from admin_dim d left join metric_src_db.admin_unit a
on d.d_village = a.admin_cd
;

drop table admin_dim;
alter table admin_dim_tmp rename to admin_dim;

-- 
-- drop table if exists date_dim;
-- create table date_dim (
-- 	id	bigint auto_increment,
-- 	d_date	date,
-- 	d_month int,
-- 	d_quarter int,
-- 	d_year int,
-- 	primary key (id)
-- );
-- 
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 0 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 1 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 2 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 3 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 4 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 5 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 6 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 7 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 8 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 9 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 10 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 11 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 12 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 13 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 14 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 15 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 16 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 17 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 18 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 19 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 20 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 21 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 22 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 23 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 24 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 25 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 26 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 27 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 28 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 29 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 30 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 31 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 32 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 33 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 34 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 35 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 36 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 37 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 38 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 39 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 40 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 41 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 42 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 43 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 44 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 45 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 46 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 47 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 48 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 49 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 50 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 51 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 52 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 53 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 54 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 55 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 56 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 57 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 58 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 59 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 60 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 61 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 62 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 63 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 64 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 65 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 66 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 67 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 68 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 69 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 70 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 71 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 72 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 73 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 74 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 75 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 76 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 77 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 78 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 79 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 80 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 81 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 82 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 83 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 84 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 85 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 86 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 87 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 88 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 89 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 90 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 91 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 92 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 93 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 94 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 95 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 96 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 97 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 98 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 99 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 100 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 101 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 102 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 103 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 104 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 105 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 106 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 107 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 108 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 109 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 110 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 111 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 112 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 113 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 114 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 115 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 116 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 117 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 118 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 119 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 120 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 121 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 122 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 123 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 124 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 125 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 126 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 127 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 128 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 129 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 130 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 131 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 132 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 133 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 134 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 135 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 136 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 137 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 138 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 139 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 140 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 141 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 142 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 143 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 144 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 145 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 146 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 147 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 148 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 149 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 150 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 151 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 152 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 153 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 154 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 155 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 156 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 157 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 158 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 159 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 160 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 161 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 162 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 163 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 164 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 165 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 166 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 167 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 168 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 169 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 170 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 171 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 172 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 173 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 174 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 175 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 176 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 177 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 178 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 179 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 180 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 181 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 182 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 183 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 184 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 185 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 186 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 187 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 188 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 189 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 190 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 191 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 192 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 193 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 194 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 195 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 196 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 197 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 198 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 199 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 200 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 201 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 202 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 203 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 204 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 205 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 206 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 207 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 208 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 209 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 210 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 211 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 212 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 213 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 214 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 215 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 216 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 217 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 218 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 219 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 220 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 221 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 222 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 223 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 224 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 225 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 226 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 227 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 228 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 229 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 230 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 231 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 232 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 233 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 234 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 235 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 236 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 237 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 238 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 239 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 240 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 241 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 242 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 243 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 244 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 245 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 246 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 247 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 248 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 249 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 250 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 251 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 252 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 253 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 254 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 255 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 256 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 257 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 258 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 259 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 260 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 261 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 262 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 263 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 264 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 265 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 266 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 267 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 268 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 269 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 270 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 271 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 272 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 273 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 274 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 275 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 276 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 277 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 278 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 279 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 280 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 281 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 282 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 283 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 284 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 285 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 286 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 287 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 288 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 289 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 290 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 291 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 292 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 293 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 294 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 295 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 296 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 297 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 298 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 299 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 300 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 301 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 302 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 303 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 304 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 305 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 306 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 307 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 308 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 309 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 310 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 311 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 312 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 313 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 314 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 315 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 316 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 317 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 318 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 319 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 320 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 321 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 322 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 323 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 324 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 325 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 326 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 327 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 328 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 329 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 330 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 331 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 332 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 333 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 334 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 335 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 336 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 337 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 338 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 339 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 340 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 341 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 342 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 343 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 344 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 345 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 346 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 347 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 348 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 349 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 350 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 351 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 352 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 353 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 354 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 355 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 356 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 357 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 358 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 359 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 360 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 361 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 362 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 363 day));
insert into date_dim (d_date) values (date_add('2020-01-01' , interval 364 day));

update date_dim set d_month = month(d_date), d_quarter = quarter(d_date), d_year = year(d_date);

insert into date_dim (d_month, d_quarter, d_year)
select d_month, d_quarter, d_year
from date_dim
group by d_year, d_quarter, d_month
with rollup;

-- 
-- drop table if exists metric_tbl_1;
-- create table metric_tbl_1 (
-- 	date_dim_id	bigint not null,
-- 	b000000001	decimal(18,2),
-- 	b000000002	decimal(18,2),
-- 	b000000003	decimal(18,2),
-- 	b000000004	decimal(18,2),
-- 	b000000005	decimal(18,2),
-- primary key (date_dim_id)
-- );
-- 
-- drop table if exists metric_tbl_2;
-- create table metric_tbl_2 (
-- 	date_dim_id	bigint not null,
-- 	admin_dim_id	bigint not null,
-- 	b000000010	decimal(18,2),
-- 	b000000011	decimal(18,2),
-- 	d000000011	decimal(18,2),
-- 	d000000012	decimal(18,2),
-- 	d000000013	decimal(18,2),
-- primary key (date_dim_id, admin_dim_id)
-- );
-- 
-- drop table if exists metric_tbl_3;
-- create table metric_tbl_3 (
-- 	date_dim_id	bigint not null,
-- 	admin_dim_id	bigint not null,
-- 	busi_dim_id	bigint not null,
-- 	b000000020	decimal(18,2),
-- 	b000000021	decimal(18,2),
-- 	d000000021	decimal(18,2),
-- 	d000000022	decimal(18,2),
-- 	d000000023	decimal(18,2),
-- primary key (date_dim_id, admin_dim_id, busi_dim_id)
-- );
-- 
