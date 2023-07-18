-- Removing Duplicate Rows: Identify and remove duplicate rows in a table.
DELETE FROM table_name
WHERE column1, column2, ... IN (
    SELECT column1, column2, ...
    FROM table_name
    GROUP BY column1, column2, ...
    HAVING COUNT(*) > 1
);

-- Removing Null or Empty Values: Remove rows with null or empty values in specific columns.
DELETE FROM table_name
WHERE column_name IS NULL OR column_name = '';


-- Trimming Whitespace: Remove leading and trailing whitespace from text columns.
UPDATE table_name
SET column_name = TRIM(column_name);

-- Changing Data Types: Convert data types of columns as needed.
ALTER TABLE table_name
ALTER COLUMN column_name
SET DATA TYPE new_data_type;

-- Handling Missing Values: Replace null or empty values with a default value or a specific placeholder.
UPDATE table_name
SET column_name = 'default_value'
WHERE column_name IS NULL OR column_name = '';


-- Standardizing Text Case: Convert text values to a consistent case (e.g., uppercase or lowercase).
UPDATE table_name
SET column_name = UPPER(column_name); -- or LOWER(column_name)

-- Parsing and Splitting Columns: Splitting a column into multiple columns based on delimiters or extracting specific parts of a column using string functions.
SELECT
    SUBSTRING_INDEX(column_name, ',', 1) AS column1,
    SUBSTRING_INDEX(SUBSTRING_INDEX(column_name, ',', 2), ',', -1) AS column2,
    ...
FROM table_name;