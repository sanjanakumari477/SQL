Subquery
SELECT * FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);
