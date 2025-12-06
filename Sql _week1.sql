 --WEEK 1 SQL LEARNING JOURNEY

SELECT 'Hello SQL World' AS welcome_message;

--creat databse 
CREATE DATABASE school_db;

--creat table 
CREATE TABLE students_db(
    student_id SERIAL,
    roll_no VARCHAR(10),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(50),
    year INT,
    marks NUMERIC(5,2),
    city VARCHAR(50)
);
--view table
SELECT * FROM students_db
ORDER BY student_id ASC;

--inserting data
INSERT INTO students_db (student_id, roll_no, first_name, last_name, age, gender, course, year, marks, city) VALUES
(1, 'R001', 'Vikram', 'Yadav', 19, 'Male', 'BCA', 2022, 69.93, 'Hyderabad'),
(2, 'R002', 'Arjun', 'Sharma', 25, 'Male', 'BCA', 2024, 99.33, 'Hyderabad'),
(3, 'R003', 'Ankit', 'Patel', 21, 'Male', 'BA', 2021, 79.11, 'Chennai'),
(4, 'R004', 'Nisha', 'Verma', 23, 'Female', 'B.Tech', 2025, 80.42, 'Lucknow'),
(5, 'R005', 'Arjun', 'Das', 18, 'Male', 'BBA', 2023, 75.27, 'Bengaluru'),
(6, 'R006', 'Nisha', 'Jain', 21, 'Female', 'BBA', 2025, 71.44, 'Hyderabad'),
(7, 'R007', 'Amit', 'Patel', 19, 'Male', 'B.Sc', 2023, 56.64, 'Delhi'),
(8, 'R008', 'Sonia', 'Gupta', 20, 'Female', 'B.Sc', 2024, 89.37, 'Chennai'),
(9, 'R009', 'Deepak', 'Sharma', 24, 'Male', 'B.Sc', 2022, 95.68, 'Chennai'),
(10, 'R010', 'Rohit', 'Sharma', 21, 'Male', 'BCA', 2023, 68.39, 'Bengaluru'),
(11, 'R011', 'Priya', 'Gupta', 19, 'Female', 'BA', 2025, 91.78, 'Mumbai'),
(12, 'R012', 'Vikram', 'Das', 22, 'Male', 'B.Com', 2025, 62.22, 'Lucknow'),
(13, 'R013', 'Amit', 'Jain', 19, 'Male', 'BCA', 2021, 90.81, 'Ahmedabad'),
(14, 'R014', 'Manish', 'Singh', 22, 'Male', 'B.Ed', 2025, 94.0, 'Mumbai'),
(15, 'R015', 'Priya', 'Das', 20, 'Female', 'B.Tech', 2025, 79.13, 'Bengaluru'),
(16, 'R016', 'Sneha', 'Reddy', 21, 'Female', 'MCA', 2025, 54.96, 'Mumbai'),
(17, 'R017', 'Pooja', 'Das', 22, 'Female', 'B.Com', 2023, 91.15, 'Jaipur'),
(18, 'R018', 'Ritu', 'Yadav', 24, 'Female', 'M.Tech', 2022, 75.47, 'Ahmedabad'),
(19, 'R019', 'Deepak', 'Patel', 22, 'Male', 'BA', 2023, 84.22, 'Hyderabad'),
(20, 'R020', 'Amit', 'Das', 21, 'Male', 'MBA', 2025, 66.69, 'Kolkata'),
(21, 'R021', 'Priya', 'Gupta', 20, 'Female', 'BA', 2024, 66.46, 'Bengaluru'),
(22, 'R022', 'Anita', 'Das', 25, 'Female', 'BBA', 2022, 60.63, 'Chennai'),
(23, 'R023', 'Ankit', 'Patel', 23, 'Male', 'BA', 2025, 79.87, 'Chennai'),
(24, 'R024', 'Vikram', 'Yadav', 20, 'Male', 'BCA', 2023, 62.17, 'Delhi'),
(25, 'R025', 'Sneha', 'Jain', 25, 'Female', 'MBA', 2022, 53.51, 'Bengaluru'),
(26, 'R026', 'Rahul', 'Yadav', 20, 'Male', 'B.Com', 2025, 55.97, 'Delhi'),
(27, 'R027', 'Kavita', 'Yadav', 24, 'Female', 'BCA', 2022, 72.69, 'Chennai'),
(28, 'R028', 'Pooja', 'Kumar', 23, 'Female', 'BCA', 2025, 52.54, 'Ahmedabad'),
(29, 'R029', 'Kavita', 'Reddy', 21, 'Female', 'MBA', 2021, 60.09, 'Mumbai'),
(30, 'R030', 'Kavita', 'Patel', 24, 'Female', 'MCA', 2021, 50.95, 'Pune'),
(31, 'R031', 'Sneha', 'Sharma', 21, 'Female', 'B.Com', 2023, 89.1, 'Kolkata'),
(32, 'R032', 'Amit', 'Jain', 21, 'Male', 'MCA', 2025, 98.23, 'Kolkata'),
(33, 'R033', 'Amit', 'Singh', 20, 'Male', 'B.Tech', 2021, 75.85, 'Jaipur'),
(34, 'R034', 'Manish', 'Sharma', 24, 'Male', 'M.Tech', 2021, 78.99, 'Jaipur'),
(35, 'R035', 'Arjun', 'Sharma', 22, 'Male', 'BBA', 2023, 57.09, 'Chennai'),
(36, 'R036', 'Deepak', 'Singh', 20, 'Male', 'B.Ed', 2022, 86.74, 'Ahmedabad'),
(37, 'R037', 'Ritu', 'Kumar', 22, 'Female', 'MCA', 2024, 55.56, 'Mumbai'),
(38, 'R038', 'Ankit', 'Singh', 19, 'Male', 'B.Sc', 2023, 58.41, 'Pune'),
(39, 'R039', 'Deepak', 'Kumar', 20, 'Male', 'BBA', 2022, 81.07, 'Chennai'),
(40, 'R040', 'Deepak', 'Reddy', 19, 'Male', 'BA', 2025, 74.89, 'Pune'),
(41, 'R041', 'Ritu', 'Jain', 18, 'Female', 'MBA', 2021, 76.24, 'Hyderabad'),
(42, 'R042', 'Rohit', 'Kumar', 24, 'Male', 'BBA', 2024, 68.58, 'Kolkata'),
(43, 'R043', 'Rohit', 'Gupta', 23, 'Male', 'B.Tech', 2023, 50.25, 'Bengaluru'),
(44, 'R044', 'Pooja', 'Das', 19, 'Female', 'M.Tech', 2023, 87.37, 'Delhi'),
(45, 'R045', 'Anita', 'Yadav', 20, 'Female', 'M.Tech', 2023, 95.22, 'Ahmedabad'),
(46, 'R046', 'Ravi', 'Yadav', 20, 'Male', 'MCA', 2024, 69.58, 'Chennai'),
(47, 'R047', 'Sonia', 'Yadav', 24, 'Female', 'MCA', 2021, 70.6, 'Mumbai'),
(48, 'R048', 'Ravi', 'Jain', 19, 'Male', 'BBA', 2025, 83.54, 'Lucknow'),
(49, 'R049', 'Kavita', 'Verma', 18, 'Female', 'MCA', 2024, 56.84, 'Chennai'),
(50, 'R050', 'Nisha', 'Reddy', 24, 'Female', 'B.Ed', 2025, 98.17, 'Bengaluru'),
(51, 'R051', 'Rohit', 'Reddy', 22, 'Male', 'BBA', 2023, 74.78, 'Chennai'),
(52, 'R052', 'Ritu', 'Singh', 21, 'Female', 'B.Ed', 2023, 82.67, 'Kolkata'),
(53, 'R053', 'Rahul', 'Das', 24, 'Male', 'MCA', 2024, 88.18, 'Kolkata'),
(54, 'R054', 'Sonia', 'Yadav', 19, 'Female', 'BCA', 2025, 52.32, 'Bengaluru'),
(55, 'R055', 'Ravi', 'Reddy', 21, 'Male', 'B.Sc', 2025, 54.22, 'Chennai'),
(56, 'R056', 'Rahul', 'Patel', 23, 'Male', 'M.Tech', 2021, 51.26, 'Mumbai'),
(57, 'R057', 'Priya', 'Kumar', 18, 'Female', 'MCA', 2022, 53.32, 'Kolkata'),
(58, 'R058', 'Meena', 'Sharma', 25, 'Female', 'BBA', 2024, 85.23, 'Kolkata'),
(59, 'R059', 'Pooja', 'Verma', 24, 'Female', 'B.Sc', 2021, 80.09, 'Lucknow'),
(60, 'R060', 'Ritu', 'Gupta', 20, 'Female', 'BCA', 2022, 86.83, 'Bengaluru'),
(61, 'R061', 'Rahul', 'Gupta', 24, 'Male', 'B.Com', 2022, 58.28, 'Jaipur'),
(62, 'R062', 'Kavita', 'Jain', 24, 'Female', 'B.Sc', 2022, 67.15, 'Hyderabad'),
(63, 'R063', 'Kavita', 'Patel', 23, 'Female', 'BA', 2022, 60.33, 'Mumbai'),
(64, 'R064', 'Karan', 'Patel', 21, 'Male', 'B.Tech', 2023, 88.75, 'Ahmedabad'),
(65, 'R065', 'Pooja', 'Yadav', 21, 'Female', 'BA', 2024, 51.01, 'Lucknow'),
(66, 'R066', 'Deepak', 'Yadav', 25, 'Male', 'MBA', 2023, 79.31, 'Delhi'),
(67, 'R067', 'Meena', 'Verma', 22, 'Female', 'MBA', 2025, 94.32, 'Chennai'),
(68, 'R068', 'Ritu', 'Verma', 21, 'Female', 'B.Tech', 2025, 83.7, 'Bengaluru'),
(69, 'R069', 'Kavita', 'Sharma', 22, 'Female', 'MCA', 2024, 54.45, 'Jaipur'),
(70, 'R070', 'Neha', 'Kumar', 19, 'Female', 'B.Sc', 2023, 70.01, 'Jaipur'),
(71, 'R071', 'Sneha', 'Sharma', 24, 'Female', 'BA', 2022, 56.58, 'Jaipur'),
(72, 'R072', 'Meena', 'Kumar', 20, 'Female', 'B.Sc', 2024, 61.98, 'Delhi'),
(73, 'R073', 'Kavita', 'Jain', 18, 'Female', 'BBA', 2021, 58.47, 'Ahmedabad'),
(74, 'R074', 'Amit', 'Verma', 18, 'Male', 'MCA', 2023, 62.53, 'Jaipur'),
(75, 'R075', 'Pooja', 'Singh', 18, 'Female', 'B.Ed', 2023, 85.55, 'Hyderabad'),
(76, 'R076', 'Suresh', 'Singh', 20, 'Male', 'BA', 2023, 86.03, 'Chennai'),
(77, 'R077', 'Kavita', 'Kumar', 25, 'Female', 'BBA', 2022, 94.81, 'Chennai'),
(78, 'R078', 'Kavita', 'Kumar', 24, 'Female', 'BCA', 2023, 53.73, 'Pune'),
(79, 'R079', 'Vikram', 'Das', 21, 'Male', 'M.Tech', 2022, 70.05, 'Lucknow'),
(80, 'R080', 'Sneha', 'Jain', 21, 'Female', 'BCA', 2025, 86.72, 'Hyderabad'),
(81, 'R081', 'Kavita', 'Das', 24, 'Female', 'B.Com', 2021, 94.19, 'Pune'),
(82, 'R082', 'Ankit', 'Kumar', 24, 'Male', 'B.Com', 2024, 90.25, 'Pune'),
(83, 'R083', 'Priya', 'Yadav', 25, 'Female', 'B.Tech', 2023, 74.31, 'Hyderabad'),
(84, 'R084', 'Suresh', 'Patel', 19, 'Male', 'B.Sc', 2023, 59.61, 'Ahmedabad'),
(85, 'R085', 'Ritu', 'Verma', 24, 'Female', 'B.Ed', 2023, 73.42, 'Jaipur'),
(86, 'R086', 'Anita', 'Kumar', 19, 'Female', 'MCA', 2023, 56.39, 'Jaipur'),
(87, 'R087', 'Amit', 'Patel', 22, 'Male', 'B.Ed', 2024, 64.88, 'Lucknow'),
(88, 'R088', 'Rohit', 'Verma', 23, 'Male', 'BA', 2025, 78.94, 'Hyderabad'),
(89, 'R089', 'Ritu', 'Jain', 22, 'Female', 'BCA', 2023, 60.27, 'Jaipur'),
(90, 'R090', 'Rahul', 'Jain', 18, 'Male', 'B.Com', 2023, 58.56, 'Kolkata'),
(91, 'R091', 'Sneha', 'Yadav', 24, 'Female', 'B.Sc', 2024, 74.95, 'Delhi'),
(92, 'R092', 'Rohit', 'Jain', 19, 'Male', 'BBA', 2022, 76.28, 'Lucknow'),
(93, 'R093', 'Neha', 'Gupta', 24, 'Female', 'MBA', 2022, 69.02, 'Lucknow'),
(94, 'R094', 'Vikram', 'Sharma', 22, 'Male', 'B.Tech', 2024, 54.95, 'Lucknow'),
(95, 'R095', 'Meena', 'Patel', 19, 'Female', 'MBA', 2024, 85.6, 'Kolkata'),
(96, 'R096', 'Suresh', 'Jain', 24, 'Male', 'B.Sc', 2021, 94.67, 'Pune'),
(97, 'R097', 'Sneha', 'Patel', 25, 'Female', 'B.Ed', 2024, 54.42, 'Hyderabad'),
(98, 'R098', 'Sneha', 'Patel', 24, 'Female', 'B.Com', 2022, 72.56, 'Ahmedabad'),
(99, 'R099', 'Nisha', 'Gupta', 23, 'Female', 'BCA', 2023, 80.58, 'Lucknow'),
(100, 'R100', 'Nisha', 'Das', 25, 'Female', 'BCA', 2022, 61.9, 'Lucknow');

BEGIN;

DELETE FROM students_db
WHERE student_id = 45;

-- check result
SELECT * FROM students_db WHERE student_id = 45;

-- to recover (undo delete)
ROLLBACK;

-- Update scholarship status based on business logic (age criteria)
UPDATE students_db
SET scholarship_status = CASE 
    WHEN age >= 20 THEN 'Received scholarship'
    ELSE'Not received scholarship'
END;

-- Add new column for email addresses

ALTER TABLE students_db 
ADD COLUMN email_id VARCHAR(100);

--remove column
 ALTER TABLE students_db 
DROP COLUMN email_id;

--update data
UPDATE students_db 
SET first_name ='sunidhi',
last_name ='sharma'
WHERE student_id=72;

SELECT
    roll_no,
    COALESCE(scholarship_status, 'No form submitted') AS scholarship_status
FROM students_db;

-- Handle NULL values in scholarship status
UPDATE students_db
SET scholarship_status = 'No Form submitted' 
WHERE scholarship_status IS NULL;

--Delete table without backup 
TRUNCATE TABLE students_db;

SELECT * FROM students_db
WHERE marks IS NOT NULL;

--Generate automatic email addresses for students
UPDATE students_db
SET email_id = LOWER(CONCAT(first_name, '.', roll_no, '@college.edu')) ;

SELECT email_id FROM students_db;

SELECT   first_name,age,course,marks,city
FROM students_db 
WHERE scholarship_status = 'Not Form submitted';

ALTER TABLE students_db 
ADD COLUMN email_id VARCHAR(100);

SELECT * FROM students_db ORDER BY course DESC LIMIT 10;

SELECT first_name,last_name,email_id FROM students_db 
WHERE email_id IS NULL;

-- Add column for course end date
ALTER TABLE students_db
ADD COLUMN course_end_date DATE;

 
UPDATE students_db
SET course_end_date =
    CASE
        WHEN course IN ('BCA', 'BBA', 'BA', 'B.Com', 'B.Sc', 'B.Ed') THEN CURRENT_DATE + INTERVAL '3 years'
        WHEN course = 'B.Tech' THEN CURRENT_DATE + INTERVAL '4 years'
        WHEN course IN ('MCA', 'M.Tech', 'MBA') THEN CURRENT_DATE + INTERVAL '2 years'
        ELSE CURRENT_DATE + INTERVAL '1 year'
    END;

SELECT CONCAT (first_name||' ' ||last_name) as full_name
FROM students_db;


SELECT student_id, first_name, last_name, age
FROM students_db
WHERE age BETWEEN 18 AND 22;


SELECT COUNT(*) AS no_scholorship
FROM students_db
WHERE scholarship_status='Not received scholarship';





