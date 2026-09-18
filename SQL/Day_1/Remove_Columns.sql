USE CompanyDB;

ALTER TABLE Employees
DROP COLUMN experience;

ALTER TABLE Employees
DROP COLUMN email;

DESC Employees;