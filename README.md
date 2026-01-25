# 🏥 Healthcare Claims Cost Analysis Dashboard

## 📌 Project Overview
This project analyzes healthcare insurance claims data using **SQL and Power BI** to identify  
**cost drivers, reimbursement efficiency, and financial leakage**.

The dashboard is designed to help **insurance providers and healthcare decision-makers**
understand where costs are concentrated and how reimbursement performance can be improved.

---

## 🎯 Business Problem
Healthcare insurers are facing rising claim costs and revenue leakage due to gaps between  
**billed and paid amounts**.

The objective of this analysis is to answer:
- Which claim types are the most expensive?
- Which CPT and ICD codes drive the highest spending?
- Which members contribute disproportionately to total costs?
- How efficient is the reimbursement process?

---

## 🧮 Data Preparation & SQL Analysis
SQL was used to **clean, transform, and aggregate claims data** before visualization.

### Key SQL tasks performed:
- Aggregated **total billed vs total paid amounts**
- Calculated **reimbursement rate and leakage**
- Identified **top CPT and ICD codes by total paid amount**
- Ranked **high-cost members**
- Analyzed **claim type cost vs volume**
- Computed **provider-wise paid ratios**

📌 These SQL outputs were then connected to Power BI for visualization.

---

## 📊 Key KPIs
- **Total Billed Amount:** ₹2.06M  
- **Total Paid Amount:** ₹1.55M  
- **Leakage Amount:** ₹511.4K  
- **Reimbursement Rate:** 75%  
- **Total Claims:** 449  
- **Total Members:** 100  

---

## 🔍 Key Insights
- **Inpatient claims** are the most expensive, contributing the highest total paid amount despite lower claim volume.
- A **small set of CPT codes** drives the majority of procedural costs; CPT **67890 alone contributes ~₹242.7K**.
- **Top 5 members account for ~₹1.43M** out of ₹1.55M total paid costs, indicating strong cost concentration.
- Overall **reimbursement efficiency is 75%**, resulting in a **leakage of ~₹511.4K**.
- Provider-wise paid ratios vary, highlighting inconsistent reimbursement performance.

---

## ✅ Recommended Actions
- Prioritize **cost control and utilization review** for high-cost inpatient claims.
- Monitor and optimize **top CPT and ICD codes** driving spend.
- Implement **targeted care management programs** for high-cost members.
- Improve billing and reimbursement workflows to **reduce leakage**.

---

## 🛠 Tools & Technologies
- **SQL** – Data aggregation, joins, window functions, ranking, KPI calculations  
- **Power BI** – Interactive dashboards & data storytelling  
- **Excel** – Initial data validation and formatting  

---

## 📸 Dashboard Preview

<img width="1270" height="871" alt="Dashboard_preview" src="https://github.com/user-attachments/assets/18d11199-41ab-4583-b9e6-9324df771d52" />

---

## 👤 Author
**[Aditya Dabral]**  

📫 LinkedIn: www.linkedin.com/in/aditya-dabral49 
💻 GitHub: https://github.com/adityadabral49/healthcare-cost-analysis 

---

## 🚀 Why This Project Matters
This project demonstrates:
- Strong **SQL-based data analysis**
- Ability to convert data into **business-ready insights**
- Hands-on experience with **healthcare claims data**
- End-to-end workflow from **SQL → Power BI dashboard**

