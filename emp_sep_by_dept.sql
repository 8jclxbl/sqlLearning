-- sqlite
SELECT dept_no, group_concat(emp_no) AS employees FROM dept_emp GROUP BY dept_no;

-- mysql
SELECT dept_no,GROUP_CONCAT(emp_no SEPARATOR ',') FROM dept_emp GROUP BY dept_no;
