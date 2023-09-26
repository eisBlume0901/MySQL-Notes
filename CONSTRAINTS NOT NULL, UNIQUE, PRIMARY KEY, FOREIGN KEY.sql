-- UNIQUE CONSTRAINT ensures that all values in a column are different
-- Using UNIQUE when creating a table
-- create table products(
-- 	product_id int,
--     product_name varchar(25) unique,
--     price decimal(4, 2)
-- );

-- Using CONSTRAINT and UNIQUE through ALTER keyword
-- alter table products
-- add constraint
-- unique(product_name);

-- Using UNIQUE only through ALTER keyword
-- alter table products
-- add unique(product_name);

-- Using DROP through ALTER keyword to drop unique constraint on a particular column
-- alter table products
-- drop index product_name;

-- insert into products
-- values(945, "Concealer", 12.9), 
-- 	  (950, "Lipstick", 6.75),
--       (933, "Powder", 8.94), 
--       (921, "Mascara", 10.7);
--       (945, "Concealer", 13.5); -- Creates an error DUPLICATE ENTRY
-- Also executing it 2 times with insert into keyword still in the query
-- would cause DUPLICATE ENTRY error
-- select * from products;

-- USING NOT NULL when creating a table
-- create table products(
-- 	product_id int,
--     product_name varchar(25),
--     price decimal(4, 2) not null
-- );

-- Using NOT NULL through ALTER and MODIFY keyword
-- alter table products
-- modify price decimal(4, 2) not null;

-- insert into products
-- values(974, "Eye Liner", NULL); -- Creates an error COLUMN CANNOT BE NULL
-- Can set it to 0 instead but should not be NULL
-- select * from products;

-- Using UNIQUE CONSTRAINT to one column only
-- create table persons(
-- 	id int not null,
--     last_name varchar(50) not null,
--     first_name varchar(50),
--     age int,
--     unique(id)
-- );

-- insert into persons
-- values(19545, "Greenleaf", "Emerald", 29),
-- 	  (19485, "Ethereal", "Claire", 19),
--       (19321, "Watson", "Amelia", 24),
--       (19475, "Pendragon", "Sophie", 23);

-- insert into persons
-- values(null, null, "Kate", 19); -- Creates an error COLUMN CANNOT BE NULL

-- select * from persons;

-- Using UNIQUE CONSTRAINT in multiple columns
-- Use a placeholder for the values so that it takes effect
-- or else it would allow duplicate entries
-- create table students(
-- 	id int not null,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null,
--     course varchar(50) not null,
--     year_level int not null,
--     constraint uc_student unique(id, first_name, last_name)
-- );

-- insert into students
-- values(24594, "Dianna", "Poplar", "Tourism", 2),
-- 	  (23661, "Marybelle", "Ensign", "Communication", 3),
--       (21548, "Darlene", "Mund", "Architecture", 1),
--       (21402, "Anelle", "Ziolkowski", "Computer Science", 4);
      
-- insert into students
-- values(21402, "Anelle", "Ziolkowski", "Computer Science", 3); 
-- Creates an error DUPLICATE ENTRY for key students.uc_person

-- Using PRIMARY KEY (combination of UNIQUE and NULL)
-- A table can only have one PRIMARY key, and in the table, this alter
-- primary key can consist of single or multiple columns (fields)
-- Multiple column use of primary key
-- create table students(
-- 	id int,
--     first_name varchar(50),
--     last_name varchar(50),
--     course varchar(50),
--     year_level int,
--     constraint pk_student primary key (id, last_name)
-- );

-- Single column use of primary key
-- create table students(
-- 	id int,
--     first_name varchar(50),
--     last_name varchar(50),
--     course varchar(50),
--     year_level int,
--     primary key(id)
-- );

-- Multiple column use of PRIMARY KEY through ALTER keyword
-- alter table students
-- add constraint pk_student primary key (id, last_name);

-- Single column use of PRIMARY KEY through ALTER keyword
-- alter table students
-- add primary key(id);

-- Using DROP to drop primary key constraint
-- alter table students
-- drop primary key;