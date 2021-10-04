--DATABASE IMPLEMENTATION

CREATE DATABASE "CTrace";

USE CTrace;

--Citizen

CREATE TABLE Citizen
(
CitizenID INT IDENTITY NOT NULL PRIMARY KEY,
--GovermentID Varbinary(250) NOT NULL, (Added Via Encryption)
FirstName Varchar(20) NOT NULL,
LastName Varchar(20) NOT NULL,
DOB Date NOT NULL,
Gender Char(10) NOT NULL,
GPS Varchar(40) NOT NULL
--Age (Added via computed function) 
);

--INSERT Citizen:

SET IDENTITY_INSERT Citizen OFF

INSERT INTO Citizen VALUES ('Nathan','Ake','10/01/1996','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Eden','Hazard','12/10/1990','Male','www.xyz.com');
INSERT INTO Citizen VALUES (,'Helly','Berry','10/10/1995','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Mason','Mount','09/02/1993','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Scarlet','Johnson','01/04/1999','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Recee','James','01/04/1998','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Anokhi','Lodha','02/06/2010','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Ivanka','Trump','29/04/2000','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Kate','Winset','01/09/1999','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Rahul','Johar','01/04/1999','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Kai','Hartvaz','23/06/1999','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Kepa','Terry','11/09/2009','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Julie','Watson','01/07/1991','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Hilton','05/06/1962','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Jane','Watson','02/13/1975','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Kabir','Singh','12/04/1982','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Trisha','Jain','01/07/1972','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Jude','Scott','12/07/1969','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Paris','Steven','02/13/1988','Female','www.xyz.com');
INSERT INTO Citizen VALUES ('Kane','Willison','12/04/1982','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Marcos','Reus','12/04/1982','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Paul','Pogba','11/22/1987','Male','www.xyz.com');
INSERT INTO Citizen VALUES ('Ander','Herara','04/17/1987','Male','www.xyz.com');
INSERT INTO Citizen Values('Ujjwal','Gupta','02/08/2000','Male','www.xyz.com');
INSERT INTO Citizen Values('Harry','Wilson','01/07/1998','Male','www.xyz.com');
INSERT INTO Citizen Values('Sam','Park','08/06/1995','Male','www.xyz.com');
INSERT INTO Citizen Values('Wilimam','Sen','11/11/1994','Male','www.xyz.com');
INSERT INTO Citizen Values(‘'Kate','Marry','02/09/1996','Female','www.xyz.com');
INSERT INTO Citizen Values('Helan','Wilson','09/05/1999','Female','www.xyz.com');
INSERT INTO Citizen Values('Medila','Parker','07/08/2003','Male','www.xyz.com');
INSERT INTO Citizen Values('Aditya','Jain','02/08/2002','Male','www.xyz.com');
INSERT INTO Citizen Values('Chetan','Watson','06/06/1997','Male','www.xyz.com');
INSERT INTO Citizen Values('Tom','Wiliam','02/10/1994','Male','www.xyz.com');
INSERT INTO Citizen Values(,'Kelly','Barney','04/09/2000','Female','www.xyz.com');
INSERT INTO Citizen VALUES('Mary','Johnson','1993-09-28','Female','www.xyz.com')
INSERT INTO Citizen VALUES('Peter','Watson','1991-09-28','Male','www.xyz.com')
INSERT INTO Citizen VALUES('John','Hilton','2002-09-28','Male','www.xyz.com')
INSERT INTO Citizen VALUES('Katrine','Hillary','1989-09-28','Female','www.xyz.com')
INSERT INTO Citizen VALUES('Sarthak','Saini','1980-09-28','Male','www.xyz.com')
INSERT INTO Citizen VALUES('Samarath','Saini','1999-09-28','Male','www.xyz.com')

SET IDENTITY_INSERT Citizen OFF



--Insurance

CREATE TABLE Insurance
(
InsuranceID Varchar(20) NOT NULL PRIMARY KEY,
CitizenID INT NOT NULL REFERENCES Citizen(CitizenID),
Company_Name Varchar(20),
Validity Date
);

--INSERT Insurance:

INSERT INTO Insurance VALUES ('IN01',18,'Kaiser','2020-12-01');
INSERT INTO Insurance VALUES ('IN02',19,'WellCare','2021-11-01');
INSERT INTO Insurance VALUES ('IN03',20,'WellCare','2020-12-01');
INSERT INTO Insurance VALUES ('IN04',21,'Kaiser','2022-12-01');
INSERT INTO Insurance VALUES ('IN05',22,'WellCare','2022-12-01');
INSERT INTO Insurance VALUES ('IN06',23,'Kaiser','2021-11-01');
INSERT INTO Insurance VALUES ('IN07',24,'WellCare','2020-12-01');
INSERT INTO Insurance VALUES ('IN08',25,'UnitedHealth','2022-12-01');
INSERT INTO Insurance VALUES ('IN09',26,'UnitedHealth','2020-12-01');
INSERT INTO Insurance VALUES ('IN10',27,'Kaiser','2021-11-01');
INSERT INTO Insurance VALUES ('IN11',28,'UnitedHealth','2020-12-01');
INSERT INTO Insurance VALUES ('IN12',29,'WellCare','2020-12-01');
INSERT INTO Insurance VALUES ('IN13',30,'WellCare','2020-12-01');
INSERT INTO Insurance VALUES ('IN14',31,'UnitedHealth','2022-12-01');
INSERT INTO Insurance VALUES ('IN15',34,'UnitedHealth','2022-12-01');
INSERT INTO Insurance VALUES ('IN16',35,'WellCare','2022-12-01');
INSERT INTO Insurance VALUES ('IN17',36,'Kaiser','2024-12-01');
INSERT INTO Insurance VALUES ('IN18',37,'Kaiser','2024-12-01');
INSERT INTO Insurance VALUES ('IN19',38,'UnitedHealth','2024-12-01');
INSERT INTO Insurance VALUES ('IN20',39,'WellCare','2021-11-01');
INSERT INTO Insurance VALUES ('IN21',40,'WellCare','2020-12-01');
INSERT INTO Insurance VALUES ('IN22',41,'UnitedHealth','2024-12-01');
INSERT INTO Insurance VALUES ('IN23',42,'UnitedHealth','2020-12-01');
INSERT INTO Insurance VALUES ('IN24',43,'WellCare','2024-12-01');
INSERT INTO Insurance VALUES ('IN25',44,'UnitedHealth','2020-12-01');
INSERT INTO Insurance VALUES ('IN26',45,'UnitedHealth','2021-11-01');
INSERT INTO Insurance VALUES ('IN27',46,'WellCare','2024-12-01');
INSERT INTO Insurance VALUES ('IN28',47,'Kaiser','2025-12-01');
INSERT INTO Insurance VALUES ('IN29',48,'WellCare','2025-12-01');
INSERT INTO Insurance VALUES ('IN30',49,'Kaiser','2021-11-01');


--Medical_History

CREATE TABLE Medical_History
(
MedicalID Varchar(20) NOT NULL PRIMARY KEY,
InsuranceID Varchar(20) NOT NULL REFERENCES Insurance(InsuranceID),
Condition_Name Varchar(MAX)
);

--INSERT Medical_History:

INSERT INTO Medical_History Values('M1','IN01','Hypertension');
INSERT INTO Medical_History Values('M2','IN05','Hypertension');
INSERT INTO Medical_History Values('M3','IN07','Cancer');
INSERT INTO Medical_History Values('M4','IN08','Diabetes');
INSERT INTO Medical_History Values('M5','IN15','Thyroid');
INSERT INTO Medical_History Values('M6','IN11','Diabetes');
INSERT INTO Medical_History Values('M7','IN20','Asthma');
INSERT INTO Medical_History Values('M8','IN21','Heart Problem');
INSERT INTO Medical_History Values('M9','IN25','Asthma');
INSERT INTO Medical_History Values('M10','IN29','Obesity');

--Tested

CREATE TABLE Tested
(
TestedID Varchar(20) NOT NULL PRIMARY KEY,
CitizenID INT NOT NULL REFERENCES Citizen(CitizenID),
Tested_Date Date NOT NULL
);

--INSERT Tested

INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T40', 48,’2020-03-05’);
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T41', 48,'2020-05-06');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T42', 48,'2020-05-20');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T43', 48,'2020-05-28');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T44', 48,'2020-06-03');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T45', 48,'2020-06-04');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T46', 48,'2020-06-10');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T47', 48,'2020-06-12');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T48', 48,'2020-06-15');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T49', 48,'2020-06-19');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T50', 48,'2020-06-22');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T51', 48,'2020-07-01');
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T71','51','2020-05-09')
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T72','52','2020-06-10')
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T73','53','2020-07-14')
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T74','54','2020-01-14')
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T75','55','2020-02-12')
INSERT INTO Tested (TestedID, CitizenID, Tested_Date) VALUES('T76','56','2020-08-11')
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T52', 48,'2020-07-03');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T53', 48,'2020-07-04');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T54', 48,'2020-07-06');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T55', 48,'2020-07-13');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T56', 48,'2020-07-16');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T57', 48,'2020-07-23');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T58', 48,'2020-07-24');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T59', 48,'2020-07-25');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T60', 48,'2020-07-26');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T61', 48,'2020-07-27');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T62', 48,'2020-07-28');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T63', 48,'2020-08-02');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T64', 48,'2020-08-03');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T65', 48,'2020-08-04');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T66', 48,'2020-08-05');
INSERT INTO Tested(TestedID, CitizenID, Tested_Date) VALUES('T67', 48,'2020-08-06');


--Address

CREATE TABLE Address
(
 AddressID varchar(5) NOT NULL PRIMARY KEY ,
 HouseNumber INTEGER NOT NULL,
 StreetName varchar(40) NOT NULL,
 City varchar(40) NOT NULL,
 State varchar(40) NOT NULL,
 Country varchar(40) NOT NULL,
 ZipCode INTEGER NOT NULL
);

--INSERT Address

INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A1',100,'Street N','Bellevue','SEA','US',122)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A2',101,'10th Avenue E','Redmond','SEA','US',123)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A3',102,'10th Avenue NE','Kirkland','SEA','US',124)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A4',103,'10th Avenue NW','Bothell','SEA','US',125)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A5',104,'10th Avenue S','Tacoma','SEA','US',126)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A6',105,'10th Avenue SW','Issaquah','SEA','US',127)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A7',106,'10th Ct S','Issaquah','SEA','US',128)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A8',107,'10th Lane SW','Everett','SEA','US',129)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A9',108,'10th PI NE','Woodinville','SEA','US',129)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A10',109,'10th PI NW','Bainbridge Island','SEA','US',130)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A11',110,'10th PI S','Mercer Island','SEA','US',131)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A12',111,'10th PI SW','Sammamish','SEA','US',132)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A13',112,'10th TER NW','Olympia','SEA','US',133)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A14',113,'12th PI S','Lynnwood','SEA','US',134)
INSERT INTO Address(AddressID,HouseNumber,StreetName,City,CitizenState,Country,ZipCode)
VALUES('A15',114,'12th PI SW','Renton','SEA','US',135)
INSERT INTO Address values('A16','116','Corwin Pl S','Monroe','SEA','US',139);  
INSERT INTO Address values('A17','118','Corson Avenue S','Monroe','SEA','US',138);
INSERT INTO Address values('A18','120','Corporate Drive N','Bonney Lake','SEA','US',241);
INSERT INTO Address values('A19','125','Convention Place ','Bonney Lake','SEA','US',242);
INSERT INTO Address values('A20','108','Constance Drive W','Maple Valley','SEA','US',248);
INSERT INTO Address values('A21','121','NE ','Maple Valley','SEA','US',189);
INSERT INTO Address values('A22','130','Conkling Pl W','Lake Stevens','SEA','US',179);
INSERT INTO Address values('A23','131','33rd Avenue','Lake Stevens','SEA','US',199);
INSERT INTO Address values('A24','11','32nd Pl NE','Milton','SEA','US',229);
INSERT INTO Address values('A25','1008','32nd Lane S','Milton','SEA','US',259);
INSERT INTO Address values('A26','110','32nd Avenue','Milton','SEA','US',300);
INSERT INTO Address values('A27','191','31st Pl SW','Snoqualmie','SEA','US',301);
INSERT INTO Address values('A28','186','32nd Avenue NE','Snoqualmie','SEA','US',333);
INSERT INTO Address values('A29','510','32nd Avenue NW ','Shoreline','SEA','US',305);
INSERT INTO Address values('A30','139','31st Pl S','Gig Harbor','SEA','US',144);
INSERT INTO Address VALUES ('D1',151,'Street151','Bellevue', 'SEA','US',122) 
INSERT INTO Address VALUES ('D2',152,'Street152','Bainbridge Island','US','SEA', 130) 
INSERT INTO Address VALUES ('D3',153,'Street153','Monroe','SEA', 'US',139) 
INSERT INTO Address VALUES ('D4',154,'Street154','Monroe', 'SEA','US',229) 
INSERT INTO Address VALUES ('D5',155,'Street155','Monroe', 'SEA','US',144) 
INSERT INTO Address VALUES ('D6',156,'Street156','Monroe', 'SEA','US',135)
INSERT INTO Address VALUES ('Q1',151,'StreetQ1','Bellevue', 'SEA','US',122) 
INSERT INTO Address VALUES ('Q2',152,'StreetQ2','Bainbridge Island','US','SEA', 130) 
INSERT INTO Address VALUES ('Q3',153,'StreetQ3','Monroe','SEA', 'US',139) 
INSERT INTO Address VALUES ('Q4',154,'StreetQ4','Monroe', 'SEA','US',229) 
INSERT INTO Address VALUES ('Q5',155,'StreetQ5','Monroe', 'SEA','US',144) 
INSERT INTO Address VALUES ('Q6',156,'StreetQ6','Monroe', 'SEA','US',135)
INSERT INTO Address VALUES ('Q7',151,'StreetQ7','Bellevue', 'SEA','US',122) 
INSERT INTO Address VALUES ('Q8',152,'StreetQ8','Bainbridge Island','US','SEA', 130) 
INSERT INTO Address VALUES ('Q9',153,'StreetQ9','Monroe','SEA', 'US',139) 
INSERT INTO Address VALUES ('Q10',154,'StreetQ10','Monroe', 'SEA','US',229) 
INSERT INTO Address VALUES ('D7',157,'Street157','Monroe', 'SEA','US',135)
INSERT INTO Address VALUES ('D8',158,'Street158','Bellevue', 'SEA','US',122)
INSERT INTO Address VALUES ('D9',159,'Street159','Bellevue', 'SEA','US',122)
INSERT INTO Address VALUES ('D10',160,'Street160','Bellevue', 'SEA','US',122)
INSERT INTO Address VALUES ('D11',161,'Street161','Monroe', 'SEA','US',135)
INSERT INTO Address VALUES ('D12',162,'Street162','Monroe', 'SEA','US',135)



--CitizenAddress

CREATE TABLE CitizenAddress
(
CitizenID varchar(40) NOT NULL
	REFERENCES Citizens(CitizenID),
AddressID varchar(5) NOT NULL 
	REFERENCES Address(AddressID)
	CONSTRAINT pkaddress PRIMARY KEY CLUSTERED
		(CitizenID, AddressID)
);

--INSERT CitizenAddress

CitizenAddress:
Insert into CitizenAddress(CitizenID,AddressID) values(18,'A15');
Insert into CitizenAddress(CitizenID,AddressID) values(19,'A15');
Insert into CitizenAddress(CitizenID,AddressID) values(20,'A15');
Insert into CitizenAddress(CitizenID,AddressID) values(21,'A16');
Insert into CitizenAddress(CitizenID,AddressID) values(22,'A16');
Insert into CitizenAddress(CitizenID,AddressID) values(23,'A16');
Insert into CitizenAddress(CitizenID,AddressID) values(24,'A17');
Insert into CitizenAddress(CitizenID,AddressID) values(25,'A17');
Insert into CitizenAddress(CitizenID,AddressID) values(26,'A17');
Insert into CitizenAddress(CitizenID,AddressID) values(27,'A18');
Insert into CitizenAddress(CitizenID,AddressID) values(28,'A18');
Insert into CitizenAddress(CitizenID,AddressID) values(29,'A18');
Insert into CitizenAddress(CitizenID,AddressID) values(30,'A19');
Insert into CitizenAddress(CitizenID,AddressID) values(31,'A19');
Insert into CitizenAddress(CitizenID,AddressID) values(32,'A19');
Insert into CitizenAddress(CitizenID,AddressID) values(33,'A20');
Insert into CitizenAddress(CitizenID,AddressID) values(34,'A20');
Insert into CitizenAddress(CitizenID,AddressID) values(35,'A20');
Insert into CitizenAddress(CitizenID,AddressID) values(36,'A21');
Insert into CitizenAddress(CitizenID,AddressID) values(37,'A22');
Insert into CitizenAddress(CitizenID,AddressID) values(38,'A23');
Insert into CitizenAddress(CitizenID,AddressID) values(39,'A23');
Insert into CitizenAddress(CitizenID,AddressID) values(40,'A24');
Insert into CitizenAddress(CitizenID,AddressID) values(41,'A24');
Insert into CitizenAddress(CitizenID,AddressID) values(42,'A24');
Insert into CitizenAddress(CitizenID,AddressID) values(43,'A24');
Insert into CitizenAddress(CitizenID,AddressID) values(44,'A25');
Insert into CitizenAddress(CitizenID,AddressID) values(45,'A25');
Insert into CitizenAddress(CitizenID,AddressID) values(46,'A26');
Insert into CitizenAddress(CitizenID,AddressID) values(47,'A26');
Insert into CitizenAddress(CitizenID,AddressID) values(48,'A26');
Insert into CitizenAddress(CitizenID,AddressID) values(49,'A27');

--Positive

CREATE TABLE POSITIVE
(
 PatientID varchar(5) NOT NULL PRIMARY KEY ,
 TestedID varchar(20) NOT NULL REFERENCES Tested(testedID),
 HospitalID varchar(5) NOT NULL REFERENCES Hospital(HospitalID),
 Severity_Of_Condition varchar(40) NOT NULL,
 Patient_Status varchar(40) NOT NULL,
 Positive_Date datetime DEFAULT Current_Timestamp
);

--INSERT Positive

INSERT INTO Positive VALUES ('P1','T40','H3','Mild','Recovered','2020-03-16');
INSERT INTO Positive VALUES ('P2','T41','H6','Severe','Deceased','2020-05-15');
INSERT INTO Positive VALUES ('P3','T42','H6',Null,'Active','2020-04-08');
INSERT INTO Positive VALUES ('P4','T44','H7','Severe','Active','2020-03-29');
INSERT INTO Positive VALUES ('P5','T45','H9','Severe','Recovered','2020-04-19');
INSERT INTO Positive VALUES ('P6','T46','H8','Mild','Active','2020-06-18');
INSERT INTO Positive VALUES ('P7','T47','H3','Mild','Deceased','2020-07-28');
INSERT INTO Positive VALUES ('P8','T48','H7','Severe','Recovered','2020-07-01');
INSERT INTO Positive VALUES ('P9','T49','H6',Null,'Active','2020-06-01');
INSERT INTO Positive VALUES ('P10','T50','H9','Mild','Recovered','2020-05-01');
INSERT INTO Positive VALUES ('P11','T52','H4','Mild','Recovered','2020-05-01');
INSERT INTO Positive VALUES ('P12','T54','H8','Mild','Active','2020-04-01');
INSERT INTO Positive VALUES ('P13','T55','H7','Severe','Recovered','2020-03-09');
INSERT INTO Positive VALUES ('P14','T56','H9','Severe','Recovered','2020-06-08');
INSERT INTO Positive VALUES ('P15','T57','H9','Mild','Active','2020-07-19');
INSERT INTO Positive VALUES ('P16','T58','H9','Mild','Recovered','2020-06-17');
INSERT INTO Positive VALUES ('P17','T59','H3','Mild','Active','2020-04-09');
INSERT INTO Positive VALUES ('P18','T60','H4','Severe','Recovered','2020-03-01');
INSERT INTO Positive VALUES ('P19','T61','H7','Mild','Deceased','2020-03-06');
INSERT INTO Positive VALUES ('P20','T62','H9','Mild','Recovered','2020-05-03');
INSERT INTO Positive VALUES ('P21','T63','H8',Null,'Deceased','2020-05-06');
INSERT INTO Positive VALUES ('P22','T64','H8','Severe','Active','2020-03-01');
INSERT INTO Positive VALUES ('P23','T65','H8','Severe','Recovered','2020-03-01');
INSERT INTO Positive VALUES ('P24','T66','H8','Mild','Active','2020-03-21');
INSERT INTO Positive VALUES ('P25','T68','H4',Null,'Deceased','2020-04-01');
INSERT INTO POSITIVE VALUES('P30','T71','H6',NULL,'Deceased','2020-05-10 00:00:00.000')
INSERT INTO POSITIVE VALUES('P31','T72','H6',NULL,'Deceased','2020-06-11 00:00:00.000')
INSERT INTO POSITIVE VALUES('P32','T73','H6',NULL,'Deceased','2020-07-15 00:00:00.000')
INSERT INTO POSITIVE VALUES('P33','T74','H6',NULL,'Deceased','2020-01-15 00:00:00.000')
INSERT INTO POSITIVE VALUES('P34','T75','H6',NULL,'Deceased','2020-02-13 00:00:00.000')
INSERT INTO POSITIVE VALUES('P35','T76','H6',NULL,'Deceased','2020-08-12 00:00:00.000')


--Hospital

CREATE TABLE Hospital
(
 HospitalID varchar(5) NOT NULL PRIMARY KEY ,
 Hospital_Name varchar(40) NOT NULL,
 AddressID varchar(5) NOT NULL
	REFERENCES Address(AddressID),
 vacantBeds INTEGER NOT NULL	
);

--INSERT Hospital

INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H1','Mayo Clinic','A1',0);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H2','Cleveland Clinic','A2',0);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H3',' General Hospital','A3',4);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H4','Brigham and Womens Hospital','A4',10);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H5','Astria Sunnyside Hospital','A5',0);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H6','Cascade Valley Hospital','A6',20);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H7','Central Washington Hospital ','A7',0);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H8','EvergreenHealth Monroe','A8',7);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H9','Harrison Medical Center','A9',8);
INSERT INTO Hospital(HospitalID,HospitalName,AddressID,vacantBeds)
VALUES('H10','Highline Medical Center','A10',0);

-- FinalDisposition

CREATE TABLE FinalDisposition
(
 PatientID varchar(5) NOT NULL PRIMARY KEY
	REFERENCES POSITIVE(PatientID),
 AddressID varchar(5) NOT NULL
	REFERENCES Address(AddressID),
);

--INSERT FinalDisposition
INSERT INTO FinalDisposition VALUES('P19','D5')
INSERT INTO FinalDisposition VALUES('P2','D2')
INSERT INTO FinalDisposition VALUES('P7','D3')
INSERT INTO FinalDisposition VALUES('P21','D4')
INSERT INTO FinalDisposition VALUES('P30','D7')
INSERT INTO FinalDisposition VALUES('P31','D8')
INSERT INTO FinalDisposition VALUES('P32','D9')
INSERT INTO FinalDisposition VALUES('P33','D10')
INSERT INTO FinalDisposition VALUES('P34','D11')
INSERT INTO FinalDisposition VALUES('P35','D12')


--Exposed

CREATE TABLE Exposed
(
 Exposed_ID Varchar(10) NOT NULL PRIMARY KEY,
Citizen_ID Varchar(40) NOT NULL,
Date DATE NOT NULL
);

--INSERT Exposed

insert into Exposed(Exposed_ID,CitizenID,Date) values('E1',37,'2020-3-04')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E2',49,'2020-3-04')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E3',21,'2020-3-04')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E4',29,'2020-3-04')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E5',18,'2020-5-03')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E6',30,'2020-5-02')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E7',34,'2020-5-05')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E8',35,'2020-5-06')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E9',36,'2020-5-07')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E10',38,'2020-6-08')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E11',39,'2020-7-08')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E12',28,'2020-7-20')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E13',40,'2020-7-21')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E14',41,'2020-7-22')
insert into Exposed(Exposed_ID,CitizenID,Date) values('E15',19,'2020-7-28')

-- ExposedPositive

CREATE TABLE ExposedPositive
(
Exposed_ID Varchar(10) NOT NULL PRIMARY KEY
	REFERENCES Exposed(Exposed_ID),
Patient_ID Varchar(10) NOT NULL PRIMARY KEY
	REFERENCES Positive(Patient_ID)
);

--INSERT Exposed_Positive

insert into ExposedPositive(Exposed_ID,PatientID) values('E1','P1')
insert into ExposedPositive(Exposed_ID,PatientID) values('E10','P1')
insert into ExposedPositive(Exposed_ID,PatientID) values('E11','P1')
insert into ExposedPositive(Exposed_ID,PatientID) values('E12','P16')
insert into ExposedPositive(Exposed_ID,PatientID) values('E13','P16')
insert into ExposedPositive(Exposed_ID,PatientID) values('E14','P16')
insert into ExposedPositive(Exposed_ID,PatientID) values('E15','P11')
insert into ExposedPositive(Exposed_ID,PatientID) values('E7','P11')
insert into ExposedPositive(Exposed_ID,PatientID) values('E8','P11')
insert into ExposedPositive(Exposed_ID,PatientID) values('E9','P11')


-- Potential_Reasons

CREATE TABLE Potential_Reasons
(
Potential_Reasons_ID Varchar(10) NOT NULL PRIMARY KEY,
Reason_Name Varchar(Max) NOT NULL 
);

--INSERT Potential_Reasons

INSERT INTO Potential_Reasons values('PR01','Travelling');
INSERT INTO Potential_Reasons values('PR02','Exposed to Covid Patient');
INSERT INTO Potential_Reasons values('PR03','Visited to a crowded place');
INSERT INTO Potential_Reasons values('PR04','Attended any kind of Group activity');
INSERT INTO Potential_Reasons values('PR05','Visited a salon');
INSERT INTO Potential_Reasons values('PR06','Visited hospital');
INSERT INTO Potential_Reasons values('PR07','Went out for morning walk');
INSERT INTO Potential_Reasons values('PR08','Visited gym');
INSERT INTO Potential_Reasons values('PR09','Had restaurant food');
INSERT INTO Potential_Reasons values('PR10','Corona warrior');

--Positive_Potential_Reasons

CREATE TABLE Positive_Potential_Reasons
(Patient_ID Varchar(10) NOT NULL PRIMARY KEY
	REFERENCES Positive(Patient_ID),
Potential_Reasons_ID Varchar(10) NOT NULL PRIMARY KEY
	REFERENCES Potential_Reasons(Potential_Reasons_ID)
);

--INSERT Positive_Potential_Reasons

INSERT INTO Positive_Potential_Reasons VALUES('P1','PR10');
INSERT INTO Positive_Potential_Reasons VALUES('P2','PR09');
INSERT INTO Positive_Potential_Reasons VALUES('P3','PR10');
INSERT INTO Positive_Potential_Reasons VALUES('P4','PR08');
INSERT INTO Positive_Potential_Reasons VALUES('P5','PR09');
INSERT INTO Positive_Potential_Reasons VALUES('P6','PR07');
INSERT INTO Positive_Potential_Reasons VALUES('P7','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P8','PR06');
INSERT INTO Positive_Potential_Reasons VALUES('P9','PR02');
INSERT INTO Positive_Potential_Reasons VALUES('P10','PR08');
INSERT INTO Positive_Potential_Reasons VALUES('P11','PR02');
INSERT INTO Positive_Potential_Reasons VALUES('P12','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P13','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P14','PR03');
INSERT INTO Positive_Potential_Reasons VALUES('P15','PR05');
INSERT INTO Positive_Potential_Reasons VALUES('P16','PR04');
INSERT INTO Positive_Potential_Reasons VALUES('P17','PR07');
INSERT INTO Positive_Potential_Reasons VALUES('P18','PR08');
INSERT INTO Positive_Potential_Reasons VALUES('P19','PR07');
INSERT INTO Positive_Potential_Reasons VALUES('P20','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P21','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P22','PR02');
INSERT INTO Positive_Potential_Reasons VALUES('P23','PR01');
INSERT INTO Positive_Potential_Reasons VALUES('P24','PR09');

--PublicQurantine

CREATE TABLE Public_Quarantine
(
QuarantineID varchar(5) NOT NULL PRIMARY KEY,
AddressID varchar(5) NOT NULL REFERENCES Address(AddressID),
VacantUnits varchar(5) NOT NULL
);

-- INSERT INTO Public_Quarantine

INSERT INTO Public_Quarantine VALUES('AQ1','A1',10);
INSERT INTO Public_Quarantine VALUES('AQ2','A2',20);
INSERT INTO Public_Quarantine VALUES('AQ3','A3',100);
INSERT INTO Public_Quarantine VALUES('AQ4','A4',50);
INSERT INTO Public_Quarantine VALUES('AQ5','A5',150);
INSERT INTO Public_Quarantine VALUES('AQ6','A6',200);
INSERT INTO Public_Quarantine VALUES('AQ7','A7',120);
INSERT INTO Public_Quarantine VALUES('AQ8','A8',86);
INSERT INTO Public_Quarantine VALUES('AQ9','A9',99);
INSERT INTO Public_Quarantine VALUES('AQ10','A11',12);
INSERT INTO Public_Quarantine VALUES('AQ11','A12',178);
INSERT INTO Public_Quarantine VALUES('AQ12','A13',129);
INSERT INTO Public_Quarantine VALUES('AQ13','A14',109);
INSERT INTO Public_Quarantine VALUES('AQ14','A15',120);
INSERT INTO Public_Quarantine VALUES('AQ15','A16',175);

--Out_Patient

CREATE TABLE Out_Patient
(
 PatientID varchar(5) NOT NULL PRIMARY KEY REFERENCES Positive(PatientID) ,
 Checkback_Date datetime DEFAULT Current_Timestamp,
 QuarantineID varchar(5) NOT NULL REFERENCES Public_Quarantine(QuarantineID)
);

--INSERT Out_Patient

insert into Out_Patient values('P1','2020-04-10','AQ1');
insert into Out_Patient values('P13','2020-04-05','AQ1');
insert into Out_Patient values('P14','2020-06-15','AQ10');
insert into Out_Patient values('P15','2020-07-20','AQ10');
insert into Out_Patient values('P2','2020-06-10','AQ10');
insert into Out_Patient values('P20','2020-05-09','AQ3');
insert into Out_Patient values('P21','2020-05-14','AQ3');
insert into Out_Patient values('P24','2020-04-20','AQ7');
insert into Out_Patient values('P25','2020-09-01','AQ7');
insert into Out_Patient values('P26','2020-09-10','AQ7');

--Hospitalized_Patient

CREATE TABLE Hospitalized_Patient
(
 PatientID varchar(5) NOT NULL PRIMARY KEY REFERENCES Positive(PatientID)  ,
 Date_Admitted datetime DEFAULT Current_Timestamp,
 Date_Discharged datetime DEFAULT Current_Timestamp
);

-- INSERT  Hospitalized_Patient

-- RECOVERED
INSERT INTO Hospitalized_Patient VALUES('P18','2020-06-01','2020-14-01')
INSERT INTO Hospitalized_Patient VALUES('P10','2020-02-15','2020-03-10')
INSERT INTO Hospitalized_Patient VALUES('P11','2020-02-11','2020-02-27')
INSERT INTO Hospitalized_Patient VALUES('P16','2020-03-12','2020-03-31')
INSERT INTO Hospitalized_Patient VALUES('P23','2020-05-10','2020-05-30')

-- ACTIVE
INSERT INTO Hospitalized_Patient VALUES('P4','2020-08-01',NULL)
INSERT INTO Hospitalized_Patient VALUES('P12','2020-08-02',NULL)
INSERT INTO Hospitalized_Patient VALUES('P17','2020-08-01',NULL)
INSERT INTO Hospitalized_Patient VALUES('P22','2020-08-05',NULL)
INSERT INTO Hospitalized_Patient VALUES('P3','2020-07-30',NULL)

--Symptoms

CREATE TABLE Symptoms
(
Symptom_ID Varchar(10) NOT NULL PRIMARY KEY,
Type Varchar(Max)
);

--INSERT Symptoms

INSERT INTO Symptoms VALUES ('S01','Fever');
INSERT INTO Symptoms VALUES ('S02','Dry Cough');
INSERT INTO Symptoms VALUES ('S03','Tiredness');
INSERT INTO Symptoms VALUES ('S04','BodyAches');
INSERT INTO Symptoms VALUES ('S05','Sore Throat');
INSERT INTO Symptoms VALUES ('S06','Diarrhoea');
INSERT INTO Symptoms VALUES ('S07','Conjunctivitis');
INSERT INTO Symptoms VALUES ('S08','HeadAche');
INSERT INTO Symptoms VALUES ('S09','Loss of taste or Smell');
INSERT INTO Symptoms VALUES ('S10','Rash on Skin');

--Positive_Symptoms

CREATE TABLE Positive_Symptoms
(
PatientID Varchar(5) NOT NULL PRIMARY KEY
	REFERENCES Positive(Patient_ID),
Symptom_ID Varchar(10) NOT NULL PRIMARY KEY
	REFERENCES Potential_Reasons(Potential_Reasons_ID)
);

--INSERT Positive_Symptoms

INSERT INTO Positive_Symptoms VALUES('P1','S01')
INSERT INTO Positive_Symptoms VALUES('P1','S06')
INSERT INTO Positive_Symptoms VALUES('P2','S02')
INSERT INTO Positive_Symptoms VALUES('P3','S02')
INSERT INTO Positive_Symptoms VALUES('P4','S04')
INSERT INTO Positive_Symptoms VALUES('P4','S05')
INSERT INTO Positive_Symptoms VALUES('P5','S01')
INSERT INTO Positive_Symptoms VALUES('P6','S01')
INSERT INTO Positive_Symptoms VALUES('P25','S10')
INSERT INTO Positive_Symptoms VALUES('P26','S09')
INSERT INTO Positive_Symptoms VALUES('P28','S04')
INSERT INTO Positive_Symptoms VALUES('P28','S07')
INSERT INTO Positive_Symptoms VALUES('P9','S08')
INSERT INTO Positive_Symptoms VALUES('P10','S03')
INSERT INTO Positive_Symptoms VALUES('P11','S02')
INSERT INTO Positive_Symptoms VALUES('P12','S01')
INSERT INTO Positive_Symptoms VALUES('P13','S01')
INSERT INTO Positive_Symptoms VALUES('P14','S01')
INSERT INTO Positive_Symptoms VALUES('P15','S03')
INSERT INTO Positive_Symptoms VALUES('P16','S06')
INSERT INTO Positive_Symptoms VALUES('P18','S07')
INSERT INTO Positive_Symptoms VALUES('P19','S07')
INSERT INTO Positive_Symptoms VALUES('P20','S08')
INSERT INTO Positive_Symptoms VALUES('P22','S06')
INSERT INTO Positive_Symptoms VALUES('P22','S05')
INSERT INTO Positive_Symptoms VALUES('P23','S05')
INSERT INTO Positive_Symptoms VALUES('P24','S01')
INSERT INTO Positive_Symptoms VALUES('P30','S09')
INSERT INTO Positive_Symptoms VALUES('P31','S04')
INSERT INTO Positive_Symptoms VALUES('P32','S02')
INSERT INTO Positive_Symptoms VALUES('P33','S03')
INSERT INTO Positive_Symptoms VALUES('P34','S01')
INSERT INTO Positive_Symptoms VALUES('P34','S02')
INSERT INTO Positive_Symptoms VALUES('P34','S03')
INSERT INTO Positive_Symptoms VALUES('P34','S04')
INSERT INTO Positive_Symptoms VALUES('P35','S01')
INSERT INTO Positive_Symptoms VALUES('P36','S09')




--Table-level CHECK Constraints based on a function

--Table level Constraint based on function for Positive and hospital. (Terminates when there is no bed in hospital)

create function checkbed(@HID varchar(5))
returns smallint
as
begin
    declare @count smallint=0;
   	 select @count=count(HospitalID)
    	from Hospital
    	where HospitalID=@HID
   	 and vacantBeds=0;
    return @count;
End;

Alter table Positive add constraint NoAdmit check (dbo.checkbed(HospitalID)=0);



--Table level Constraint based on function for OutPatient and PublicQuarantine. (Terminates when there is no vacant units in PublicQuarantine )

create function checkunits(@QID varchar(5))
returns smallint
as
begin
    declare @count smallint=0;
   	 select @count=count(QuarantineID)
    	from Public_Quarantine
    	where QuarantineID=@QID
   	 and VacantUnits=0;
    return @count;
end;


Alter table Out_Patient add constraint Novacancy check (dbo.checkunits(QuarantineID)=0);



--Computed Columns based on a function

--Computed Columns based on a function to get the AGE from DOB in Citizen Entity

Create Function AgeCitizen(@DOB Date)
Returns INT
As
Begin
Declare @Age INT
Set @Age = (datediff(hour,@DOB,getdate())/8766)
Return @Age;
END

ALTER TABLE Citizen ADD Age AS (dbo.AgeCitizen(DOB))


--Column Data Encryption
CREATE MASTER KEY 
ENCRYPTION BY PASSWORD = 'DDMDTEAM@23';

CREATE CERTIFICATE Encrypted_column
WITH SUBJECT = 'Encryption',
EXPIRY_DATE = '2022-10-21';

CREATE SYMMETRIC KEY EncryptionKey
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE Encrypted_column;

OPEN SYMMETRIC KEY EncryptionKey
DECRYPTION BY CERTIFICATE Encrypted_column;

ALTER TABLE Citizen
ADD GovernmentID VARBINARY(250);

UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G01'))
WHERE CitizenID=18;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G02'))
WHERE CitizenID=19;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G03'))
WHERE CitizenID=20;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G04'))
WHERE CitizenID=21;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G05'))
WHERE CitizenID=22;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G06'))
WHERE CitizenID=23;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G07'))
WHERE CitizenID=24;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G08'))
WHERE CitizenID=25;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G09'))
WHERE CitizenID=26;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G10'))
WHERE CitizenID=27;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G11'))
WHERE CitizenID=28;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G12'))
WHERE CitizenID=29;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G13'))
WHERE CitizenID=30;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G14'))
WHERE CitizenID=31;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G15'))
WHERE CitizenID=32;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G16'))
WHERE CitizenID=33;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G17'))
WHERE CitizenID=34;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G18'))
WHERE CitizenID=35;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G19'))
WHERE CitizenID=36;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G20'))
WHERE CitizenID=37;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G21'))
WHERE CitizenID=38;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G22'))
WHERE CitizenID=39;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G23'))
WHERE CitizenID=40;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G24'))
WHERE CitizenID=41;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G25'))
WHERE CitizenID=42;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G26'))
WHERE CitizenID=43;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G27'))
WHERE CitizenID=44;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G28'))
WHERE CitizenID=45;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G29'))
WHERE CitizenID=46;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G30'))
WHERE CitizenID=47;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G31'))
WHERE CitizenID=48;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G32'))
WHERE CitizenID=49;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G33'))
WHERE CitizenID=50;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G34'))
WHERE CitizenID=51;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G35'))
WHERE CitizenID=52;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G36'))
WHERE CitizenID=53;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G37'))
WHERE CitizenID=54;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G38'))
WHERE CitizenID=55;
UPDATE Citizen
SET GovernmentID = EncryptByKey(Key_GUID(N'EncryptionKey'),CONVERT(VARBINARY,'G39'))
WHERE CitizenID=56;

--VIEW/TRIGGER’s 1

--Multiple tables are present in a view VContactTrace. Thus, we created a trigger for the view
--VContactTrace and the view is inserting the data to Positive table


Create View VContactTrace
AS Select P.PatientID,P.TestedID,P.HospitalID,P.Severity_Of_Condition,P.Patient_Status,P.Positive_Date
from Positive P
join Tested T
on T.TestedID=P.TestedID
join Hospital H
on H.HospitalID=P.HospitalID;

CREATE Trigger ContactTrace
ON VCT
Instead of insert
as
begin
    if(select count(*) from inserted)>0
    begin
   	 insert into POSITIVE
    	 	select  I.PatientID,I.HospitalID,I.TestedID,I.Severity_Of_Condition,
I.Patient_Status,I.Positive_Date
   		 from inserted I
   		 join Tested T
   		 on T.TestedID=I.TestedID
   		 join Hospital H
   		 on H.HospitalID=I.HospitalID

   	 if @@ROWCOUNT=0
   		 RAISERROR('No matching Customers',10,1);
 	END
END



--VIEW 2

--This report gives the highest number of Covid-19 cases present in a city which is --critical zone 


create view vCriticalZone
AS
select top 2 with ties P.HospitalID,A.AddressID,A.City,H.HospitalName
from POSITIVE P
join Hospital H
on P.HospitalID=H.HospitalID
join Address A
on A.AddressID=H.AddressID
group by P.HospitalID,A.AddressID
order by P.HospitalID desc;

-- vCriticalZoneImplementation

Select * from vCriticalZone


-- VIEW_PATIENT 3

/*To get a report of Patient Data */

CREATE VIEW [dbo].[vw_PatientData]
AS
     select P.PatientId,C.FirstName + ' ' + C.LastName as 'Patient Name',
	 P.Severity_Of_Condition,P.Patient_Status, [dbo].[AgeCitizen](C.DOB) AS AGE,
	 H.HospitalName
	 from Positive P with(nolock)
	 left outer join Hospital H with(nolock)
	 on P.HospitalID=H.HospitalID
	 left outer join Tested T with(nolock)
	 on P.TestedID=T.TestedID
	 inner join Citizen C with(nolock)
	 on C.CitizenID=T.CitizenID
GO



SELECT * from vw_PatientData ORDER BY LEFT(PatientID, PATINDEX('%[0-9]%', PatientID)-1),
CONVERT(INT, SUBSTRING(PatientID, PATINDEX('%[0-9]%', PatientID), LEN(PatientID)))

-- vw_PatientData Implementation
/*  Order the alphanumeric column “PatientID”*/

SELECT * from vw_PatientData 
ORDER BY LEFT(PatientID, PATINDEX('%[0-9]%', PatientID)-1),
CONVERT(INT, SUBSTRING(PatientID, PATINDEX('%[0-9]%', PatientID), LEN(PatientID)))

-- vwPercentage
/* To have report on percentage of active cases */




CREATE VIEW [dbo].[vwPercentage]
AS
WITH Temp AS
(
SELECT a.City AS [City], a.Country AS [Country],
(SELECT COUNT(po.PatientID)
							FROM POSITIVE po JOIN Tested te ON po.TestedID=te.TestedID
							LEFT JOIN CitizenAddress ca ON ca.CitizenID = te.CitizenID
							LEFT JOIN Address ad ON ad.AddressID = ca.AddressID 
							WHERE po.Patient_Status = 'Active' AND ad.City=a.City) AS Active_Count,
	COUNT(C.CitizenID) AS Cit_count,
	(
		((SELECT COUNT(po.PatientID)
							FROM POSITIVE po JOIN Tested te ON po.TestedID=te.TestedID
							LEFT JOIN CitizenAddress ca ON ca.CitizenID = te.CitizenID
							LEFT JOIN Address ad ON ad.AddressID = ca.AddressID 
							WHERE po.Patient_Status = 'Active' AND ad.City=a.City) * 100) / (COUNT(C.CitizenID))
	) AS Percentage
	FROM Positive P
	LEFT JOIN Tested T 
	ON P.TestedID = T.TestedID
	LEFT JOIN Citizen C
	On C.CitizenID = T.CitizenID
	LEFT JOIN CitizenAddress ca
	ON ca.CitizenID = T.CitizenID
	LEFT JOIN Address a
	ON a.AddressID = ca.AddressID
	WHERE City IS NOT NULL
	GROUP BY a.City, a.Country
)
SELECT Country,City, Cit_count, Active_Count,Percentage,

[Zone] = 
            CASE
                WHEN Percentage < 30 THEN 'SAFE'
                WHEN Percentage > 30  AND [Percentage] < 40 THEN 'MODERATE'
                WHEN Percentage >= 40 THEN 'CRITICAL'
            END

	
FROM Temp 

-- Implementation

 SELECT * from vwPercentage




--TABLE_CHECK_CONSTRAINT BASED ON TRIGGER

/*trg_InsteadOf_Positive prevents to insert data into “Positive” entity if there are no beds available in the hospital
If beds are available and data is inserted into “Positive” entity - then - number of hospital beds are also updated*/


ALTER TRIGGER trg_InsteadOf_Positive 
ON Positive
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;
	Declare @HospitalID varchar(10)=''  
	Declare @VacantsBed int=0
  
	Select @HospitalID = isnull(H.HospitalID,''),@VacantsBed=isnull(H.VacantBeds,0)
	from Hospital H
	join inserted I 
	on I.HospitalID = H.HospitalID  

	if(@HospitalID='')  
	Begin  
		Raiserror('Invalid Hospital Name. Statement Terminated OK', 16, 1)  
		return  
	End  
	if(@VacantsBed=0)  
	Begin  
		Raiserror('There is no bed in the hospital. Statement Terminated OK', 16, 1)  
		return  
	End  

    Insert into Positive(PatientID,TestedID,
	HospitalID,
	Severity_Of_Condition,
	Patient_Status,
	Positive_Date)  
	Select PatientID,TestedID,
	HospitalID,
	Severity_Of_Condition,
	Patient_Status,
	Positive_Date  
	from inserted  

	if(@@ERROR=0) -- No Error
	Begin

		update Hospital set VacantBeds=VacantBeds-1 where @HospitalID=HospitalID
	End
END


--  trg_InsteadOf_Positive  Implementation

insert  into Positive(PatientID,TestedID,
HospitalID,
Severity_Of_Condition,
Patient_Status,
Positive_Date)
values('P28','T40','H1','Mild','Recovered',GETDATE())
