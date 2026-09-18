CREATE DATABASE TeaShopDB;
USE TeaShopDB;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    designation VARCHAR(50)
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15)
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2)
);
CREATE TABLE Stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    last_updated DATE,
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);
CREATE TABLE Bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    employee_id INT,
    bill_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id)
        REFERENCES Employees(employee_id)
);
CREATE TABLE BillItems (
    bill_item_id INT PRIMARY KEY AUTO_INCREMENT,
    bill_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (bill_id)
        REFERENCES Bills(bill_id),
    FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);
CREATE TABLE DailySales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    bill_id INT,
    sale_date DATE,
    total_sale DECIMAL(10,2),
    FOREIGN KEY (bill_id)
        REFERENCES Bills(bill_id)
);