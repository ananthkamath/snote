CREATE USER 'example_user'@'%' IDENTIFIED BY 'some_password';
GRANT ALL PRIVILEGES ON * . * TO 'example_user'@'%';
FLUSH PRIVILEGES;
ALTER USER 'example_user'@'%' IDENTIFIED WITH mysql_native_password BY 'some_password';
