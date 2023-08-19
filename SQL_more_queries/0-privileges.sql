-- MySQL connection configuration
MYSQL_CMD="mysql -hlocalhost -uroot -p"

-- Create user and grant privileges
echo "Creating user 'user_0d_1' and granting privileges..."
echo "CREATE USER 'user_0d_1'@'localhost';" | $MYSQL_CMD
echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';" | $MYSQL_CMD

-- Execute SQL commands from 0-privileges.sql
echo "Executing SQL commands from 0-privileges.sql..."
$MYSQL_CMD < 0-privileges.sql

echo "Script completed."