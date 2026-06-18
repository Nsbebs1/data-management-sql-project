-- Data Management Platform SQL Project


CREATE TABLE DataSources (
    SourceID INT PRIMARY KEY,
    SourceName VARCHAR(100),
    SourceType VARCHAR(50),
    Department VARCHAR(100),
    Status VARCHAR(30),
    DataQualityScore INT,
    LastUpdateDate DATE
);

INSERT INTO DataSources VALUES
(1, 'Municipal Services System', 'API', 'Municipal Services', 'Active', 92, '2026-06-01'),
(2, 'Licenses Database', 'Database', 'Licensing Department', 'Active', 88, '2026-05-28'),
(3, 'Open Data Portal', 'Portal', 'Data Management Office', 'Active', 95, '2026-06-05'),
(4, 'Customer Complaints System', 'API', 'Customer Experience', 'Inactive', 74, '2026-04-20'),
(5, 'Inspection Reports Database', 'Database', 'Field Inspection', 'Active', 81, '2026-05-15'),
(6, 'Urban Planning System', 'API', 'Urban Planning', 'Active', 90, '2026-06-03');

-- Show all data sources
SELECT *
FROM DataSources;

-- Count total data sources
SELECT COUNT(*) AS TotalDataSources
FROM DataSources;

-- Count sources by type
SELECT SourceType, COUNT(*) AS Total
FROM DataSources
GROUP BY SourceType;

-- Active sources only
SELECT *
FROM DataSources
WHERE Status = 'Active';

-- Inactive sources
SELECT *
FROM DataSources
WHERE Status = 'Inactive';

-- Average data quality score
SELECT AVG(DataQualityScore) AS AverageQualityScore
FROM DataSources;

-- Highest quality data source
SELECT *
FROM DataSources
ORDER BY DataQualityScore DESC
LIMIT 1;

-- Data sources with quality below 85
SELECT *
FROM DataSources
WHERE DataQualityScore < 85;

-- Last updated sources
SELECT SourceName, SourceType, Department, LastUpdateDate
FROM DataSources
ORDER BY LastUpdateDate DESC;

-- Average quality score by source type
SELECT SourceType, AVG(DataQualityScore) AS AverageQuality
FROM DataSources
GROUP BY SourceType;

-- Count sources by department
SELECT Department, COUNT(*) AS NumberOfSources
FROM DataSources
GROUP BY Department;
