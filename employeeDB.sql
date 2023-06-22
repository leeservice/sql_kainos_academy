
CREATE table sales_Employee (
	salesEmployeeID smallint auto_increment,
	fullName varchar(255) NOT NULL,
    salary Decimal NOT NULL,
    bankAccountNumber varchar(34) NOT NULL,
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
