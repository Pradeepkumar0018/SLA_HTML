USE CompanyDB_Practice;
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
SELECT
location,
COUNT(*) AS Employee_Count,
AVG(salary) AS Average_Salary
FROM Employees
WHERE salary > 40000
GROUP BY location
HAVING COUNT(*) > 2;
SELECT
department,
SUM(salary) AS Total_Salary,
MAX(salary) AS Highest_Salary,
MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;
SELECT
department,
location,
COUNT(*) AS Employee_Count,
SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department, location
ORDER BY Employee_Count DESC;
SELECT
department,
COUNT(*) AS Employee_Count,
SUM(salary) AS Total_Salary,
AVG(salary) AS Average_Salary
FROM Employees
WHERE salary > 35000
AND location = 'Chennai'
GROUP BY department
HAVING COUNT(*) > 2
AND AVG(salary) > 50000
ORDER BY Total_Salary DESC
LIMIT 3;
