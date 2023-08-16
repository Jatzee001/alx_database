-- Create a temporary table to suppress output
CREATE TEMPORARY TABLE IF NOT EXISTS temp_suppress_output AS (
    SELECT * FROM first_table WHERE 1 = 0
);

-- List all rows from first_table
INSERT INTO temp_suppress_output SELECT * FROM first_table;