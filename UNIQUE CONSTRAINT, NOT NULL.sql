-- UNIQUE CONSTRAINT ensures that all values in a column are different
-- Using UNIQUE when creating a table
-- create table products(
-- 	product_id int,
--     product_name varchar(25) UNIQUE,
--     price decimal(4, 2)
-- );

-- Using CONSTRAINT and UNIQUE through ALTER keyword
-- alter table products
-- add constraint
-- unique(product_name);

-- insert into products
-- values(945, "Concealer", 12.9), 
-- 	  (950, "Lipstick", 6.75),
--       (933, "Powder", 8.94), 
--       (921, "Mascara", 10.7);
--       (945, "Concealer", 13.5); -- Creates an error DUPLICATE ENTRY
-- Also executing it 2 times with insert into keyword still in the query
-- would cause DUPLICATE ENTRY error
-- select * from products;

 
