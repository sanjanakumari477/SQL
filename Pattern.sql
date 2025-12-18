Pattern Print in Asc 

WITH RECURSIVE pattern AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n - 1
    FROM pattern
    WHERE n > 1
)
SELECT REPEAT('* ', n) AS pattern
FROM pattern
ORDER BY n asc;

EX- *
    **
    ***
    ****
    *****
