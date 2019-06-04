SELECT dept.dept_no, sal.emp_no, salary 
FROM dept_manager AS dept,salaries AS sal 
WHERE  dept.emp_no = sal.emp_no AND  sal.to_date = '9999-01-01' AND dept.to_date = '9999-01-01'
