-- 1. Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(50),
    grade VARCHAR(2)
);

-- 2. Insert student records
INSERT INTO students (id, name, age, course, grade) VALUES
    
(1, 'Sanjana Kumari', 20, 'BCA', 'A'),
(2, 'Ravi Kumar', 21, 'BCA', 'B'),
(3, 'Pooja Sharma', 19, 'BBA', 'A'),
(4, 'Amit Singh', 22, 'BCA', 'C'),
(5, 'Neha Verma', 20, 'BSc', 'B');

-- 3. View all student records
SELECT * FROM students;

-- 4. Update a student's grade
UPDATE students
SET grade = 'A+'
WHERE id = 4;

-- 5. Delete a student record
DELETE FROM students
WHERE id = 5;

-- 6. Find students with grade A
SELECT * FROM students
WHERE grade = 'A';
-- 7. Count total students in BCA course
SELECT COUNT(*) AS total_bca_students
FROM students
WHERE course = 'BCA';

-- 8. Get students sorted by age (youngest first)
SELECT * FROM students
ORDER BY age ASC;

