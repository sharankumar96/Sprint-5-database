CREATE TABLE classes (
    pk_class_id INT PRIMARY KEY,
    class_name VARCHAR(255)
);


CREATE TABLE subjects (
    pk_subject_id INT PRIMARY KEY,
    subject VARCHAR(255)
);

 
CREATE TABLE teachers (
    pk_teacher_id INT PRIMARY KEY,
    t_name VARCHAR(255),
    fk_subject_id INT,
    FOREIGN KEY (fk_subject_id) REFERENCES subjects(pk_subject_id)
);

CREATE TABLE examinations (
    pk_exam_id INT PRIMARY KEY,
    exam_name VARCHAR(255),
    date DATE,
    fk_subject_id INT,
    FOREIGN KEY (fk_subject_id) REFERENCES subjects(pk_subject_id)
);


INSERT INTO classes (pk_class_id, class_name) VALUES
(1, 'Class A'),
(2, 'Class B');

INSERT INTO subjects (pk_subject_id, subject) VALUES
(1, 'Math'),
(2, 'Science');

INSERT INTO students (pk_student_id, s_name, date_of_birth, contact_number, name_of_guardian, fk_class_id) VALUES
(1, 'Student 1', '2000-01-01', '9876543210', 'LEO DAS', 1),
(2, 'Student 2', '2001-02-02', '9898765432', 'ANTONY DAS', 1),
(3, 'Student 3', '2002-03-03', '9887654321', 'HARNOLD DAS', 2);


INSERT INTO teachers (pk_teacher_id, t_name, fk_subject_id) VALUES
(1, 'Teacher 1', 1),
(2, 'Teacher 2', 2);

INSERT INTO examinations (pk_exam_id, exam_name, date, fk_subject_id) VALUES
(1, 'Math Exam 1', '2023-05-10', 1),
(2, 'Science Exam 1', '2023-05-15', 2);



SELECT * FROM students WHERE fk_class_id = 1;
SELECT * FROM examinations WHERE fk_subject_id = 1;
SELECT * FROM teachers WHERE fk_subject_id = 1;
SELECT * FROM students WHERE date_of_birth < '2000-12-19';
SELECT * FROM students LIMIT 3;
SELECT DISTINCT subject FROM subjects;
SELECT * FROM students WHERE name_of_guardian LIKE 'J%';
SELECT * FROM students WHERE contact_number LIKE '98%';
SELECT * FROM students WHERE s_name LIKE '%e';
SELECT * FROM teachers WHERE t_name LIKE '%**%';
SELECT * FROM subjects WHERE subject LIKE 'M%ss';
SELECT * FROM examinations WHERE exam_name LIKE '%*%';
SELECT * FROM students WHERE LENGTH(name_of_guardian) = 3;







CREATE TABLE bill_items(
    item_id SERIAL PRIMARY KEY,
    fk_products_id INT,
    item_price FLOAT,
    item_quantity INT,
    fk_bill_id INT,
    FOREIGN KEY(fk_products_id)REFERENCES products(pk_poducts_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(fk_bill_id) REFERENCES bills(pk_bill_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO bill_items VALUES(
    1,1,45,3,1
),
(2,3,30,3,1

),
(3,4,10,1,1
),
(4,4,10,4,2
),
(5,2,380,2,3);


SELECT pk_bill_id, bill_date,customer_name, SUM(item_price * item_quantity) AS total_bill
FROM bill_items INNER JOIN bills
ON pk_bill_id = fk_bill_id GROUP BY pk_bill_id ORDER BY pk_bill_id;


SELECT product_name ,quantity
FROM products LEFT JOIN stocks
ON pk_poducts_id = fk_product_id;

SELECT product_name ,category_name
FROM products RIGHT JOIN category
ON fk_category_id = pk_category_id;

SELECT * FROM products WHERE fk_category_id 
IN (select pk_category_id FROM category WHERE category_name = 'grocery');


