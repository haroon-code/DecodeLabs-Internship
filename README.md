Data Analytics — DecodeLabs Internship (Batch 2026)

This repository contains all projects completed as part of the 
DecodeLabs Data Analytics Internship (Batch 2026).

Project 2: Exploratory Data Analysis (EDA)

Project Overview
The goal was to perform Exploratory Data Analysis on a real 
e-commerce dataset to uncover patterns, trends, and outliers.

Dataset Information
- Total Orders: 1,200
- Time Period: January 2023 — June 2025
- Total Columns: 14
- Tool Used: Google Sheets

What I Did
- Checked for missing values
- Calculated descriptive statistics (Mean, Median, Min, Max, Std Dev)
- Detected outliers using the IQR Method
- Analyzed categories (Order Status, Products, Referral Source)
- Created bar charts for visualization
- Written executive summary with key findings

Key Findings
1. 41.4% of orders are cancelled or returned (497 out of 1200)
2. TotalPrice is right skewed — Median ($824) is more accurate than Mean ($1,054)
3. Instagram is the top referral channel with 259 orders (21.6%)
4. Laptop has highest average order value at $1,111 per order
5. 8 outlier orders found above $3,330 using IQR method
6. 309 missing values found in CouponCode column (25.75%)

Charts Created
- Order Status Distribution
- Product Sales Count
- Referral Source Analysis

Skills Used
- COUNTBLANK — Missing value detection
- AVERAGE, MEDIAN, MIN, MAX — Descriptive statistics
- QUARTILE — Q1 and Q3 calculation
- IQR Method — Outlier detection
- COUNTIF — Category analysis
- Conditional Formatting — Visual highlighting
- Bar Charts — Data visualization

Project 3: SQL Data Analysis
Project Overview
The goal was to use SQL queries to extract meaningful insights 
from the same e-commerce dataset using structured query language.

Dataset Information
- Total Orders: 999
- Total Columns: 14
- Tool Used: SQLite Online (sqliteonline.com)

What I Did
- Wrote SELECT queries to view and filter data
- Used WHERE clause to filter specific rows
- Used ORDER BY to sort results
- Used GROUP BY to group data into categories
- Performed aggregations using COUNT, SUM, AVG, MAX, MIN
- Used HAVING clause to filter grouped data

Key Queries Written
1. Viewed all orders using SELECT
2. Filtered Delivered, Cancelled and Returned orders using WHERE
3. Filtered orders with TotalPrice greater than 2000
4. Sorted orders by TotalPrice using ORDER BY
5. Counted total orders using COUNT
6. Calculated total revenue using SUM
7. Calculated average order value using AVG
8. Grouped orders by Product, Payment Method, Order Status
9. Found top referral source by revenue using GROUP BY
10. Used HAVING to filter groups by conditions

Key Findings
1. Total revenue from all orders calculated using SUM
2. Laptops and Tablets generate highest revenue per product
3. Instagram and Facebook are top referral sources
4. Delivered orders make up the largest order status group
5. Credit Card is the most used payment method

Skills Used
- SELECT — Viewing and choosing columns
- WHERE — Filtering rows by condition
- ORDER BY — Sorting results
- GROUP BY — Grouping data into categories
- COUNT, SUM, AVG, MAX, MIN — Aggregation functions
- HAVING — Filtering after grouping

Author
- Internship: DecodeLabs Data Analytics Internship
- Batch: 2026
