-- MySQL/MariaDB:
SELECT column1, column2, ...
INTO OUTFILE '/path/to/file.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM table_name
LIMIT 1000; -- Adjust the LIMIT as needed for your desired sample size

--PostgreSQL:
COPY (
    SELECT column1, column2, ...
    FROM table_name
    LIMIT 1000 -- Adjust the LIMIT as needed for your desired sample size
) TO '/path/to/file.csv' WITH CSV HEADER;


--Microsoft SQL Server:
SELECT column1, column2, ...
INTO OUTFILE 'C:\path\to\file.csv'
FROM table_name
OFFSET 0 ROWS -- Starting row for the sample
FETCH NEXT 1000 ROWS ONLY; -- Adjust the FETCH NEXT value as needed for your desired sample size

--Oracle:
SPOOL 'C:\path\to\file.csv'
SET PAGESIZE 0
SET FEEDBACK OFF
SELECT column1 || ',' || column2 || ',' || ...
FROM table_name
WHERE ROWNUM <= 1000 -- Adjust the ROWNUM value as needed for your desired sample size