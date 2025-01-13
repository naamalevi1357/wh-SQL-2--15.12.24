-- 7
DELETE from shopping WHERE name like 'Orange';
--A query that deletes a row from a table,
--It is always mandatory to specify the word WHERE after this 
--Because we don't want every table to be deleted 
--In the example, we set to delete the existing row in the NAME column named 'Orange'


-- 8
UPDATE shopping SET name = 'Bisli' WHERE name LIKE 'Bamba'
UPDATE shopping SET amount=1 WHERE name LIKE 'Milk'

--An UPDATE query is a query that updates existing values ​​in the table, the word SET is always present in the UPDATE query  
--And it is always mandatory to specify the word WHERE after that because we do not want a value that we want to change to change the entire column in the table 
--In example 1 we updated the NAME column to be equal to 'Bisli' where? In the position in the NAME column where the name 'Bamba' exists 
--Example 2 We updated the amount column to be equal to amount 1 in the position in the NAME column whose name is 'Milk'

-- 9

ALTER TABLE shopping ADD COLUMN maavar

-- An ALTER TABLE query is a query that adds the column to the existing table 
--In this example we have ended a column called maavar
  
-- 10 
UPDATE shopping SET maavar=6 WHERE id=1;
UPDATE shopping SET maavar=3 WHERE id=2;
UPDATE shopping SET maavar=12 WHERE id=3;
UPDATE shopping SET maavar=8 WHERE id=4;
UPDATE shopping SET maavar=5 WHERE id=5;
--In this query we update the values ​​in the maavar 
--column and then specify which row to specify (in this example we update the ID column)

-- 11
SELECT * FROM shopping WHERE amount > 1 AND maavar > 5
SELECT * FROM shopping WHERE maavar BETWEEN 3 AND 5

-- This query tells me to bring me from the entire table the values
-- ​​from the amount column that is greater than 1 and was requested as 
--the last operation (you can see this on the AND operation) from the maavar column that is greater than the number 5.
-- And in the second query it indicates bring me from the whole table from the maavar column between the number 3 and 5.

-- 12

SELECT * FROM shopping ORDER BY maavar
SELECT * FROM shopping ORDER BY maavar DESC
 
-- The order by query sorts columns from small to large, you can sort even after creating a group.
--And if we want from the largest to the smallest, we specify desc
--Example 1 to sort the maavar column (which automatically starts from small to large)
--In example 2 to sort the maavar column from largest to smallest, we will know this because we put the word DESC at the end of the sentence
  

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

-- 15

INSERT INTO shopping VALUES (6, 'Onions', 3, 6);
INSERT INTO shopping VALUES (7, 'Orio', 1, 8);
Select maavar, COUNT(*)FROM shopping GROUP BY maavar

--A GROUP BY query creates a group of data \ values ​​for us, it can be done on one column or on several positions from a table, 
--And in this example we added 2 lines 
--And then we asked for the creation of a group on the maavar column that would also calculate the amount, so we specified count.

-- 16

SELECT id AS "SECRET", name, amount, maavar FROM shopping

--An AS query is a query that performs an exchange of changing the name of the display only, (referring to the heading of columns), 
--I mentioned to him that the name of the column (display) of ID will be replaced by the name of "SECRET"
--And bring me all the other columns from the shopping table
