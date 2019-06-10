SELECT t.dept_no,n.dept_name,SUM(t.growth) AS sum 
FROM departments AS n, 
(SELECT dept_no, COUNT(*) AS growth 
FROM salaries AS sal,dept_emp AS dept 
WHERE sal.emp_no IN (SELECT emp_no FROM dept_emp)) AS t 
GROUP BY dept_no;