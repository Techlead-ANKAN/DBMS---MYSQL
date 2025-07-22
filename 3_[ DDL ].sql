-- -------------------------------------------
-- DML (Data Manipulation Language) Commands
-- -------------------------------------------

-- 1) INSERT INTO → Adds new rows to a table
-- Syntax:
-- INSERT INTO <table-name> (column1, column2, ...) VALUES (value1, value2, ...);
INSERT INTO Books (BookID, Title, Genre, Price) VALUES (101, 'DBMS Basics', 'Education', 299.00);

-- 2) UPDATE → Modifies existing rows
-- Syntax:
-- UPDATE <table-name> SET column1 = value1, column2 = value2 WHERE condition;
UPDATE Books SET Price = 350.00 WHERE BookID = 101;

-- 3) DELETE → Deletes existing rows
-- Syntax:
-- DELETE FROM <table-name> WHERE condition;
DELETE FROM Books WHERE BookID = 101;


-- ------------------------
-- Constraints in SQL
-- ------------------------

-- Create table with all constraints

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,           -- 1) PRIMARY KEY → Uniquely identifies each record
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,           -- 3) UNIQUE → No duplicate values allowed
    Age INT CHECK (Age >= 18),           -- 4) CHECK → Validates data based on a condition
    DepartmentID INT,
    Country VARCHAR(50) DEFAULT 'India', -- 5) DEFAULT → Assigns default value if none is provided
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- 2) FOREIGN KEY → Links to another table
);

-- Sample referenced table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


-- ----------------------------------
-- ALTER TABLE Operations
-- ----------------------------------

-- a) Change schema (Add new column)
-- Syntax:
-- ALTER TABLE <table-name> ADD <column-name> <datatype>;
ALTER TABLE Students ADD Gender VARCHAR(10);

-- b) Modify column datatype/size
-- Syntax:
-- ALTER TABLE <table-name> MODIFY <column-name> <new-datatype>;
ALTER TABLE Students MODIFY Name VARCHAR(150);

-- c) Change column name (MySQL syntax)
-- Syntax:
-- ALTER TABLE <table-name> CHANGE <old-column> <new-column> <datatype>;
ALTER TABLE Students CHANGE Gender Sex VARCHAR(10);

-- d) Drop a column
-- Syntax:
-- ALTER TABLE <table-name> DROP COLUMN <column-name>;
ALTER TABLE Students DROP COLUMN Sex;

-- e) Rename table
-- Syntax:
-- RENAME TABLE <old-table-name> TO <new-table-name>;
RENAME TABLE Students TO CollegeStudents;

-- f) Add a constraint after table creation
-- Example: Adding a UNIQUE constraint on Name
ALTER TABLE CollegeStudents ADD CONSTRAINT unique_name UNIQUE(Name);

-- g) Drop a constraint
-- (Note: Constraint names are required — use SHOW CREATE TABLE to view them)
-- Example (if constraint is named 'unique_name'):
ALTER TABLE CollegeStudents DROP INDEX unique_name;

