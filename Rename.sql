-- 1. Create table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- 2. Insert data
INSERT INTO Employees (EmpID, EmpName, Department, Salary) VALUES
(1, 'John Doe', 'IT', 50000),
(2, 'Jane Smith', 'HR', 45000),
(3, 'Michael Brown', 'Finance', 60000);

-- 3. Rename column EmpName to EmployeeName
ALTER TABLE Employees 
RENAME COLUMN EmpName TO EmployeeName;

-- 4. Rename table Employees to Staff
ALTER TABLE Employees 
RENAME TO Staff;

-- 5. View renamed table data
SELECT * FROM Staff;
