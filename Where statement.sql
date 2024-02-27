/* where statement
=, <>, <, >, and, or, like, null, not null, in

% wildcard, any text

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%%' Letters have to be in order <> 'S%ott%%c%'

SELECT * 
FROM EmployeeDemographics
WHERE FirstName is NOT NULL*/

SELECT *
From EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')