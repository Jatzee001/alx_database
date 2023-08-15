-- List the columns and their data types of the table first_table in the specified database
SELECT COLUMN_NAME, DATA_TYPE
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = '$1' AND TABLE_NAME = 'first_table';