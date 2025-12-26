 RIGHT JOIN
SELECT e.name, d.dept_name
FROM employee e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;
