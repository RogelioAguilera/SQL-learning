/* Inner joins, Full/Left/Rigth Outer joins*/
SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

/*INNER JOIN Joins everything that is overlapping*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*FULL OUTER JOIN Joins everything regardless of everything*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*LEFT OUTER JOIN Joins from the right table to the left table unless they are overlapping, then only shows left table values*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics /*LEFT TABLE*/
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*RIGHT OUTER JOIN*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary /*RIGHT TABLE*/
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*DEAL WITH  MATCHING COLUMNS*/
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary /*RIGHT TABLE*/
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*EXAMPLE HIGHEST PAID EMPLOYEE NOT NAMED MICHAEL*/
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary /*RIGHT TABLE*/
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

/*EXAMPLE AVERAGE BY JOBTITLE SALARY*/
SELECT JobTitle, AVG(Salary) AS 'Salesman average'
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary /*RIGHT TABLE*/
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle 