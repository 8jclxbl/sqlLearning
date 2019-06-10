SELECT emp_t.emp_no, manager_t.manager_no, emp_t.emp_salary, manager_t.manager_salary 
FROM 
(SELECT dept.emp_no,dept.dept_no,sal.salary AS emp_salary
FROM dept_emp dept INNER JOIN salaries sal ON
dept.emp_no = sal.emp_no 
    AND sal.to_date = '9999-01-01'
    AND dept.to_date = '9999-01-01') AS emp_t 
INNER JOIN 
(SELECT manager.dept_no AS dept_no, manager.emp_no AS manager_no, sal.salary AS manager_salary 
FROM salaries sal INNER JOIN dept_manager manager ON
manager.emp_no = sal.emp_no 
    AND manager.to_date = '9999-01-01' 
    AND sal.to_date = '9999-01-01') AS manager_t 
ON emp_t.dept_no = manager_t.dept_no 
WHERE emp_salary > manager_salary;