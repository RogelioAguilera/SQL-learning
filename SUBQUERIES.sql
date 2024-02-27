/* SUBQUERIES IN THE SELECT FROM AND WHERE STATEMENTS*/
 SELECT *
 FROM EmployeeSalary

 --SUBQUERY SELECT
 SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AvgSalary
 FROM EmployeeSalary

 --PARTITION BY SAME OUTPUT
 SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AvgSalary
 FROM EmployeeSalary

 --GORUP BY DOES NOT WORK FOR THIS
 SELECT EmployeeID, Salary, AVG(Salary) AS AvgSalary
 FROM EmployeeSalary
 GROUP BY EmployeeID, Salary
 ORDER BY 1,2

 --SUBQUERY IN FROM
 SELECT A.EmployeeID, AvgSalary
 FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AvgSalary
	FROM EmployeeSalary) A

--SUBQUERIE IN WHERE
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary 
WHERE EmployeeID IN( 
	SELECT EmployeeID
	FROM EmployeeDemographics
	WHERE Age > 30)