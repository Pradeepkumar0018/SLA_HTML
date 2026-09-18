CREATE DATABASE HospitalDB;
USE HospitalDB;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(200)
);
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(50),
    FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id)
        REFERENCES Doctors(doctor_id)
);
CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    treatment_name VARCHAR(100),
    treatment_cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id)
);
CREATE TABLE Bills (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(50),
    bill_date DATE,
    FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id)
);