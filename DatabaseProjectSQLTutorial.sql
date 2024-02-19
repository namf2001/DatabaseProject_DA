CREATE TABLE [dbo].[EmployeeCopy] (
    [EmployeeID] INT           NOT NULL,
    [FirstName]  NVARCHAR (50) NULL,
    [LastName]   NVARCHAR (50) NULL,
    [Age]        INT           NULL,
    [Gender]     NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);


GO

CREATE TABLE [dbo].[EmployeeSalaries] (
    [EmployeeID] INT          NOT NULL,
    [JobTitle]   VARCHAR (50) NULL,
    [Salary]     INT          NULL,
    [Bonus]      INT          NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);


GO

CREATE TABLE [dbo].[EmployeeErrors] (
    [EmployeeID] INT          NULL,
    [FirstName]  VARCHAR (50) NULL,
    [LastName]   VARCHAR (50) NULL
);


GO

CREATE TABLE [dbo].[EmployeeDemographics] (
    [EmployeeID] INT          NOT NULL,
    [FirstName]  VARCHAR (50) NULL,
    [LastName]   VARCHAR (50) NULL,
    [Age]        INT          NULL,
    [Gender]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);


GO

CREATE PROCEDURE TEST_PROCEDURE
AS
SELECT * FROM EmployeeDemographics

GO

CREATE PROCEDURE Temp_Employee
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

GO

