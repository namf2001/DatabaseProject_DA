SELECT *
FROM EmployeeDemographics AS Demo 
JOIN EmployeeSalaries AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
WHERE Demo.Age > 30