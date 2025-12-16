# 🎌 Anime Seasonal Data Pipeline (ELT + Medallion Architecture)

## 📌 Project Overview

This project builds an **end-to-end ELT data pipeline** using modern data engineering tools to collect, transform, model, and orchestrate anime data from the **Jikan API (MyAnimeList unofficial API)**.

The pipeline follows the **Medallion Architecture (Bronze → Silver → Gold → Mart)** and is fully automated using **Dagster**.

### Key Objectives
- Extract anime seasonal data from a public API
- Load raw data into a PostgreSQL data warehouse using Docker
- Transform and model data using dbt (Star schema)
- Orchestrate and monitor the pipeline with Dagster
- Prepare analytics-ready datasets for BI tools

---

## 🧱 Architecture Overview

- **ELT pattern**: Extract → Load → Transform
- **Medallion Architecture**:
  - **Bronze**: Raw ingested data
  - **Silver**: Cleaned and standardized data
  - **Gold**: Dimensional models (Fact & Dimensions)
  - **Mart**: Business-ready aggregated datasets

---

## 🛠️ Tech Stack

| Layer | Tool |
|-----|------|
| Data Source | Jikan API |
| Extract & Load | dlt |
| Data Warehouse | PostgreSQL (Docker) |
| Transformation | dbt |
| Orchestration | Dagster |
| Data Modeling | Star Schema |


---

## Installation

Use the package manager pip to install uv

```bash
pip install uv
```

Install all needed library for this project

```bash
uv add -r requirements.txt
```

---

## Command

To run the project first run docker container

```bash
docker compose up -d
```

Next build dbt models

```bash
cd data_transformation
dbt build
```

Finally run Dagster Webserver and access port 3000

```bash
cd orchestration
dagster dev -f definitions.py
```

---
