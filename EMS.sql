drop table EMS;

create table Employees (
ID int primary key,
firstName varchar(20),
lastName varchar(20),
emailID varchar(20),
position varchar(20)
);

INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (1, "Louis", "Stovik", "lstovik", "Manager");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (2, "Frank", "Repal", "frepal", "Assistant Manager");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (3, "Rachelle", "Gydlyn", "rgydlyn", "Team Lead");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (4, "Jess", "Livlet", "jlivlet", "Cashier");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (5, "Maddie", "Amos", "mamos", "Cashier");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (6, "Sydney", "Flam", "sflam", "Cashier");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (7, "George", "Opit", "gopit", "Cashier");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (8, "Fred", "Opit", "fopit", "Cashier");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (9, "Sandy", "Refere", "srefere", "Stocker");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (10, "James", "Leafe", "jleafe", "Stocker");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (11, "Laura", "Abbit", "labbit", "Stocker");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (12, "John", "Tello", "jtello", "Stocker");
INSERT into EMPLOYEES (ID, first_Name, last_Name, email_ID, position) values (13, "Ryan", "Guy", "rguy", "Maintenance");

SELECT * from EMS;
