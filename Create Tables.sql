CREATE TABLE EmployeeDemographics
(EmployeeID int,
Firstname varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50))

CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 45, 'Male'),
(1006, 'Michael', 'Scott', 32, 'Male'),
(1007, 'Meredith', 'Palmer', 58, 'Female'),
(1008, 'Stanley', 'Hudson', 27, 'Male'),
(1009, 'Kevin', 'Malone', 55, 'Male');

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

SELECT * /*AVG(Salary), MAX(Salary), MIN(Salary), DISTINCT(EmployeeID), COUNT(FirstName), TOP 5* */
FROM SQLTutorial.dbo.EmployeeSalary

/*AFERWARDS*/
INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)