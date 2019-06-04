SELECT title,COUNT(title) FROM titles GROUP BY title;
-- delete duplicates
SELECT title,COUNT(title) FROM (SELECT DISTINCT emp_no,title FROM titles) AS tit GROUP BY title;