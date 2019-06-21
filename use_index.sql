-- sqlite写法
SELECT * FROM salaries INDEXED BY idx_emp_no WHERE emp_no = 10005;

-- mysql写法
SELECT * FROM salaries FORCE INDEX idx_emp_no WHERE emp_no = 10005;
