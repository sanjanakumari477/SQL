-- 1. Create a database (optional)
CREATE DATABASE CompanyDB;

-- 2. Use the database
USE CompanyDB;

-- 3. Create a table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50)
);

-- 4. Insert records into the table
INSERT INTO Employees (EmpID, EmpName, Department, City) VALUES
(1, 'Sanjana Kumari', 'HR', 'Delhi'),
(2, 'Rajesh Kumar', 'IT', 'Mumbai'),
(3, 'Priya Sharma', 'Finance', 'Delhi'),
(4, 'Ravi Singh', 'IT', 'Bangalore'),
(5, 'Sandeep Kaur', 'HR', 'Chennai');

-- 5. Use LIKE operation to search

-- Find employees whose name starts with 'San'
SELECT * FROM Employees
WHERE EmpName LIKE 'San%';

-- 6. Find employees from cities ending with 'i'
SELECT * FROM Employees
WHERE City LIKE '%i';

-- 7. Find employees where department contains 'IT'
SELECT * FROM Employees
WHERE Department LIKE '%IT%';
