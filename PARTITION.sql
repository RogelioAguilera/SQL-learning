/* Partition By*/

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) TotalGender
FROM SQLTutorial..EmployeeDemographics dem /*.. not .dbo.*/
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID

/*GROUP BY STATEMENT*/
SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) 
FROM SQLTutorial..EmployeeDemographics dem /*.. not .dbo.*/
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

/*THE PARTIOTION DOES THIS WITH THE OTHER VARIABLES SINCE THE COUNT IS NOT CUMULATIVE WITH THE OTHER VARIABLES IN THE GROUPBY*/
SELECT Gender, COUNT(Gender) 
FROM SQLTutorial..EmployeeDemographics dem /*.. not .dbo.*/
JOIN SQLTutorial..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender