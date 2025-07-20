-- Managing Database (DDL)

-- 1) Creating a database 
-- [ Syntax:- CREATE DATABASE IF NOT EXISTS <db-name> ] 
CREATE DATABASE IF NOT EXISTS TEST_MANAGEDB;

-- 2) Using an existing database or switching between existing databases
-- [ Syntax:- USE <db-name> ] 
USE TEST_MANAGEDB;

-- 3) Deleteing an existing database
-- [ Syntax:- DROP DATABASE IF EXISTS <db-name> ]
DROP DATABASE IF EXISTS TEST_MANAGEDB;

-- 4) Seeing all the existing databases
-- [ Syntax:- SHOW DATABASES ]
SHOW DATABASES;

-- 5) Seeing all the tables in the selected database
-- [ Syntax:- SHOW TABLES ]
SHOW TABLES; 

