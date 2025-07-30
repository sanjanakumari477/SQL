SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
