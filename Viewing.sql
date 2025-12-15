Viewing means retrieving data from database tables so you can see, analyze, or verify records. This is mainly done using the SELECT statement.
  
-- View All Data from a Table
    SELECT * 
    FROM employees;

--View Specific Columns
    SELECT employee_id, employee_name, salary
    FROM employees;

--View Data with a Condition (Filtered View)
    SELECT employee_id, employee_name, department
    FROM employees
    WHERE department = 'IT';
