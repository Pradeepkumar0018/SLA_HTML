USE CompanyDB;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
ADD phone INT;
ALTER TABLE Employees
ADD experience INT;
DESC Employees;