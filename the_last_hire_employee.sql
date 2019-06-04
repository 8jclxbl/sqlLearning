SELECT * 
FROM employees 
WHERE 
    hire_date = (select max(hire_date) from employees);

SELECT * 
FROM employees 
ORDER BY hire_date DESC LIMIT 1;