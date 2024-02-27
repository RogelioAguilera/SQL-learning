/*ALIASING*/
SELECT FirstName Fname
FROM SQLTutorial.dbo.EmployeeDemographics 

SELECT AVG(Age) AS AvgName
FROM SQLTutorial.dbo.EmployeeDemographics 

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
LEFT JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].[EmployeeDemographics] AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID