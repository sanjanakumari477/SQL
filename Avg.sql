Find students who scored above average marks
Ans:
SELECT name, marks 
FROM Students
WHERE marks > (SELECT AVG(marks) FROM Students);
