SELECT first_name FROM (SELECT emp.first_name,@row_num := @row_num + 1 AS rowNum FROM (SELECT first_name FROM employees ORDER BY first_name) emp, (SELECT @row_num := 0) rn) t WHERE t.rowNum % 2 = 1;  

SELECT e1.first_name FROM 
  (SELECT e2.first_name, 
    (SELECT COUNT(*) FROM employees AS e3 
     WHERE e3.first_name <= e2.first_name) 
   AS rowid FROM employees AS e2) AS e1
WHERE e1.rowid % 2 = 1