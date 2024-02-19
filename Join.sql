-- inner join

-- SELECT * FROM EmployeeDemographics
-- INNER JOIN EmployeeSalaries 
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT * FROM EmployeeDemographics
-- FULL OUTER JOIN EmployeeSalaries 
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT * FROM EmployeeDemographics
-- LEFT OUTER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT * FROM EmployeeDemographics
-- RIGHT OUTER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
-- FROM EmployeeDemographics
-- INNER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
-- FROM EmployeeDemographics
-- LEFT OUTER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID;

-- SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
-- FROM EmployeeDemographics
-- RIGHT OUTER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID
-- ORDER BY EmployeeSalaries.Salary DESC;

-- SELECT JobTitle, AVG(Salary)
-- FROM EmployeeDemographics
-- INNER JOIN EmployeeSalaries
-- ON EmployeeDemographics.EmployeeID = EmployeeSalaries.EmployeeID
-- WHERE JobTitle = 'Salesman'
-- GROUP BY JobTitle;