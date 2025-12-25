-- Create database
CREATE DATABASE IF NOT EXISTS join_example_db;
USE join_example_db;

-- Drop tables if exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT
);
-- Insert sample data
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO employees VALUES
(101, 'Sanju', 1),
(102, 'Karthik', 2),
(103, 'Rishi', NULL);

-- RIGHT JOIN: Show all departments, even if no employee is in them
SELECT 
    d.dept_id,
    d.dept_name,
    e.emp_id,
    e.emp_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;
