USE CompanyDB;

ALTER TABLE Employees
RENAME COLUMN emp_name TO employee_name;

ALTER TABLE Employees
RENAME COLUMN city TO location;

DESC Employees;