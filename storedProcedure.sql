CREATE OR REPLACE PROCEDURE insert_student(
    IN student_name VARCHAR (50),
    IN class VARCHAR (10),
    IN section VARCHAR(10)
    
)

LANGUAGE SQL 
AS $$
INSERT INTO student(student_name,class,section)
VALUES (student_name,class,section);
$$;


CALL insert_student('sharan','12','B');


CREATE OR REPLACE PROCEDURE insert_employees(
    IN type VARCHAR (100),
    IN first_name VARCHAR (200),
    IN last_name VARCHAR(200),
    IN email VARCHAR(200),
    IN phone VARCHAR(100),
    IN gender VARCHAR(20),
    IN dob date

    
)

LANGUAGE SQL 
AS $$
INSERT INTO emloyees(type,first_name,last_name,email,phone,gender,dob)
VALUES (type,first_name,last_name,email,phone,gender,dob);
$$;


CALL insert_employees('receptionist','simren','sajeve','simrensajeve@gmail.com','8925364798','female','2000-12-01');