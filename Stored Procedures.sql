-- CREATE PROCEDURE TEST_PROCEDURE
-- AS
-- SELECT * FROM EmployeeDemographics

-- EXEC TEST_PROCEDURE

-- CREATE PROCEDURE Temp_Employee
-- AS
-- CREATE TABLE #TempTable
-- (
--     JobTitle VARCHAR(50),
--     EmployeePerJob INT,
--     AvgAge INT,
--     AvgSalary INT
-- )

-- INSERT INTO #TempTable  
-- SELECT JobTitle, COUNT(JobTitle) AS EmployeePerJob, AVG(Age) AS AvgAge, AVG(Salary) AS AvgSalary
-- FROM EmployeeDemographics
-- JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID
-- GROUP BY JobTitle

-- SELECT * FROM #TempTable

-- EXEC Temp_Employee

ALTER PROCEDURE Temp_Employee
@JobTitle VARCHAR(50)
AS
CREATE TABLE #TempTable
(
    JobTitle VARCHAR(50),
    EmployeePerJob INT,
    AvgAge INT,
    AvgSalary INT
)

INSERT INTO #TempTable
SELECT JobTitle, COUNT(JobTitle) AS EmployeePerJob, AVG(Age) AS AvgAge, AVG(Salary) AS AvgSalary
FROM EmployeeDemographics
JOIN EmployeeSalaries
ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT * FROM #TempTable

EXEC Temp_Employee 'Data Analyst'