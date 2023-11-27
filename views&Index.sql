CREATE VIEW physics_failed_students AS
SELECT student_name , student.class, student_grade.grade
FROM student
INNER JOIN student_grade ON student.id = student_grade.student_id
WHERE student_grade.subject = 'PHYSICS' AND student_grade.grade = 'F';



CREATE VIEW chemistry_A_students AS
SELECT student_name , student.class, student_grade.grade
FROM student
INNER JOIN student_grade ON student.id = student_grade.student_id
WHERE student_grade.subject = 'CHEMISTRY' AND student_grade.grade = 'A';


select pk_emp_id, first_name FROM emloyees WHERE email = 'sharankumarkpclt@gmail.com'; 

CREATE INDEX emloyees_mail_idx ON emloyees(email);

-- to ON time
\timing