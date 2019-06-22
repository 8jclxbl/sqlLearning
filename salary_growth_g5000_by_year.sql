SELECT s1.emp_no, s1.from_date,(s1.salary - s2.salary) AS salary_growth
FROM salaries AS s1, salaries AS s2 
WHERE 
    s1.emp_no = s2.emp_no AND 
    strftime('%Y',s1.to_date) - strftime('%Y',s2.to_date) = 1 
    AND s1.salary - s2.salary > 5000 
ORDER BY salary_growth DESC;
