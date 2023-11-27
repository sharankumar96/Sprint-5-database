-- to find total sum of products
storedb=# SELECT SUM(price) FROM products;

-- to find total avg of products

storedb=# SELECT AVG(price) FROM products;

-- to find most expensive products 

SELECT MAX(price) AS most_expensive_products FROM products;

SELECT MIN(price) AS most_cheapest_products_price FROM products;

SELECT COUNT(*) AS total_products FROM PRODUCTS;

SELECT added_date, COUNT(*) AS no_of_products_added FROM products GROUP BY added_date; 

SELECT added_date, COUNT(*) AS no_of_products_added FROM products GROUP BY added_date HAVING added_date <'2023-12-12'; 

SELECT added_date, COUNT(*) AS no_of_products_added FROM products GROUP BY added_date HAVING added_date > '2023-12-12'; 

SELECT UPPER(product_name) FROM products;

SELECT LOWER(product_name) FROM products;

SELECT product_name, LENGTH(product_name) FROM products;

SELECT SUBSTRING(product_name,2, 5) AS ExtractString FROM products;

UPDATE products SET price = 45.5 WHERE pk_category_id







