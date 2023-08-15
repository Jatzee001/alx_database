-- Print the full description of the table first_table
SELECT 'Table   Create Table';
SELECT CONCAT(TABLE_NAME, ' ', CREATE_TABLE_STMT)
FROM (
    SELECT TABLE_NAME, CREATE_TABLE_STMT
    FROM information_schema.TABLES
    WHERE TABLE_SCHEMA = '$1' AND TABLE_NAME = 'first_table'
) AS t;