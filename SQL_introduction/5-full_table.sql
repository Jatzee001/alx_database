-- Use a table that doesn't exist to suppress output
CREATE TEMPORARY TABLE IF NOT EXISTS temp_suppress_output AS (
    SELECT * FROM non_existing_table WHERE 1 = 0
);

-- Show the CREATE TABLE statement for first_table
INSERT INTO temp_suppress_output SELECT * FROM information_schema.tables WHERE table_schema = 'hbtn_0c_0' AND table_name = 'first_table';