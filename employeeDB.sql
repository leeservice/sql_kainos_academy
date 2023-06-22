CREATE DATABASE Kainoos_Softworn;

USE Kainoos_Softworn;

CREATE TABLE deliveryEmployees(
deliveryEmployeeID smallint PRIMARY KEY AUTO_INCREMENT,
fullName varchar(50) NOT NULL,
salary decimal(10,2) NOT NULL,
bankAccountNumber varchar(34) NOT NULL,
nationalInsuranceNumber char(11)
);
