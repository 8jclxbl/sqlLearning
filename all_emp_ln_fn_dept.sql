SELECT last_name,first_name,dept_no 
FROM employees AS emp LEFT JOIN dept_emp as dept 
ON emp.emp_no = dept.emp_no;