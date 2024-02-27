/* TEMP TABLES TEMPORARY TABLES
YOU ARE ABLE TO US THEM MULTIPLE TIMES*/
CREATE TABLE #Temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #Temp_Employee 

INSERT INTO #Temp_Employee VALUES
(1001, 'HR', 45000)

INSERT INTO #Temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 
(JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
 ON emp.EmployeeID = sal. EmployeeID
GROUP BY JobTitle

select *
FROM #Temp_Employee2
