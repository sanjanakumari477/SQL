Q.Students & Courses (JOIN Example)
Students – who are enrolled
Courses – which they study
Ans:-
-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Insert into Students
INSERT INTO Students (StudentID, Name) VALUES
(1, 'Amit'),
(2, 'Sneha'),
(3, 'Rahul');

-- Insert into Courses
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES
(101, 'Maths', 1),
(102, 'Science', 2),
(103, 'English', 1),
(104, 'History', 3);
