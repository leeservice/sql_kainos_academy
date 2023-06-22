DELIMITER $$
DROP PROCEDURE IF EXISTS creation_transaction $$
CREATE PROCEDURE creation_transaction()
BEGIN
    START TRANSACTION;

    -- Create the DB
    create database kainoos_sql_db;

    -- Add tables
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
        
