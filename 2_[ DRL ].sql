-- Data Retrieval Language (DRL)
-- [ Syntax: SELECT <column-name(s)> / * FROM <table-name> ] 
-- Used to retrieve (fetch) data from a table.

-- 🔹 Clauses:

-- 1) * → Selects all columns and all rows from the given table
SELECT * FROM Books;

-- 2) <column name(s)> → Selects specific columns from all rows of the table
SELECT BookID, Title FROM Books;

-- 3) WHERE → Used to filter rows based on a condition
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <condition> ]
SELECT BookID, Title, Price FROM Books WHERE Price > 500;

-- 4) BETWEEN → Filters rows where column value is between two values (inclusive)
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <column-name> BETWEEN <value1> AND <value2> ]
SELECT BookID, Title, Price FROM Books WHERE Price BETWEEN 449 AND 699;

-- 5) IN → Shows rows where the column value matches any value in a given list
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <column-name> IN (value1, value2, ...) ]
SELECT BookID, Title, Price FROM Books WHERE Price IN (479, 449, 359);

-- 6) AND → Combines multiple conditions; all conditions must be true
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <condition1> AND <condition2> ]
SELECT * FROM Books WHERE Genre = 'Programming' AND Price > 500;

-- 7) OR → Combines multiple conditions; any one condition must be true
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <condition1> OR <condition2> ]
SELECT * FROM Books WHERE Genre = 'Fiction' OR Genre = 'Fantasy';

-- 8) NOT IN → Filters out rows that match values in the given list
-- [ Syntax: SELECT <column name(s)> FROM <table-name> WHERE <column-name> NOT IN (value1, value2, ...) ]
SELECT * FROM Books WHERE Genre NOT IN ('Fantasy', 'Self-help');

-- 9) IS NULL → Checks if a column has no value (i.e., it is NULL)
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> WHERE <column-name> IS NULL ]
-- Find books with NULL genre
SELECT BookID, Title, Genre FROM Books WHERE Genre IS NULL;

-- 10) IS NOT NULL → Checks if a column has value (i.e., it is NOT NULL)
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> WHERE <column-name> IS NOT NULL ]
-- Find books with NOT NULL genre
SELECT BookID, Title, Genre FROM Books WHERE Genre IS NOT NULL;

