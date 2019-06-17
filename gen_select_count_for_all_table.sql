-- SELECT "select count(*) from " || name || ";" AS cnts
-- FROM sqlite_master WHERE type = 'table';

--在 SQLite 系统表 sqlite_master 中可以获得所有表的索引，其中字段 name 是所有表的名字，而且对于自己创建的表而言，字段 type 永远是 'table'，详情可参考：

-- mysql中针对库,获取所有表名字代码为
--select table_name from information_schema.tables where table_schema='<db_name>' ;
           --# （其中shop为数据库名字）
-- 合并字段用concat()
 -- 上述两步骤应用于本题为
--create table hi as 
--select table_name from information_schema.tables where table_schema='shop' ;
--select * from hi;
--select concat('select count(*) from', ' ', TABLE_NAME, ';') as cnts from hi;
  -- 上述两个步骤合并为一条语句
--select concat('select count(*) from', ' ', TABLE_NAME, ';') as cnts
 --from (select table_name from information_schema.tables where table_schema='shop') as hi;

SELECT CONCAT("select count(*) from ", name, ";") AS cnts
FROM sqlite_master WHERE type = 'table';
