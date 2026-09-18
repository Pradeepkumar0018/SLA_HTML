CREATE DATABASE Employee_Management_System;
USE Employee_Management_System;
CREATE TABLE Employees(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    email VARCHAR(100),
    joining_date DATE
);
ALTER TABLE Employees
ADD phone VARCHAR(15);
INSERT INTO Employees
(id, name, department, salary, city, email, joining_date, phone)
VALUES
(1,'Arun','Developer',60000,'Chennai','arun@gmail.com','2024-01-15','9876543210'),
(2,'Bala','Tester',45000,'Madurai','bala@gmail.com','2023-03-20','9876543211'),
(3,'Karthik','HR',50000,'Coimbatore','karthik@gmail.com','2022-05-10','9876543212'),
(4,'Deepa','Developer',75000,'Chennai','deepa@gmail.com','2024-06-25','9876543213'),
(5,'Ezhil','Manager',90000,'Trichy','ezhil@gmail.com','2021-08-15','9876543214'),
(6,'Fathima','Designer',55000,'Salem','fathima@gmail.com','2023-09-12','9876543215'),
(7,'Gokul','Developer',65000,'Madurai','gokul@gmail.com','2024-02-18','9876543216'),
(8,'Hari','Tester',42000,'Chennai','hari@gmail.com','2022-11-05','9876543217'),
(9,'Ishaan','HR',48000,'Erode','ishaan@gmail.com','2023-04-22','9876543218'),
(10,'Jaya','Developer',70000,'Coimbatore','jaya@gmail.com','2024-07-30','9876543219'),
(11,'Kiran','Manager',85000,'Chennai','kiran@gmail.com','2021-12-10','9876543220'),
(12,'Lokesh','Developer',62000,'Salem','lokesh@gmail.com','2023-06-14','9876543221'),
(13,'Manoj','Tester',40000,'Madurai','manoj@gmail.com','2022-10-08','9876543222'),
(14,'Nisha','Designer',52000,'Trichy','nisha@gmail.com','2024-03-11','9876543223'),
(15,'Praveen','Developer',80000,'Chennai','praveen@gmail.com','2021-09-25','9876543224');
SELECT * FROM Employees;
UPDATE Employees
SET salary = 72000
WHERE id = 1;
UPDATE Employees
SET department = 'Senior Developer'
WHERE id = 4;
UPDATE Employees
SET 
salary = 95000,
department = 'Project Manager',
city = 'Bangalore'
WHERE id = 5;
DELETE FROM Employees
WHERE id = 15;
DELETE FROM Employees
WHERE city = 'Salem';
SELECT *
FROM Employees
WHERE salary > 50000;
SELECT *
FROM Employees
ORDER BY salary DESC;
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;
SELECT COUNT(*) AS Total_Employees
FROM Employees;
SELECT SUM(salary) AS Total_Salary
FROM Employees;
SELECT AVG(salary) AS Average_Salary
FROM Employees;
SELECT MAX(salary) AS Highest_Salary
FROM Employees;
SELECT MIN(salary) AS Lowest_Salary
FROM Employees;
SELECT 
department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department;
SELECT
department,
SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department;
SELECT
city,
AVG(salary) AS Average_Salary
FROM Employees
GROUP BY city;
SELECT
department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;
SELECT
department,
AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;
SELECT UPPER(name)
FROM Employees;
SELECT LOWER(name)
FROM Employees;
SELECT LENGTH(name)
FROM Employees;
SELECT CONCAT(name,' - ',department)
FROM Employees;
SELECT SUBSTRING(name,1,3)
FROM Employees;
SELECT REPLACE(department,'Developer','DEV')
FROM Employees;
SELECT LEFT(name,2)
FROM Employees;
SELECT RIGHT(name,2)
FROM Employees;
SELECT REVERSE(name)
FROM Employees;
SELECT TRIM(name)
FROM Employees;
SELECT CURDATE();
SELECT NOW();
SELECT YEAR(joining_date)
FROM Employees;
SELECT MONTH(joining_date)
FROM Employees;
SELECT DAY(joining_date)
FROM Employees;
SELECT DATE_FORMAT(joining_date,'%d-%m-%Y')
FROM Employees;
SELECT DATEDIFF(CURDATE(),joining_date)
FROM Employees;
SELECT
department,
COUNT(*) AS Employee_Count,
SUM(salary) AS Total_Salary,
AVG(salary) AS Average_Salary,
MAX(salary) AS Highest_Salary,
MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY department
ORDER BY Total_Salary DESC;
