-- creating sales employees
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Stu Ferg', 29000, 010101765431, "PB 637357 C", 500, 1500);
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Lee Service', 29000, 0101015378431, "PB 633857 C", 500, 1000);
INSERT INTO sales_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber,
    commissionRate, commissionYTD)
VALUES ('Pat McG', 32000, 0107586765431, "PB 635877 E", 800, 1600);

-- creating delivery employees
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber)
VALUES ('Jack Wall', 26000, 868101765431, "PB 737257 X");
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber)
VALUES ('Michael Moore', 25000, 0101015857431, "PB 633637 C");
INSERT INTO delivery_Employee(fullName, salary, bankAccountNumber, 
nationalInsuranceNumber)
VALUES ('Eryn McAvoy', 32000, 0107586985431, "PB 635877 E");
