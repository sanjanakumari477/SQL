TCL (Transaction Control Language) is used to manage transactions in a database.
A transaction is a logical unit of work that consists of one or more SQL statements.

TCL ensures data consistency, integrity, and reliability.

 ACID Properties 
-----------------
Every transaction follows ACID properties:

Property	Meaning
A – Atomicity	Transaction is all or nothing
C – Consistency	Database remains valid after transaction
I – Isolation	Concurrent transactions don’t interfere
D – Durability	Changes are permanent after commit

/*========================================================
  TRANSACTION CONTROL LANGUAGE (TCL)
  --------------------------------------------------------
  TCL is used to control database transactions.
  It manages changes made by DML commands
  such as INSERT, UPDATE, and DELETE.
========================================================*/


/*========================================================
  1. COMMIT
  --------------------------------------------------------
  - COMMIT saves all changes permanently in the database
  - Once COMMIT is executed, changes cannot be rolled back
  - Used when a transaction is completed successfully
========================================================*/

INSERT INTO employees VALUES (101, 'Sanjana', 'Data Analyst', 50000);
COMMIT;



/*========================================================
  2. ROLLBACK
  --------------------------------------------------------
  - ROLLBACK undoes all changes made after the last COMMIT
  - Used when an error occurs or changes are incorrect
  - Database returns to its previous stable state
========================================================*/

UPDATE employees
SET salary = 60000
WHERE emp_id = 101;

ROLLBACK;



/*========================================================
  3. SAVEPOINT
  --------------------------------------------------------
  - SAVEPOINT creates a checkpoint within a transaction
  - Allows partial rollback instead of full rollback
  - Useful in long and complex transactions
========================================================*/

INSERT INTO employees VALUES (102, 'Ravi', 'Developer', 45000);
SAVEPOINT sp1;

INSERT INTO employees VALUES (103, 'Neha', 'Tester', 40000);
SAVEPOINT sp2;



/*========================================================
  4. ROLLBACK TO SAVEPOINT
  --------------------------------------------------------
  - Rolls back the transaction to a specific SAVEPOINT
  - Changes made before the SAVEPOINT are not affected
========================================================*/

ROLLBACK TO sp1;



/*========================================================
  5. RELEASE SAVEPOINT (Database dependent)
  --------------------------------------------------------
  - Removes a SAVEPOINT from the transaction
  - After release, rollback to that SAVEPOINT is not possible
========================================================*/

RELEASE SAVEPOINT sp1;



/*========================================================
  6. SET TRANSACTION
  --------------------------------------------------------
  - Defines transaction properties
  - Commonly used to set transaction isolation levels
========================================================*/

SET TRANSACTION READ ONLY;

SET TRANSACTION READ WRITE;



/*========================================================
  DIFFERENCE: TCL vs DML
  --------------------------------------------------------
  DML: INSERT, UPD
