Sample Table: `employees`

| id | name    | department | salary |
| -- | ------- | ---------- | ------ |
| 1  | Alice   | HR         | 50000  |
| 2  | Bob     | IT         | 60000  |
| 3  | Charlie | IT         | 55000  |
| 4  | Diana   | Marketing  | 52000  |


1. **Select All Records

SELECT * FROM employees;


> Retrieves all columns and rows from the table.

 2. **Select Specific Columns**

SELECT name, salary FROM employees;


> Retrieves only the `name` and `salary` columns.

### 3. **WHERE Clause (Filter Rows)**


SELECT * FROM employees
WHERE department = 'IT';


> Shows only employees in the IT department.

---

### 4. **ORDER BY Clause (Sort Results)**

SELECT * FROM employees
ORDER BY salary DESC;


> Sorts employees by salary from highest to lowest.


### 5. **INSERT INTO (Add New Record)**

INSERT INTO employees (name, department, salary)
VALUES ('Eve', 'HR', 48000);


> Adds a new employee record to the table.


### 6. **UPDATE (Modify Existing Records)**

UPDATE employees
SET salary = 58000
WHERE name = 'Alice';
```

> Changes Alice’s salary to 58000.



### 7. **DELETE (Remove Records)**

DELETE FROM employees
WHERE name = 'Diana';


> Removes Diana from the table.

### 8. **COUNT (Aggregate Function)**

  
SELECT COUNT(*) FROM employees;

> Counts the total number of employees.


### 9. **GROUP BY (Summarize Data)**

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


> Shows average salary for each department.

### 10. **LIKE (Pattern Matching)**

SELECT * FROM employees
WHERE name LIKE 'A%';

> Finds employees whose names start with "A".

