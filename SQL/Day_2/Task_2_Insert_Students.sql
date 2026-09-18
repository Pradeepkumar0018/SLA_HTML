USE companydb;

CREATE TABLE Students (
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
INSERT INTO Students (student_id, student_name, course, age, city)
VALUES
(101, 'Arun', 'B.Tech CSE', 20, 'Chennai'),
(102, 'Priya', 'BCA', 19, 'Madurai'),
(103, 'Karthik', 'B.Sc CS', 21, 'Coimbatore'),
(104, 'Divya', 'B.Tech IT', 22, 'Salem'),
(105, 'Rahul', 'B.Com', 18, 'Trichy'),
(106, 'Sneha', 'MBA', 23, 'Chennai'),
(107, 'Vijay', 'B.Tech ECE', 20, 'Erode'),
(108, 'Anitha', 'MCA', 21, 'Vellore');