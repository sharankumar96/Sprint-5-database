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