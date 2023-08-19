-- MySQL connection configuration
MYSQL_CMD="mysql -hlocalhost -uroot -p"

-- Function to list privileges of a user
list_privileges() {
    local username="$1"
    echo "Privileges for $username@localhost:"
    $MYSQL_CMD -e "SHOW GRANTS FOR '$username'@'localhost';"
}

-- Check if users exist and list their privileges
echo "Checking users and their privileges:"
$MYSQL_CMD -e "SELECT user FROM mysql.user WHERE user IN ('user_0d_1', 'user_0d_2');" | grep user_0d_1
if [ $? -eq 0 ]; then
    list_privileges user_0d_1
else
    echo "Users don't exist"

$MYSQL_CMD -e "SELECT user FROM mysql.user WHERE user = 'user_0d_2';" | grep user_0d_2
if [ $? -eq 0 ]; then
    list_privileges user_0d_2
else
    echo "Users don't exist"
