USE companydb;

-- Update salary of employee with ID = 3
UPDATE Employees
SET salary = 75000
WHERE id = 3;

-- Display the updated employee
SELECT * FROM Employees
WHERE id = 3;