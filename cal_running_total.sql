SELECT s1.emp_no,s1.salary,(SELECT SUM(salary) FROM salaries s2 WHERE s2.emp_no <= s1.emp_no AND s2.to_date = '9999-01-01') AS running_total FROM 
salaries s1 WHERE s1.to_date = '9999-01-01' ORDER BY s1.emp_no;
