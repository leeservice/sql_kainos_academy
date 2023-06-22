DELIMITER $$
DROP PROCEDURE IF EXISTS creation_transaction $$
CREATE PROCEDURE creation_transaction()
BEGIN
    START TRANSACTION;

    -- Create the DB
    create database kainoos_sql_db;

    -- Add tables

CREATE table sales_Employee (
        salesEmployeeID smallint auto_increment,
        fullName varchar(255) NOT NULL,
    salary Decimal NOT NULL,
    bankAccountNumber varchar(34) NOT NULL,
    nationalInsuranceNumber char(11) NOT NULL,
    commissionRate decimal NOT NULL,
    commissionYTD decimal NOT NULL,
    primary key(salesEmployeeID));

CREATE TABLE client (
        clientID smallint auto_increment,
        fullName varchar(50) NOT NULL, 
    address varchar(50) NOT NULL,
    phone varchar(20),
    dateJoined date,
    salesEmployeeID smallint,
    primary key(clientID));
    
ALTER TABLE client
        ADD CONSTRAINT k_client_salaesemployeeid
        FOREIGN KEY(salesEmployeeID)
        REFERENCES sales_Employee (SalesEmployeeID);

    create table technologies (
	technologyID smallint primary key auto_increment,
    `name` varchar(50) not null,
    description varchar(200) not null);
    
    create table technologies_Project (
	technologiesProjectID smallint primary key auto_increment,
    technologyID smallint,
    foreign key (technologyID) references technologies(techologyID),
    projectID smallint,
    foreign key (projectID) references project(projectID)
    );
   

END $$
DELIMITER ;
CALL creation_transaction();
        
