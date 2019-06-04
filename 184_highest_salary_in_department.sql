SELECT 
    dep.Name AS Department,
    emp.Name AS Employee,
    emp.Salary 
FROM 
    Employee AS emp JOIN Department AS dep ON emp.DepartmentId = dep.Id 
WHERE
    emp.DepartmentId=dep.id 
    AND
    (emp.Salary,emp.DepartmentId) IN (SELECT MAX(Salary),DepartmentId FROM Employee GROUP BY DepartmentId);
