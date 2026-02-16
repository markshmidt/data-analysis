# 🗄️ SQL Duck DB projects

This folder contains SQL-based data analysis projects focused on transforming raw operational data into structured monthly reports.

The work demonstrates how SQL can be used not only for querying data, but for:

- Cleaning messy datasets
- Building reusable views
- Performing time-based aggregation
- Answering business questions
- Generating structured reports for stakeholders

All analysis is implemented inside Jupyter notebooks using SQL executed via DuckDB.

---

# 📁 Files & Business Questions

## 📊 monthly_employees_report.ipynb

### What This File Does
Cleans and analyzes volunteer, interview, and Slack analytics datasets to identify gaps in the onboarding and engagement process.

### Data Preparation
- Created reusable views (`clean_volunteers`, `clean_interviews`, `clean_analytics`)
- Used `TRIM()`, `LOWER()` for normalization
- Used `REGEXP_EXTRACT()` to extract timestamps
- Used `TRY_STRPTIME()` for safe date parsing
- Standardized emails for joining across systems

---

### ✅ Business Questions Answered

**1️⃣ Which VSP volunteers have not booked an interview?**  
- Used `LEFT JOIN` between volunteers and interviews  
- Filtered unmatched records using `WHERE i.email IS NULL`  
- Identified onboarding gaps  

**2️⃣ Among interviewed volunteers, who hasn’t been invited to Slack?**  
- Joined interview data with Slack analytics  
- Detected missing Slack invites via NULL filtering  
- Performed cross-system reconciliation  

**3️⃣ Who was invited to Slack but never joined?**  
- Compared invitation records with activity logs  
- Identified inactive or non-activated users  

**4️⃣ Which volunteers are on Slack but have been inactive since Nov 30, 2025?**  
- Joined volunteers with Slack analytics  
- Filtered by `last_active_date <= '2025-11-30'`  
- Identified disengaged users  
- Useful for retention and re-engagement analysis  

**5️⃣ How many Slack messages did VSP volunteers post in January 2026?**  
- Filtered by date range (`2026-01-01` to `2026-02-01`)  
- Retrieved activity metrics (`messages_posted`, `messages_posted_in_channels`)  
- Ordered by message count  
- Generated structured monthly engagement report  

---

### SQL Skills Demonstrated
- LEFT JOIN gap detection
- Multi-table joins
- NULL filtering
- Date-based filtering
- Conditional logic
- View creation
- Cross-system reconciliation
- Engagement and retention analysis

---

## ⏳ monthly_hourly_log.ipynb

### What This File Does
Generates monthly volunteer hour reports and cumulative performance summaries.

---

### ✅ Business Questions Answered

**1️⃣ In Jan 2026, who volunteered and for how many hours?**  
- Used conditional aggregation with `CASE WHEN`  
- Filtered by date range  
- Separated Training vs Service hours  
- Produced structured monthly output  

**2️⃣ By Dec 31, 2025, how many volunteers fall into hour ranges (0–40, 40–80, 80–120, 120+)?**  
- Used CTE (`WITH hours_by_volunteer`)  
- Aggregated total hours per volunteer  
- Classified into ranges using `CASE`  
- Counted volunteers per range  

---

### SQL Skills Demonstrated
- Conditional aggregation (`SUM(CASE WHEN...)`)
- Time-based filtering
- CTEs
- Grouping and classification
- Ordered reporting outputs
- KPI-style distribution analysis

---

# 🛠 Technical Stack

- SQL (DuckDB)
- Jupyter Notebook
- Excel & csv exports for reporting
- Relational data modeling

---

# 🎯 What This Repo Shows

- Strong SQL aggregation skills  
- Business-oriented analytical thinking with translating reporting requirements into SQL queries
- Data cleaning directly in SQL  
- Onboarding funnel analysis  
- Engagement & retention tracking  
- Time-based performance reporting  
- Structured, reusable analytical queries  

This reflects real-world operational analytics used in HR reporting, onboarding tracking, and volunteer engagement monitoring.

## 🚀 Possible Improvements

Future enhancements could include:

- Adding parameterized queries for dynamic month selection
- Creating views for reusable reporting logic
- Adding more complex joins across related tables
- Converting SQL outputs into visual dashboards
- Exporting results as CSV or PDF reports
- Adding query performance analysis (indexes, execution plans)

---

📌 These notebooks focus on clarity and structured reporting logic rather than overly complex SQL — the goal is practical, maintainable analytics.
