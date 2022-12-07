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

