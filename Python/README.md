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
<img width="911" height="672" alt="image" src="https://github.com/user-attachments/assets/0d795e5d-5a4d-4d5b-b606-41afd96c074f" />

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
<img width="1251" height="638" alt="image" src="https://github.com/user-attachments/assets/b8eba3bf-9d77-4bd5-8990-b6c493291b89" />

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
<img width="1200" height="600" alt="image" src="https://github.com/user-attachments/assets/3b6948f7-19cd-44e8-bf20-9e3bab3f7e3b" />

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
<img width="405" height="358" alt="image" src="https://github.com/user-attachments/assets/f9e270b3-064e-4144-9e49-e53aa4feb97d" />

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

### `titanic_dataset.ipynb`
<img width="978" height="858" alt="image" src="https://github.com/user-attachments/assets/ebd2eaa0-c6a4-4d5b-958a-1d1a539462c0" />

**What it does:**
- Analyzes the Titanic passenger dataset to understand which factors influenced survival outcomes.
- The project covers full data workflow: cleaning, feature engineering, exploratory analysis, and predictive modeling.

**Main focus**:
- Data Cleaning & Preparation: Handling missing values (Age, Embarked, Cabin), strategic imputation (median & grouped imputation), creating engineered features (family size, is_alone, age groups)
- Exploratory Data Analysis (EDA): Analyzing survival distribution (class imbalance), Investigating skewed distributions (Fare, Age), Studying socioeconomic structure (Pclass, Fare inequality), Examining gender-based survival differences, Exploring family size impact on survival
-  Predictive Modeling:  Built Logistic Regression model as interpretable baseline, evaluated model using accuracy, precision, recall, f1-score, ROC and Precision-recall curve; Built Random Forest model to capture nonlinear relationships; Compared models: Logistic Regression provided strong, stable performance, while Random Forest slightly improved AUC but showed potential for overfitting.

**Survival Insights Discovered**
- Women had significantly higher survival rates than men.
- First-class passengers had much higher survival probability than third-class.
- Fare showed strong positive correlation with survival (wealth effect).
- Small families survived more often than passengers traveling alone or in large groups.
- Deck level (extracted from Cabin) showed survival differences.
- Socioeconomic status strongly influenced evacuation outcomes.

**Skills Shown**
- pandas data cleaning & transformation
- Missing value strategy design
- Feature engineering from structured and unstructured data
- Handling skewed distributions (log transformation)
- Categorical encoding (one-hot)
- Model evaluation metrics (precision, recall, F1, ROC-AUC)
- Overfitting detection (train/test comparison)
- Random Forest vs Logistic Regression comparison
-Interpreting model performance in business context
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
