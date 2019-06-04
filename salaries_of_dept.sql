SELECT s.* ,d.dept_no
FROM salaries AS s 
JOIN dept_manager AS d 
ON s.emp_no=d.emp_no
WHERE s.to_date = '9999-01-01'
    AND    d.to_date='9999-01-01';