--不同数据库连接字符串的方法不完全相同，MySQL、SQL Server、Oracle等数据库支持CONCAT方法，SQLite数据库只支持用连接符号"||"来连接字符串
-- SELECT last_name||" "||first_name AS Name FROM employees;
SELECT CONCAT(last_name, ' ', first_name) AS Name FROM employees;
-- SELECT last_name||"'"||first_name AS NAME FROM employees;