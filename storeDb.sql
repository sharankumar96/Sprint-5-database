-- (used to get the db list)
\l

-- create database 
CREATE DATABASE storedb;

-- used to connect with db 
-- \c <db name>
\c storedb 

-- to create a table

CREATE TABLE category(
    pk_category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100),
    description VARCHAR(400)

);
-- To Get The Table View

storedb=# select * from category;
 pk_category_id | category_name | description
----------------+---------------+-------------
(0 rows)


-- To Get Table List
storedb=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner
--------+----------+-------+----------
 public | category | table | postgres
(1 row)


-- TO View Table Stracture
storedb=# \d category
                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)

    -- add a coloum to the table
ALTER TABLE category ADD count float;


storedb=# ALTER TABLE category ADD count float;




storedb=# select * from category;
 pk_category_id | category_name | description | count
----------------+---------------+-------------+-------
(0 rows)



storedb=# \d category
                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
 count          | double precision       |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)


-- change data tyoe of a column 

ALTER table category ALTER COLUMN count TYPE int;




                                              Table "public.category"
     Column     |          Type          | Collation | Nullable |                     Default
----------------+------------------------+-----------+----------+--------------------------------------------------
 pk_category_id | integer                |           | not null | nextval('category_pk_category_id_seq'::regclass)
 category_name  | character varying(100) |           |          |
 description    | character varying(400) |           |          |
 count          | integer                |           |          |
Indexes:
    "category_pkey" PRIMARY KEY, btree (pk_category_id)

    -- rename a column

    ALTER TABLE category RENAME COLUMN category_name TO c_name;



storedb=#     ALTER TABLE category RENAME COLUMN category_name TO c_name;
ALTER TABLE
storedb=# select * from category;
 pk_category_id | c_name | description | count
----------------+--------+-------------+-------
(0 rows)


-- drop a column

ALTER TABLE category DROP COLUMN count;


storedb=# ALTER TABLE category DROP COLUMN count;
ALTER TABLE
storedb=# select * from category;
 pk_category_id | c_name | description
----------------+--------+-------------
(0 rows)


-- rename a a table name

ALTER TABLE category RENAME TO categories;


-- drop a table 

DROP TABLE categories;


storedb=# DROP TABLE categories;
DROP TABLE
storedb=# \dt
Did not find any relations.
storedb=#

INSERT INTO emloyees VALUES(
    1,
    'MANAGER',
    'JANE',
    'AUSTEN',
    'janausten@gmail.com',
    '9965473569',
    'FEMALE',
    '1775-12-16'
);
INSERT INTO emloyees VALUES(
    2,
    'Manager',
    'Agatha',
    'raju',
    'rahulrahul@gmail.com',
    '6238267701',
    'male',
    '1996-08-16'
);
INSERT INTO emloyees VALUES(
    3,
     'Manager',
    'Bgatha',
    'rajuettan',
    'oprahul@gmail.com',
    '6226267701',
    'female',
    '1990-02-01'
);

INSERT INTO emloyees VALUES(
    4,
     'Manager',
    'kkatha',
    'rajoouettan',
    'oprahutl@gmail.com',
    '6226007701',
    'female',
    '1980-08-01'
);
INSERT INTO emloyees VALUES(
    4,
     'pro',
    'raju',
    'roopattan',
    ',akathaoprahutl@gmail.com',
    '8126007701',
    'female',
    '1968-01-01'
),
(5,
     'customer care',
    'radha',
    'radharadha',
    'radhamol@gmail.com',
    '9645277434',
    'female',
    '2000-02-01'
),
(
    6,
     'sales',
    'babu',
    'babumon',
    'babumon@gmail.com',
    '8086049144',
    'male',
    '1990-06-09'
);

INSERT INTO bills VALUES(
    1,
    'ATHIRA',
    '9856743098',
    '30-10-2023'

);

INSERT INTO bills VALUES(
    2,
    'ARUN',
    '9856343548',
    '31-10-2023'

);

INSERT INTO bills VALUES(
    3,
    'GAYATHRI',
    '9857895548',
    '01-11-2023'

);


-- where condition

SELECT * FROM emloyees WHERE gender = 'female';

SELECT * FROM products WHERE added_date =' 2024-01-01';

SELECT * FROM products WHERE price > 40;

SELECT product_name,price FROM products;

SELECT * FROM products WHERE price BETWEEN 10 AND 100;


CREATE TABLE student(
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    class VARCHAR(10) NOT NULL,
    section VARCHAR(10) NOT NULL
);
INSERT INTO student (student_name, class, section)
VALUES
('jim', '10', 'A'),
('reen','9','B'),
('arjun','11','C'),
('surya','10','C'),
('diya','9','A'),
('priya','11','B'),
('sneha','10','C'),
('sarah','9','A'),
('sam','11','A'),
('april','10','B');


CREATE TABLE student_grade(
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES student(id),
    subject VARCHAR(50) NOT NULL,
    grade VARCHAR(2) NOT NULL
);

INSERT INTO student_grade(student_id, subject, grade)VALUES

(1, 'CHEMISTRY', 'A'),
(1, 'PHYSICS', 'B'),
(1, 'BIOLOGY', 'F'),
(2, 'CHEMISTRY', 'B'),
(2, 'PHYSICS', 'F'),
(2, 'BIOLOGY', 'C'),
(3, 'CHEMISTRY', 'A'),
(3, 'PHYSICS', 'A'),
(3, 'BIOLOGY', 'A'),
(4, 'CHEMISTRY', 'B'),
(4, 'PHYSICS', 'F'),
(4, 'BIOLOGY', 'B'),
(5, 'CHEMISTRY', 'C'),
(5, 'PHYSICS', 'F'),
(5, 'BIOLOGY', 'A'),
(6, 'CHEMISTRY', 'B'),
(6, 'PHYSICS', 'B'),
(6, 'BIOLOGY', 'B'),
(7, 'CHEMISTRY', 'C'),
(7, 'PHYSICS', 'A'),
(7, 'BIOLOGY', 'A'),
(8, 'CHEMISTRY', 'F'),
(8, 'PHYSICS', 'B'),
(8, 'BIOLOGY', 'A'),
(9, 'CHEMISTRY', 'C'),
(9, 'PHYSICS', 'C'),
(9, 'BIOLOGY', 'F'),
(10, 'CHEMISTRY', 'F'),
(10, 'PHYSICS', 'A'),
(10, 'BIOLOGY', 'B');