# 📊 E-Commerce Analytics with PostgreSQL

**Olist Brazilian E-Commerce Dataset Analysis**

------------------------------------------------------------------------

## 📁 Dataset

Dataset used:\
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

This dataset contains real transactional data from a Brazilian
marketplace, including:

-   Orders
-   Order items
-   Customers
-   Sellers
-   Reviews
-   Products
-   Geolocation
-   Payments

------------------------------------------------------------------------

# ⚙️ Tools Used

-   PostgreSQL
-   DataGrip
-   Kaggle Dataset
-   SQL (advanced aggregations, joins, CTEs, views)

------------------------------------------------------------------------

# 📊 Analysis Overview

This project answers real business questions using SQL.

------------------------------------------------------------------------

# 💰 Revenue Analysis

### Business Questions Answered:

-   How much money did the business earn?
-   How much revenue does each order generate?
-   What is the average order value?
-   Which products sell best and worst?
-   Who are the top-performing sellers?
-   Which categories generate the most revenue?

### SQL Methods Used:

-   SUM()
-   AVG()
-   GROUP BY
-   ORDER BY
-   LIMIT
-   JOIN
-   Type casting (::numeric)

### Observations:

-   Revenue is unevenly distributed across products.
-   A small number of products generate a large portion of revenue.
-   Top sellers contribute significantly to total marketplace revenue.

------------------------------------------------------------------------

# 📈 Time-Based Revenue Analysis

### Business Questions Answered:

-   Is revenue growing over time?
-   What are the best-performing months?
-   Is there seasonality?

### SQL Methods Used:

-   EXTRACT(YEAR FROM timestamp)
-   EXTRACT(MONTH FROM timestamp)
-   DATE_TRUNC('month', timestamp)
-   Aggregations grouped by time periods

### Observations:

-   Revenue increases over later years.
-   Clear monthly seasonality patterns.
-   Some months consistently outperform others.

------------------------------------------------------------------------

# 🚚 Delivery & Logistics Analysis

### Business Questions Answered:

-   What is the average delivery time per year?
-   Which sellers have the worst delivery performance?
-   What percentage of deliveries are late?

### SQL Methods Used:

-   Timestamp subtraction
-   EXTRACT(EPOCH FROM interval)
-   COUNT(\*) FILTER (WHERE condition)
-   GROUP BY seller_id
-   Year-based grouping

### Observations:

-   Delivery time varies by year.
-   Certain sellers consistently underperform in delivery speed.
-   A measurable percentage of orders are delivered after the estimated
    date.

------------------------------------------------------------------------

# 👥 Customer Analysis

### Business Questions Answered:

-   How many repeat customers exist?
-   Who are the most loyal customers?
-   Which states have the highest number of customers?
-   What is customer lifetime value (CLV)?
-   How is CLV distributed?

### SQL Methods Used:

-   Views
-   COUNT(DISTINCT)
-   FILTER clause
-   CTEs (WITH)
-   Percentile analysis (percentile_cont)
-   Revenue aggregation per customer

### Observations:

-   A portion of customers are repeat buyers.
-   Revenue distribution among customers is highly skewed.
-   Top percentiles contribute disproportionately to total revenue.

------------------------------------------------------------------------

# ⭐ Review & Revenue Correlation

### Business Question:

-   Does higher spending lead to better review scores?

### SQL Methods Used:

-   CTE to compute revenue per order
-   corr() function for correlation

### Result:

-   Correlation ≈ -0.04

### Interpretation:

There is no meaningful linear relationship between order value and
review score.\
Customer satisfaction appears influenced by operational factors rather
than spending level.

------------------------------------------------------------------------

# ⚡ Index Optimization & Performance Analysis

Indexes were created to improve query performance on:

-   order_id
-   customer_id
-   seller_id
-   order_status
-   order_delivered_customer_date
-   order_purchase_timestamp

### Performance Analysis

-   Used EXPLAIN ANALYZE to compare execution plans.
-   Observed difference between sequential scans and index scans.
-   Verified reduced execution time for filtered and grouped queries.
-   Tested composite indexes for multi-column filtering.

### Outcome

-   Significant performance improvements on large aggregations.
-   Faster filtering on delivery-based queries.
-   Improved join performance on high-volume tables.

------------------------------------------------------------------------

# 🔒 Transactions & Concurrency Practice

I also practices transaction simulations to understand:

-   BEGIN / COMMIT / ROLLBACK
-   Row-level locking (SELECT ... FOR UPDATE)
-   Savepoints
-   Concurrent updates
-   Deadlock scenarios

### Topics Practiced

-   Preventing overbooking with transactional seat updates
-   Handling stock reduction safely
-   Lock behavior between concurrent sessions
-   Isolation level concepts

------------------------------------------------------------------------

# 🧠 SQL Concepts Demonstrated

-   Aggregations
-   Time-series grouping
-   Conditional aggregation
-   CTEs
-   Views
-   Correlation analysis
-   Percentiles
-   Index design
-   Query plan analysis
-   Transactions & locking

------------------------------------------------------------------------


# 🚀 Future Improvements

-   Add performance optimization using indexes
-   Create materialized views for heavy aggregations
-   Implement cohort retention analysis
-   Add RFM segmentation
-   Normalize schema into star schema design

------------------------------------------------------------------------

# 🎯 What This Project Demonstrates

-   End-to-end SQL analytics workflow
-   Business-driven query design
-   Performance optimization skills
-   Understanding of database indexing
-   Concurrency and transaction control
