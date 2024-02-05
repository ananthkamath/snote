echo "** Creating default DB and users"

mysql -u root -p$MYSQL_ROOT_PASSWORD --execute \
"CREATE USER '$SNOTE_DB_USER'@'%' IDENTIFIED BY '$SNOTE_DB_PASSWORD';
GRANT ALL PRIVILEGES ON * . * TO '$SNOTE_DB_USER'@'%';
FLUSH PRIVILEGES;
ALTER USER '$SNOTE_DB_USER'@'%' IDENTIFIED WITH mysql_native_password BY '$SNOTE_DB_PASSWORD';"

echo "** Finished creating default DB and users"
