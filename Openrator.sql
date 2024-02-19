-- SELECT * 
-- FROM EmployeeDemographics
-- WHERE FirstName <> 'Jill'

-- SELECT * FROM EmployeeDemographics 
-- WHERE AGE < 32

-- SELECT * FROM EmployeeDemographics
-- WHERE AGE > 32

-- SELECT * FROM EmployeeDemographics
-- WHERE AGE <= 32

-- SELECT * FROM EmployeeDemographics
-- WHERE AGE >= 32

-- SELECT * FROM EmployeeDemographics
-- WHERE AGE = 32

-- SELECT * FROM EmployeeDemographics
-- WHERE Gender = 'M'

-- SELECT * FROM EmployeeDemographics
-- WHERE Gender = 'M' AND AGE > 32

-- SELECT * FROM EmployeeDemographics
-- WHERE Gender = 'M' OR AGE > 32

-- SELECT * FROM EmployeeDemographics
-- WHERE FirstName LIKE '%a%'

SELECT * FROM EmployeeDemographics
WHERE FirstName IN ('Jill', 'Alex')