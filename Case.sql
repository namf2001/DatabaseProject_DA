-- SELECT FirstName, LastName, Age,
-- CASE
--     WHEN Age < 20 THEN 'Teenager'
--     WHEN Age BETWEEN 20 AND 29 THEN '20s'
--     WHEN Age BETWEEN 30 AND 39 THEN '30s'
--     WHEN Age BETWEEN 40 AND 49 THEN '40s'
--     WHEN Age BETWEEN 50 AND 59 THEN '50s'
--     WHEN Age BETWEEN 60 AND 69 THEN '60s'
--     ELSE '100+'
-- END AS AgeGroup
-- FROM EmployeeDemographics

SELECT FirstName, LastName, JobTitle, Salary,
CASE
    WHEN Salary < 30000 THEN 'Low'
    WHEN Salary BETWEEN 30000 AND 50000 THEN 'Medium'
    WHEN Salary BETWEEN 50000 AND 70000 THEN 'High'
    ELSE 'Very High'
END AS SalaryGroup
FROM EmployeeDemographics
JOIN EmployeeSalaries
ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID