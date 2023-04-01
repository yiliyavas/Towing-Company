CREATE DATABASE databasename1113;
            use databasename1113;


/*======================================================================*/
/*table for employee */
DROP TABLE if exists employee;
CREATE TABLE employee(
	empID int NOT NULL,
    firstName varchar(25) NOT NULL,
    lastName varchar(25) NOT NULL,
    password varchar(8) NOT NULL,
    typeWorker char,
    PRIMARY KEY(empID)
);
INSERT INTO employee (empID, firstName, lastName, password, typeWorker)
	              VALUES (1, 'YULIYA', 'Vaskiv', '12345678', 'o'),
                          (2, 'Vova', 'Hrokh', '87654321', 'd'),
                          (3, 'Michael', 'Catter', '01234567', 'd'),
                          (4, 'Ivan', 'Melnyk', '23456789', 'd'),
                          (5, 'Taras', 'Shevchenko', '00000000', 'o');
SELECT * FROM employee;
/*======================================================================*/
/*table for car*/
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	carID INT NOT NULL,
    carPlate VARCHAR(8) NOT NULL,
    carType VARCHAR(8) NOT NULL,
    carColor Varchar(8) NOT NULL,
	carMake VARCHAR(20) NOT NULL,
    carModel VARCHAR(20) NOT NULL,
    carYear INT(4),
    carDescription VARCHAR(100),
    conditionScore int NOT NULL,
    damage char(1),
	leftSide char(1),
    rightSide char(1),
    rearSide char(1),
    frontSide char(1),
    inORout char(1) NOT NULL,
    PRIMARY KEY (carID)
);
INSERT INTO cars (carID, carPlate, carType, carColor, carMake, carModel, carYear, carDescription)
			Values(1, 'EA3333', 'sedan', 'grey', 'Audi', 'A4', 2016, 'all good, some scratches'),
				  (2, 'EE6689', 'sedan', 'balck', 'VW', 'passat', 2014, 'broken left side mirror'),
                  (3, 'GG1236', 'SUV', 'white', 'Ford', 'Escape', 2012, 'huge wrack on front');
SELECT * FROM cars;
/*======================================================================*/
/*table for Setting*/
DROP TABLE IF EXISTS settings;
CREATE TABLE settings (
	carID int,
    locationFoundAt VARCHAR(100),
    dateFoundAt DATETIME,
    employeeToReceiveCall int,
    employeeToGetToLocation int,
    
    isOnSite char(1), /*in - 1, out - o */ 
    startDateOnSite DATETIME,
    endDateOnSite datetime,
    employeeToReleaseCar int,
    
    ownerName varchar(100),
    ownerPhone varchar(10),
    ownerEmail varchar(100)
);
INSERT INTO settings (carID, locationFoundAt, dateFoundAt, employeeToReceiveCall, employeeToGetToLocation,
					isOnSite, startDateOnSite, endDateOnSite, employeeToReleaseCar,
					ownerName, ownerPhone, ownerEmail)
			VALUES (1, '2145 Warren St, Detroit, Mi', '2023-02-02 10:32:01', 1, 2,
					'i', '2023-02-02 12:32:01', '2023-03-03 12:32:01', 2,
                    'gigi hadid', '3133133131', 'hadid@happy.com');
SELECT * FROM settings;
/*=====================================================*/
/*request form*/
DROP TABLE IF EXISTS requestForm;
CREATE TABLE requestForm(
	requestID int,
	customerFirstName varchar(10),
    customerPhone varChar(10),
    customerEmail varchar(30),
    customerRequestText varchar(500)
);
INSERT INTO requestForm (requestID, customerFirstName, customerPhone, customerEmail, customerRequestText)
					values(1, 'pablo', '5862223333', 'pablo2gmail.com', 'need to relocate broken vehicle from show to garage.');
SELECT * FROM requestForm;
