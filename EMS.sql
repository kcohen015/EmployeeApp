create database EMS (
eID int primary key,
firstName varchar(20),
lastName varchar(20),
emailID varchar(20),
position varchar(20)
);

INSERT into EMS (firstName, lastName, emailID, position) values ("Louis", "Stovik", "lstovik", "Manager");
INSERT into EMS (firstName, lastName, emailID, position) values ("Frank", "Repal", "frepal", "Assistant Manager");
INSERT into EMS (firstName, lastName, emailID, position) values ("Rachelle", "Gydlyn", "rgydlyn", "Team Lead");
INSERT into EMS (firstName, lastName, emailID, position) values ("Jess", "Livlet", "jlivlet", "Cashier");
INSERT into EMS (firstName, lastName, emailID, position) values ("Maddie", "Amos", "mamos", "Cashier");
INSERT into EMS (firstName, lastName, emailID, position) values ("Sydney", "Flam", "sflam", "Cashier");
INSERT into EMS (firstName, lastName, emailID, position) values ("George", "Opit", "gopit", "Cashier");
INSERT into EMS (firstName, lastName, emailID, position) values ("Fred", "Opit", "fopit", "Cashier");
INSERT into EMS (firstName, lastName, emailID, position) values ("Sandy", "Refere", "srefere", "Stocker");
INSERT into EMS (firstName, lastName, emailID, position) values ("James", "Leafe", "jleafe", "Stocker");
INSERT into EMS (firstName, lastName, emailID, position) values ("Laura", "Abbit", "labbit", "Stocker");
INSERT into EMS (firstName, lastName, emailID, position) values ("John", "Tello", "jtello", "Stocker");
INSERT into EMS (firstName, lastName, emailID, position) values ("Ryan", "Guy", "rguy", "Maintenance");

SELECT * from EMS;
