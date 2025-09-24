CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


 --Inseting data on both table 

INSERT INTO Students (student_id, name, age, department) VALUES
(1, 'Amit', 20, 'Computer Science'),
(2, 'Sanjana', 21, 'Data Science'),
(3, 'Ravi', 22, 'IT');

INSERT INTO Marks (mark_id, student_id, subject, marks) VALUES
(1, 1, 'Math', 85),
(2, 1, 'English', 78),
(3, 2, 'Math', 90),
(4, 2, 'English', 95),
(5, 3, 'Math', 70),
(6, 3, 'English', 65);



