SELECT last_name,first_name,dept_no 
FROM 
((SELECT emp_no,dept_no FROM dept_emp) AS dept 
INNER JOIN employees AS emp ON dept.emp_no = emp.emp_no);