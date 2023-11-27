CREATE TABLE category(
    pk_category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100),
    description VARCHAR(400)

);


-- insert data into a table


INSERT INTO category VALUES(
    1,
    'grocery',
    'daily needs'
    
);


INSERT INTO category VALUES(
    2,
    'stationery',
    'book,pen,school items,sheets'
    
);


INSERT INTO category VALUES(
    3,
    'fancy',
    'beauty and personal care'
    
);


INSERT INTO category VALUES(
    4,
    'Electronics',
    'Home appliances and gadgets'
    
),

(5,'Furniture','Furnishing items like sofa etc .');


 pk_category_id | category_name |         description
----------------+---------------+------------------------------
              1 | grocery       | daily needs
              2 | stationery    | book,pen,school items,sheets
              3 | fancy         | beauty and personal care
(3 rows)


 CREATE TABLE products(
    pk_poducts_id SERIAL PRIMARY KEY,
    product_name VARCHAR(200),
    fk_category_id INT,
    description VARCHAR(400),
    price FLOAT,
    added_date DATE,
    FOREIGN KEY(fk_category_id) REFERENCES category(pk_category_id) ON DELETE CASCADE ON UPDATE CASCADE
 );


 INSERT INTO products VALUES (
    1,
    'classmate notebook',
    2,
    'lined notebook',
    45,
    '01-12-2023'
 );

 INSERT INTO products VALUES(
    2,
    'mayblelline eyeliner',
    3,
    'black color',
    380,
    '12-12-2023'

 );

 INSERT INTO products VALUES(
    3,
    'maggi noodles',
    1,
    'chicken flavor',
    30,
    '01-01-2024'
 );

 INSERT INTO products VALUES(
    4,
    'bru',
    1,
    'coffie powder',
    53,
    '18-05-2025'
 ),
(
    5,
    'sunflower',
    1,
    'oil',
    155,
    '25-11-2025'

 ),
(
    6,
    'himalaya pink salt',
    1,
    'salt',
    150,
    '22-09-2026'

 );
 INSERT INTO products VALUES(
    7,
    'yippie noodles',
    1,
    'veg noodles',
    30,
    '07-03-2024'
 );


--  to display products that are added on 

SELECT * FROM products WHERE added_date = '01-01-2024';


SELECT * FROM products WHERE price < 100;

SELECT product_name, price FROM products;

CREATE TABLE bills(
    pk_bill_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(50),
    bill_date DATE
);

 CREATE TABLE emloyees(
    pk_emp_id SERIAL PRIMARY KEY,
    type VARCHAR(100),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200),
    phone VARCHAR(100),
    gender VARCHAR(20),
    dob DATE
 );

--  select command with number of records to return

SELECT * FROM products LIMIT 4;

-- Lke oprator

SELECT * FROM emloyees WHERE last_name LIKE 'r%';

SELECT * FROM products WHERE product_name LIKE 'm%';

SELECT * FROM products WHERE product_name LIKE '%noodles%';

SELECT * FROM emloyees WHERE first_name LIKE '_g%';

SELECT * FROM emloyees WHERE first_name LIKE '__a%';

SELECT * FROM emloyees WHERE first_name LIKE '__a%' LIMIT 2;

SELECT * FROM emloyees WHERE phone LIKE '6226______';

SELECT * FROM emloyees WHERE type LIKE '%Manager%';


-- update command

UPDATE emloyees SET email = 'sharankumarkpclt@gmail.com' WHERE first_name = 'Bgatha' AND last_name = 'rajuettan';

-- delete command

DELETE FROM emloyees WHERE first_name = 'kkatha';

UPDATE emloyees SET type = 'BPO' WHERE first_name = 'babu' AND last_name = 'babumon';







