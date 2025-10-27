--A condition on aggregated data (used with GROUP BY).

--Example:
SELECT department, COUNT(*) 
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 5;
