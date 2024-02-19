-- SELECT JobTitle, COUNT(JobTitle) AS JobCount
-- FROM EmployeeDemographics
-- JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID
-- GROUP BY JobTitle
-- HAVING COUNT(JobTitle) > 1

-- SELECT *
-- FROM EmployeeSalaries

-- INSERT INTO EmployeeSalaries
-- VALUES (10007, 'Data Analyst', 40000, 250)

SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM EmployeeSalaries
GROUP BY JobTitle
HAVING AVG(Salary) > 5000
ORDER BY AverageSalary DESC