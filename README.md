# 🏦 Bank Marketing Campaign Performance Analysis

## 📌 Project Overview

This project analyzes a bank's marketing campaign data to understand customer subscription behavior and identify patterns that can support better marketing decisions.

The project follows an end-to-end Data Analytics workflow using **Python for data preparation, MySQL for business analysis, and Power BI for dashboard reporting**.

The analysis focuses on customer characteristics, campaign performance, contact methods, previous campaign outcomes, and subscription patterns.

---

# 🎯 Business Problem

A bank runs marketing campaigns to encourage customers to subscribe to term deposits. However, customer responses vary across different customer groups and campaign activities.

The bank wants to understand:

- Which customer groups have higher subscription rates?
- Which job categories respond better to campaigns?
- How does age relate to subscription behavior?
- Does the contact method affect customer response?
- How do previous campaign results relate to current subscriptions?
- Does contacting customers multiple times improve campaign performance?

### Main Business Question

> **How can the bank use customer and campaign data to identify subscription patterns and support better targeting for future marketing campaigns?**

---

# 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Python | Data preparation and quality checks |
| Pandas | Data manipulation and transformation |
| MySQL | Business analysis using SQL |
| SQL | Answering business questions |
| Power BI | Interactive dashboard development |
| DAX | KPI and business calculations |
| AI Tools (ChatGPT / Claude / Gamma)	| Supporting productivity, documentation, presentation preparation, and project planning |
| GitHub | Project documentation and portfolio delivery |

---

# 🔄 Project Workflow

```text
Raw Dataset
     ↓
Python Data Preparation
     ↓
Cleaned Dataset
     ↓
MySQL Business Analysis
     ↓
Power BI Dashboard
     ↓
Insights & Recommendations
```

---

# 📂 Dataset

The project uses a public bank marketing dataset containing customer information and marketing campaign details.

### Key Data Areas

- Customer age
- Job
- Education
- Marital status
- Housing loan
- Personal loan
- Contact method
- Campaign contacts
- Previous campaign result
- Economic indicators
- Customer subscription outcome

### Dataset Size

- **41,176 customer records**
- **21 original columns**

Additional analysis-ready columns were created during data preparation.

---

# 🐍 Data Preparation Using Python

The dataset was reviewed and prepared before analysis.

### Activities Performed

- Reviewed dataset structure and data types
- Checked missing and unknown values
- Identified duplicate records
- Created customer age groups
- Created a numeric subscription indicator
- Prepared the dataset for SQL and Power BI analysis

The goal was not to change the meaning of the original data, but to make it easier to analyze and report.

---

# 🗄️ SQL Business Analysis

The cleaned dataset was imported into MySQL for business analysis.

SQL was used to analyze:

- Overall subscription performance
- Subscription rate by job
- Subscription rate by age group
- Subscription rate by education
- Contact method performance
- Marital status patterns
- Previous campaign performance
- Campaign contact frequency

The analysis used SQL concepts such as:

- SELECT
- WHERE
- GROUP BY
- CASE WHEN
- Aggregate functions
- Business calculations

---

# 📊 Power BI Dashboard

The final Power BI dashboard contains **two interactive pages**.

## Page 1 — Executive Overview

Provides a high-level view of campaign performance.

### Key KPIs

- Total Customers
- Total Subscribers
- Subscription Rate
- Non-Subscribers

### Analysis Areas

- Subscription Rate by Job
- Subscription Rate by Education
- Subscription Rate by Month
- Subscription Rate by Contact Method
- Subscription Rate by Marital Status

---

## Page 2 — Campaign Insights

Provides a deeper analysis of customer segments and campaign performance.

### Analysis Areas

- Subscription Rate by Age Group
- Subscription Rate by Housing Loan
- Subscription Rate by Personal Loan
- Previous Campaign Result vs Current Subscription
- Customer Segments by Age Group
- Key Business Insights

---

# 📈 Key Results

| KPI | Result |
|---|---:|
| Total Customers | 41,176 |
| Total Subscribers | 4,639 |
| Subscription Rate | 11.27% |
| Non-Subscribers | 36,537 |

---

# 💡 Key Insights

- The overall subscription rate was **11.27%**, with **4,639 subscribers** from **41,176 customers**.

- Customers aged **66+** showed the highest subscription rate at **46.93%**, although this group has a smaller customer base.

- **Students and retired customers** showed strong subscription response rates among major job groups.

- Customers with a **successful previous campaign result** had a significantly higher current subscription rate of **65.11%**.

- Lower campaign contact frequency showed better subscription results, suggesting that repeated contacts may not always improve campaign performance.

> **Note:** These findings show patterns in the available data and should not be treated as proof that a specific customer characteristic directly causes a subscription decision.

---

# ✅ Business Recommendations

### 1. Improve Customer Targeting

Focus more attention on customer segments that consistently show stronger response rates.

### 2. Use Previous Campaign History

Use previous campaign outcomes to support better customer targeting in future campaigns.

### 3. Review Repeated Customer Contacts

Test more targeted follow-up strategies instead of repeatedly contacting the same customers.

### 4. Use Customer Segmentation

Consider different marketing approaches for different customer groups based on their response patterns.

---

# 📁 Project Structure

```text
bank-marketing-campaign-analysis/
│
├── README.md
├── requirements.txt
│
├── data/
│   ├── raw/
│   └── processed/
│
├── python/
│   └── data_cleaning.py
│
├── sql/
│   └── bank_marketing_analysis.sql
│
├── dashboard/
│   └── Bank_Marketing_Dashboard.pbix
│
├── docs/
│   ├── business-problem-document.docx
│   ├── user-guide.docx
│   └── developer-guide.docx
│
└── images/
    ├── executive-overview.png
    └── campaign-insights.png
```

---

# 🚀 How to Run the Project

## Step 1 — Download the Dataset

Place the original dataset inside the following folder:

```text
data/raw/
```

Keep the original file unchanged.

---

## Step 2 — Run Python Data Preparation

Install the required Python packages:

```bash
pip install -r requirements.txt
```

Run the Python script:

```bash
python python/data_cleaning.py
```

The cleaned dataset should be saved in:

```text
data/processed/
```

---

## Step 3 — Run SQL Analysis

1. Import the cleaned dataset into MySQL.
2. Create or select the project database.
3. Run the SQL analysis file.
4. Review the business questions and query results.

---

## Step 4 — Open the Power BI Dashboard

1. Open the `.pbix` file from the `dashboard` folder.
2. Update the data source path if required.
3. Refresh the dataset.
4. Use the slicers to explore different customer segments.

---

# 🖼️ Dashboard Preview

## Executive Overview

_Add your Executive Overview dashboard screenshot here._

```text
Bank_Marketing_Executive_Dash.png
```

## Campaign Insights

_Add your Campaign Insights dashboard screenshot here._

```text
Bank_Marketing_Campaign__Customer and Campaign Insights.png
```

---

# 📚 Documentation

This project includes supporting documentation:

- **Business Problem Document** — Explains the business situation, main question, and project deliverables.
- **User Guide** — Explains how a new user can run and use the project.
- **Developer Guide** — Explains the project structure, workflow, and technical handover details.

---

# 🔮 Future Improvements

Possible future enhancements include:

- Adding campaign cost and revenue data to calculate marketing ROI.
- Including more detailed customer segmentation.
- Adding automated data refresh.
- Comparing campaign performance across different time periods.
- Testing predictive models for subscription probability.

---

# 👤 Author

**Anil Kumar**

Aspiring Data Analyst | Python | SQL | Power BI | Excel

🔗 LinkedIn: *https://linkedin.com/in/thanda-anil-kumar-5817172a5*

🔗 GitHub: *https://github.com/thandaanil987*

---

## ⭐ Project Summary

This project demonstrates an end-to-end Data Analytics workflow by transforming raw marketing campaign data into meaningful business insights.

**Python → MySQL → Power BI → Insights → Business Recommendations**

The project focuses on using data to understand customer behavior and support better marketing decisions.
