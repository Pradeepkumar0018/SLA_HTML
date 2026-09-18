CREATE DATABASE CompanyDB_Practice;
USE CompanyDB_Practice;
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY salary DECIMAL(10,2);
ALTER TABLE Employees
RENAME COLUMN city TO location;
INSERT INTO Employees
(id, name, department, salary, location, email)
VALUES
(1,'Arun','Developer',60000,'Chennai','arun@gmail.com'),
(2,'Bala','Tester',45000,'Madurai','bala@gmail.com'),
(3,'Karthik','HR',40000,'Coimbatore','karthik@gmail.com'),
(4,'Deepa','Developer',70000,'Chennai','deepa@gmail.com'),
(5,'Ezhil','Manager',90000,'Trichy','ezhil@gmail.com'),
(6,'Fathima','Designer',50000,'Salem','fathima@gmail.com'),
(7,'Gokul','Developer',65000,'Madurai','gokul@gmail.com'),
(8,'Hari','Tester',42000,'Chennai','hari@gmail.com'),
(9,'Ishaan','HR',38000,'Erode','ishaan@gmail.com'),
(10,'Jaya','Developer',55000,'Coimbatore','jaya@gmail.com');
SELECT * FROM Employees;
UPDATE Employees
SET salary = 75000
WHERE id = 2;
UPDATE Employees
SET 
salary = 95000,
department = 'Project Manager',
location = 'Bangalore'
WHERE id = 5;
DELETE FROM Employees
WHERE id = 10;
DELETE FROM Employees
WHERE location = 'Chennai';
SELECT * FROM Employees;
SELECT name, salary
FROM Employees;
SELECT DISTINCT department
FROM Employees;
SELECT *
FROM Employees
WHERE salary > 40000;
SELECT *
FROM Employees
WHERE location = 'Chennai';
SELECT *
FROM Employees
WHERE salary BETWEEN 40000 AND 70000;
SELECT *
FROM Employees
WHERE name LIKE 'A%';
SELECT *
FROM Employees
ORDER BY salary DESC;