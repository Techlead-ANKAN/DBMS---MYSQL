-- -------------------------------------------
-- Data Retrieval Language (DRL)
-- -------------------------------------------
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

-- 11) % → Wildcard for zero or more characters in a pattern
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> WHERE <column-name> LIKE '<pattern>%']
-- Example: Find books where the title starts with 'A'
SELECT Title FROM Books WHERE Title LIKE 'A%';

-- 12) _ → Wildcard for exactly one character in a pattern
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> WHERE <column-name> LIKE '_<pattern>']
-- Example: Find books where the title has any one character followed by 'it' (e.g., "Hit", "Bit", etc.)
SELECT Title FROM Books WHERE Title LIKE '_it';

-- 13) %A_ → Combined pattern matching: ends with 'A' and one more character after it
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> WHERE <column-name> LIKE '%A_']
-- Example: Find books where the title contains 'A' as the second last character (e.g., "DATA", "PAPA", etc.)
SELECT Title FROM Books WHERE Title LIKE '%A_';

-- 14) ORDER BY → Sorts the result set in ascending or descending order based on column values
-- [ Syntax: SELECT <column-name(s)> FROM <table-name> ORDER BY <column-name> ASC / DESC ]
-- ASC → Ascending order (default) | DESC → Descending order
SELECT Price FROM Books ORDER BY Price ASC;

-- 15) GROUP BY → Groups rows that have the same values in specified columns into summary rows
-- [ Syntax: SELECT <column(s)>, AGGREGATE_FUNCTION(column) FROM <table-name> WHERE <condition> GROUP BY <column(s)> ]
-- Used with aggregate functions like COUNT(), SUM(), AVG(), MIN(), MAX() to perform operations per group
-- All non-aggregated columns in SELECT must appear in GROUP BY

-- Example: Count how many books exist in each genre
SELECT Genre, COUNT(*) AS TotalBooks
FROM Books
GROUP BY Genre;

-- Example: Find the average price of books for each genre
SELECT Genre, AVG(Price) AS AveragePrice
FROM Books
GROUP BY Genre;

-- Example: Find the maximum price of books in each genre having more than 2 books
SELECT Genre, MAX(Price) AS MaxPrice
FROM Books
GROUP BY Genre
HAVING COUNT(*) > 2;
