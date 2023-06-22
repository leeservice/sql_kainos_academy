DELIMITER $$
DROP PROCEDURE IF EXISTS creation_transaction $$
CREATE PROCEDURE creation_transaction()
BEGIN
    START TRANSACTION;

-- creating sales employees
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Stu Ferg', 29000, 010101765431, "PB 637357 C", 500, 1500);
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Lee Service', 29000, 0101015378431, "PB 633857 C", 500, 1000);
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Pat McG', 32000, 0107586765431, "PB 635877 E", 800, 1600);

-- creating delivery employees
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber)
VALUES ('Jack Wall', 26000, 868101765431, "PB 737257 X");
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber)
VALUES ('Michael Moore', 25000, 0101015857431, "PB 633637 C");
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, nationalInsuranceNumber)
VALUES ('Eryn McAvoy', 32000, 0107586985431, "PB 635877 E");

       
 -- creating clients 
INSERT INTO client(fullName, address, phone, dateJoined, salesEmployeeID)
	VALUES ('Nice Client', '78 Milldew Ave, Belfast', '0793022678', 22/11/1993, 2);
INSERT INTO client(fullName, address, phone, dateJoined, salesEmployeeID)
	VALUES ('Happy Client', '765 Long Street, New York', '0764722678', 24/10/2016, 1);
INSERT INTO client(fullName, address, phone, dateJoined, salesEmployeeID)
	VALUES ('Sad Client', '1 First Street, London', '0798512678', 01/02/2020, 3);
    
    
    -- creating projects
INSERT INTO client(projectName, projectValue, delieveryEmployeeID, clientID, startDate, techID, projectStatus)
	VALUES ('Horrible GitSQL Project', 01.99, '2', 1, 22/06/2023, 2, 0);  
    
END $$
DELIMITER ;
CALL creation_transaction();
