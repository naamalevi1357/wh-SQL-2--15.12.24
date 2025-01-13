-- 11
SELECT * FROM shopping WHERE amount > 1 AND maavar > 5
SELECT * FROM shopping WHERE maavar BETWEEN 3 AND 5

-- This query tells me to bring me from the entire table the values
-- ​​from the amount column that is greater than 1 and was requested as 
--the last operation (you can see this on the AND operation) from the maavar column that is greater than the number 5.
-- And in the second query it indicates bring me from the whole table from the maavar column between the number 3 and 5.


-- 13
CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT);
INSERT INTO books VALUES (1, 'SQL PROGRAMMING');
INSERT INTO books VALUES (2, 'CSHARP PROGRAMMING');
DELETE FROM books;

--In this query we created a new table called books and defined
-- a column called ID which is INTEGER and PRIMARY KEY, which is
-- the key of the table, and another column called NAME which we defined that 
--the value in it is text and then we added rows to the table with
-- an INSERT query and a final query duplicates the entire table.

-- 14
SELECT COUNT(*)from shopping
SELECT MAX(amount) from shopping
SELECT AVG(amount) from shopping
SELECT MIN(amount) from shopping

--Query1 brings me the entire amount from the entire table 
--Query 2 brings me the maximum from the amount column 
--Query 3 brings me the average from the amount column 
--Query 4 brings me the minimum from the amount column.
