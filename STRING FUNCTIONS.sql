/* STRING FUNCTIONS
TRIM LTRIM RTTRIM REPLACE SUBSTRING UPPER LOWER*/
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors Values
('1001  ', 'Jimbo', 'Halbert'),
('    1002', 'Pamela', 'Beasley'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT * 
FROM EmployeeErrors
 
--TRIM LTRIM RTRIM

SELECT EmployeeID, TRIM(EmployeeID) as IDtrim /* REMOVES THE WHITESPACES FROM THE COLUMN*/
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as LIDtrim /* REMOVES THE WHITESPACES TO THE LEFT FROM THE COLUMN*/
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as RIDtrim /* REMOVES THE WHITESPACES TO THE RIGHT FROM THE COLUMN*/
FROM EmployeeErrors

-- USING REPLACE
SELECT LastName, REPLACE(LastName, '- Fired','') as LastNameFix
FROM EmployeeErrors

--USING SUBSTRING
SELECT SUBSTRING(FirstName, 1, 3) /*Takes the the values from position 1 to the next 3 from the column*/
FROM EmployeeErrors				  /* USEFUL FOR MATCHING ALEX AND ALEXANDER POSITIONS 1 TO 4)*/

--USING SUBSTRING
SELECT SUBSTRING(FirstName, 3, 3) /*Takes the the values from position 3 to the next 3 values from the column*/
FROM EmployeeErrors

SELECT err.FirstName, dem.FirstName
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON err.FirstName = dem.FirstName

SELECT err.FirstName, SUBSTRING(err.FirstName, 1, 3), dem.FirstName, SUBSTRING(dem.FirstName, 1, 3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3)

----USE GENDER, FIRST NAME, LAST NAME, AGE AND DATE OF BIRTH
SELECT SUBSTRING(err.FirstName, 1, 3), SUBSTRING(err.LastName, 1, 3), SUBSTRING(dem.FirstName, 1, 3), SUBSTRING(dem.LastName, 1, 3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3) AND SUBSTRING(err.LastName, 1, 3) = SUBSTRING(dem.LastName, 1, 3)

--USING UPPER AND LOWER
SELECT FirstName, LOWER(FirstName) FNlower
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName) FNupper
FROM EmployeeErrors