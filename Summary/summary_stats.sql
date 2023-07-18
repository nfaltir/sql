-- COUNT: Returns the number of rows in a specified table or a result set.
SELECT COUNT(column_name) FROM table_name;

--SUM: Calculates the sum of values in a specified column.
SELECT SUM(column_name) FROM table_name;

--AVG: Calculates the average (mean) of values in a specified column.
SELECT AVG(column_name) FROM table_name;

--MIN: Retrieves the minimum value from a specified column.
SELECT MIN(column_name) FROM table_name;

--MAX: Retrieves the maximum value from a specified column.
SELECT MAX(column_name) FROM table_name;

--GROUP BY with COUNT, SUM, AVG, MIN, MAX: Provides summary statistics based on groups defined by one or more columns.
SELECT column_name, COUNT(*), SUM(column_name), AVG(column_name), MIN(column_name), MAX(column_name)
FROM table_name
GROUP BY column_name;