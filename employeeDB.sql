CREATE DATABASE Kainoos_Softworn;

USE Kainoos_Softworn;

CREATE TABLE IF NOT EXISTS delivery_Employee(
deliveryEmployeeID smallint PRIMARY KEY AUTO_INCREMENT,
fullName varchar(50) NOT NULL,
salary decimal(10,2) NOT NULL,
bankAccountNumber varchar(34) NOT NULL,
nationalInsuranceNumber char(11)
);

CREATE TABLE IF NOT EXISTS delivery_Employee_Project(
deliveryEmployeeID smallint NOT NULL,
projectID smallint NOT NULL,
startDate date NOT NULL,
endDate date,
CONSTRAINT FK_delEmpID FOREIGN KEY(deliveryEmployeeID) REFERENCES delivery_Employee(deliveryEmployeeID),
CONSTRAINT FK_projectID FOREIGN KEY(projectID) REFERENCES project(projectID),
PRIMARY KEY(deliveryEmployeeID, projectID)
);
