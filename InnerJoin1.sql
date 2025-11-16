--SYNTAX
 SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;


EXAMPLE- SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.student_id;
