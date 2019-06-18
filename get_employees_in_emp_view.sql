SELECT * FROM employees et WHERE et.emp_no IN (SELECT emp_no FROM emp_v);
