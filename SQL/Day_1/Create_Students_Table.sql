USE CompanyDB;

CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(100),
    course VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

DESC Students;

ALTER TABLE Students
ADD mobile BIGINT;

DESC Students;