USE CompanyDB_Practice;
SELECT *
FROM Employees
WHERE location = 'Chennai'
AND salary > 50000;
SELECT *
FROM Employees
WHERE location = 'Chennai'
OR location = 'Madurai';
SELECT *
FROM Employees
WHERE department IN ('Developer','Tester');
SELECT *
FROM Employees
WHERE department NOT IN ('HR','Manager');
SELECT *
FROM Employees
WHERE salary BETWEEN 40000 AND 70000;
SELECT *
FROM Employees
WHERE name LIKE 'A%';
SELECT *
FROM Employees
WHERE name LIKE '%a';
SELECT *
FROM Employees
WHERE name LIKE '%an%';
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1;
SELECT *
FROM Employees
ORDER BY salary ASC
LIMIT 1;
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;
SELECT *
FROM Employees
ORDER BY id DESC
LIMIT 3;
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
SELECT department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department;
SELECT department,
SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department;
SELECT location,
AVG(salary) AS Average_Salary
FROM Employees
GROUP BY location;
SELECT department,
MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department;
SELECT department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 2;
SELECT location,
AVG(salary) AS Average_Salary
FROM Employees
GROUP BY location
HAVING AVG(salary) > 50000;
SELECT department,
SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 200000;
SELECT UPPER(name)
FROM Employees;
SELECT LOWER(name)
FROM Employees;
SELECT name, LENGTH(name)
FROM Employees;
SELECT CONCAT(name,' - ',department)
FROM Employees;
SELECT SUBSTRING(name,1,3)
FROM Employees;
SELECT REPLACE(department,'Developer','Dev')
FROM Employees;
SELECT LEFT(name,2)
FROM Employees;
SELECT RIGHT(name,2)
FROM Employees;
SELECT REVERSE(name)
FROM Employees;
SELECT TRIM(name)
FROM Employees;
ALTER TABLE Employees
ADD joining_date DATE;
UPDATE Employees
SET joining_date='2025-01-15'
WHERE id=1;
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