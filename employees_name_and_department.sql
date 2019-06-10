SELECT emp.last_name,emp.first_name,dept.dept_name 
FROM 
    (employees emp LEFT JOIN dept_emp dept_e ON emp.emp_no = dept_e.emp_no) 
    LEFT JOIN departments dept ON dept_e.dept_no = dept.dept_no; 