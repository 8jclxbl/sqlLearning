-- sqlite
SELECT d.dept_no ,dept.dept_name,COUNT(salary) FROM salaries s ,dept_emp d,departments dept
WHERE s.emp_no = d.emp_no AND d.dept_no=dept.dept_no GROUP BY dept.dept_no;

-- 根据题意应有的结果
SELECT
    d.dept_no,
    d.dept_name,
    (SELECT
         SUM((SELECT
                 SUM((SELECT
                     CASE
                         -- 记录数为0说明是第一条记录（原来的答案里有这一条，测试后发现加上去答案和预期不符）
                         -- when count(*) = 0 then 0
                         -- 最近一次工资变化比当前工资低判定为涨工资
			WHEN s0.salary < s.salary THEN 1
                         -- 其他情况判定为不是涨工资
			ELSE 0 END
                     -- 查询最近一次工资变化情况
                     FROM salaries s0 WHERE s0.emp_no = s.emp_no AND s0.to_date < s.to_date ORDER BY s0.to_date DESC limit 1))
             -- 查询出每个成员的每次工资变化情况
             FROM salaries s WHERE s.emp_no = de.emp_no))
     -- 查询出部门中的每个成员
     FROM dept_emp de WHERE de.dept_no = d.dept_no) AS sum
FROM departments d;

