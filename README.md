🏥 Healthcare Claims Cost Analysis Dashboard

📌 Project Overview
This project analyzes healthcare insurance claims data to identify where money is being spent and lost.
The goal is to help C-level executives understand cost drivers across claim types, members, CPT codes, and ICD codes, and take data-driven decisions to improve profitability.
The dashboard is built using Power BI and answers key business questions around healthcare spending.

🎯 Business Problem
The insurance company is losing money and wants to understand:
Which services are most expensive
Which procedures and diagnosis codes drive the highest costs
How billed amounts compare to paid amounts
Which members contribute most to total spending

❓ Key Questions Answered
Which claim types are the most expensive?
Which CPT codes and ICD codes drive the highest spending?
Which members account for the largest share of total costs?
How do billed amounts compare to paid amounts across claim types and procedures?

📊 Dashboard Highlights
🔹 KPI Cards
Total Members
Total Claims
Total Billed Amount
Total Paid Amount
Paid Ratio (Paid ÷ Billed)

🔹 Claim Type Cost Breakdown
Comparison of Total Billed Amount vs Total Paid Amount
Number of claims by claim type
Insight: Inpatient claims are the most expensive despite fewer claims than outpatient

🔹 Top Members Cost Breakdown
Identifies members contributing the highest total costs
Helps detect high-cost members for care management

🔹 Top 10 CPT Codes by Total Paid Amount
Highlights procedures driving maximum payouts
Includes Average Paid Amount for deeper insight

🔹 Top 10 ICD Codes by Total Paid Amount
Identifies diagnosis codes associated with high spending
Useful for risk and utilization analysis

🔹 Interactive Slicers
Gender
Age Group
Claim Type

🧠 Key Insights
Inpatient claims are the most expensive, contributing the highest share of total billed and paid amounts.
Top ICD & CPT codes drive a disproportionate amount of healthcare spending.
A noticeable gap between billed vs paid amounts highlights reimbursement inefficiencies.
A small group of members account for a large share of total costs, indicating high-cost utilization.
Overall paid ratio ~75%, varying significantly by claim type.

🛠️ Tech Stack
SQL – Data aggregation and analysis
Power BI – Data modeling, DAX, and dashboard visualization
Excel / CSV – Source data

📐 Data Modeling
Star-schema style model
Fact table: claims
Dimension table: members
Relationship based on member_id
