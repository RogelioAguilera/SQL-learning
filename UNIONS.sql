/* UNION UNION ALL*/
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

/* UNION REMOVES DUPLICATES AND JOINS BOTH TABLES*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION 
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

/* UNION ALL JOINS ALL THE VALUES IN BOTH TABLES*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

/*WRONG UNION USE EXAMPLE, DATA TYPES MATCH, SO THE INFORMATION IS ALL OVER THE PLACE */
SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID

/* OUTER JOIN EXAMPLE*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID
