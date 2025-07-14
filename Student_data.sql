-- Step 1: Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Marks INT
);

-- Step 2: Insert data into the Students table
INSERT INTO Students (StudentID, Name, Age, Marks) VALUES
(1, 'Aman', 20, 88),
(2, 'Rohan', 21, 72),
(3, 'Aarav', 19, 95),
(4, 'Anjali', 20, 67),
(5, 'Vikram', 22, 78);

-- Step 3: Retrieve students who scored more than 75 marks
SELECT * FROM Students
WHERE Marks > 75;

----OUTPUT

| StudentID | Name   | Age | Marks |
| --------- | ------ | --- | ----- |
| 1         | Aman | 20  | 88    |
| 3         | Aarav  | 19  | 95    |
| 5         | Vikram | 22  | 78    |
