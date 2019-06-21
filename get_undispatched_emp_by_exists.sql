SELECT * 
FROM employees AS e 
WHERE NOT EXISTS 
    (SELECT emp_no FROM dept_emp AS de WHERE de.emp_no = e.emp_no);