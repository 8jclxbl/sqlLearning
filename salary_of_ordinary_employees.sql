SELECT dept.dept_no, t.emp_no, t.salary FROM
(SELECT e.emp_no,salary FROM 
    (SELECT emp_no 
    FROM employees emp 
    WHERE emp.emp_no NOT IN (SELECT emp_no FROM dept_manager)) AS e
    INNER JOIN salaries sal ON e.emp_no = sal.emp_no AND sal.to_date = '9999-01-01') t
    INNER JOIN dept_emp dept ON dept.emp_no = t.emp_no;