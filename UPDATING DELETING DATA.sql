/*Updating Deleting Data*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics 
UPDATE SQLTutorial.dbo. EmployeeDemographics
SET EmployeeID=1012, Age=31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

SELECT * /*LETS YOU SEE WHT WE ARE DELETING*/
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004
