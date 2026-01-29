

📊 Telco Churn Intelligence

Customer Churn & Revenue Impact Analysis

📌 Project Overview

Customer churn is a critical challenge for telecom companies, directly affecting recurring revenue and customer lifetime value.
This project analyzes customer churn patterns, identifies key churn drivers, and measures revenue loss, using SQL for analysis and Power BI for visualization.

The objective is to support business teams in making data-driven retention decisions.

🧠 Business Problem

The telecom business is experiencing:
High customer churn
Revenue loss from high-value customers
Limited visibility into churn-driving factors

Key Questions Addressed:
What is the overall churn rate?
Which customer segments churn the most?
How much revenue is lost due to churn?
Which customers are at the highest risk of churning?

🛠️ Tools & Technologies

SQL (MySQL) – Data cleaning, validation, KPI creation, segmentation
Power BI – Interactive dashboards and visual storytelling
Excel / CSV – Source data
DAX – Churn metrics and risk scoring

📂 Dataset Summary

The dataset contains telecom customer data including:
Customer tenure and contract type
Monthly and total charges
Payment methods and service usage
Churn status
Total customers analyzed: 7,032

🔍 SQL Analysis Workflow

1️⃣ Data Validation:Null value checks
Invalid tenure detection,
Data consistency verification.

2️⃣ KPI Calculation:
Total customers,
Churned customers,
Churn rate (%),
Total revenue,
Revenue lost due to churn.

3️⃣ Revenue Impact Analysis:
Revenue lost from churned customers,
Average revenue per churned customer,
Revenue concentration by contract type.

4️⃣ Customer Segmentation:
Churn by contract type
Churn by tenure bucket
Churn by internet service
Churn by payment method
High-value customer churn analysis.

5️⃣ Risk Identification:
Identification of high-risk customers,
Top churned customers by monthly charges,
Creation of reusable SQL views for reporting.

📈 Power BI Dashboard Highlights

🔹 Executive KPIs
Total Customers: 7,032
Churn Customers: 1,869
Churn Rate: 26.58%
Revenue Lost: 139.13K
Average Churn Risk Score: 41.96

🔹 Customer Behavior Analysis

A scatter plot visualizing:
Tenure vs Monthly Charges
Churn risk categories

Insight:
Customers with short tenure and high monthly charges show significantly higher churn risk.

🔹 Contract & Payment Insights
Month-to-month contracts have the highest churn

Electronic check payment method shows higher churn rates
🔹 Risk Segmentation

Customers are categorized into:
Low Risk
Medium Risk
High Risk

Insight:
A small segment of high-risk customers contributes to a disproportionately large share of revenue loss.

💡 Key Insights

26.6% churn rate driven mainly by:
Month-to-month contracts
Short customer tenure (< 6 months)
High monthly charges
Limited service support
Revenue loss is highly concentrated, not evenly distributed
Early-stage customers are most vulnerable to churn

🎯 Business Recommendations

Promote long-term contracts to reduce churn
Implement early-tenure retention offers
Encourage tech support adoption
Target high-value, high-risk customers with personalized incentives
Improve payment experience for electronic check users

🚀 Project Outcomes

This project demonstrates:

Strong SQL analytics skills
Business-focused data storytelling
KPI-driven dashboard development
Risk-based customer segmentation
End-to-end analytics workflow
