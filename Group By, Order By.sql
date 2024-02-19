-- SELECT * FROM EmployeeDemographics

-- SELECT Gender, COUNT(Gender) AS Count
-- FROM EmployeeDemographics
-- GROUP BY Gender

-- SELECT Gender, Age, COUNT(Gender) AS Count
-- FROM EmployeeDemographics
-- GROUP BY Gender, Age

-- INSERT INTO EmployeeDemographics 
-- VALUES (10011, 'Nguyen', 'Nam', 65,'F')

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender

SELECT Age, Gender FROM EmployeeDemographics
ORDER BY Gender DESC