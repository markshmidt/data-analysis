# Data Analysis Projects (Python)

This repository contains Python-based data analysis notebooks focused on real-world reporting, data cleaning, aggregation, and visualization.
The goal of this repo is not just to plot charts, but to:
- clean messy data,
- ask the right questions,
- calculate meaningful metrics,
- and present results in a readable, structured way.

All work is done in **Jupyter Notebooks using Python**, with an emphasis on clarity, reproducibility, and practical analytics skills.

---

## 📒 Notebooks Overview

###  `volunteer_monthly_hour_log.ipynb`
**What it does:**  
Analyzes volunteer hour logs to understand participation and workload distribution over time.

**Main focus:**
- Cleaning and preparing time-based data  
- Grouping and aggregating hours by volunteer and month  
- Producing monthly summaries and totals  
- Visualizing trends in volunteer activity  

**Skills shown:**
- pandas groupby & aggregation  
- Date/time handling  
- Reporting-style analysis  

---

### `volunteer_monthly_progress_report.ipynb`
**What it does:**  
Tracks volunteer progress across the month and evaluates how close volunteers are to expected or target hours.

**Main focus:**
- Cumulative and running totals  
- Progress tracking logic  
- Identifying gaps or strong contributors  
- Creating structured progress summaries  

**Skills shown:**
- Feature engineering  
- KPI-style metrics  
- Progress and performance analysis  

---

###  `weekly_1:1_coaching_report.ipynb`
**What it does:**  
Analyzes weekly one-on-one coaching or mentoring sessions to understand consistency and engagement.

**Main focus:**
- Weekly aggregation of sessions: number of events per weekday and cancellations count
- Trend analysis over time with running total
- Identifying participation patterns with weekly trend since september  
- Preparing operational-style visual report with Plotly graphs.  

**Skills shown:**
- Time-series grouping  
- Weekly trend analysis  
- Data summarization for decision-making
- Plotly & Pandas & gspread. 

---

### `weekly_signup_report.ipynb`
**What it does:**  
Analyzes weekly sign-up data to track growth and engagement patterns.

**Main focus:**
- Weekly volunteers signup counts grouped by different metrics.
- Data cleaning and fulfilling with geopandas and geopy.
- Trend visualization
- Identifying spikes and slow periods  
- Metrics suitable for dashboards and reporting  

**Skills shown:**
- Exploratory data analysis 
- Time-based aggregation  
- Data storytelling with visuals
- Working with matplotlib, seaborn & gspread & geopandas and geopy

---

## Data Folder

### `data/`
Contains raw and reference datasets used by the notebooks.

This includes **Natural Earth geographic datasets**, such as:
- country boundaries
- state / province boundaries

These datasets are used for geographic grouping and potential mapping-based analysis.

Raw data is kept separate from analysis notebooks to follow good data analytics practices.

---

## 🛠 Tech Stack

**Language & Environment**
- Python 3
- Jupyter Notebook

**Libraries**
- pandas — data manipulation & analysis  
- NumPy — numerical operations  
- matplotlib & plotly — data visualization  
- seaborn — statistical visualizations  

**Core Concepts**
- Data cleaning & preprocessing  
- Aggregation & grouping  
- Time-series analysis  
- KPI-style reporting  
- Exploratory data analysis (EDA)  

---

---

📌 *If you have feedback or suggestions, feel free to explore the notebooks — they’re meant to be read, not just run.*
