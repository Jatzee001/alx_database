-- List all tables in the specified database
USE `$(echo "$1")`;
SHOW TABLES;