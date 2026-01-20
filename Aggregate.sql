--A condition on aggregated data (used with GROUP BY).
Eg:
SELECT department, COUNT(*) 
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 5;
