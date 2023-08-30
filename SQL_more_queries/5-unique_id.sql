-- Create the database if not exists
CREATE DATABASE IF NOT EXISTS hbtn_test_db_5;

-- Use the specified database
USE hbtn_test_db_5;

-- Create table unique_id if not exists
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);