/* Group by, Order by

SELECT DISTINCT(Gender)
FROM EmployeeDemographics olnly shows the two distinct values

SELECT Gender, COUNT (Gender) AS 'CountGender'
FROM EmployeeDemographics
WHERE Age >30
GROUP BY Gender
ORDER BY CountGender DESC*/

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC