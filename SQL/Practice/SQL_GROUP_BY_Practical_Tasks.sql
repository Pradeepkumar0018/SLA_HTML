CREATE DATABASE PracticeDB;
USE PracticeDB;
CREATE TABLE Employees (
    id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO Employees (id, name, department, salary, city) VALUES
(1, 'Arun',    'Developer', 65000, 'Chennai'),
(2, 'Priya',   'Developer', 60000, 'Madurai'),
(3, 'Rahul',   'Tester',    40000, 'Salem'),
(4, 'Sneha',   'HR',        45000, 'Chennai'),
(5, 'Karthik', 'Developer', 70000, 'Coimbatore'),
(6, 'Meena',   'Manager',   90000, 'Madurai'),
(7, 'Vijay',   'Tester',    45000, 'Salem'),
(8, 'Divya',   'HR',        50000, 'Chennai'),
(9, 'Ajay',    'Developer', 55000, 'Chennai'),
(10, 'Anitha', 'Manager',   95000, 'Coimbatore');
SELECT * FROM Employees;
//task 1
SELECT department, COUNT(*) AS employee_count
FROM Employees
GROUP BY department;
SELECT city, COUNT(*) AS total_employees
FROM Employees
GROUP BY city;
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;
SELECT city, SUM(salary) AS total_salary
FROM Employees
GROUP BY city;
SELECT city, SUM(salary) AS total_salary
FROM Employees
GROUP BY city;
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;
SELECT department, MIN(salary) AS lowest_salary
FROM Employees
GROUP BY department;
SELECT city, AVG(salary) AS average_salary
FROM Employees
GROUP BY city;
SELECT department,
       COUNT(*) AS employee_count,
       SUM(salary) AS total_salary
FROM Employees
GROUP BY department;
SELECT city,
       COUNT(*) AS employee_count,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM Employees
GROUP BY city;