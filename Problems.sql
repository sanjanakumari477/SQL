--Write SQL to find the second highest salary in a table.

SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);
