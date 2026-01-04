CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (EmpID, Name, Department, Salary) VALUES
(1, 'Sanjana Kumari', 'HR', 35000),
(2, 'Ravi Kumar', 'IT', 48000),
(3, 'Anjali Sharma', 'Finance', 52000),
(4, 'Amit Verma', 'IT', 45000),
(5, 'Riya Das', 'HR', 30000);

SELECT * FROM Employees;

--Calculate the avrg salary 
SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT Department, AVG(Salary) AS AvgDeptSalary
FROM Employees
GROUP BY Department;



Department   | AvgDeptSalary
-------------|---------------
HR           | 32500.00
IT           | 46500.00
Finance      | 52000.00
