CREATE DATABASE Kainoos_Softworn;

USE Kainoos_Softworn;

CREATE TABLE delivery_Employee(
deliveryEmployeeID smallint PRIMARY KEY AUTO_INCREMENT,
fullName varchar(50) NOT NULL,
salary decimal(10,2) NOT NULL,
bankAccountNumber varchar(34) NOT NULL,
nationalInsuranceNumber char(11)
);

CREATE TABLE delivery_Employee_Project(
deliveryEmployeeID smallint NOT NULL,
projectID smallint NOT NULL,
startDate date NOT NULL,
endDate date,
FOREIGN KEY(deliveryEmployeeID) REFERENCES delivery_Employee(deliveryEmployeeID),
FOREIGN KEY(projectID) REFERENCES project(projectID),
PRIMARY KEY(deliveryEmployeeID, projectID)
);
