-- To create a database
-- CREATE DATABASE myDB;

-- To use the database
-- USE myDB;

-- To drop the database
-- But we cannot drop a read-only database
-- DROP DATABASE myDB;

-- To make the database read only
-- 1 represents true, 0 is false
-- ALTER DATABASE myDB READ ONLY = 0;

-- To create a table and specify the column name and data type
-- VARCHAR(N) - means string with a max of N characters
-- DECIMAL(N, M) - means N max of decimal with M decimal places
-- CREATE TABLE employees (
-- 	employee_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     hourly_pay DECIMAL(5, 2),
--     hire_date DATE
-- );

-- To select all data columns from a table
-- Use *
-- SELECT * FROM employees;

-- To rename the table
-- RENAME TABLE employees TO workers;
-- RENAME TABLE workers to employees;

-- To drop a table meaning to remove the table
-- DROP TABLE employees;

-- To alter table by adding another column
-- ALTER TABLE employees
-- ADD phone_number VARCHAR(15);

-- To alter table by renaming existing column
-- ALTER TABLE employees
-- RENAME COLUMN phone_number TO email;

-- To alter table by modifying column data type
-- ALTER TABLE employees
-- MODIFY COLUMN email VARCHAR(100);

-- To alter table and changing the column order using AFTER 
-- and FIRST keyword
-- ALTER TABLE employees
-- MODIFY email VARCHAR(100) 
-- AFTER last_name;

-- ALTER TABLE employees
-- MODIFY email VARCHAR(100)
-- FIRST;

-- To drop a column/remove a column from a table
-- ALTER TABLE employees
-- DROP COLUMN email;

-- To insert row data into the table
-- VALUES(employee_id, first_name, last_name, hourly_pay, hire_date)
-- The parameters inside values should have correct data specified by its type
-- or else it would return an error
-- FORMAT OF DATE is always Year-Month-Day
-- INSERT INTO employees
-- VALUES (1, "Emerald", "Greenleaf", 485.5, "2023-09-24");
-- SELECT * FROM employees;

-- To insert multiple row datas
-- INSERT INTO employees
-- VALUES (2, "Claire", "Ethereal", 994.9, "2023-09-09"),
-- 	   (3, "Amelie", "Watson", 542.5, "2023-08-07"),
-- 	   (4, "Sophie", "Pendragon", 499.9, "2023-04-09");
-- SELECT * FROM employees;

-- To insert data with some missing data values
-- The parameters inside the parenthesis should be values declared 
-- when we first created the table
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (5, "Odette", "Dyssen");
-- SELECT * FROM employees;

-- To select specific column from a table
-- SELECT 
-- 	first_name,
--     last_name
-- FROM employees;

-- SELECT
-- 	last_name,
--     first_name
-- FROM employees;

-- To search a specific row data use WHERE clause and comparison operators
-- SELECT *
-- FROM employees
-- WHERE employee_id = 1;
-- RETURNS 
-- 	1	Emerald	Greenleaf	485.50	2023-09-24

-- SELECT *
-- FROM employees
-- WHERE first_name = "Emerald";
-- RETURNS 	
-- 1	Emerald	Greenleaf	485.50	2023-09-24

-- SELECT *
-- FROM employees
-- WHERE hourly_pay > 500.0;
-- RETURNS 
-- 2	Claire	Ethereal	994.90	2023-09-09
-- 3	Amelie	Watson	542.50	2023-08-07

-- SELECT *
-- FROM employees
-- WHERE hire_date <= "2023-09-01";
-- RETURNS
-- 3	Amelie	Watson	542.50	2023-08-07
-- 4	Sophie	Pendragon	499.90	2023-04-09

-- SELECT *
-- FROM employees
-- WHERE employee_id != 1;
-- RETURNS
-- 2	Claire	Ethereal	994.90	2023-09-09
-- 3	Amelie	Watson	542.50	2023-08-07
-- 4	Sophie	Pendragon	499.90	2023-04-09
-- 5	Odette	Dyssen		

-- To find a column that has a row data of null
-- SELECT *
-- FROM employees
-- WHERE hire_date IS NULL;
-- RETURNS
-- 5	Odette	Dyssen	

-- To find a column that has a row data that is not null
-- SELECT *
-- FROM employees
-- WHERE hire_date IS NOT NULL;
-- RETURNS
-- 1	Emerald	Greenleaf	485.50	2023-09-24
-- 2	Claire	Ethereal	994.90	2023-09-09
-- 3	Amelie	Watson	542.50	2023-08-07
-- 4	Sophie	Pendragon	499.90	2023-04-09

-- To update specific row data, use SET and WHERE 
-- SET SQL_SAFE_UPDATES = 0;
-- Safe update mode - prevents from accidentally updating or deleting large
-- number of rows without a WHERE clause that identifies which rows to
-- modify. It is designed to protect against unintentional data loss.
-- UPDATE employees
-- SET hourly_pay = 320.05
-- WHERE employee_id = 5;
-- SELECT * FROM employees;

-- To update multiple data in a row, use SET and WHERE
-- UPDATE employees
-- SET hourly_pay = 350.49,
-- 	hire_date = "2022-11-25"
-- WHERE employee_id = 5;
-- SELECT * FROM employees;

-- To update a data in a row with a NULL type
-- UPDATE employees
-- SET hire_date = null
-- WHERE employee_id = 5;
-- SELECT * FROM employees;

-- To update a data in a column, omit the WHERE clause
-- WARNING: This will update the values in a column with the same
-- value you set
-- UPDATE employees
-- SET hourly_pay = 549.5;
-- SELECT * FROM employees;

-- To delete all rows in a table
-- DELETE FROM employees

-- To delete a specific row in a table
-- DELETE FROM employees
-- WHERE employee_id = 5;
-- SELECT * FROM employees
-- RETURNS
-- 1	Emerald	Greenleaf	485.50	2023-09-24
-- 2	Claire	Ethereal	994.90	2023-09-09
-- 3	Amelie	Watson	542.50	2023-08-07
-- 4	Sophie	Pendragon	499.90	2023-04-09

-- COMMIT is a safe check point
-- COMMIT saves all the modificaitons made in the current. If
-- you commit a database, it saves all the changes that have been
-- done till that particular point. By default, the MySQL database
-- commits/saves the changes done automatically

-- ROLLBACK restores to the safe check point/COMMIT
-- ROLLBACK operation undoes all the changes done by the current
-- transaction

-- Example of using COMMIT and ROLLBACK by undoing the delete function
-- 1st 
-- SET AUTOCOMMIT = OFF;
-- 2nd
-- COMMIT;
-- 3rd
-- DELETE FROM employees;
-- 4th
-- ROLLBACK;
-- SELECT * FROM employees;

