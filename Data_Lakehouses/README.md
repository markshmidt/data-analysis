# 🏗️ Data Lakehouses

Two data engineering projects that go beyond analysis into building the infrastructure
that makes analysis possible at scale — pipelines, architecture, and data modeling.

---

## Projects

### 🔷 [Databricks Data Lakehouse](https://github.com/markshmidt/datalakehouse_databricks_project)

Built on Databricks Community Edition using the **medallion architecture** pattern —
the industry standard for structuring data in modern cloud platforms (used at Shopify, RBC, Intact, and most teams running Databricks or Snowflake).

**What I built:**
- **Bronze layer** — raw data ingestion, stored as Delta tables with no transformation
- **Silver layer** — cleaning, type casting, deduplication, schema enforcement
- **Gold layer** — business-ready aggregations and analytical views ready for reporting

**Why Delta Lake:** ACID transactions on file storage, time travel (query previous versions of data),
schema evolution without breaking downstream consumers, and Z-ordering for query performance.
This is what separates a real data platform from a folder of CSVs.

**Stack:** Databricks · PySpark · Delta Lake · Python · Spark SQL · Databricks Notebooks

**Skills:** Medallion architecture · Delta table operations · PySpark transformations ·
incremental loading · data quality enforcement · Databricks workspace

---

### 🏛️ [Data Warehouse Project](https://github.com/markshmidt/datawarehouse-project)

A dimensional modeling implementation following the **Kimball methodology** —
the standard approach used by data teams to structure analytical databases
for BI tools, reporting, and dashboards.

**What I built:**
- **Star schema** — fact tables and dimension tables designed for analytical query performance
- **Layered ETL** — staging → core ODS → analytics mart (same separation of concerns as dbt models)
- **Reporting queries** — analytical SQL on top of the mart layer

**Why this matters technically:** Understanding dimensional modeling means understanding *why*
data warehouses are fast to query and easy to extend — not just how to write SELECT statements.
Fact tables + dimension tables is the mental model behind every BI tool, every Snowflake schema,
every dbt project.

**Stack:** Python · PostgreSQL · SQLAlchemy · Pandas · SQL
**Skills:** Dimensional modeling · star schema design · ETL pipeline design ·
staging/core/mart layer separation · analytical SQL

---

## Why this section exists in my portfolio

Most data analyst portfolios stop at notebooks. These projects show I understand
the layer underneath: how data gets from a source into a queryable, reliable, production-grade store.

---

**Related:** [CaRMS Data Platform](https://github.com/markshmidt/carms-data-platform) —
production AI data platform with Dagster orchestration, pgvector, FastAPI, and AWS deployment.
