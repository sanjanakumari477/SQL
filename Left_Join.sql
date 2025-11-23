Q.Get all employees and their department names, including those who don’t belong to any department.
Ans:- 
SELECT e.employee_id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;
