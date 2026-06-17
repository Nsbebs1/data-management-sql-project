# Data Management SQL Project

## Overview

This project simulates a Data Management environment for monitoring and analyzing data sources across multiple departments.

The database contains APIs, databases, and portals with information about status, data quality, and update dates.

---

## Objectives

* Manage organizational data sources.
* Monitor data quality scores.
* Identify active and inactive systems.
* Analyze source types across departments.
* Support data governance and decision-making.

---

## Database Structure

### Table: DataSources

| Column           | Description                            |
| ---------------- | -------------------------------------- |
| SourceID         | Unique identifier for each data source |
| SourceName       | Name of the data source                |
| SourceType       | API, Database, or Portal               |
| Department       | Department responsible for the source  |
| Status           | Active or Inactive                     |
| DataQualityScore | Data quality score out of 100          |
| LastUpdateDate   | Last update date                       |

---

## Dataset

The dataset contains 40 simulated data sources representing different organizational systems and departments.

Examples include:

* Open Data Portal
* GIS Platform
* Urban Planning System
* Human Resources System
* Financial Reporting Database
* Data Governance Platform

---

## SQL Analysis

The project includes analytical queries such as:

### Total Data Sources

```sql
SELECT COUNT(*) AS TotalSources
FROM DataSources;
```

### Average Data Quality Score

```sql
SELECT AVG(DataQualityScore) AS AverageQuality
FROM DataSources;
```

### Data Sources by Type

```sql
SELECT SourceType,
COUNT(*) AS Total
FROM DataSources
GROUP BY SourceType;
```

### Active and Inactive Sources

```sql
SELECT *
FROM DataSources
WHERE Status = 'Active';
```

### Top Quality Data Sources

```sql
SELECT *
FROM DataSources
ORDER BY DataQualityScore DESC;
```

---

## Skills Demonstrated

* SQL
* Database Design
* Data Management
* Data Governance
* Data Quality Monitoring
* Data Analysis

---

## Tools Used

* MySQL Workbench
* GitHub

---

## Results

The project successfully demonstrates how SQL can be used to manage and analyze organizational data sources through structured queries and reporting.

---

## Author

Manal

Computer Science Graduate

Interested in Data Analysis, Data Management, Data Engineering, and Artificial Intelligence.
