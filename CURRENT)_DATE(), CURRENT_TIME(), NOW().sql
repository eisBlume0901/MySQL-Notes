-- To create a table
-- CREATE TABLE test(
-- 	my_date DATE,
--     my_time TIME,
--     my_datetime DATETIME
-- );

-- Using CURRENT_DATE(), CURRENT_TIME(), NOW() built-in function
-- INSERT INTO test
-- VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());
-- SELECT * FROM test;

-- Using arithmetic operations and null
-- INSERT INTO test
-- VALUES(CURRENT_DATE() + 1, NULL, NULL);
-- SELECT * FROM test;
-- RETURNS
-- 2023-09-24	19:03:03	2023-09-24 19:03:03
-- 2023-09-24	19:03:07	2023-09-24 19:03:07
-- 2023-09-24	19:03:36	2023-09-24 19:03:36
-- 2023-09-25		

INSERT INTO test
VALUES(CURRENT_DATE() - 1, NULL, NULL);
SELECT * FROM test;
-- RETURNS
-- 2023-09-24	19:03:03	2023-09-24 19:03:03
-- 2023-09-24	19:03:07	2023-09-24 19:03:07
-- 2023-09-24	19:03:36	2023-09-24 19:03:36
-- 2023-09-25		
-- 2023-09-23		