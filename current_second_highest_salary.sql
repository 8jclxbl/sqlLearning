SELECT emp_no,salary FROM salaries WHERE to_date = '9999-01-01' ORDER BY salary DESC LIMIT 1,1;

SELECT emp.emp_no,MAX(sal.salary),emp.last_name,emp.first_name 
FROM (employees AS emp INNER JOIN salaries AS sal ON emp.emp_no = sal.emp_no) 
WHERE sal.to_date = '9999-01-01' AND sal.salary NOT IN (SELECT MAX(salary) FROM salaries WHERE to_date = '9999-01-01');
