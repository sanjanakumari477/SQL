 LEFT JOIN
SELECT e.name, d.dept_name
FROM employee e
LEFT JOIN department d
ON e.dept_id = d.dept_id;
