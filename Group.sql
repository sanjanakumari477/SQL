-- Count employees per department
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;
