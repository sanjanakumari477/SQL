CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Grade CHAR(2),
    Marks DECIMAL(5,2)
);
--viewing 
SELECT * FROM Student;

-- change table name 
ALTER TABLE Student 
RENAME TO BCA Students;
