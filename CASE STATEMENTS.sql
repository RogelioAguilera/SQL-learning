/* CASE STATEMENT*/
SELECT FirstName, LastName, Age, 
CASE
	WHEN Age > 30 THEN 'Old' /* FIRST CONDITION HOLDS PRECEDENT*/
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'BABY'
END AS 'Young/Old'
FROM SQLTutorial.dbo.EmployeeDemographics 
WHERE Age is NOT NULL
ORDER BY AGE

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	 WHEN JobTitle = 'Salesman' THEN Salary*1.10
	 WHEN JobTitle = 'Accountant' THEN Salary*1.05
	 WHEN JobTitle = 'HR' THEN Salary*1.000001
	 ELSE Salary*1.03
END AS SalaryAfterRaise
FROM SQLTutorial.dbo.EmployeeDemographics 
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID