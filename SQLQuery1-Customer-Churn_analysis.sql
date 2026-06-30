/*
========================================================
Customer Churn Analysis Project
Database: customer_churn_db
Description:
This project performs data cleaning and exploratory
analysis on customer churn data to identify patterns,
high-risk customers, and retention insights.
========================================================
*/

-- =====================================================
-- DATABASE SETUP
-- =====================================================

CREATE DATABASE customer_churn_db;

USE customer_churn_db;

-- Check total records
SELECT COUNT(*) AS total_records
FROM customer_churn;

-- Preview dataset
SELECT *
FROM customer_churn
LIMIT 14;

-- View table structure
DESCRIBE customer_churn;


-- =====================================================
-- DATA CLEANING
-- =====================================================

-- Rename customer ID column
ALTER TABLE customer_churn
RENAME COLUMN ï»¿customerID TO customer_id;

-- Check blank TotalCharges values
SELECT *
FROM customer_churn
WHERE TotalCharges = ' ';

-- Check duplicate customer IDs
SELECT
    customer_id,
    COUNT(*) AS duplicate_count
FROM customer_churn
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Replace blank values with NULL
SET SQL_SAFE_UPDATES = 0;

UPDATE customer_churn
SET TotalCharges = NULL
WHERE TotalCharges = ' ';

SET SQL_SAFE_UPDATES = 1;

-- Convert TotalCharges datatype
ALTER TABLE customer_churn
MODIFY COLUMN TotalCharges DECIMAL(10,2);


-- =====================================================
-- CHURN ANALYSIS
-- =====================================================

-- Overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) *100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn;


-- Churn by Contract Type
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) *100 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Contract
ORDER BY churn_rate DESC;


-- Churn by Internet Service
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) *100 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;


-- Churn by Tech Support
SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) *100 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY TechSupport
ORDER BY churn_rate DESC;


-- Average Monthly Charges by Churn
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM customer_churn
GROUP BY Churn;


-- Average Total Charges by Contract
SELECT
    Contract,
    ROUND(AVG(TotalCharges),2) AS avg_total_charges
FROM customer_churn
GROUP BY Contract;


-- =====================================================
-- CUSTOMER RISK SEGMENTATION
-- =====================================================

-- High-risk customers
SELECT
    customer_id,
    gender,
    SeniorCitizen,
    tenure,
    MonthlyCharges,
    InternetService,
    Contract,
    TechSupport,
    Churn
FROM customer_churn
WHERE Contract='Month-to-Month'
AND InternetService='Fiber optic'
AND TechSupport='No';


-- High-risk churn rate
SELECT
    COUNT(*) AS high_risk_customers,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS already_churned,
    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100/COUNT(*),
        2
    ) AS risk_churn_rate
FROM customer_churn
WHERE Contract='Month-to-Month'
AND InternetService='Fiber optic'
AND TechSupport='No';


-- Low-risk customer analysis
SELECT
    CASE
        WHEN Contract='Two year'
        AND InternetService!='Fiber optic'
        AND TechSupport='Yes'
        THEN 'Low Risk'
        ELSE 'Other'
    END AS risk_segment,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn='Yes'
        THEN 1
        ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100 / COUNT(*),
        2
    ) AS churn_rate

FROM customer_churn
GROUP BY risk_segment;


-- =====================================================
-- REVENUE ANALYSIS
-- =====================================================

-- Revenue at risk from high-risk churn customers
SELECT
    ROUND(SUM(MonthlyCharges),2)
    AS total_monthly_revenue_at_risk
FROM customer_churn
WHERE Contract='Month-to-Month'
AND InternetService='Fiber optic'
AND TechSupport='No'
AND Churn='Yes';


-- =====================================================
-- RETENTION ANALYSIS
-- =====================================================

-- Churn by customer tenure
SELECT
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN '0-1 Year'
        WHEN tenure BETWEEN 13 AND 24 THEN '1-2 Years'
        WHEN tenure BETWEEN 25 AND 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn='Yes'
        THEN 1
        ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100/COUNT(*),
        2
    ) AS churn_rate

FROM customer_churn
GROUP BY tenure_group
ORDER BY churn_rate DESC;


-- Monthly Charges vs Churn
SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS charge_band,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn='Yes'
        THEN 1
        ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100/COUNT(*),
        2
    ) AS churn_rate

FROM customer_churn
GROUP BY charge_band
ORDER BY churn_rate DESC;


-- =====================================================
-- FINAL INSIGHT SUMMARY
-- =====================================================

SELECT
    Contract,
    InternetService,
    TechSupport,

    CASE
        WHEN tenure <=12 THEN '0-1 Year'
        WHEN tenure <=24 THEN '1-2 Years'
        WHEN tenure <=48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn='Yes'
        THEN 1
        ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
        *100/COUNT(*),
        2
    ) AS churn_rate

FROM customer_churn
GROUP BY
    tenure_group,
    Contract,
    InternetService,
    TechSupport;
