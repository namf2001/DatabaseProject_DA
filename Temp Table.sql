DROP TABLE IF EXISTS #TempTable
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
GROUP BY JobTitle

SELECT * FROM #TempTable