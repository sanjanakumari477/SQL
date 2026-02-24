## 🔹 Sample Tables

### Employees Table
| emp_id | emp_name | dept_id | salary |
|------|---------|--------|--------|
| 1 | Rahul | 101 | 50000 |
| 2 | Neha | 102 | 60000 |
| 3 | Aman | 103 | 55000 |
| 4 | Pooja | NULL | 45000 |

### Departments Table
| dept_id | dept_name |
|-------|-----------|
| 101 | HR |
| 102 | IT |
| 104 | Finance |

---

## 1️ INNER JOIN

###  Theory
Returns only the rows where there is a match in both tables.

### Query
```sql
SELECT e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;
