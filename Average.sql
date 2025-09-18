Q. Find employees who earn more than average salary
SELECT * 
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
