-- INNER JOIN: Retrieves records that have matching values in both tables.
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;


--LEFT JOIN (or LEFT OUTER JOIN): Retrieves all records from the left table and matching records from the right table.
SELECT column_name(s)
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;


--RIGHT JOIN (or RIGHT OUTER JOIN): Retrieves all records from the right table and matching records from the left table.
SELECT column_name(s)
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;

--FULL JOIN (or FULL OUTER JOIN): Retrieves all records when there is a match in either the left or right table.
SELECT column_name(s)
FROM table1
FULL JOIN table2 ON table1.column_name = table2.column_name;

--SELF JOIN: Joins a table to itself, typically used when a table has a hierarchical structure or when comparing rows within the same table.
SELECT column_name(s)
FROM table1
JOIN table1 AS table2 ON table1.column_name = table2.column_name;


--CROSS JOIN (or Cartesian Join): Retrieves the Cartesian product of two tables, combining each row from the first table with every row from the second table.
SELECT column_name(s)
FROM table1
CROSS JOIN table2;







