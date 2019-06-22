-- sqlite
SELECT dept_no, group_concat(emp_no) AS employees FROM dept_emp GROUP BY dept_no;

-- mysql
-- 注意mysql要指定分隔符
SELECT dept_no,group_concat(emp_no SEPARATOR ',') FROM dept_emp GROUP BY dept_no;
