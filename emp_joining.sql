-- Get all employees who joined in 2023.
Ans:-
SELECT * 
FROM employees
WHERE YEAR(joining_date) = 2023;
