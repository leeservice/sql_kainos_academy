-- Create the DB
CREATE DATABASE IF NOT EXISTS kainoos_sql_db_LeeS;
use kainoos_sql_db_LeeS;

DELIMITER $$
DROP PROCEDURE IF EXISTS creation_transaction $$
CREATE PROCEDURE creation_transaction()
BEGIN
    START TRANSACTION;

    -- Add tables
    create table technologies (
	technologyID smallint primary key auto_increment,
    `name` varchar(50) not null,
    description varchar(200) not null);
    
   create table project (
    projectID smallint primary key auto_increment,
    projectName Varchar(50) not null, 
    projectValue decimal(10,2) not null,
    deliveryEmployeeProjectID smallint not null,
    clientID smallint not null,
    startDate date not null,
    techID smallint not null,
    projectStatus tinyint(1) not null
   );

    CREATE TABLE IF NOT EXISTS client (
        clientID smallint auto_increment,
        fullName varchar(50) NOT NULL,
   	address varchar(50) NOT NULL,
   	phone varchar(20),
   	dateJoined date,
   	salesEmployeeID smallint,
   	primary key(clientID));

    CREATE TABLE IF NOT EXISTS delivery_Employee(
	deliveryEmployeeID smallint PRIMARY KEY AUTO_INCREMENT,
	fullName varchar(50) NOT NULL,
	salary decimal(10,2) NOT NULL,
	bankAccountNumber varchar(34) NOT NULL,
	nationalInsuranceNumber char(11));

CREATE TABLE IF NOT EXISTS sales_Employee (
        salesEmployeeID smallint auto_increment,
        fullName varchar(255) NOT NULL,
   	salary Decimal(10,2) NOT NULL,
   	bankAccountNumber varchar(34) NOT NULL,
   	nationalInsuranceNumber char(11) NOT NULL,
   	commissionRate decimal NOT NULL,
   	commissionYTD decimal NOT NULL,
   	primary key(salesEmployeeID));

ALTER TABLE client
        ADD CONSTRAINT fk_client_salaesemployeeid
        FOREIGN KEY(salesEmployeeID)
        REFERENCES sales_Employee (SalesEmployeeID);

CREATE TABLE IF NOT EXISTS delivery_Employee_Project(
	deliveryEmployeeID smallint NOT NULL,
	projectID smallint NOT NULL,
	startDate date NOT NULL,
	endDate date,
	CONSTRAINT FK_delEmpID FOREIGN KEY(deliveryEmployeeID) REFERENCES delivery_Employee(deliveryEmployeeID),
	CONSTRAINT FK_projectID FOREIGN KEY(projectID) REFERENCES project(projectID),
	PRIMARY KEY(deliveryEmployeeID, projectID));

CREATE TABLE IF NOT EXISTS technologies_Project (
	technologiesProjectID smallint primary key auto_increment,
    	technologyID smallint,
    	projectID smallint);

ALTER TABLE technologies_Project
    add constraint fk_technologyID_technologies
    foreign key (technologyID) 
    references technologies(technologyID);

ALTER TABLE technologies_Project
    add constraint fk_projectID_project
    foreign key (projectID) 
    references project(projectID);

ALTER TABLE project
    add constraint fk_techID_technologiesProject
    foreign key (techID) 
    references technologies_Project(projectID);

END $$
DELIMITER ;
CALL creation_transaction();