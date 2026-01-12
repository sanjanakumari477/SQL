What is JOIN?

JOIN is used to combine rows from two or more tables based on a related column between them.

👉 Example:
We have two tables:

STUDENT

Stu_ID	Name	Dept_ID
1	Rahul	101
2	Neha	102
3	Amit	103

DEPARTMENT

Dept_ID	Dept_Name
101	CSE
102	IT
104	ECE

To find student name with department name, we use JOIN.

🔷 Types of JOIN in SQL
1️⃣ INNER JOIN

Returns only the matching records from both tables.

Syntax

SELECT Name, Dept_Name
FROM STUDENT
INNER JOIN DEPARTMENT
ON STUDENT.Dept_ID = DEPARTMENT.Dept_ID;


Result

Name	Dept_Name
Rahul	CSE
Neha	IT

❌ Amit not shown because Dept_ID 103 is not in DEPARTMENT.

2️⃣ LEFT JOIN (LEFT OUTER JOIN)

Returns all records from left table and matching from right table.
If no match → NULL.

SELECT Name, Dept_Name
FROM STUDENT
LEFT JOIN DEPARTMENT
ON STUDENT.Dept_ID = DEPARTMENT.Dept_ID;

Name	Dept_Name
Rahul	CSE
Neha	IT
Amit	NULL
3️⃣ RIGHT JOIN (RIGHT OUTER JOIN)

Returns all records from right table and matching from left.

SELECT Name, Dept_Name
FROM STUDENT
RIGHT JOIN DEPARTMENT
ON STUDENT.Dept_ID = DEPARTMENT.Dept_ID;

Name	Dept_Name
Rahul	CSE
Neha	IT
NULL	ECE
4️⃣ FULL JOIN (FULL OUTER JOIN)
Returns all records from both tables.
If no match → NULL.

Name	Dept_Name
Rahul	CSE
Neha	IT
Amit	NULL
NULL	ECE
5️⃣ CROSS JOIN

Returns all possible combinations of rows from both tables.
If STUDENT has 3 rows and DEPARTMENT has 3 rows
→ Result = 3 × 3 = 9 rows

SELECT Name, Dept_Name
FROM STUDENT
CROSS JOIN DEPARTMENT;

6️⃣ SELF JOIN

A table is joined with itself.
Example: Employee table where one employee is manager of another.

Emp_ID	Name	Manager_ID
1	A	NULL
2	B	1
3	C	1

To find employee & manager:

SELECT E1.Name AS Employee, E2.Name AS Manager
FROM EMP E1
JOIN EMP E2
ON E1.Manager_ID = E2.Emp_ID;

🔷 Quick Exam Trick 🧠
JOIN Type	Meaning
INNER	Only matching
LEFT	All left + matching
RIGHT	All right + matching
FULL	All from both
CROSS	All combinations
SELF	Table with itself
