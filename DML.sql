--  Create a new database named 'company'

CREATE DATABASE company;

-- Switch to the 'company' database (for some DBMS you might need to run: USE company;)


--  Create the 'employee' table with required columns

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,       -- Unique ID for each employee
    name VARCHAR(100) NOT NULL,        -- Employee name, cannot be NULL
    position VARCHAR(50),              -- Job position
    department VARCHAR(50),            -- Department name
    hire_date DATE,                    -- Hire date
    salary NUMERIC(10, 2)              -- Salary with 2 decimal places
);

--  View all data in the 'employee' table
SELECT * FROM employee;

--  Insert multiple rows into 'employee' table
INSERT INTO employee (employee_id, name, position, department, hire_date, salary)
VALUES
    (101, 'sanju', 'Data Analyst', 'Data Science', '2022-05-15', 60000.00),
    (102, 'krishna', 'Software Engineer', 'IT', '2021-09-20', 65000.00),
    (103, 'priya', 'HR Manager', 'Human Resources', '2019-03-10', 86000.00),
    (104, 'ayesha', 'Marketing Specialist', 'Marketing', '2020-11-25', 45000.00),
    (105, 'ashwini', 'Sales Executive', 'Sales', '2023-02-12', 60000.00);

-- ⚠ This will fail if employee_id 105 already exists (PRIMARY KEY must be unique)

INSERT INTO employee (employee_id, name, position, department, hire_date, salary)
VALUES (105, 'ashwini', 'Sales Executive', 'Sales', '2023-02-12', 60000.00);

--  Delete the row with employee_id = 105

DELETE FROM employee
WHERE employee_id = 105;

--  Drop the 'salary' column from 'employee' table

ALTER TABLE employee
DROP COLUMN salary;

--  Drop 'employee2' table if it exists (clean up)

DROP TABLE IF EXISTS employee2;

--  Drop the whole 'company' database if it exists

DROP DATABASE IF EXISTS company;

--  Add the 'salary' column back to 'employee' table
ALTER TABLE employee
ADD salary DECIMAL(10, 2);

--  Update position for employee_id = 104
UPDATE employee 
SET position = 'Sales Manager' 
WHERE employee_id = 104;

--  Re-insert the deleted row with employee_id = 105
INSERT INTO employee (employee_id, name, position, department, hire_date, salary)
VALUES (105, 'ashwini', 'Sales Executive', 'Sales', '2023-02-12', 60000.00);

-- View final table data
SELECT * FROM employee;


