-- Use a table that doesn't exist to suppress output
CREATE TEMPORARY TABLE IF NOT EXISTS temp_suppress_output AS (
    SELECT * FROM non_existing_table WHERE 1 = 0
);

-- Show the list of tables in the specified database
INSERT INTO temp_suppress_output SELECT table_name FROM information_schema.tables WHERE table_schema = 'your_database_name';