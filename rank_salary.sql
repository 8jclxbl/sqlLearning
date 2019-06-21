SELECT s1.emp_no, s1.salary, COUNT(DISTINCT s2.salary) AS rank
FROM salaries AS s1, salaries AS s2
WHERE s1.to_date = '9999-01-01'  AND s2.to_date = '9999-01-01' AND s1.salary <= s2.salary
GROUP BY s1.emp_no
ORDER BY s1.salary DESC, s1.emp_no ASC;

-- 针对小规模数据比较好，大规模还是用变量比较好。


SELECT emp_no,salary,
@rank := @rank + (@pre <> (@pre := salary)) Rank
FROM salaries, (SELECT @rank := 0, @pre := -1) INIT
WHERE to_date = '9999-01-01'
group by emp_no
order by salary; 
