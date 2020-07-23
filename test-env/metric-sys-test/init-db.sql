create database hive default character set 'utf8';
create database metric_db default character set 'utf8';
create database metric_warehouse default character set 'utf8';
create user 'hive'@'%' identified by 'hive';
grant all on hive.* to 'hive'@'%';
flush privileges;

use hive;
source /sample-data/hive.sql;
use metric_db;
source /sample-data/metric_db.sql;
use metric_warehouse;
source /sample-data/metric_warehouse.sql;

