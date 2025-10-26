Select * from students_db;

--Case Stmt : It is used to conditinal logic , as like similar to to if-else in programing language. 

SELECT 
    first_name,
    age,
    CASE 
        WHEN age >= 22 THEN 'Received Scholarship'
        ELSE 'Not Received Scholarship'
    END AS scholarship_status
FROM students_db;

