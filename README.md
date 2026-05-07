# Customer Behaviour Analysis Dashboard

## Project Overview

The Customer Behaviour Analysis Dashboard is an end-to-end data analytics project developed using Python, MySQL, and Power BI. The project focuses on analyzing customer purchasing patterns, spending behavior, revenue trends, shipping preferences, and payment methods to generate business insights.

The workflow includes:
- Data Cleaning using Python in Jupyter Notebook
- Data Storage using MySQL
- Interactive Dashboard Creation using Power BI

---

# Project Workflow

```text
Raw Dataset
   ↓
Data Cleaning using Python (Jupyter Notebook)
   ↓
Store Clean Data in MySQL
   ↓
Connect MySQL with Power BI
   ↓
Create Interactive Dashboard
```

---

# Technologies Used

| Technology | Purpose |
|---|---|
| Python | Data Cleaning & Preprocessing |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Jupyter Notebook | Data Analysis Environment |
| MySQL | Database Storage |
| SQLAlchemy | Database Connection |
| Power BI | Data Visualization |
| DAX | Dashboard Calculations |

---

# Dataset Information

The dataset contains customer shopping and transaction details including:

- Customer ID
- Gender
- Age
- Product Category
- Purchase Amount
- Review Ratings
- Shipping Type
- Payment Method
- Subscription Status
- Seasonal Purchases
- Location Data

---

# Data Cleaning Process

Data preprocessing was performed using Python in Jupyter Notebook.

### Cleaning Steps:
- Removed duplicate records
- Handled missing values
- Standardized column names
- Converted data types
- Cleaned inconsistent entries
- Exported cleaned dataset for analysis

### Python Libraries Used

```python
import pandas as pd
import numpy as np
from sqlalchemy import create_engine
```

---

# MySQL Integration

The cleaned dataset was stored in MySQL database for efficient data management and integration with Power BI.

### Features:
- Database connection using SQLAlchemy
- Structured data storage
- SQL query handling
- Real-time Power BI connectivity

---

# Power BI Dashboard Features

The interactive dashboard includes:

- Total Customers KPI
- Average Spending Analysis
- Revenue by Gender
- Revenue by Product Category
- Revenue by Season
- Shipping Type Analysis
- Revenue by Payment Method
- Age Distribution Analysis
- Location-Based Revenue Insights
- Dynamic Filters & Slicers

---

# Dashboard Preview

![Dashboard](images/dashboard.png)

---

# Key Insights

- Electronics category generated the highest revenue.
- Debit Card was the most preferred payment method.
- Spring season recorded the highest sales.
- Standard and Express shipping methods were widely used.
- Male customers contributed slightly higher revenue compared to others.

---


# Future Improvements

- Add machine learning models for customer prediction
- Deploy dashboard online using Power BI Service
- Automate ETL pipeline
- Add advanced DAX calculations
- Integrate real-time data streaming

---

# How to Run the Project

## Step 1: Clone Repository

```bash
git clone https://github.com/your-username/customer-behaviour-analysis.git
```

## Step 2: Install Required Libraries

```bash
pip install pandas numpy sqlalchemy pymysql
```

## Step 3: Run Jupyter Notebook

Open:

```text
notebooks/customer behaviour analysis.ipynb
```

## Step 4: Connect MySQL with Power BI

In Power BI:

```text
Home → Get Data → MySQL Database
```

Load the cleaned dataset and refresh visuals.

---

# Author

## Suraj

Data Analyst | Python | SQL | Power BI | Data Visualization

---

# Connect With Me

- LinkedIn: Add Your LinkedIn Profile
- GitHub: Add Your GitHub Profile
