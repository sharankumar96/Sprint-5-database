
CREATE DATABASE school;

USE school;


CREATE TABLE classes (
    pk_class_id INT PRIMARY KEY,
    class_name VARCHAR(50)
);


CREATE TABLE subjects (
    pk_subject_id INT PRIMARY KEY,
    subject VARCHAR(50)
);


CREATE TABLE students (
    pk_student_id INT PRIMARY KEY,
    s_name VARCHAR(50),
    date_of_birth DATE,
    contact_number VARCHAR(15),
    name_of_guardian VARCHAR(50),
    fk_class_id INT,
    FOREIGN KEY (fk_class_id) REFERENCES classes(pk_class_id)
);


CREATE TABLE teachers (
    pk_teacher_id INT PRIMARY KEY,
    t_name VARCHAR(50),
    fk_subject_id INT,
    FOREIGN KEY (fk_subject_id) REFERENCES subjects(pk_subject_id)
);


CREATE TABLE examinations (
    pk_exam_id INT PRIMARY KEY,
    exam_name VARCHAR(50),
    date DATE,
    fk_subject_id INT,
    FOREIGN KEY (fk_subject_id) REFERENCES subjects(pk_subject_id)
);


SELECT * FROM students WHERE fk_class_id = your_class_id;

SELECT * FROM examinations WHERE fk_subject_id = your_subject_id;

SELECT * FROM teachers WHERE fk_subject_id = your_subject_id;

SELECT * FROM students WHERE date_of_birth < 'YYYY-MM-DD';
