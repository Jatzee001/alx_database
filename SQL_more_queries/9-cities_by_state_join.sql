-- This script assumes you're passing the database name as an argument
-- Replace 'hbtn_0d_usa' with the actual database name in the command line

-- List cities with their respective states
SELECT cities.id, cities.name, states.name
FROM cities, states
WHERE cities.state_id = states.id
ORDER BY cities.id ASC;