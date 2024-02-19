WITH CTE_EmployeeSalaries AS
(
    SELECT EmployeeID, Salary
    FROM EmployeeSalaries
    WHERE Salary > 50000
)

SELECT EmployeeID, Salary
FROM CTE_EmployeeSalaries