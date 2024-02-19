CREATE TABLE EmployeeErrors
(
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
)

INSERT INTO EmployeeErrors
VALUES (10011, 'Nguyen', 'Nam'),
        (10012, 'Tran', 'Thi'),
        (10013, 'Le', 'Van'),
        (10014, 'Pham', 'Thi'),
        (10015, 'Nguyen', 'Thi'),
        (10016, 'Tran', 'Van'),
        (10017, 'Le', 'Thi'),
        (10018, 'Pham', 'Van'),
        (10019, 'Nguyen', 'Van - Khanh');

SELECT * FROM EmployeeErrors

--Using Trim, Ltrim, Rtrim
SELECT EmployeeID, FirstName, LastName, 
    LTRIM(FirstName) AS LTrimFirstName, 
    RTRIM(LastName) AS RTrimLastName, 
    TRIM(FirstName) AS TrimFirstName
FROM EmployeeErrors

--Using Replace
SELECT LastName, 
    REPLACE(LastName, 'Van - Khanh', 'Van - Nam') AS ReplaceFirstName
FROM EmployeeErrors

--Using Substring
SELECT FirstName, LastName, 
    SUBSTRING(FirstName, 1, 3) AS SubstringFirstName, 
    SUBSTRING(LastName, 3, 2) AS SubstringLastName
FROM EmployeeErrors

--Using CharIndex
SELECT FirstName, LastName, 
    CHARINDEX('n', FirstName) AS CharIndexFirstName, 
    CHARINDEX('n', LastName) AS CharIndexLastName
FROM EmployeeErrors

--Using PatIndex
SELECT FirstName, LastName, 
    PATINDEX('%n%', FirstName) AS PatIndexFirstName, 
    PATINDEX('%n%', LastName) AS PatIndexLastName
FROM EmployeeErrors

--Using Upper, Lower
SELECT FirstName, LastName, 
    UPPER(FirstName) AS UpperFirstName, 
    LOWER(LastName) AS LowerLastName
FROM EmployeeErrors
