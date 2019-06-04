SELECT emp.emp_no,sal.salary
FROM employees as emp INNER JOIN  salaries AS sal
ON sal.emp_no = emp.emp_no and sal.from_date = emp.hire_date
ORDER BY emp.emp_no DESC;