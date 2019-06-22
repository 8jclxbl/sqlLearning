SELECT emp.emp_no,emp.first_name,emp.last_name,eb.btype,sal.salary,
(CASE eb.btype
WHEN 1 THEN sal.salary*0.1
WHEN 2 THEN sal.salary*0.2
ELSE sal.salary*0.3 END) AS bonus
FROM employees emp INNER JOIN emp_bonus eb ON emp.emp_no=eb.emp_no INNER JOIN salaries sal ON
sal.emp_no=emp.emp_no and sal.to_date = '9999-01-01';
