SELECT FirstName, LastName, Gender, Salary, 
    COUNT(Gender) OVER (PARTITION BY Gender) AS GenderCount
FROM EmployeeDemographics
JOIN EmployeeSalaries
ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID