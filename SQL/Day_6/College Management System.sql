CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    faculty_name VARCHAR(100) NOT NULL,
    designation VARCHAR(100),
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    faculty_id INT,
    FOREIGN KEY (faculty_id)
        REFERENCES Faculty(faculty_id)
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollment_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (enrollment_id)
        REFERENCES Enrollments(enrollment_id)
);
CREATE TABLE Examinations (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    exam_name VARCHAR(100),
    exam_date DATE,
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);
CREATE TABLE Results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_id INT,
    student_id INT,
    marks DECIMAL(5,2),
    grade CHAR(2),
    FOREIGN KEY (exam_id)
        REFERENCES Examinations(exam_id),
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
);