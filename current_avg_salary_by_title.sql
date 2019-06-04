SELECT title,AVG(salary) AS `avg` 
FROM salaries AS sal INNER JOIN titles AS tit ON sal.emp_no = tit.emp_no AND sal.to_date = '9999-01-01' AND tit.to_date = '9999-01-01' 
GROUP BY title;