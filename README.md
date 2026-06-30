# Telecom Customer Churn Analysis

<p align="center">

![SQL Server](https://img.shields.io/badge/SQL%20Server-Database-red?style=for-the-badge&logo=microsoftsqlserver)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-Analysis-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?style=for-the-badge&logo=github)

</p>

<p align="center">
<b>An end-to-end Business Intelligence project that analyzes telecom customer churn using SQL Server, Power BI, and Excel to uncover churn drivers, monitor KPIs, and generate actionable business recommendations.</b>
</p>

---

# 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Dataset Information](#-dataset-information)
- [Tech Stack](#-tech-stack)
- [Project Workflow](#-project-workflow)
- [Data Cleaning](#-data-cleaning)
- [Dashboard Development](#-dashboard-development)
- [Key Performance Indicators](#-key-performance-indicators)
- [Key Insights](#-key-insights)
- [Business Recommendations](#-business-recommendations)
- [Business Impact](#-business-impact)
- [Dashboard Preview](#-dashboard-preview)
- [Repository Structure](#-repository-structure)
- [Project Resources](#-project-resources)
- [Skills Demonstrated](#-skills-demonstrated)
- [Future Enhancements](#-future-enhancements)
- [Conclusion](#-conclusion)
- [Author](#-author)

---

# 📖 Project Overview

Customer churn is one of the most significant challenges faced by telecom companies. Retaining existing customers is considerably more cost-effective than acquiring new ones, making churn analysis a critical business function.

This project leverages **SQL Server**, **Power BI**, and **Excel** to analyze customer demographics, service subscriptions, billing behavior, contracts, and support interactions. The objective is to identify customers at risk of leaving and provide business recommendations that improve retention and long-term profitability.

The final deliverable includes interactive Power BI dashboards designed to help stakeholders monitor customer behavior, evaluate churn trends, and support data-driven decision-making.

---

#  Business Problem

The telecom company experiences a customer churn rate of **26.5%**, resulting in revenue loss and increased customer acquisition costs.

The company wants to answer questions such as:

- Which customers are most likely to churn?
- Which services are associated with higher churn?
- Does payment method influence churn?
- Which contract types improve customer retention?
- What strategies can reduce customer attrition?

---

#  Project Objectives

- Analyze customer churn behavior.
- Identify major churn drivers.
- Segment high-risk customers.
- Measure business KPIs.
- Build interactive dashboards.
- Generate business recommendations.
- Support data-driven customer retention strategies.

---

#  Dataset Information

**Source:** Kaggle

### Dataset Summary

| Metric | Value |
|---------|--------|
| Total Customers | 7,043 |
| Total Features | 23 |
| Target Variable | Churn |

### Features Included

###  Customer Information

- Gender
- Senior Citizen
- Partner
- Dependents

###  Services

- Phone Service
- Multiple Lines
- Internet Service
- Online Security
- Online Backup
- Device Protection
- Tech Support
- Streaming TV
- Streaming Movies

###  Billing Information

- Contract Type
- Monthly Charges
- Total Charges
- Paperless Billing
- Payment Method

###  Target

- Customer Churn (Yes / No)

---

#  Tech Stack

| Technology | Purpose |
|------------|---------|
| SQL Server | Data Cleaning & SQL Analysis |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| Microsoft Excel | Data Validation |
| Git & GitHub | Version Control |

---

#  Project Workflow

```
Raw Dataset
      │
      ▼
 SQL Server
(Data Cleaning)
      │
      ▼
SQL Analysis
      │
      ▼
Power BI
(Data Modeling)
      │
      ▼
Dashboard Development
      │
      ▼
Business Insights
      │
      ▼
Recommendations
```

---

#  Data Cleaning

Data preprocessing was performed in SQL Server.

### Tasks Performed

- Imported raw dataset
- Created staging tables
- Removed inconsistencies
- Converted incorrect data types
- Handled missing values
- Standardized values
- Validated records
- Prepared analytical dataset

Excel was used to verify data quality before dashboard development.

---

#  Dashboard Development

Two interactive dashboards were created in Power BI.

##  Overall Customer Dashboard

Provides a complete overview of:

- Customer demographics
- Revenue
- Contract distribution
- Internet services
- Payment methods
- Customer segmentation

---

## Customer Churn Dashboard

Focused exclusively on churned customers.

Includes:

- Churn analysis
- Customer risk segments
- Service adoption
- Payment behavior
- Contract analysis
- Revenue impact

---

#  Key Performance Indicators

| KPI | Value |
|------|--------|
| Total Customers | **7,043** |
| Churned Customers | **1,868** |
| Retained Customers | **5,175** |
| Churn Rate | **26.5%** |
| Average Monthly Charges | **$64.8** |
| Total Revenue | **$16.1 Million** |

---

#  Key Insights

##  Customer Churn

- Approximately **1 out of every 4 customers** churned.
- Overall churn rate is **26.5%**.

---

##  Internet Service

Customers using **Fiber Optic Internet** experience the highest churn.

Possible reasons include:

- Higher pricing
- Service reliability
- Customer expectations

---

##  Payment Method

Customers paying via **Electronic Check** have significantly higher churn than Auto-Pay users.

---

##  Contract Type

Customers on **Month-to-Month contracts** are substantially more likely to churn than customers with long-term contracts.

---

##  Customer Demographics

Gender has minimal influence on churn.

Customers with:

- Partners
- Dependents

show noticeably better retention.

---

##  Value-Added Services

Customers using:

- Online Security
- Online Backup
- Device Protection
- Tech Support

are less likely to churn.

---

#  Business Recommendations

## Improve Fiber Internet Service

- Improve service reliability.
- Review pricing.
- Launch loyalty programs.

---

## Increase Auto-Pay Adoption

Encourage customers to adopt:

- Credit Card Auto-Pay
- Bank Transfer Auto-Pay

Offer:

- Cashback
- Discounts
- Reward Points

---

## Promote Long-Term Contracts

Provide incentives for:

- One-Year Plans
- Two-Year Plans

Long-term contracts significantly improve retention.

---

## Increase Adoption of Value-Added Services

Promote:

- Online Security
- Online Backup
- Device Protection
- Tech Support

Strategies:

- Free Trials
- Bundled Plans
- Personalized Marketing

---

## Strengthen Customer Support

- Identify at-risk customers.
- Improve first-contact resolution.
- Offer retention-focused recommendations.

---

#  Business Impact

This project transforms customer data into actionable business insights that support strategic decision-making.

### Potential Business Benefits

-  Reduce customer churn by identifying high-risk customers.
-  Increase customer lifetime value.
-  Improve targeted marketing campaigns.
-  Enable KPI-driven decision-making.
-  Support proactive customer retention.
-  Increase adoption of premium services.
-  Promote Auto-Pay adoption.
-  Increase long-term contract adoption.
-  Improve long-term revenue growth.

---

#  Dashboard Preview

## Overall Customer Dashboard

![Overall Dashboard](CUSTOMER%20BASED%20ANALYSIS.png)

---

## Customer Churn Dashboard

![Customer Churn Dashboard](CHURNED%20CUSTOMER.png)

---

#  Repository Structure

```
Telecom-Customer-Churn-Analysis
│
├── DASHBOARDS.pbix
├── SQLQuery1-Customer-Churn_analysis.sql
├── customer_churn-RAW DATA.xlsx
├── REPORT.docx
├── CUSTOMER BASED ANALYSIS.png
├── CHURNED CUSTOMER.png
└── README.md
```

---

#  Project Resources

| Resource | Description |
|-----------|-------------|
| 📑 REPORT.docx | Detailed Project Report |
| 📂 customer_churn-RAW DATA.xlsx | Raw Dataset |
| 📝 SQLQuery1-Customer-Churn_analysis.sql | SQL Queries |
| 📊 DASHBOARDS.pbix | Power BI Dashboard |

---

#  Skills Demonstrated

### SQL

- Data Cleaning
- Aggregations
- CASE Statements
- Data Transformation

### Power BI

- Data Modeling
- DAX Measures
- KPI Cards
- Interactive Dashboards
- Drill-Down Analysis
- Slicers
- Data Visualization

### Business Analytics

- Customer Segmentation
- Churn Analysis
- KPI Reporting
- Root Cause Analysis
- Business Intelligence
- Data Storytelling

---

#  Future Enhancements

- Predict customer churn using Machine Learning.
- Deploy dashboards using Power BI Service.
- Automate ETL pipelines.
- Add customer lifetime value (CLV) analysis.
- Build real-time dashboards using Azure SQL.

---

#  Conclusion

This project highlights that 26.5% of customers churn, with churn concentrated among Fiber Optic internet users and Electronic Check payers.

Key strategies such as improving service quality, incentivizing auto-pay methods, promoting long-term contracts, and increasing adoption of support-related services can significantly reduce churn.

Implementing these recommendations will not only improve customer retention but also positively impact revenue growth and long-term loyalty.

This project demonstrates how Business Intelligence tools can transform raw telecom data into actionable insights.

The analysis identifies the primary drivers of customer churn and provides practical recommendations to improve customer retention, optimize service offerings, and increase profitability.


---

#  Author

## Kartik Kachwahe

**Aspiring Data Scientist | Data Analyst | SQL | Power BI | Excel | Business Intelligence**

📧 Email: kartikkachwahe25@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/kartikkachwahe021

💻 GitHub: https://github.com/KartikKachwahe

---

##  Support

If you found this project helpful or learned something from it, consider giving this repository a ⭐.

It helps others discover the project and motivates continued development.

---

**Thank you for visiting this repository!**
