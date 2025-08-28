-- Step 1: Create the Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

-- Step 2: Insert records into Employees table
INSERT INTO Employees (EmpID, Name, Department, Salary) VALUES
(101, 'Amit', 'IT', 50000),
(102, 'Neha', 'HR', 38000),
(103, 'Raj', 'Finance', 45000),
(104, 'Priya', 'Marketing', 32000),
(105, 'Karan', 'IT', 60000);

-- Step 3: Display employees with salary > ₹40,000
SELECT * FROM Employees
WHERE Salary > 40000;



--OUTPUT--
| EmpID | Name  | Department | Salary |
| ----- | ----- | ---------- | ------ |
| 101   | Amit  | IT         | 50000  |
| 103   | Raj   | Finance    | 45000  |
| 105   | Karan | IT         | 60000  |

