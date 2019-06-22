-- sqlite
-- 注意sqlite不能使用变量
SELECT E1.first_name
FROM employees E1
WHERE(SELECT COUNT(*) FROM employees E2 WHERE E1.first_name>=E2.first_name)%2=1;

--mysql
SELECT first_name  FROM (SELECT @rownum := @rownum+1 AS row_num, first_name FROM employees,(SELECT @rownum:=0) init ) AS tt  WHERE tt.row_num%2=1;
