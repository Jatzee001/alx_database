-- Replace 'your_database_name' with the actual database name where you want to create the table
USE your_database_name;

-- Create table force_name if not exists
CREATE TABLE IF NOT EXISTS force_name (
    id INT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);