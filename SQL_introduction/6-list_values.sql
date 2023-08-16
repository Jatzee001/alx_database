-- Use a table that doesn't exist to suppress output
CREATE TEMPORARY TABLE IF NOT EXISTS temp_suppress_output AS (
    SELECT * FROM non_existing_table WHERE 1 = 0
);

-- List all rows from first_table
INSERT INTO temp_suppress_output SELECT * FROM first_table;