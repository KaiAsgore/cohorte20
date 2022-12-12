mysql> DROP DATABASE petShop;
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE teaShop;
Query OK, 1 row affected (0.02 sec)

mysql> USE teaShop;
Database changed
mysql> SELECT database();
+------------+
| database() |
+------------+
| teaShop    |
+------------+
1 row in set (0.00 sec)

mysql> DROP teaShop;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'teaShop' at line 1
mysql> DROP DATABASE teaShop;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE cats ()
> quit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
quit' at line 1
mysql> CREATE TABLE cats 
    -> (
    -> name VARCHAR
    -> quit
    -> quit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'quit
quit' at line 4
mysql> CREATE DATABASE petShop;
Query OK, 1 row affected (0.01 sec)

mysql> use petshop;
ERROR 1049 (42000): Unknown database 'petshop'
mysql> USE DATABASE petShop;
ERROR 1049 (42000): Unknown database 'DATABASE'
mysql> Select database ();
+-------------+
| database () |
+-------------+
| NULL        |
+-------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use petShop;
Database changed
mysql> CREATE TABLE cats 
    -> (
    -> name VARCHAR(30),
    -> age INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_petShop |
+-------------------+
| cats              |
| dogs              |
+-------------------+
2 rows in set (0.00 sec)
mysql> SHOW COLUMNS FROM cats;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC cats;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC dogs;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| breed | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DROP TABLE cats;
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE pastries (
    -> name VARCHAR(50),
    -> quantity INT);
Query OK, 0 rows affected (0.05 sec)

mysql> desc pastries;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(50) | YES  |     | NULL    |       |
| quantity | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DROP TABLE pastries;
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql>  CREATE TABLE cats;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> quit
Bye
erick@MyPC:~$ mysql -u root .p
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
erick@MyPC:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.31-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE cats (
    -> name 
    -> quit
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'quit' at line 3
mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> USE petShop;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE cats (
    -> name VARCHAR(50),
    -> age INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> CREATE TABLE cats (
    -> name VARCHART (50),
    -> age INT);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VARCHART (50),
age INT)' at line 2
mysql> CREATE TABLE cats (
    -> name VARCHAR (50),
    -> age INT);
Query OK, 0 rows affected (0.02 sec)

mysql> desc cats
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats (name, age)
    -> VALUES ("Blue Steele",4);
Query OK, 1 row affected (0.02 sec)

mysql> desc cats
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats;
+-------------+------+
| name        | age  |
+-------------+------+
| Blue Steele |    4 |
| Jenkins     |    5 |
| Jenkins     |    5 |
+-------------+------+
3 rows in set (0.00 sec)

mysql> CREATE DATABASE world;
Query OK, 1 row affected (0.01 sec)

mysql> USE world ();
Database changed
mysql> CREATE TABLE people (
    -> first_name VARCHAR(20),
    -> last_name VARCHAR(20),
    -> age INT);
Query OK, 0 rows affected (0.05 sec)

mysql> desc people
    -> ;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO people (first_name,last_name,age)
    -> VALUES ('Erick','Fong',28);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO people (first_name,last_name,age) 
    -> VALUES ('Minuette','Rodriguez',22);
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO people (first_name,last_name,age) 
    -> VALUES ('Fernando','Fong',25),
    -> ('Valeria','Landa',24),
    -> ('Oliver','Fong',0);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM people;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Erick      | Fong      |   28 |
| Minuette   | Rodriguez |   22 |
| Fernando   | Fong      |   25 |
| Valeria    | Landa     |   24 |
| Oliver     | Fong      |    0 |
+------------+-----------+------+
5 rows in set (0.00 sec)

mysql> USE cats();
ERROR 1049 (42000): Unknown database 'cats()'
mysql> USE petShop();
ERROR 1049 (42000): Unknown database 'petShop()'
mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| sys                |
| world              |
+--------------------+
6 rows in set (0.01 sec)

mysql> USE petShop ();
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> desc cats;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE cats2 (
    -> name VARCHAR (100) NOT NULL,
    -> age INT NOT NULL);
Query OK, 0 rows affected (0.01 sec)

mysql> desc cats2
    -> ;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | NULL    |       |
| age   | int          | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats2 ()
    -> VALUES ();
ERROR 1364 (HY000): Field 'name' doesn't have a default value
mysql> SELECT * FROM cats2;
Empty set (0.00 sec)

mysql> desc cats;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE shops (
    -> name VARCHAR(100));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO shops (name) VALUES ('shoe emporium');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO shops (name) VALUES ('Mario\'s pizza');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM shops;
+---------------+
| name          |
+---------------+
| shoe emporium |
| Mario's pizza |
+---------------+
2 rows in set (0.00 sec)

mysql> desc cats
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(50) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc cats2;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | NULL    |       |
| age   | int          | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc shops;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> CREATE TABLE cats3 
    -> (
    -> name VARCHAR(100) DEFAULT 'unnamed',
    -> age INT DEFAULT 99);
Query OK, 0 rows affected (0.03 sec)

mysql> desc cats3;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | unnamed |       |
| age   | int          | YES  |     | 99      |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> INSERT INTO cats3 (age) VALUES (2);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM cats3;
+---------+------+
| name    | age  |
+---------+------+
| unnamed |    2 |
+---------+------+
1 row in set (0.00 sec)

mysql> CREATE TABLE uniqueCats (
    -> cat_id INT NOT NULL PRIMARY KEY,
    -> name VARCHAR(100),
    -> age INT);
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM uniqueCats;
Empty set (0.00 sec)

mysql> desc uniqueCats;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| cat_id | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| age    | int          | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO uniqueCats (cat_id, name, age) 
    -> VALUES (1,'Bingo',2);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (cat_id, name, age)  VALUES (1,'Bio',2);
ERROR 1062 (23000): Duplicate entry '1' for key 'uniqueCats.PRIMARY'
mysql> INSERT INTO uniqueCats (cat_id, name, age)  VALUES (2,'Bio',2);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT FROM uniqueCats;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM uniqueCats' at line 1
mysql> SELECT * FROM uniqueCats;
+--------+-------+------+
| cat_id | name  | age  |
+--------+-------+------+
|      1 | Bingo |    2 |
|      2 | Bio   |    2 |
+--------+-------+------+
2 rows in set (0.00 sec)

mysql> DROP TABLE uniqueCats;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE uniqueCats (
    -> cat_id INT,
    -> name VARCHAR(100),
    -> age INT, 
    -> PRIMARY KEY (cat_id));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO uniqueCats (cat_id,name,age) VALUES ();
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> desc uniqueCats;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| cat_id | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| age    | int          | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DROP TABLE uniqueCats;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE uniqueCats (
    -> cat_id INT AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> age INT,
    -> PRIMARY KEY (cat_id));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ();
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> desc uniqueCats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM uniqueCats;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Boingo |    1 |
+--------+--------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM uniqueCats;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Boingo |    1 |
|      2 | Boingo |    1 |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO uniqueCats (name, age) VALUES ('Boingo',1);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT *FROM uniqueCats;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Boingo |    1 |
|      2 | Boingo |    1 |
|      3 | Boingo |    1 |
|      4 | Boingo |    1 |
|      5 | Boingo |    1 |
|      6 | Boingo |    1 |
|      7 | Boingo |    1 |
|      8 | Boingo |    1 |
|      9 | Boingo |    1 |
|     10 | Boingo |    1 |
|     11 | Boingo |    1 |
+--------+--------+------+
11 rows in set (0.00 sec)

mysql> CREATE DATABASE factory;
Query OK, 1 row affected (0.01 sec)

mysql> USE factory();
ERROR 1049 (42000): Unknown database 'factory()'
mysql> USE factory ();
Database changed
mysql> CREATE TABLE employees (
    -> emp_id INT AUTO_INCREMENT,
    -> last_name VARCHAR(100) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> CREATE TABLE employees (
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> middle_name VARCHAR(100), 
    -> age INT NOT NULL,
    -> current_status VARCHAR (100), NOT NULL DEFAULT 'employed',
    -> emp_id INT AUTO_INCREMENT,
    -> PRIMARY KEY (emp_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOT NULL DEFAULT 'employed',
emp_id INT AUTO_INCREMENT,
PRIMARY KEY (emp_id)' at line 6
mysql> CREATE TABLE employees (
    -> CREATE TABLE employees (
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE employees (' at line 2
mysql> CREATE TABLE employees (
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> middle_name VARCHAR(100),
    -> age INT NOT NULL,
    -> current_status VARCHAR (100), NOT NULL DEFAULT 'employed',
    -> emp_id INT AUTO_INCREMENT,
    -> PRIMARY KEY (emp_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOT NULL DEFAULT 'employed',
emp_id INT AUTO_INCREMENT,
PRIMARY KEY (emp_id))' at line 6
mysql> CREATE TABLE employees (
    ->     -> last_name VARCHAR(100) NOT NULL,
    ->     -> first_name VARCHAR(100) NOT NULL,
    ->     -> middle_name VARCHAR(100),
    ->     -> age INT NOT NULL,
    ->     -> current_status VARCHAR (100), NOT NULL DEFAULT 'employed',
    ->     -> emp_id INT AUTO_INCREMENT,
    ->     -> PRIMARY KEY (emp_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
   ' at line 2
mysql> CREATE TABLE employees (
    ->     -> last_name VARCHAR(100) NOT NULL,
    ->     -> first_name VARCHAR(100) NOT NULL,
    ->     -> middle_name VARCHAR(100),
    ->     -> age INT NOT NULL,
    ->     -> current_status VARCHAR (100), NOT NULL DEFAULT 'employed',
    ->     -> emp_id INT AUTO_INCREMENT,
    ->     -> PRIMARY KEY (emp_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
   ' at line 2
mysql> CREATE TABLE employees (
    -> emp_id INT AUTO_INCREMENT,
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> middle_name VARCHAR(100) NOT NULL, 
    -> age INT NOT
    -> sadf;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sadf' at line 7
mysql> CREATE TABLE employees (
    -> emp_id INT AUTO_INCREMENT,
    -> last_name VARCHAR(100),
    -> first_name VARCHAR(100)asodij;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asodij' at line 4
mysql> CREATE TABLE employees (
    -> emp_id INT AUTO_INCREMENT,
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> middle_name VARCHAR(100),
    -> age INT NOT NULL,
    -> current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    -> PRIMARY_KEY (emp_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(emp_id))' at line 8
mysql> CREATE TABLE employees (
    -> id INT AUTO_INCREMENT PRIMARY_KEY,
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL, 
    -> middle_name VARCHAR(100),
    -> age INT NOT NULL, 
    -> current_status VARCHAR(100), DEFAULT 'employed');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMARY_KEY,
last_name VARCHAR(100) NOT NULL,
first_name VARCHAR(100) NOT NULL, ' at line 2
mysql> CREATE TABLE employees (
    -> id INT AUTO_INCREMENT, 
    -> last_name VARCHAR(100) NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> middle_name VARCHAR(100),
    -> age INT NOT NULL,
    -> current_status VARCHAR(100) DEFAULT 'employed',
    -> PRIMARY KEY (id));
Query OK, 0 rows affected (0.02 sec)

mysql> desc employees;
+----------------+--------------+------+-----+----------+----------------+
| Field          | Type         | Null | Key | Default  | Extra          |
+----------------+--------------+------+-----+----------+----------------+
| id             | int          | NO   | PRI | NULL     | auto_increment |
| last_name      | varchar(100) | NO   |     | NULL     |                |
| first_name     | varchar(100) | NO   |     | NULL     |                |
| middle_name    | varchar(100) | YES  |     | NULL     |                |
| age            | int          | NO   |     | NULL     |                |
| current_status | varchar(100) | YES  |     | employed |                |
+----------------+--------------+------+-----+----------+----------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO employees (first_name,last_name, age)
    -> VALUES ('thomas','chickenman',87);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM employees;
+----+------------+------------+-------------+-----+----------------+
| id | last_name  | first_name | middle_name | age | current_status |
+----+------------+------------+-------------+-----+----------------+
|  1 | chickenman | thomas     | NULL        |  87 | employed       |
+----+------------+------------+-------------+-----+----------------+
1 row in set (0.00 sec)

mysql> INSERT INTO employees (first_name,last_name, age) VALUES ('thomas','chickenman');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO employees (first_name,last_name, age) VALUES ('thomas','chickenman',87);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM employees;
+----+------------+------------+-------------+-----+----------------+
| id | last_name  | first_name | middle_name | age | current_status |
+----+------------+------------+-------------+-----+----------------+
|  1 | chickenman | thomas     | NULL        |  87 | employed       |
|  2 | chickenman | thomas     | NULL        |  87 | employed       |
+----+------------+------------+-------------+-----+----------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO employees (first_name,last_name, age) VALUES ('thomas','chickenman',87);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM employees;
+----+------------+------------+-------------+-----+----------------+
| id | last_name  | first_name | middle_name | age | current_status |
+----+------------+------------+-------------+-----+----------------+
|  1 | chickenman | thomas     | NULL        |  87 | employed       |
|  2 | chickenman | thomas     | NULL        |  87 | employed       |
|  3 | chickenman | thomas     | NULL        |  87 | employed       |
+----+------------+------------+-------------+-----+----------------+
3 rows in set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| factory            |
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| sys                |
| world              |
+--------------------+
7 rows in set (0.01 sec)

mysql> use petShop ();
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SHOW TABLES;
+-------------------+
| Tables_in_petShop |
+-------------------+
| cats              |
| cats2             |
| cats3             |
| shops             |
| uniqueCats        |
+-------------------+
5 rows in set (0.00 sec)

mysql> DROP cats;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cats' at line 1
mysql> DROP TABLE cats;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE cats (
    -> cat_id INT AUTO_INCREMENT,
    -> name VARCHAR (100),
    -> breed VARCHAR (100),
    -> age INT, 
    -> PRIMARY KEY (cat_id));
Query OK, 0 rows affected (0.03 sec)

mysql> DESC cats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| breed  | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql>  INSERT INTO cats (
    -> );;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
ERROR: 
No query specified

mysql> INSERT INTO cats (name,breed,age)
    -> VALUES ('Ringo','Tabby',4),
    -> ('Cindy','Maine Coon',10),
    -> ('Dumbledore','Maine Coon',11),
    -> ('Egg','Persian',4),
    -> ('Misty','Tabby',13),
    -> ('George Michael','Ragdoll',9),
    -> ('Jackson','Sphynx',7);
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT name FROM cats;
+----------------+
| name           |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jackson        |
+----------------+
7 rows in set (0.00 sec)

mysql> SELECT age FROM cats;
+------+
| age  |
+------+
|    4 |
|   10 |
|   11 |
|    4 |
|   13 |
|    9 |
|    7 |
+------+
7 rows in set (0.00 sec)

mysql> SELECT name, age FROM cats;
+----------------+------+
| name           | age  |
+----------------+------+
| Ringo          |    4 |
| Cindy          |   10 |
| Dumbledore     |   11 |
| Egg            |    4 |
| Misty          |   13 |
| George Michael |    9 |
| Jackson        |    7 |
+----------------+------+
7 rows in set (0.00 sec)

mysql> SELECT name, age, breed FROM cats;
+----------------+------+------------+
| name           | age  | breed      |
+----------------+------+------------+
| Ringo          |    4 | Tabby      |
| Cindy          |   10 | Maine Coon |
| Dumbledore     |   11 | Maine Coon |
| Egg            |    4 | Persian    |
| Misty          |   13 | Tabby      |
| George Michael |    9 | Ragdoll    |
| Jackson        |    7 | Sphynx     |
+----------------+------+------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE age=4;
+--------+-------+---------+------+
| cat_id | name  | breed   | age  |
+--------+-------+---------+------+
|      1 | Ringo | Tabby   |    4 |
|      4 | Egg   | Persian |    4 |
+--------+-------+---------+------+
2 rows in set (0.00 sec)

mysql> SELECT name,age FROM cats WHERE age=4;
+-------+------+
| name  | age  |
+-------+------+
| Ringo |    4 |
| Egg   |    4 |
+-------+------+
2 rows in set (0.00 sec)

mysql> SELECT name FROM cats WHERE age=4;
+-------+
| name  |
+-------+
| Ringo |
| Egg   |
+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE name='egg';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats id;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT FROM cats id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM cats id' at line 1
mysql> SELECT FROM cats id=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM cats id=1' at line 1
mysql> SELECT * FROM cats id=int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=int' at line 1
mysql> SELECT * FROM cats id;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT id FROM cats;
ERROR 1054 (42S22): Unknown column 'id' in 'field list'
mysql> SELECT cat_id FROM cats;
+--------+
| cat_id |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
+--------+
7 rows in set (0.00 sec)

mysql> SELECT name,breed FROM cats;
+----------------+------------+
| name           | breed      |
+----------------+------------+
| Ringo          | Tabby      |
| Cindy          | Maine Coon |
| Dumbledore     | Maine Coon |
| Egg            | Persian    |
| Misty          | Tabby      |
| George Michael | Ragdoll    |
| Jackson        | Sphynx     |
+----------------+------------+
7 rows in set (0.00 sec)

mysql> SELECT name,age FROM cats WHERE breed='Tabby';
+-------+------+
| name  | age  |
+-------+------+
| Ringo |    4 |
| Misty |   13 |
+-------+------+
2 rows in set (0.00 sec)

mysql> SELECT cat_id FROM cats WHERE cat_id=age;
+--------+
| cat_id |
+--------+
|      4 |
|      7 |
+--------+
2 rows in set (0.00 sec)

mysql> SELECT cat_id,age FROM cats WHERE cat_id=age;
+--------+------+
| cat_id | age  |
+--------+------+
|      4 |    4 |
|      7 |    7 |
+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT cat_id, name FROM cats;
+--------+----------------+
| cat_id | name           |
+--------+----------------+
|      1 | Ringo          |
|      2 | Cindy          |
|      3 | Dumbledore     |
|      4 | Egg            |
|      5 | Misty          |
|      6 | George Michael |
|      7 | Jackson        |
+--------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT cat_id AS id, name FROM cats;
+----+----------------+
| id | name           |
+----+----------------+
|  1 | Ringo          |
|  2 | Cindy          |
|  3 | Dumbledore     |
|  4 | Egg            |
|  5 | Misty          |
|  6 | George Michael |
|  7 | Jackson        |
+----+----------------+
7 rows in set (0.00 sec)

mysql> SELECT name AS kittyName FROM cats;
+----------------+
| kittyName      |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jackson        |
+----------------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET breed ='Shorthair'
    -> WHERE breed='Tabby';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Shorthair  |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET breed 'Tabby' 
    -> WHERE breed='Shorthair';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''Tabby' 
WHERE breed='Shorthair'' at line 1
mysql> UPDATE cats SET breed 'Tabby'  WHERE breed='Shorthair';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''Tabby'  WHERE breed='Shorthair'' at line 1
mysql> SELECT*FROM cats
    -> ;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Shorthair  |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET breed='Shorthair'
    -> WHERE breedds
    -> ;
ERROR 1054 (42S22): Unknown column 'breedds' in 'where clause'
mysql> UPDATE cats SET breed='Tabby'
    -> WHERE breed='Shorthair';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT *FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET age='14' 
    -> WHERE name='Misty';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   14 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET name='Jack' 
    -> WHERE name='Jackson';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE cats SET breed='British Shorthair'
    -> WHERE name='Ringo';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE cats SET age=12 
    -> WHERE breed = 'Maine Coon';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | Tabby             |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+
7 rows in set (0.00 sec)

mysql> DELETE FROM cats WHERE name='egg';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT *FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | Tabby             |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE age = 4;
+--------+-------+-------------------+------+
| cat_id | name  | breed             | age  |
+--------+-------+-------------------+------+
|      1 | Ringo | British Shorthair |    4 |
+--------+-------+-------------------+------+
1 row in set (0.00 sec)

mysql> DELETE FROM cats WHERE name='ringo';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT cats WHERE age=cat_id;
ERROR 1054 (42S22): Unknown column 'cats' in 'field list'
mysql> SELECT age WHERE age=cat_id;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
mysql> SELECT * FROM cats WHERE age=cats_id;
ERROR 1054 (42S22): Unknown column 'cats_id' in 'where clause'
mysql> SELECT cat_id WHERE cat_id=age;
ERROR 1054 (42S22): Unknown column 'cat_id' in 'field list'
mysql> SELECT cat_id FROM cats WHERE cat_id=age;
+--------+
| cat_id |
+--------+
|      7 |
+--------+
1 row in set (0.00 sec)

mysql> SELECT cat_id,age,name FROM cats WHERE cat_id=age;
+--------+------+------+
| cat_id | age  | name |
+--------+------+------+
|      7 |    7 | Jack |
+--------+------+------+
1 row in set (0.00 sec)

mysql> DELETE FROM cats WHERE name='Jack';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Tabby      |   14 |
|      6 | George Michael | Ragdoll    |    9 |
+--------+----------------+------------+------+
4 rows in set (0.00 sec)

mysql> DELETE FROM cats;
Query OK, 4 rows affected (0.04 sec)

mysql> SELECT * FROM cats;
Empty set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| factory            |
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> CREATE DATABASE shirts_db;
Query OK, 1 row affected (0.01 sec)

mysql> USE shirts_db ();
Database changed
mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> CREATE TABLE 
    -> 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE TABLE shirts (
    -> shirt_id INT,
    -> article VARCHAR(100) NOT NULL DEFAULT 'Just a shirt',
    -> color VARCHAR(100) NOT NULL DEFAULT 'IDK',
    -> shirt_size VARCHAR(10) NOT NULL DEFAULT 'XXL',
    -> last_worn INT,
    -> PRIMARY KEY (shirt_id));
Query OK, 0 rows affected (0.03 sec)

mysql> desc shirts;
+------------+--------------+------+-----+--------------+-------+
| Field      | Type         | Null | Key | Default      | Extra |
+------------+--------------+------+-----+--------------+-------+
| shirt_id   | int          | NO   | PRI | NULL         |       |
| article    | varchar(100) | NO   |     | Just a shirt |       |
| color      | varchar(100) | NO   |     | IDK          |       |
| shirt_size | varchar(10)  | NO   |     | XXL          |       |
| last_worn  | int          | YES  |     | NULL         |       |
+------------+--------------+------+-----+--------------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO (article,color,shirt_size,last_worn)
    -> VALUES('t-shirt','white','S',10),
    -> ('t-shirt','green','S',200),
    -> ('polo shirt','black','M',10),
    -> ('tank top','blue','S',50),
    -> ('t-shirt','pink','S',0),
    -> ('polo shirt','red','M',5),
    -> ('tank top','white','S',200),
    -> ('tank top','blue','M',15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(article,color,shirt_size,last_worn)
VALUES('t-shirt','white','S',10),
('t-shirt' at line 1
mysql> DROP TABLE shirts;
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE shirts (
    -> id INT AUTO_INCREMENT,
    -> article VARCHAR(100), 
    -> color VARCHAR(100),
    -> shirt_size VARCHAR(100),
    -> last_worn INT,
    -> PRIMARY KEY (id));
Query OK, 0 rows affected (0.02 sec)

mysql> desc shirts
    -> ;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int          | NO   | PRI | NULL    | auto_increment |
| article    | varchar(100) | YES  |     | NULL    |                |
| color      | varchar(100) | YES  |     | NULL    |                |
| shirt_size | varchar(100) | YES  |     | NULL    |                |
| last_worn  | int          | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO (article, color, shirt_size,last_worn)
    -> VALUES ('t-shirt','white','S',10),
    -> ('t-shirt','green','S',200),
    -> ('polo shirt','black','M',10),
    -> ('tank top','blue','S',50),
    -> ('t-shirt','pink','S',0),
    -> ('polo shirt','red','M',5),
    -> ('tank top','white','S',200),
    -> ('tank top','blue','M',15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(article, color, shirt_size,last_worn)
VALUES ('t-shirt','white','S',10),
('t-sh' at line 1
mysql> INSERT INTO (article, color, shirt_size,last_worn)
    -> VALUES ('t-shirt','white','S',10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(article, color, shirt_size,last_worn)
VALUES ('t-shirt','white','S',10)' at line 1
mysql> INSERT INTO (article, color, shirt_size,last_worn) VALUES ('t-shirt','white','S',10), ('t-shirt','green','S',200), ('polo shirt','black','M',10), ('tank
top','blue','S',50), ('t-shirt','pink','S',0), ('polo shirt','red','M',5), ('tank top','white','S',200), ('tank top','blue','M',15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(article, color, shirt_size,last_worn) VALUES ('t-shirt','white','S',10), ('t-sh' at line 1
mysql> INSERT INTO shirts (article, color, shirt_size,last_worn)
    -> VALUES ('t-shirt','white','S',10),
    -> ('t-shirt','green','S',200),
    -> ('polo shirt','black','M',10),
    -> ('tank top','blue','S',50),
    -> ('t-shirt','pink','S',0),
    -> ('polo shirt','red','M',5),
    -> ('tank top','white','S',200),
    -> ('tank top','blue','M',15);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> desc shirts
    -> ;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int          | NO   | PRI | NULL    | auto_increment |
| article    | varchar(100) | YES  |     | NULL    |                |
| color      | varchar(100) | YES  |     | NULL    |                |
| shirt_size | varchar(100) | YES  |     | NULL    |                |
| last_worn  | int          | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM shirts;
+----+------------+-------+------------+-----------+
| id | article    | color | shirt_size | last_worn |
+----+------------+-------+------------+-----------+
|  1 | t-shirt    | white | S          |        10 |
|  2 | t-shirt    | green | S          |       200 |
|  3 | polo shirt | black | M          |        10 |
|  4 | tank top   | blue  | S          |        50 |
|  5 | t-shirt    | pink  | S          |         0 |
|  6 | polo shirt | red   | M          |         5 |
|  7 | tank top   | white | S          |       200 |
|  8 | tank top   | blue  | M          |        15 |
+----+------------+-------+------------+-----------+
8 rows in set (0.00 sec)

mysql> INSERT INTO shirts (article,color,shirt_size,last_worn)
    -> VALUES ('polo shirt','purple','M',50);
Query OK, 1 row affected (0.04 sec)

mysql> SELECT arctle,color FROM shirts;
ERROR 1054 (42S22): Unknown column 'arctle' in 'field list'
mysql> SELECT article,color FROM shirts;
+------------+--------+
| article    | color  |
+------------+--------+
| t-shirt    | white  |
| t-shirt    | green  |
| polo shirt | black  |
| tank top   | blue   |
| t-shirt    | pink   |
| polo shirt | red    |
| tank top   | white  |
| tank top   | blue   |
| polo shirt | purple |
+------------+--------+
9 rows in set (0.00 sec)

mysql> SELECT id FROM shirts WHERE shirt_size=M;
ERROR 1054 (42S22): Unknown column 'M' in 'where clause'
mysql> SELECT id FROM shirts WHERE shirt_size='M';
+----+
| id |
+----+
|  3 |
|  6 |
|  8 |
|  9 |
+----+
4 rows in set (0.00 sec)

mysql> UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM shirts;
+----+------------+--------+------------+-----------+
| id | article    | color  | shirt_size | last_worn |
+----+------------+--------+------------+-----------+
|  1 | t-shirt    | white  | S          |        10 |
|  2 | t-shirt    | green  | S          |       200 |
|  3 | polo shirt | black  | L          |        10 |
|  4 | tank top   | blue   | S          |        50 |
|  5 | t-shirt    | pink   | S          |         0 |
|  6 | polo shirt | red    | L          |         5 |
|  7 | tank top   | white  | S          |       200 |
|  8 | tank top   | blue   | M          |        15 |
|  9 | polo shirt | purple | L          |        50 |
+----+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE last_worn=15;
+----+----------+-------+------------+-----------+
| id | article  | color | shirt_size | last_worn |
+----+----------+-------+------------+-----------+
|  8 | tank top | blue  | M          |        15 |
+----+----------+-------+------------+-----------+
1 row in set (0.00 sec)

mysql> UPDATE shirts SET last_worn=0 WHERE last_worn=15;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white'; 
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT *FROM shirts;
+----+------------+-----------+------------+-----------+
| id | article    | color     | shirt_size | last_worn |
+----+------------+-----------+------------+-----------+
|  1 | t-shirt    | off white | XS         |        10 |
|  2 | t-shirt    | green     | S          |       200 |
|  3 | polo shirt | black     | L          |        10 |
|  4 | tank top   | blue      | S          |        50 |
|  5 | t-shirt    | pink      | S          |         0 |
|  6 | polo shirt | red       | L          |         5 |
|  7 | tank top   | off white | XS         |       200 |
|  8 | tank top   | blue      | M          |         0 |
|  9 | polo shirt | purple    | L          |        50 |
+----+------------+-----------+------------+-----------+
9 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE last_worn=200;
Query OK, 2 rows affected (0.01 sec)

mysql> DELETE FROM shirts WHERE article='tank top';
Query OK, 2 rows affected (0.01 sec)

mysql> SELECT * FROM shirts;
+----+------------+-----------+------------+-----------+
| id | article    | color     | shirt_size | last_worn |
+----+------------+-----------+------------+-----------+
|  1 | t-shirt    | off white | XS         |        10 |
|  3 | polo shirt | black     | L          |        10 |
|  5 | t-shirt    | pink      | S          |         0 |
|  6 | polo shirt | red       | L          |         5 |
|  9 | polo shirt | purple    | L          |        50 |
+----+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> DELETE FROM shirts;
Query OK, 5 rows affected (0.01 sec)

mysql> DROP TABLES shirts;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE DATABASE bookShop;
Query OK, 1 row affected (0.01 sec)

mysql> USE bookShop ();
Database changed
mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> desc books;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| book_id        | int          | NO   | PRI | NULL    | auto_increment |
| title          | varchar(100) | YES  |     | NULL    |                |
| author_fname   | varchar(100) | YES  |     | NULL    |                |
| author_lname   | varchar(100) | YES  |     | NULL    |                |
| released_year  | int          | YES  |     | NULL    |                |
| stock_quantity | int          | YES  |     | NULL    |                |
| pages          | int          | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> DROP TABLE books;
Query OK, 0 rows affected (0.01 sec)

mysql> quit
Bye
erick@MyPC:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.31-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| bookShop           |
| factory            |
| information_schema |
| mysql              |
| performance_schema |
| petShop            |
| shirts_db          |
| sys                |
| world              |
+--------------------+
9 rows in set (0.00 sec)

mysql> USE bookShop ();
Database changed
mysql> show tables;
Empty set (0.01 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_bookShop |
+--------------------+
| books              |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT *FROM tables;
ERROR 1146 (42S02): Table 'bookShop.tables' doesn't exist
mysql> SELECT * FROMO books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROMO books' at line 1
mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> SELECT 1+4;
+-----+
| 1+4 |
+-----+
|   5 |
+-----+
1 row in set (0.00 sec)

mysql> SELECT CONCAT ('h','e','l','l','o');
+------------------------------+
| CONCAT ('h','e','l','l','o') |
+------------------------------+
| hello                        |
+------------------------------+
1 row in set (0.01 sec)

mysql> SELECT CONCAT (authos_fname, '!!!');
ERROR 1054 (42S22): Unknown column 'authos_fname' in 'field list'
mysql> SELECT CONCAT (author_fname, '!!!');
ERROR 1054 (42S22): Unknown column 'author_fname' in 'field list'
mysql> USE books ();
ERROR 1049 (42000): Unknown database 'books'
mysql> desc books;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| book_id        | int          | NO   | PRI | NULL    | auto_increment |
| title          | varchar(100) | YES  |     | NULL    |                |
| author_fname   | varchar(100) | YES  |     | NULL    |                |
| author_lname   | varchar(100) | YES  |     | NULL    |                |
| released_year  | int          | YES  |     | NULL    |                |
| stock_quantity | int          | YES  |     | NULL    |                |
| pages          | int          | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
7 rows in set (0.01 sec)

mysql> SELECT CONCAT(author_fname,'!!!');
ERROR 1054 (42S22): Unknown column 'author_fname' in 'field list'
mysql> SELECT CONCAT(author_fname,'!!!') FROM books;
+----------------------------+
| CONCAT(author_fname,'!!!') |
+----------------------------+
| Jhumpa!!!                  |
| Neil!!!                    |
| Neil!!!                    |
| Jhumpa!!!                  |
| Dave!!!                    |
| Dave!!!                    |
| Michael!!!                 |
| Patti!!!                   |
| Dave!!!                    |
| Neil!!!                    |
| Raymond!!!                 |
| Raymond!!!                 |
| Don!!!                     |
| John!!!                    |
| David!!!                   |
| David!!!                   |
+----------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,'',author_lname) FROM books;
+--------------------------------------+
| CONCAT(author_fname,'',author_lname) |
+--------------------------------------+
| JhumpaLahiri                         |
| NeilGaiman                           |
| NeilGaiman                           |
| JhumpaLahiri                         |
| DaveEggers                           |
| DaveEggers                           |
| MichaelChabon                        |
| PattiSmith                           |
| DaveEggers                           |
| NeilGaiman                           |
| RaymondCarver                        |
| RaymondCarver                        |
| DonDeLillo                           |
| JohnSteinbeck                        |
| DavidFoster Wallace                  |
| DavidFoster Wallace                  |
+--------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) FROM books;
+---------------------------------------+
| CONCAT(author_fname,' ',author_lname) |
+---------------------------------------+
| Jhumpa Lahiri                         |
| Neil Gaiman                           |
| Neil Gaiman                           |
| Jhumpa Lahiri                         |
| Dave Eggers                           |
| Dave Eggers                           |
| Michael Chabon                        |
| Patti Smith                           |
| Dave Eggers                           |
| Neil Gaiman                           |
| Raymond Carver                        |
| Raymond Carver                        |
| Don DeLillo                           |
| John Steinbeck                        |
| David Foster Wallace                  |
| David Foster Wallace                  |
+---------------------------------------+
16 rows in set (0.01 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) AS author_name FROM books;
+----------------------+
| author_name          |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONTACT_WS ('!','bye','lol');
ERROR 1305 (42000): FUNCTION bookShop.CONTACT_WS does not exist
mysql> SELECT CONCAT_WS('!','hi','bye','lol');
+---------------------------------+
| CONCAT_WS('!','hi','bye','lol') |
+---------------------------------+
| hi!bye!lol                      |
+---------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING ('Hello world',1,4)
    -> ;
ERROR 1630 (42000): FUNCTION bookShop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT SUBSTRING ('Hello world',1,4);
ERROR 1630 (42000): FUNCTION bookShop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT SUBSTRING('Hello world',1,4);
+------------------------------+
| SUBSTRING('Hello world',1,4) |
+------------------------------+
| Hell                         |
+------------------------------+
1 row in set (0.00 sec)

mysql> SELECT title FROM books;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| The Namesake                                        |
| Norse Mythology                                     |
| American Gods                                       |
| Interpreter of Maladies                             |
| A Hologram for the King: A Novel                    |
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Just Kids                                           |
| A Heartbreaking Work of Staggering Genius           |
| Coraline                                            |
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTRING(title, 1, 15) FROM books;
+-------------------------+
| SUBSTRING(title, 1, 15) |
+-------------------------+
| The Namesake            |
| Norse Mythology         |
| American Gods           |
| Interpreter of          |
| A Hologram for          |
| The Circle              |
| The Amazing Adv         |
| Just Kids               |
| A Heartbreaking         |
| Coraline                |
| What We Talk Ab         |
| Where I'm Calli         |
| White Noise             |
| Cannery Row             |
| Oblivion: Stori         |
| Consider the Lo         |
+-------------------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(author_lname,1,1);
ERROR 1054 (42S22): Unknown column 'author_lname' in 'field list'
mysql> SELECT SUBSTR(author_lname,1,1) FROM books;
+--------------------------+
| SUBSTR(author_lname,1,1) |
+--------------------------+
| L                        |
| G                        |
| G                        |
| L                        |
| E                        |
| E                        |
| C                        |
| S                        |
| E                        |
| G                        |
| C                        |
| C                        |
| D                        |
| S                        |
| F                        |
| F                        |
+--------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(author_lname,1,1) AS 'first letter' FROM books;
+--------------+
| first letter |
+--------------+
| L            |
| G            |
| G            |
| L            |
| E            |
| E            |
| C            |
| S            |
| E            |
| G            |
| C            |
| C            |
| D            |
| S            |
| F            |
| F            |
+--------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(author_lname,1,1), author_lname AS 'first letter' FROM books;
+--------------------------+----------------+
| SUBSTR(author_lname,1,1) | first letter   |
+--------------------------+----------------+
| L                        | Lahiri         |
| G                        | Gaiman         |
| G                        | Gaiman         |
| L                        | Lahiri         |
| E                        | Eggers         |
| E                        | Eggers         |
| C                        | Chabon         |
| S                        | Smith          |
| E                        | Eggers         |
| G                        | Gaiman         |
| C                        | Carver         |
| C                        | Carver         |
| D                        | DeLillo        |
| S                        | Steinbeck      |
| F                        | Foster Wallace |
| F                        | Foster Wallace |
+--------------------------+----------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(title,1,10)FROM books;
+--------------------+
| SUBSTR(title,1,10) |
+--------------------+
| The Namesa         |
| Norse Myth         |
| American G         |
| Interprete         |
| A Hologram         |
| The Circle         |
| The Amazin         |
| Just Kids          |
| A Heartbre         |
| Coraline           |
| What We Ta         |
| Where I'm          |
| White Nois         |
| Cannery Ro         |
| Oblivion:          |
| Consider t         |
+--------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(SUBSTR(title,1,10), '...')FROM books;
+-----------------------------------+
| CONCAT(SUBSTR(title,1,10), '...') |
+-----------------------------------+
| The Namesa...                     |
| Norse Myth...                     |
| American G...                     |
| Interprete...                     |
| A Hologram...                     |
| The Circle...                     |
| The Amazin...                     |
| Just Kids...                      |
| A Heartbre...                     |
| Coraline...                       |
| What We Ta...                     |
| Where I'm ...                     |
| White Nois...                     |
| Cannery Ro...                     |
| Oblivion: ...                     |
| Consider t...                     |
+-----------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(SUBSTR(title,1,10), '...') AS 'short_title'FROM books;
+---------------+
| short_title   |
+---------------+
| The Namesa... |
| Norse Myth... |
| American G... |
| Interprete... |
| A Hologram... |
| The Circle... |
| The Amazin... |
| Just Kids...  |
| A Heartbre... |
| Coraline...   |
| What We Ta... |
| Where I'm ... |
| White Nois... |
| Cannery Ro... |
| Oblivion: ... |
| Consider t... |
+---------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS('.',SUBSTR(author_fname,1,1),SUBSTR(author_lname,1,1)) AS 'initials' FROM books;
+----------+
| initials |
+----------+
| J.L      |
| N.G      |
| N.G      |
| J.L      |
| D.E      |
| D.E      |
| M.C      |
| P.S      |
| D.E      |
| N.G      |
| R.C      |
| R.C      |
| D.D      |
| J.S      |
| D.F      |
| D.F      |
+----------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS('.',SUBSTR(author_fname,1,1),SUBSTR(author_lname,1,1)' ') AS 'initials' FROM books;
ERROR 1583 (42000): Incorrect parameters in the call to native function 'concat_ws'
mysql> SELECT CONCAT_WS('.',SUBSTR(author_fname,1,1),SUBSTR(author_lname,1,1),' ') AS 'initials' FROM books;
+----------+
| initials |
+----------+
| J.L.     |
| N.G.     |
| N.G.     |
| J.L.     |
| D.E.     |
| D.E.     |
| M.C.     |
| P.S.     |
| D.E.     |
| N.G.     |
| R.C.     |
| R.C.     |
| D.D.     |
| J.S.     |
| D.F.     |
| D.F.     |
+----------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE('I am Erick','Erick','mr.Fong');
+-----------------------------------------+
| REPLACE('I am Erick','Erick','mr.Fong') |
+-----------------------------------------+
| I am mr.Fong                            |
+-----------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE(title, ' ','-') FROM books;
+-----------------------------------------------------+
| REPLACE(title, ' ','-')                             |
+-----------------------------------------------------+
| The-Namesake                                        |
| Norse-Mythology                                     |
| American-Gods                                       |
| Interpreter-of-Maladies                             |
| A-Hologram-for-the-King:-A-Novel                    |
| The-Circle                                          |
| The-Amazing-Adventures-of-Kavalier-&-Clay           |
| Just-Kids                                           |
| A-Heartbreaking-Work-of-Staggering-Genius           |
| Coraline                                            |
| What-We-Talk-About-When-We-Talk-About-Love:-Stories |
| Where-I'm-Calling-From:-Selected-Stories            |
| White-Noise                                         |
| Cannery-Row                                         |
| Oblivion:-Stories                                   |
| Consider-the-Lobster                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE(title, ' ',' - ') FROM books;
+-----------------------------------------------------------------------+
| REPLACE(title, ' ',' - ')                                             |
+-----------------------------------------------------------------------+
| The - Namesake                                                        |
| Norse - Mythology                                                     |
| American - Gods                                                       |
| Interpreter - of - Maladies                                           |
| A - Hologram - for - the - King: - A - Novel                          |
| The - Circle                                                          |
| The - Amazing - Adventures - of - Kavalier - & - Clay                 |
| Just - Kids                                                           |
| A - Heartbreaking - Work - of - Staggering - Genius                   |
| Coraline                                                              |
| What - We - Talk - About - When - We - Talk - About - Love: - Stories |
| Where - I'm - Calling - From: - Selected - Stories                    |
| White - Noise                                                         |
| Cannery - Row                                                         |
| Oblivion: - Stories                                                   |
| Consider - the - Lobster                                              |
+-----------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS(UPPER('i love ',UPPER(title),'!!!');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT CONCAT_WS(UPPER('i love ',UPPER(title),'!!!') FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> SELECT CONCAT_WS(UPPER('i love '),UPPER(title),'!!!') FROM books;
+---------------------------------------------------------------+
| CONCAT_WS(UPPER('i love '),UPPER(title),'!!!')                |
+---------------------------------------------------------------+
| THE NAMESAKEI LOVE !!!                                        |
| NORSE MYTHOLOGYI LOVE !!!                                     |
| AMERICAN GODSI LOVE !!!                                       |
| INTERPRETER OF MALADIESI LOVE !!!                             |
| A HOLOGRAM FOR THE KING: A NOVELI LOVE !!!                    |
| THE CIRCLEI LOVE !!!                                          |
| THE AMAZING ADVENTURES OF KAVALIER & CLAYI LOVE !!!           |
| JUST KIDSI LOVE !!!                                           |
| A HEARTBREAKING WORK OF STAGGERING GENIUSI LOVE !!!           |
| CORALINEI LOVE !!!                                            |
| WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIESI LOVE !!! |
| WHERE I'M CALLING FROM: SELECTED STORIESI LOVE !!!            |
| WHITE NOISEI LOVE !!!                                         |
| CANNERY ROWI LOVE !!!                                         |
| OBLIVION: STORIESI LOVE !!!                                   |
| CONSIDER THE LOBSTERI LOVE !!!                                |
+---------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT_WS('I LOVE ',UPPER(title),'!!!') FROM books;
+---------------------------------------------------------------+
| CONCAT_WS('I LOVE ',UPPER(title),'!!!')                       |
+---------------------------------------------------------------+
| THE NAMESAKEI LOVE !!!                                        |
| NORSE MYTHOLOGYI LOVE !!!                                     |
| AMERICAN GODSI LOVE !!!                                       |
| INTERPRETER OF MALADIESI LOVE !!!                             |
| A HOLOGRAM FOR THE KING: A NOVELI LOVE !!!                    |
| THE CIRCLEI LOVE !!!                                          |
| THE AMAZING ADVENTURES OF KAVALIER & CLAYI LOVE !!!           |
| JUST KIDSI LOVE !!!                                           |
| A HEARTBREAKING WORK OF STAGGERING GENIUSI LOVE !!!           |
| CORALINEI LOVE !!!                                            |
| WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIESI LOVE !!! |
| WHERE I'M CALLING FROM: SELECTED STORIESI LOVE !!!            |
| WHITE NOISEI LOVE !!!                                         |
| CANNERY ROWI LOVE !!!                                         |
| OBLIVION: STORIESI LOVE !!!                                   |
| CONSIDER THE LOBSTERI LOVE !!!                                |
+---------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('I LOVE ',UPPER(title),'!!!') FROM books;
+---------------------------------------------------------------+
| CONCAT('I LOVE ',UPPER(title),'!!!')                          |
+---------------------------------------------------------------+
| I LOVE THE NAMESAKE!!!                                        |
| I LOVE NORSE MYTHOLOGY!!!                                     |
| I LOVE AMERICAN GODS!!!                                       |
| I LOVE INTERPRETER OF MALADIES!!!                             |
| I LOVE A HOLOGRAM FOR THE KING: A NOVEL!!!                    |
| I LOVE THE CIRCLE!!!                                          |
| I LOVE THE AMAZING ADVENTURES OF KAVALIER & CLAY!!!           |
| I LOVE JUST KIDS!!!                                           |
| I LOVE A HEARTBREAKING WORK OF STAGGERING GENIUS!!!           |
| I LOVE CORALINE!!!                                            |
| I LOVE WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES!!! |
| I LOVE WHERE I'M CALLING FROM: SELECTED STORIES!!!            |
| I LOVE WHITE NOISE!!!                                         |
| I LOVE CANNERY ROW!!!                                         |
| I LOVE OBLIVION: STORIES!!!                                   |
| I LOVE CONSIDER THE LOBSTER!!!                                |
+---------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(UPPER('i love '),UPPER(title),'!!!') FROM books;
+---------------------------------------------------------------+
| CONCAT(UPPER('i love '),UPPER(title),'!!!')                   |
+---------------------------------------------------------------+
| I LOVE THE NAMESAKE!!!                                        |
| I LOVE NORSE MYTHOLOGY!!!                                     |
| I LOVE AMERICAN GODS!!!                                       |
| I LOVE INTERPRETER OF MALADIES!!!                             |
| I LOVE A HOLOGRAM FOR THE KING: A NOVEL!!!                    |
| I LOVE THE CIRCLE!!!                                          |
| I LOVE THE AMAZING ADVENTURES OF KAVALIER & CLAY!!!           |
| I LOVE JUST KIDS!!!                                           |
| I LOVE A HEARTBREAKING WORK OF STAGGERING GENIUS!!!           |
| I LOVE CORALINE!!!                                            |
| I LOVE WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES!!! |
| I LOVE WHERE I'M CALLING FROM: SELECTED STORIES!!!            |
| I LOVE WHITE NOISE!!!                                         |
| I LOVE CANNERY ROW!!!                                         |
| I LOVE OBLIVION: STORIES!!!                                   |
| I LOVE CONSIDER THE LOBSTER!!!                                |
+---------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT INSERT ('Hello Bobby',6,0,'there');
+------------------------------------+
| INSERT ('Hello Bobby',6,0,'there') |
+------------------------------------+
| Hellothere Bobby                   |
+------------------------------------+
1 row in set (0.01 sec)

mysql> SELECT INSERT ('Hello Bobby',6,4,' there');
+-------------------------------------+
| INSERT ('Hello Bobby',6,4,' there') |
+-------------------------------------+
| Hello thereby                       |
+-------------------------------------+
1 row in set (0.00 sec)

mysql>  SELECT REVERSE(UPPER('why does my cat look at me with such hatred?'));
+----------------------------------------------------------------+
| REVERSE(UPPER('why does my cat look at me with such hatred?')) |
+----------------------------------------------------------------+
| ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW                   |
+----------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE(title,' ','->')FROM books;
+--------------------------------------------------------------+
| REPLACE(title,' ','->')                                      |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_lname, REVERSE(author_lname) FROM books;
+----------------+-----------------------+
| author_lname   | REVERSE(author_lname) |
+----------------+-----------------------+
| Lahiri         | irihaL                |
| Gaiman         | namiaG                |
| Gaiman         | namiaG                |
| Lahiri         | irihaL                |
| Eggers         | sreggE                |
| Eggers         | sreggE                |
| Chabon         | nobahC                |
| Smith          | htimS                 |
| Eggers         | sreggE                |
| Gaiman         | namiaG                |
| Carver         | revraC                |
| Carver         | revraC                |
| DeLillo        | olliLeD               |
| Steinbeck      | kcebnietS             |
| Foster Wallace | ecallaW retsoF        |
| Foster Wallace | ecallaW retsoF        |
+----------------+-----------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_lname AS 'fowards', REVERSE(author_lname) AS 'backwards'  FROM books;
+----------------+----------------+
| fowards        | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
| Gaiman         | namiaG         |
| Lahiri         | irihaL         |
| Eggers         | sreggE         |
| Eggers         | sreggE         |
| Chabon         | nobahC         |
| Smith          | htimS          |
| Eggers         | sreggE         |
| Gaiman         | namiaG         |
| Carver         | revraC         |
| Carver         | revraC         |
| DeLillo        | olliLeD        |
| Steinbeck      | kcebnietS      |
| Foster Wallace | ecallaW retsoF |
| Foster Wallace | ecallaW retsoF |
+----------------+----------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(UPPER(author_fname,' ','author_lname)) AS 'full name in caps' FROM books;
    '> SELECT CONCAT(UPPER(author_fname,' ',author_lname)) AS 'full name in caps' FROM books;
    '> ;
    '> 
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name in caps' FROM books; 
SELECT CONCAT(UPPER(author_fname,' ',author_lname)) A' at line 1
mysql> SELECT CONCAT(UPPER(author_fname),' ',UPPER(author_lname)) AS 'full name in caps' FROM books;
+----------------------+
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| NEIL GAIMAN          |
| NEIL GAIMAN          |
| JHUMPA LAHIRI        |
| DAVE EGGERS          |
| DAVE EGGERS          |
| MICHAEL CHABON       |
| PATTI SMITH          |
| DAVE EGGERS          |
| NEIL GAIMAN          |
| RAYMOND CARVER       |
| RAYMOND CARVER       |
| DON DELILLO          |
| JOHN STEINBECK       |
| DAVID FOSTER WALLACE |
| DAVID FOSTER WALLACE |
+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(title,' was released in ',released_year) AS 'blurb' FROM books;
+--------------------------------------------------------------------------+
| blurb                                                                    |
+--------------------------------------------------------------------------+
| The Namesake was released in 2003                                        |
| Norse Mythology was released in 2016                                     |
| American Gods was released in 2001                                       |
| Interpreter of Maladies was released in 1996                             |
| A Hologram for the King: A Novel was released in 2012                    |
| The Circle was released in 2013                                          |
| The Amazing Adventures of Kavalier & Clay was released in 2000           |
| Just Kids was released in 2010                                           |
| A Heartbreaking Work of Staggering Genius was released in 2001           |
| Coraline was released in 2003                                            |
| What We Talk About When We Talk About Love: Stories was released in 1981 |
| Where I'm Calling From: Selected Stories was released in 1989            |
| White Noise was released in 1985                                         |
| Cannery Row was released in 1945                                         |
| Oblivion: Stories was released in 2004                                   |
| Consider the Lobster was released in 2005                                |
+--------------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT title, CHAR_LENGHT(title) FROM books;
ERROR 1305 (42000): FUNCTION bookShop.CHAR_LENGHT does not exist
mysql> SELECT title,CHAR_LENGTH(title) FROM books;
+-----------------------------------------------------+--------------------+
| title                                               | CHAR_LENGTH(title) |
+-----------------------------------------------------+--------------------+
| The Namesake                                        |                 12 |
| Norse Mythology                                     |                 15 |
| American Gods                                       |                 13 |
| Interpreter of Maladies                             |                 23 |
| A Hologram for the King: A Novel                    |                 32 |
| The Circle                                          |                 10 |
| The Amazing Adventures of Kavalier & Clay           |                 41 |
| Just Kids                                           |                  9 |
| A Heartbreaking Work of Staggering Genius           |                 41 |
| Coraline                                            |                  8 |
| What We Talk About When We Talk About Love: Stories |                 51 |
| Where I'm Calling From: Selected Stories            |                 40 |
| White Noise                                         |                 11 |
| Cannery Row                                         |                 11 |
| Oblivion: Stories                                   |                 17 |
| Consider the Lobster                                |                 20 |
+-----------------------------------------------------+--------------------+
16 rows in set (0.00 sec)

mysql> SELECT title,CHAR_LENGTH(title) AS 'character count' FROM books;
+-----------------------------------------------------+-----------------+
| title                                               | character count |
+-----------------------------------------------------+-----------------+
| The Namesake                                        |              12 |
| Norse Mythology                                     |              15 |
| American Gods                                       |              13 |
| Interpreter of Maladies                             |              23 |
| A Hologram for the King: A Novel                    |              32 |
| The Circle                                          |              10 |
| The Amazing Adventures of Kavalier & Clay           |              41 |
| Just Kids                                           |               9 |
| A Heartbreaking Work of Staggering Genius           |              41 |
| Coraline                                            |               8 |
| What We Talk About When We Talk About Love: Stories |              51 |
| Where I'm Calling From: Selected Stories            |              40 |
| White Noise                                         |              11 |
| Cannery Row                                         |              11 |
| Oblivion: Stories                                   |              17 |
| Consider the Lobster                                |              20 |
+-----------------------------------------------------+-----------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(SUBSTR(title,1,10),'...') AS 'short title', CONCAT(author_lname,',',author_fname) AS 'author', CONCAT(stock_quantity,' in stock') AS 'quantity' FROM books;
+---------------+----------------------+--------------+
| short title   | author               | quantity     |
+---------------+----------------------+--------------+
| The Namesa... | Lahiri,Jhumpa        | 32 in stock  |
| Norse Myth... | Gaiman,Neil          | 43 in stock  |
| American G... | Gaiman,Neil          | 12 in stock  |
| Interprete... | Lahiri,Jhumpa        | 97 in stock  |
| A Hologram... | Eggers,Dave          | 154 in stock |
| The Circle... | Eggers,Dave          | 26 in stock  |
| The Amazin... | Chabon,Michael       | 68 in stock  |
| Just Kids...  | Smith,Patti          | 55 in stock  |
| A Heartbre... | Eggers,Dave          | 104 in stock |
| Coraline...   | Gaiman,Neil          | 100 in stock |
| What We Ta... | Carver,Raymond       | 23 in stock  |
| Where I'm ... | Carver,Raymond       | 12 in stock  |
| White Nois... | DeLillo,Don          | 49 in stock  |
| Cannery Ro... | Steinbeck,John       | 95 in stock  |
| Oblivion: ... | Foster Wallace,David | 172 in stock |
| Consider t... | Foster Wallace,David | 92 in stock  |
+---------------+----------------------+--------------+
16 rows in set (0.00 sec)
NSERT INTO books
    ->     (title, author_fname, author_lname, released_year, stock_quantity, pages)
    ->     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
    ->            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ->            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NSERT INTO books
    (title, author_fname, author_lname, released_year, stock_qu' at line 1
mysql> INSERT INTO books
    ->     (title, author_fname, author_lname, released_year, stock_quantity, pages)
    ->     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
    ->            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ->            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT author_lname FROM books;
+----------------+
| author_lname   |
+----------------+
| Lahiri         |
| Gaiman         |
| Gaiman         |
| Lahiri         |
| Eggers         |
| Eggers         |
| Chabon         |
| Smith          |
| Eggers         |
| Gaiman         |
| Carver         |
| Carver         |
| DeLillo        |
| Steinbeck      |
| Foster Wallace |
| Foster Wallace |
| Harris         |
| Harris         |
| Saunders       |
+----------------+
19 rows in set (0.00 sec)

mysql> SELECT DISTINCT author_lname FROMo books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SELECT DISTINCT author_lname FROM books;
+----------------+
| author_lname   |
+----------------+
| Lahiri         |
| Gaiman         |
| Eggers         |
| Chabon         |
| Smith          |
| Carver         |
| DeLillo        |
| Steinbeck      |
| Foster Wallace |
| Harris         |
| Saunders       |
+----------------+
11 rows in set (0.00 sec)

mysql> SELECT released_year FROM books;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          2001 |
|          2003 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2001 |
|          2017 |
+---------------+
19 rows in set (0.00 sec)

mysql> SELECT DISTINCT released_year FROM books;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2017 |
+---------------+
16 rows in set (0.00 sec)

mysql> SELECT DISTICT(CONCAT(author_fname,author_lname)) AS 'full name' FROM books;
ERROR 1305 (42000): FUNCTION bookShop.DISTICT does not exist
mysql> SELECT DISTINCT(CONCAT(author_fname,author_lname)) AS 'full name' FROM books;
+---------------------+
| full name           |
+---------------------+
| JhumpaLahiri        |
| NeilGaiman          |
| DaveEggers          |
| MichaelChabon       |
| PattiSmith          |
| RaymondCarver       |
| DonDeLillo          |
| JohnSteinbeck       |
| DavidFoster Wallace |
| DanHarris           |
| FreidaHarris        |
| GeorgeSaunders      |
+---------------------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT(CONCAT(author_fname,' ', author_lname)) AS 'full name' FROM books;
+----------------------+
| full name            |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| Dan Harris           |
| Freida Harris        |
| George Saunders      |
+----------------------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT(author_fname,author_lname,released_year) FROM books;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT DISTINCT author_fname,author_lname,released_year FROM books;
+--------------+----------------+---------------+
| author_fname | author_lname   | released_year |
+--------------+----------------+---------------+
| Jhumpa       | Lahiri         |          2003 |
| Neil         | Gaiman         |          2016 |
| Neil         | Gaiman         |          2001 |
| Jhumpa       | Lahiri         |          1996 |
| Dave         | Eggers         |          2012 |
| Dave         | Eggers         |          2013 |
| Michael      | Chabon         |          2000 |
| Patti        | Smith          |          2010 |
| Dave         | Eggers         |          2001 |
| Neil         | Gaiman         |          2003 |
| Raymond      | Carver         |          1981 |
| Raymond      | Carver         |          1989 |
| Don          | DeLillo        |          1985 |
| John         | Steinbeck      |          1945 |
| David        | Foster Wallace |          2004 |
| David        | Foster Wallace |          2005 |
| Dan          | Harris         |          2014 |
| Freida       | Harris         |          2001 |
| George       | Saunders       |          2017 |
+--------------+----------------+---------------+
19 rows in set (0.00 sec)

mysql> SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
+---------+--------------+----------------+
| book_id | author_fname | author_lname   |
+---------+--------------+----------------+
|      12 | Raymond      | Carver         |
|      11 | Raymond      | Carver         |
|       7 | Michael      | Chabon         |
|      13 | Don          | DeLillo        |
|       5 | Dave         | Eggers         |
|       6 | Dave         | Eggers         |
|       9 | Dave         | Eggers         |
|      16 | David        | Foster Wallace |
|      15 | David        | Foster Wallace |
|       2 | Neil         | Gaiman         |
|      10 | Neil         | Gaiman         |
|       3 | Neil         | Gaiman         |
|      17 | Dan          | Harris         |
|      18 | Freida       | Harris         |
|       4 | Jhumpa       | Lahiri         |
|       1 | Jhumpa       | Lahiri         |
|      19 | George       | Saunders       |
|       8 | Patti        | Smith          |
|      14 | John         | Steinbeck      |
+---------+--------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| The Namesake                                        |   291 |
| Norse Mythology                                     |   304 |
| American Gods                                       |   465 |
| Interpreter of Maladies                             |   198 |
| A Hologram for the King: A Novel                    |   352 |
| The Circle                                          |   504 |
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Just Kids                                           |   304 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| Coraline                                            |   208 |
| What We Talk About When We Talk About Love: Stories |   176 |
| Where I'm Calling From: Selected Stories            |   526 |
| White Noise                                         |   320 |
| Cannery Row                                         |   181 |
| Oblivion: Stories                                   |   329 |
| Consider the Lobster                                |   343 |
| 10% Happier                                         |   256 |
| fake_book                                           |   428 |
| Lincoln In The Bardo                                |   367 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title, pages ORDER BY pages FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> SELECT title,pages FROM books ORDER BY pages;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
| Interpreter of Maladies                             |   198 |
| Coraline                                            |   208 |
| 10% Happier                                         |   256 |
| The Namesake                                        |   291 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| White Noise                                         |   320 |
| Oblivion: Stories                                   |   329 |
| Consider the Lobster                                |   343 |
| A Hologram for the King: A Novel                    |   352 |
| Lincoln In The Bardo                                |   367 |
| fake_book                                           |   428 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| American Gods                                       |   465 |
| The Circle                                          |   504 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Amazing Adventures of Kavalier & Clay           |   634 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY pages DESC;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Circle                                          |   504 |
| American Gods                                       |   465 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| fake_book                                           |   428 |
| Lincoln In The Bardo                                |   367 |
| A Hologram for the King: A Novel                    |   352 |
| Consider the Lobster                                |   343 |
| Oblivion: Stories                                   |   329 |
| White Noise                                         |   320 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| The Namesake                                        |   291 |
| 10% Happier                                         |   256 |
| Coraline                                            |   208 |
| Interpreter of Maladies                             |   198 |
| Cannery Row                                         |   181 |
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY released_year DESC;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| Lincoln In The Bardo                                |   367 |
| Norse Mythology                                     |   304 |
| 10% Happier                                         |   256 |
| The Circle                                          |   504 |
| A Hologram for the King: A Novel                    |   352 |
| Just Kids                                           |   304 |
| Consider the Lobster                                |   343 |
| Oblivion: Stories                                   |   329 |
| Coraline                                            |   208 |
| The Namesake                                        |   291 |
| American Gods                                       |   465 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| fake_book                                           |   428 |
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Interpreter of Maladies                             |   198 |
| Where I'm Calling From: Selected Stories            |   526 |
| White Noise                                         |   320 |
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT book_id,author_fname,author_lname. pages FROM books;
ERROR 1054 (42S22): Unknown column 'author_lname.pages' in 'field list'
mysql> SELECT book_id,author_fname,author_lname. pages FROM books;
ERROR 1054 (42S22): Unknown column 'author_lname.pages' in 'field list'
mysql> SELECT book_id,author_fname,author_lname, pages FROM books;
+---------+--------------+----------------+-------+
| book_id | author_fname | author_lname   | pages |
+---------+--------------+----------------+-------+
|       1 | Jhumpa       | Lahiri         |   291 |
|       2 | Neil         | Gaiman         |   304 |
|       3 | Neil         | Gaiman         |   465 |
|       4 | Jhumpa       | Lahiri         |   198 |
|       5 | Dave         | Eggers         |   352 |
|       6 | Dave         | Eggers         |   504 |
|       7 | Michael      | Chabon         |   634 |
|       8 | Patti        | Smith          |   304 |
|       9 | Dave         | Eggers         |   437 |
|      10 | Neil         | Gaiman         |   208 |
|      11 | Raymond      | Carver         |   176 |
|      12 | Raymond      | Carver         |   526 |
|      13 | Don          | DeLillo        |   320 |
|      14 | John         | Steinbeck      |   181 |
|      15 | David        | Foster Wallace |   329 |
|      16 | David        | Foster Wallace |   343 |
|      17 | Dan          | Harris         |   256 |
|      18 | Freida       | Harris         |   428 |
|      19 | George       | Saunders       |   367 |
+---------+--------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT book_id,author_fname,author_lname, pages FROM books ORDER BY pages;
+---------+--------------+----------------+-------+
| book_id | author_fname | author_lname   | pages |
+---------+--------------+----------------+-------+
|      11 | Raymond      | Carver         |   176 |
|      14 | John         | Steinbeck      |   181 |
|       4 | Jhumpa       | Lahiri         |   198 |
|      10 | Neil         | Gaiman         |   208 |
|      17 | Dan          | Harris         |   256 |
|       1 | Jhumpa       | Lahiri         |   291 |
|       2 | Neil         | Gaiman         |   304 |
|       8 | Patti        | Smith          |   304 |
|      13 | Don          | DeLillo        |   320 |
|      15 | David        | Foster Wallace |   329 |
|      16 | David        | Foster Wallace |   343 |
|       5 | Dave         | Eggers         |   352 |
|      19 | George       | Saunders       |   367 |
|      18 | Freida       | Harris         |   428 |
|       9 | Dave         | Eggers         |   437 |
|       3 | Neil         | Gaiman         |   465 |
|       6 | Dave         | Eggers         |   504 |
|      12 | Raymond      | Carver         |   526 |
|       7 | Michael      | Chabon         |   634 |
+---------+--------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT book_id,author_fname,author_lname, pages FROM books ORDER BY 4;
+---------+--------------+----------------+-------+
| book_id | author_fname | author_lname   | pages |
+---------+--------------+----------------+-------+
|      11 | Raymond      | Carver         |   176 |
|      14 | John         | Steinbeck      |   181 |
|       4 | Jhumpa       | Lahiri         |   198 |
|      10 | Neil         | Gaiman         |   208 |
|      17 | Dan          | Harris         |   256 |
|       1 | Jhumpa       | Lahiri         |   291 |
|       2 | Neil         | Gaiman         |   304 |
|       8 | Patti        | Smith          |   304 |
|      13 | Don          | DeLillo        |   320 |
|      15 | David        | Foster Wallace |   329 |
|      16 | David        | Foster Wallace |   343 |
|       5 | Dave         | Eggers         |   352 |
|      19 | George       | Saunders       |   367 |
|      18 | Freida       | Harris         |   428 |
|       9 | Dave         | Eggers         |   437 |
|       3 | Neil         | Gaiman         |   465 |
|       6 | Dave         | Eggers         |   504 |
|      12 | Raymond      | Carver         |   526 |
|       7 | Michael      | Chabon         |   634 |
+---------+--------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT author_lname, released_year, title FROM books;
+----------------+---------------+-----------------------------------------------------+
| author_lname   | released_year | title                                               |
+----------------+---------------+-----------------------------------------------------+
| Lahiri         |          2003 | The Namesake                                        |
| Gaiman         |          2016 | Norse Mythology                                     |
| Gaiman         |          2001 | American Gods                                       |
| Lahiri         |          1996 | Interpreter of Maladies                             |
| Eggers         |          2012 | A Hologram for the King: A Novel                    |
| Eggers         |          2013 | The Circle                                          |
| Chabon         |          2000 | The Amazing Adventures of Kavalier & Clay           |
| Smith          |          2010 | Just Kids                                           |
| Eggers         |          2001 | A Heartbreaking Work of Staggering Genius           |
| Gaiman         |          2003 | Coraline                                            |
| Carver         |          1981 | What We Talk About When We Talk About Love: Stories |
| Carver         |          1989 | Where I'm Calling From: Selected Stories            |
| DeLillo        |          1985 | White Noise                                         |
| Steinbeck      |          1945 | Cannery Row                                         |
| Foster Wallace |          2004 | Oblivion: Stories                                   |
| Foster Wallace |          2005 | Consider the Lobster                                |
| Harris         |          2014 | 10% Happier                                         |
| Harris         |          2001 | fake_book                                           |
| Saunders       |          2017 | Lincoln In The Bardo                                |
+----------------+---------------+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT author_lname, released_year, title FROM books ORDER BY author_lname;
+----------------+---------------+-----------------------------------------------------+
| author_lname   | released_year | title                                               |
+----------------+---------------+-----------------------------------------------------+
| Carver         |          1989 | Where I'm Calling From: Selected Stories            |
| Carver         |          1981 | What We Talk About When We Talk About Love: Stories |
| Chabon         |          2000 | The Amazing Adventures of Kavalier & Clay           |
| DeLillo        |          1985 | White Noise                                         |
| Eggers         |          2012 | A Hologram for the King: A Novel                    |
| Eggers         |          2013 | The Circle                                          |
| Eggers         |          2001 | A Heartbreaking Work of Staggering Genius           |
| Foster Wallace |          2005 | Consider the Lobster                                |
| Foster Wallace |          2004 | Oblivion: Stories                                   |
| Gaiman         |          2016 | Norse Mythology                                     |
| Gaiman         |          2003 | Coraline                                            |
| Gaiman         |          2001 | American Gods                                       |
| Harris         |          2014 | 10% Happier                                         |
| Harris         |          2001 | fake_book                                           |
| Lahiri         |          1996 | Interpreter of Maladies                             |
| Lahiri         |          2003 | The Namesake                                        |
| Saunders       |          2017 | Lincoln In The Bardo                                |
| Smith          |          2010 | Just Kids                                           |
| Steinbeck      |          1945 | Cannery Row                                         |
+----------------+---------------+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT author_lname, released_year, title FROM books ORDER BY author_lname,released_year;
+----------------+---------------+-----------------------------------------------------+
| author_lname   | released_year | title                                               |
+----------------+---------------+-----------------------------------------------------+
| Carver         |          1981 | What We Talk About When We Talk About Love: Stories |
| Carver         |          1989 | Where I'm Calling From: Selected Stories            |
| Chabon         |          2000 | The Amazing Adventures of Kavalier & Clay           |
| DeLillo        |          1985 | White Noise                                         |
| Eggers         |          2001 | A Heartbreaking Work of Staggering Genius           |
| Eggers         |          2012 | A Hologram for the King: A Novel                    |
| Eggers         |          2013 | The Circle                                          |
| Foster Wallace |          2004 | Oblivion: Stories                                   |
| Foster Wallace |          2005 | Consider the Lobster                                |
| Gaiman         |          2001 | American Gods                                       |
| Gaiman         |          2003 | Coraline                                            |
| Gaiman         |          2016 | Norse Mythology                                     |
| Harris         |          2001 | fake_book                                           |
| Harris         |          2014 | 10% Happier                                         |
| Lahiri         |          1996 | Interpreter of Maladies                             |
| Lahiri         |          2003 | The Namesake                                        |
| Saunders       |          2017 | Lincoln In The Bardo                                |
| Smith          |          2010 | Just Kids                                           |
| Steinbeck      |          1945 | Cannery Row                                         |
+----------------+---------------+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT author_lname, released_year, title FROM books ORDER BY author_lname,released_year DESC;
+----------------+---------------+-----------------------------------------------------+
| author_lname   | released_year | title                                               |
+----------------+---------------+-----------------------------------------------------+
| Carver         |          1989 | Where I'm Calling From: Selected Stories            |
| Carver         |          1981 | What We Talk About When We Talk About Love: Stories |
| Chabon         |          2000 | The Amazing Adventures of Kavalier & Clay           |
| DeLillo        |          1985 | White Noise                                         |
| Eggers         |          2013 | The Circle                                          |
| Eggers         |          2012 | A Hologram for the King: A Novel                    |
| Eggers         |          2001 | A Heartbreaking Work of Staggering Genius           |
| Foster Wallace |          2005 | Consider the Lobster                                |
| Foster Wallace |          2004 | Oblivion: Stories                                   |
| Gaiman         |          2016 | Norse Mythology                                     |
| Gaiman         |          2003 | Coraline                                            |
| Gaiman         |          2001 | American Gods                                       |
| Harris         |          2014 | 10% Happier                                         |
| Harris         |          2001 | fake_book                                           |
| Lahiri         |          2003 | The Namesake                                        |
| Lahiri         |          1996 | Interpreter of Maladies                             |
| Saunders       |          2017 | Lincoln In The Bardo                                |
| Smith          |          2010 | Just Kids                                           |
| Steinbeck      |          1945 | Cannery Row                                         |
+----------------+---------------+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) AS 'full name' FROM books;
+----------------------+
| full name            |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
| Dan Harris           |
| Freida Harris        |
| George Saunders      |
+----------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) AS 'full name' FROM books ORDER BY 'full name';
+----------------------+
| full name            |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
| Dan Harris           |
| Freida Harris        |
| George Saunders      |
+----------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname,' ',author_lname) AS 'full name' FROM books ORDER BY full name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name' at line 1
mysql> SELECT CONCAT(author_fname,' ',author_lname) AS author FROM books ORDER BY author;
+----------------------+
| author               |
+----------------------+
| Dan Harris           |
| Dave Eggers          |
| Dave Eggers          |
| Dave Eggers          |
| David Foster Wallace |
| David Foster Wallace |
| Don DeLillo          |
| Freida Harris        |
| George Saunders      |
| Jhumpa Lahiri        |
| Jhumpa Lahiri        |
| John Steinbeck       |
| Michael Chabon       |
| Neil Gaiman          |
| Neil Gaiman          |
| Neil Gaiman          |
| Patti Smith          |
| Raymond Carver       |
| Raymond Carver       |
+----------------------+
19 rows in set (0.00 sec)

mysql> SELECT book_id,title,released_year FROM books;
+---------+-----------------------------------------------------+---------------+
| book_id | title                                               | released_year |
+---------+-----------------------------------------------------+---------------+
|       1 | The Namesake                                        |          2003 |
|       2 | Norse Mythology                                     |          2016 |
|       3 | American Gods                                       |          2001 |
|       4 | Interpreter of Maladies                             |          1996 |
|       5 | A Hologram for the King: A Novel                    |          2012 |
|       6 | The Circle                                          |          2013 |
|       7 | The Amazing Adventures of Kavalier & Clay           |          2000 |
|       8 | Just Kids                                           |          2010 |
|       9 | A Heartbreaking Work of Staggering Genius           |          2001 |
|      10 | Coraline                                            |          2003 |
|      11 | What We Talk About When We Talk About Love: Stories |          1981 |
|      12 | Where I'm Calling From: Selected Stories            |          1989 |
|      13 | White Noise                                         |          1985 |
|      14 | Cannery Row                                         |          1945 |
|      15 | Oblivion: Stories                                   |          2004 |
|      16 | Consider the Lobster                                |          2005 |
|      17 | 10% Happier                                         |          2014 |
|      18 | fake_book                                           |          2001 |
|      19 | Lincoln In The Bardo                                |          2017 |
+---------+-----------------------------------------------------+---------------+
19 rows in set (0.00 sec)

mysql> SELECT book_id,title,released_year FROM books LIMIT 5;
+---------+----------------------------------+---------------+
| book_id | title                            | released_year |
+---------+----------------------------------+---------------+
|       1 | The Namesake                     |          2003 |
|       2 | Norse Mythology                  |          2016 |
|       3 | American Gods                    |          2001 |
|       4 | Interpreter of Maladies          |          1996 |
|       5 | A Hologram for the King: A Novel |          2012 |
+---------+----------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 5;
+---------+-----------------------------------------------------+---------------+
| book_id | title                                               | released_year |
+---------+-----------------------------------------------------+---------------+
|      14 | Cannery Row                                         |          1945 |
|      11 | What We Talk About When We Talk About Love: Stories |          1981 |
|      13 | White Noise                                         |          1985 |
|      12 | Where I'm Calling From: Selected Stories            |          1989 |
|       4 | Interpreter of Maladies                             |          1996 |
+---------+-----------------------------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 10;
+---------+-----------------------------------------------------+---------------+
| book_id | title                                               | released_year |
+---------+-----------------------------------------------------+---------------+
|      14 | Cannery Row                                         |          1945 |
|      11 | What We Talk About When We Talk About Love: Stories |          1981 |
|      13 | White Noise                                         |          1985 |
|      12 | Where I'm Calling From: Selected Stories            |          1989 |
|       4 | Interpreter of Maladies                             |          1996 |
|       7 | The Amazing Adventures of Kavalier & Clay           |          2000 |
|      18 | fake_book                                           |          2001 |
|       3 | American Gods                                       |          2001 |
|       9 | A Heartbreaking Work of Staggering Genius           |          2001 |
|      10 | Coraline                                            |          2003 |
+---------+-----------------------------------------------------+---------------+
10 rows in set (0.00 sec)

mysql> SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 3-5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-5' at line 1
mysql> SELECT book_id,title,released_year FROM books ORDER BY released_year LIMIT 3,5;
+---------+-------------------------------------------+---------------+
| book_id | title                                     | released_year |
+---------+-------------------------------------------+---------------+
|      12 | Where I'm Calling From: Selected Stories  |          1989 |
|       4 | Interpreter of Maladies                   |          1996 |
|       7 | The Amazing Adventures of Kavalier & Clay |          2000 |
|       9 | A Heartbreaking Work of Staggering Genius |          2001 |
|      18 | fake_book                                 |          2001 |
+---------+-------------------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE='%da%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='%da%'' at line 1
mysql> SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';
+-------------------------------------------+--------------+----------------+
| title                                     | author_fname | author_lname   |
+-------------------------------------------+--------------+----------------+
| A Hologram for the King: A Novel          | Dave         | Eggers         |
| The Circle                                | Dave         | Eggers         |
| A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |
| Oblivion: Stories                         | David        | Foster Wallace |
| Consider the Lobster                      | David        | Foster Wallace |
| 10% Happier                               | Dan          | Harris         |
| fake_book                                 | Freida       | Harris         |
+-------------------------------------------+--------------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%stories%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY (pages) DESC;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Circle                                          |   504 |
| American Gods                                       |   465 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| fake_book                                           |   428 |
| Lincoln In The Bardo                                |   367 |
| A Hologram for the King: A Novel                    |   352 |
| Consider the Lobster                                |   343 |
| Oblivion: Stories                                   |   329 |
| White Noise                                         |   320 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| The Namesake                                        |   291 |
| 10% Happier                                         |   256 |
| Coraline                                            |   208 |
| Interpreter of Maladies                             |   198 |
| Cannery Row                                         |   181 |
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY (pages,550) DESC;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT title,pages FROM books ORDER BY (pages,title) DESC;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT title,pages FROM books ORDER BY (550,660) DESC;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT title,pages FROM books ORDER BY 550,660 DESC;
ERROR 1054 (42S22): Unknown column '550' in 'order clause'
mysql> SELECT title,pages FROM books ORDER BY (550,660) DESC;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT title,pages FROM books ORDER BY pages (550,660) DESC;
ERROR 1305 (42000): FUNCTION bookShop.pages does not exist
mysql> SELECT title,pages FROM books ORDER BY (pages,550,660) DESC;
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT title,pages FROM books ORDER BY (pages) LIMIT (550,660) DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(550,660) DESC' at line 1
mysql> SELECT title,pages FROM books ORDER BY (pages) LIMIT (550,660);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(550,660)' at line 1
mysql> SELECT title,pages FROM books ORDER BY (pages) LIMIT (550)(660);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(550)(660)' at line 1
mysql> SELECT title,pages FROM books ORDER BY (pages) LIMIT 550,660;
Empty set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY (pages) LIMIT 550;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
| Interpreter of Maladies                             |   198 |
| Coraline                                            |   208 |
| 10% Happier                                         |   256 |
| The Namesake                                        |   291 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| White Noise                                         |   320 |
| Oblivion: Stories                                   |   329 |
| Consider the Lobster                                |   343 |
| A Hologram for the King: A Novel                    |   352 |
| Lincoln In The Bardo                                |   367 |
| fake_book                                           |   428 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| American Gods                                       |   465 |
| The Circle                                          |   504 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Amazing Adventures of Kavalier & Clay           |   634 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY pages DESC LIMIT BY 550;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BY 550' at line 1
mysql> SELECT title,pages FROM books ORDER BY pages DESC LIMIT 550;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Circle                                          |   504 |
| American Gods                                       |   465 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| fake_book                                           |   428 |
| Lincoln In The Bardo                                |   367 |
| A Hologram for the King: A Novel                    |   352 |
| Consider the Lobster                                |   343 |
| Oblivion: Stories                                   |   329 |
| White Noise                                         |   320 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| The Namesake                                        |   291 |
| 10% Happier                                         |   256 |
| Coraline                                            |   208 |
| Interpreter of Maladies                             |   198 |
| Cannery Row                                         |   181 |
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY pages DESC LIMIT 550, 660;
Empty set (0.00 sec)

mysql> SELECT title,pages FROM books ORDER BY pages DESC LIMIT 1;
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books ORDER BY released_year DESC;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| Lincoln In The Bardo                                |
| Norse Mythology                                     |
| 10% Happier                                         |
| The Circle                                          |
| A Hologram for the King: A Novel                    |
| Just Kids                                           |
| Consider the Lobster                                |
| Oblivion: Stories                                   |
| Coraline                                            |
| The Namesake                                        |
| American Gods                                       |
| A Heartbreaking Work of Staggering Genius           |
| fake_book                                           |
| The Amazing Adventures of Kavalier & Clay           |
| Interpreter of Maladies                             |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| What We Talk About When We Talk About Love: Stories |
| Cannery Row                                         |
+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT title,released_year FROM books ORDER BY released_year DESC;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| Lincoln In The Bardo                                |          2017 |
| Norse Mythology                                     |          2016 |
| 10% Happier                                         |          2014 |
| The Circle                                          |          2013 |
| A Hologram for the King: A Novel                    |          2012 |
| Just Kids                                           |          2010 |
| Consider the Lobster                                |          2005 |
| Oblivion: Stories                                   |          2004 |
| Coraline                                            |          2003 |
| The Namesake                                        |          2003 |
| American Gods                                       |          2001 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| fake_book                                           |          2001 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| Interpreter of Maladies                             |          1996 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Cannery Row                                         |          1945 |
+-----------------------------------------------------+---------------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books CONCAT(title,' - ',released_year) ORDER BY released_year DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(title,' - ',released_year) ORDER BY released_year DESC' at line 1
mysql> SELECT CONCAT(title,' - ', released_year) FROM books;
+------------------------------------------------------------+
| CONCAT(title,' - ', released_year)                         |
+------------------------------------------------------------+
| The Namesake - 2003                                        |
| Norse Mythology - 2016                                     |
| American Gods - 2001                                       |
| Interpreter of Maladies - 1996                             |
| A Hologram for the King: A Novel - 2012                    |
| The Circle - 2013                                          |
| The Amazing Adventures of Kavalier & Clay - 2000           |
| Just Kids - 2010                                           |
| A Heartbreaking Work of Staggering Genius - 2001           |
| Coraline - 2003                                            |
| What We Talk About When We Talk About Love: Stories - 1981 |
| Where I'm Calling From: Selected Stories - 1989            |
| White Noise - 1985                                         |
| Cannery Row - 1945                                         |
| Oblivion: Stories - 2004                                   |
| Consider the Lobster - 2005                                |
| 10% Happier - 2014                                         |
| fake_book - 2001                                           |
| Lincoln In The Bardo - 2017                                |
+------------------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(title,' - ', released_year) FROM books 
    -> ORDER BY released_year;
+------------------------------------------------------------+
| CONCAT(title,' - ', released_year)                         |
+------------------------------------------------------------+
| Cannery Row - 1945                                         |
| What We Talk About When We Talk About Love: Stories - 1981 |
| White Noise - 1985                                         |
| Where I'm Calling From: Selected Stories - 1989            |
| Interpreter of Maladies - 1996                             |
| The Amazing Adventures of Kavalier & Clay - 2000           |
| fake_book - 2001                                           |
| American Gods - 2001                                       |
| A Heartbreaking Work of Staggering Genius - 2001           |
| Coraline - 2003                                            |
| The Namesake - 2003                                        |
| Oblivion: Stories - 2004                                   |
| Consider the Lobster - 2005                                |
| Just Kids - 2010                                           |
| A Hologram for the King: A Novel - 2012                    |
| The Circle - 2013                                          |
| 10% Happier - 2014                                         |
| Norse Mythology - 2016                                     |
| Lincoln In The Bardo - 2017                                |
+------------------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(title,' - ', released_year) FROM books ORDER BY released_year;
+------------------------------------------------------------+
| CONCAT(title,' - ', released_year)                         |
+------------------------------------------------------------+
| Cannery Row - 1945                                         |
| What We Talk About When We Talk About Love: Stories - 1981 |
| White Noise - 1985                                         |
| Where I'm Calling From: Selected Stories - 1989            |
| Interpreter of Maladies - 1996                             |
| The Amazing Adventures of Kavalier & Clay - 2000           |
| fake_book - 2001                                           |
| American Gods - 2001                                       |
| A Heartbreaking Work of Staggering Genius - 2001           |
| Coraline - 2003                                            |
| The Namesake - 2003                                        |
| Oblivion: Stories - 2004                                   |
| Consider the Lobster - 2005                                |
| Just Kids - 2010                                           |
| A Hologram for the King: A Novel - 2012                    |
| The Circle - 2013                                          |
| 10% Happier - 2014                                         |
| Norse Mythology - 2016                                     |
| Lincoln In The Bardo - 2017                                |
+------------------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(title,' - ', released_year) FROM books ORDER BY released_year
    -> DESC;
+------------------------------------------------------------+
| CONCAT(title,' - ', released_year)                         |
+------------------------------------------------------------+
| Lincoln In The Bardo - 2017                                |
| Norse Mythology - 2016                                     |
| 10% Happier - 2014                                         |
| The Circle - 2013                                          |
| A Hologram for the King: A Novel - 2012                    |
| Just Kids - 2010                                           |
| Consider the Lobster - 2005                                |
| Oblivion: Stories - 2004                                   |
| Coraline - 2003                                            |
| The Namesake - 2003                                        |
| American Gods - 2001                                       |
| A Heartbreaking Work of Staggering Genius - 2001           |
| fake_book - 2001                                           |
| The Amazing Adventures of Kavalier & Clay - 2000           |
| Interpreter of Maladies - 1996                             |
| Where I'm Calling From: Selected Stories - 1989            |
| White Noise - 1985                                         |
| What We Talk About When We Talk About Love: Stories - 1981 |
| Cannery Row - 1945                                         |
+------------------------------------------------------------+
19 rows in set (0.01 sec)

mysql> SELECT CONCAT(title,' - ', released_year) FROM books ORDER BY released_year DESC LIMIT 3;
+------------------------------------+
| CONCAT(title,' - ', released_year) |
+------------------------------------+
| Lincoln In The Bardo - 2017        |
| Norse Mythology - 2016             |
| 10% Happier - 2014                 |
+------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT CONCAT(title,' - ', released_year) AS 'summary' FROM books ORDER BY released_year DESC LIMIT 3;
+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT title,author_lname FROM books WHERE title LIKE'% %';
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| The Namesake                                        | Lahiri         |
| Norse Mythology                                     | Gaiman         |
| American Gods                                       | Gaiman         |
| Interpreter of Maladies                             | Lahiri         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| Just Kids                                           | Smith          |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where I'm Calling From: Selected Stories            | Carver         |
| White Noise                                         | DeLillo        |
| Cannery Row                                         | Steinbeck      |
| Oblivion: Stories                                   | Foster Wallace |
| Consider the Lobster                                | Foster Wallace |
| 10% Happier                                         | Harris         |
| Lincoln In The Bardo                                | Saunders       |
+-----------------------------------------------------+----------------+
17 rows in set (0.00 sec)

mysql> SELECT title,author_lname FROM books WHERE author_lname LIKE'% %';
+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT title,author_lname FROM books ORDER BY author_lname,title; 
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where I'm Calling From: Selected Stories            | Carver         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| White Noise                                         | DeLillo        |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| Consider the Lobster                                | Foster Wallace |
| Oblivion: Stories                                   | Foster Wallace |
| American Gods                                       | Gaiman         |
| Coraline                                            | Gaiman         |
| Norse Mythology                                     | Gaiman         |
| 10% Happier                                         | Harris         |
| fake_book                                           | Harris         |
| Interpreter of Maladies                             | Lahiri         |
| The Namesake                                        | Lahiri         |
| Lincoln In The Bardo                                | Saunders       |
| Just Kids                                           | Smith          |
| Cannery Row                                         | Steinbeck      |
+-----------------------------------------------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT CONCAT(UPPER('my favorite author is ',author_fname,' ',author_lname,'!')) AS 'yell' FROM books;
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'UPPER'
mysql> SELECT UPPER(CONCAT('my favorite author is ',author_fname,' ',author_lname,'!')) AS 'yell' FROM books;
+---------------------------------------------+
| yell                                        |
+---------------------------------------------+
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVORITE AUTHOR IS PATTI SMITH!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS DON DELILLO!          |
| MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS DAN HARRIS!           |
| MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
+---------------------------------------------+
19 rows in set (0.01 sec)

mysql> SELECT UPPER(CONCAT('my favorite author is ',author_fname,' ',author_lname,'!')) AS 'yell' FROM books ORDER BY author_lname;
+---------------------------------------------+
| yell                                        |
+---------------------------------------------+
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVORITE AUTHOR IS DON DELILLO!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVE EGGERS!          |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVORITE AUTHOR IS DAN HARRIS!           |
| MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
| MY FAVORITE AUTHOR IS PATTI SMITH!          |
| MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
+---------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT COUNT * FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> SELECT COUNT(*) FROM books;
+----------+
| COUNT(*) |
+----------+
|       19 |
+----------+
1 row in set (0.01 sec)

mysql> INSERT INTO books () VALUES ();
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO books () VALUES ();
Query OK, 1 row affected (0.00 sec)

mysql> SELECT COUNT(*) FROM books;
+----------+
| COUNT(*) |
+----------+
|       21 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(author_fname) FROM books;
+---------------------+
| COUNT(author_fname) |
+---------------------+
|                  19 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(DISTINCT author_fname) FROM books;
+------------------------------+
| COUNT(DISTINCT author_fname) |
+------------------------------+
|                           12 |
+------------------------------+
1 row in set (0.00 sec)

mysql> SELECT released_year FROM books;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          2001 |
|          2003 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2001 |
|          2017 |
|          NULL |
|          NULL |
+---------------+
21 rows in set (0.00 sec)

mysql> SELECT COUNT(DISTINCT released_year) FROM books;
+-------------------------------+
| COUNT(DISTINCT released_year) |
+-------------------------------+
|                            16 |
+-------------------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(DISTINCT author_lname) FROM books;
+------------------------------+
| COUNT(DISTINCT author_lname) |
+------------------------------+
|                           11 |
+------------------------------+
1 row in set (0.00 sec)

mysql> SELECT title WHERE title LIKE '%the%' FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> SELECT title FROM books WHERE title LIKE '%the%';
+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Consider the Lobster                      |
| Lincoln In The Bardo                      |
+-------------------------------------------+
6 rows in set (0.00 sec)

mysql> SELECT COUNT(title FROM books WHERE title LIKE '%the%');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books WHERE title LIKE '%the%')' at line 1
mysql> SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT author_lname FROM books GROUP BY author_lname;
+----------------+
| author_lname   |
+----------------+
| Lahiri         |
| Gaiman         |
| Eggers         |
| Chabon         |
| Smith          |
| Carver         |
| DeLillo        |
| Steinbeck      |
| Foster Wallace |
| Harris         |
| Saunders       |
| NULL           |
+----------------+
12 rows in set (0.00 sec)

mysql> SELECT COUNT(*) author_lname FROM books GROUP BY author_lname;
+--------------+
| author_lname |
+--------------+
|            2 |
|            3 |
|            3 |
|            1 |
|            1 |
|            2 |
|            1 |
|            1 |
|            2 |
|            2 |
|            1 |
|            2 |
+--------------+
12 rows in set, 1 warning (0.00 sec)

mysql> SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
+----------------+----------+
| author_lname   | COUNT(*) |
+----------------+----------+
| Lahiri         |        2 |
| Gaiman         |        3 |
| Eggers         |        3 |
| Chabon         |        1 |
| Smith          |        1 |
| Carver         |        2 |
| DeLillo        |        1 |
| Steinbeck      |        1 |
| Foster Wallace |        2 |
| Harris         |        2 |
| Saunders       |        1 |
| NULL           |        2 |
+----------------+----------+
12 rows in set (0.00 sec)

mysql> SELECT author_lname, COUNT(*) AS 'books written' FROM books GROUP BY author_lname ORDER BY 'books written';
+----------------+---------------+
| author_lname   | books written |
+----------------+---------------+
| Lahiri         |             2 |
| Gaiman         |             3 |
| Eggers         |             3 |
| Chabon         |             1 |
| Smith          |             1 |
| Carver         |             2 |
| DeLillo        |             1 |
| Steinbeck      |             1 |
| Foster Wallace |             2 |
| Harris         |             2 |
| Saunders       |             1 |
| NULL           |             2 |
+----------------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT author_lname, COUNT(*) AS 'books written' FROM books GROUP BY author_lname ORDER BY 'books written'DESC;
+----------------+---------------+
| author_lname   | books written |
+----------------+---------------+
| Lahiri         |             2 |
| Gaiman         |             3 |
| Eggers         |             3 |
| Chabon         |             1 |
| Smith          |             1 |
| Carver         |             2 |
| DeLillo        |             1 |
| Steinbeck      |             1 |
| Foster Wallace |             2 |
| Harris         |             2 |
| Saunders       |             1 |
| NULL           |             2 |
+----------------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written;
+----------------+---------------+
| author_lname   | books_written |
+----------------+---------------+
| Chabon         |             1 |
| Smith          |             1 |
| DeLillo        |             1 |
| Steinbeck      |             1 |
| Saunders       |             1 |
| Lahiri         |             2 |
| Carver         |             2 |
| Foster Wallace |             2 |
| Harris         |             2 |
| NULL           |             2 |
| Gaiman         |             3 |
| Eggers         |             3 |
+----------------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;
+----------------+---------------+
| author_lname   | books_written |
+----------------+---------------+
| Gaiman         |             3 |
| Eggers         |             3 |
| Lahiri         |             2 |
| Carver         |             2 |
| Foster Wallace |             2 |
| Harris         |             2 |
| NULL           |             2 |
| Chabon         |             1 |
| Smith          |             1 |
| DeLillo        |             1 |
| Steinbeck      |             1 |
| Saunders       |             1 |
+----------------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
|      20 | NULL                                                | NULL         | NULL           |          NULL |           NULL |  NULL |
|      21 | NULL                                                | NULL         | NULL           |          NULL |           NULL |  NULL |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
21 rows in set (0.00 sec)

mysql> SELECT released_year FROM books;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          2001 |
|          2003 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2001 |
|          2017 |
|          NULL |
|          NULL |
+---------------+
21 rows in set (0.00 sec)

mysql> SELECT released_year FROM books GROUP BY released_year;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2017 |
|          NULL |
+---------------+
17 rows in set (0.00 sec)

mysql> SELECT released_year,COUNT(*) FROM books GROUP BY released_year;
+---------------+----------+
| released_year | COUNT(*) |
+---------------+----------+
|          2003 |        2 |
|          2016 |        1 |
|          2001 |        3 |
|          1996 |        1 |
|          2012 |        1 |
|          2013 |        1 |
|          2000 |        1 |
|          2010 |        1 |
|          1981 |        1 |
|          1989 |        1 |
|          1985 |        1 |
|          1945 |        1 |
|          2004 |        1 |
|          2005 |        1 |
|          2014 |        1 |
|          2017 |        1 |
|          NULL |        2 |
+---------------+----------+
17 rows in set (0.00 sec)

mysql> SELECT released_year,COUNT(*) FROM books GROUP BY released_year ORDER BY released_year DESC;
+---------------+----------+
| released_year | COUNT(*) |
+---------------+----------+
|          2017 |        1 |
|          2016 |        1 |
|          2014 |        1 |
|          2013 |        1 |
|          2012 |        1 |
|          2010 |        1 |
|          2005 |        1 |
|          2004 |        1 |
|          2003 |        2 |
|          2001 |        3 |
|          2000 |        1 |
|          1996 |        1 |
|          1989 |        1 |
|          1985 |        1 |
|          1981 |        1 |
|          1945 |        1 |
|          NULL |        2 |
+---------------+----------+
17 rows in set (0.00 sec)

mysql> SELECT MIN(released_year) FROM books;
+--------------------+
| MIN(released_year) |
+--------------------+
|               1945 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(pages) FROM books;
+------------+
| MAX(pages) |
+------------+
|        634 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(author_lname) FROM books;
+-------------------+
| MIN(author_lname) |
+-------------------+
| Carver            |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(author_lname), MAX(author_fname) FROM books;
+-------------------+-------------------+
| MIN(author_lname) | MAX(author_fname) |
+-------------------+-------------------+
| Carver            | Raymond           |
+-------------------+-------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(pages),title FROM books;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #2 of SELECT list contains nonaggregated column 'bookShop.books.title'; this is incompatible with sql_mode=only_full_group_by
mysql> SELECT title, pages FROM books ORDER BY pages;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| NULL                                                |  NULL |
| NULL                                                |  NULL |
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
| Interpreter of Maladies                             |   198 |
| Coraline                                            |   208 |
| 10% Happier                                         |   256 |
| The Namesake                                        |   291 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| White Noise                                         |   320 |
| Oblivion: Stories                                   |   329 |
| Consider the Lobster                                |   343 |
| A Hologram for the King: A Novel                    |   352 |
| Lincoln In The Bardo                                |   367 |
| fake_book                                           |   428 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| American Gods                                       |   465 |
| The Circle                                          |   504 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Amazing Adventures of Kavalier & Clay           |   634 |
+-----------------------------------------------------+-------+
21 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC
    -> ;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay           |   634 |
| Where I'm Calling From: Selected Stories            |   526 |
| The Circle                                          |   504 |
| American Gods                                       |   465 |
| A Heartbreaking Work of Staggering Genius           |   437 |
| fake_book                                           |   428 |
| Lincoln In The Bardo                                |   367 |
| A Hologram for the King: A Novel                    |   352 |
| Consider the Lobster                                |   343 |
| Oblivion: Stories                                   |   329 |
| White Noise                                         |   320 |
| Norse Mythology                                     |   304 |
| Just Kids                                           |   304 |
| The Namesake                                        |   291 |
| 10% Happier                                         |   256 |
| Coraline                                            |   208 |
| Interpreter of Maladies                             |   198 |
| Cannery Row                                         |   181 |
| What We Talk About When We Talk About Love: Stories |   176 |
| NULL                                                |  NULL |
| NULL                                                |  NULL |
+-----------------------------------------------------+-------+
21 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT title,pages FROM books 
    -> WHERE pages = (SELECT MAX(pages)FROM books);
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> 



