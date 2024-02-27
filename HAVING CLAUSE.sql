/* HAVING CLAUSE*/
SELECT JobTitle, COUNT(JobTitle) AS 'Count Job Title'
FROM SQLTutorial.dbo.EmployeeDemographics 
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>1 /* SAME AS WHERE COUNT(JOBTITLE)>1, BUT IT NEEDS TO BE HAVING */

SELECT JobTitle, AVG(Salary) AS 'Average Salary'
FROM SQLTutorial.dbo.EmployeeDemographics 
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary) DESC