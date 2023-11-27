INSERT INTO tbl_stock (pk_int_stock_id, vchr_name, int_quantity, int_price, fk_int_supplier) 
VALUES 
(1, 'Mouse', 10, 500, 1),
(2, 'Keyboard', 5, 450, 3),
(3, 'Modem', 10, 1200, 2),
(4, 'Memory', 100, 1500, 5),
(5, 'Headphone', 50, 750, 4),
(6, 'Memory', 2, 3500, 4);
 
 UPDATE tbl_stock
SET int_price = int_price + 1.50;

 SELECT * FROM tbl_stock WHERE int_price > 1000;

 SELECT * FROM tbl_stock ORDER BY vchr_name;

 SELECT * FROM tbl_stock ORDER BY vchr_name LIMIT 3;

 SELECT * FROM tbl_stock ORDER BY vchr_name DESC LIMIT 3;

 SELECT vchr_name, int_quantity, int_price, int_quantity * int_price AS extended_price
FROM tbl_stock;

 DELETE FROM tbl_stock WHERE fk_int_supplier = 5;

INSERT INTO tbl_dept (pk_int_dept_id, vchr_dept_name, vchr_dept_description) 
VALUES 
(1, 'Computer Science', 'CS'),
(2, 'Electronics', 'EC'),
(3, 'Commerce', 'CC'),
(4, 'Arts', 'AR');