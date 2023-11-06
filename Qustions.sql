CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);


ALTER TABLE Student
ADD CONSTRAINT unique_email UNIQUE (email);


ALTER TABLE Student
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;


ALTER TABLE course
ADD CONSTRAINT pk_course_id PRIMARY KEY (course_id);


ALTER TABLE Enrollments
ADD CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES student(student_id);


ALTER TABLE Student
ADD CONSTRAINT check_date_of_birth CHECK (date_of_birth <= CURRENT_DATE);


ALTER TABLE Student
ALTER COLUMN phone_number TYPE VARCHAR(15);






DROP TABLE Enrollments;

ALTER TABLE courses RENAME TO course;

INSERT INTO course VALUES(
    101,
    'python',
    '6month'
    

),
(
    102,
    'flutter',
    '3month'
    

),
(
    103,
    'php',
    '3month online'
    

),
(
    104,
    'angular',
    '6month'
    

);
INSERT INTO student VALUES(
    1,
    'sharan',
    'kumar',
    '20-12-2000',
    'jojojo@gmail.com',
    '6262867701',
    'washington'
),
(
    2,
    'kumar',
    'sharan',
    '08-11-1996',
    'sharan@gmail.com',
    '812309045',
    'okalahoma'
),
(
    3,
    'raju',
    'kt',
    '11-08-1987',
    'rajumon@gmsail.com',
    '1234598746',
    'srilanka'
),
(
    4,
    'sravan',
    'kumar',
    '30-01-1998',
    'sravanraj@gmail.com',
    '9845623478',
    'tailand'
);