SELECT sal_count.* FROM(
SELECT emp_no,COUNT(*) AS sal_count
FROM salaries
GROUP BY emp_no) AS sal_gt
WHERE sal_gt>15;