-- Create database hbtn_0d_usa if not exists
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create table cities if not exists
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL
);

-- List cities of California
SELECT cities.id, cities.name
FROM cities, states
WHERE cities.state_id = states.id AND states.name = 'California'
ORDER BY cities.id ASC;