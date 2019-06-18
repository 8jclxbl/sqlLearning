UPDATE salaries SET salary = salary * 1.1 WHERE emp_no IN (SELECT emp_no FROM emp_bonus);
