# 🚚 Supply Chain Analytics & Late Delivery Prediction

An end-to-end supply chain analytics and machine learning project for analyzing shipment operations, identifying drivers of late deliveries, predicting shipment-delivery risk, and presenting actionable insights through an interactive Power BI dashboard.

The project combines **data engineering, exploratory data analysis, SQL analytics, feature engineering, machine learning, and business intelligence** into a unified supply-chain decision-support workflow.

---

## 📌 Project Overview

Late deliveries are a major operational challenge in supply chains because delivery performance can be influenced by multiple interconnected factors such as shipment characteristics, customer/product attributes, logistics operations, transportation conditions, and external environmental events.

This project develops an analytical pipeline that:

1. Collects and integrates operational and external datasets.
2. Cleans and preprocesses the data.
3. Performs exploratory data analysis to understand shipment and delivery behavior.
4. Uses SQL for structured supply-chain analysis.
5. Engineers shipment-level features from operational and external data.
6. Prevents target leakage during model development.
7. Builds a binary classification system for late-delivery prediction.
8. Compares multiple machine-learning models.
9. Evaluates models using classification and ranking-oriented metrics.
10. Integrates analytical and ML outputs into Power BI.
11. Provides operational, customer/product, and external-risk intelligence for decision support.

---

# 🎯 Objectives

The primary objectives of the project are:

- Analyze historical shipment and delivery performance.
- Identify patterns associated with late deliveries.
- Integrate external environmental and logistics information with operational shipment data.
- Build a shipment-level feature space for risk analysis.
- Predict whether a shipment is likely to be delivered late.
- Compare different classification algorithms.
- Evaluate model performance using multiple metrics.
- Develop an interactive Power BI dashboard for supply-chain monitoring.
- Translate analytical outputs into actionable operational insights.

---

# 🏗️ End-to-End Architecture

```text
                    ┌──────────────────────────┐
                    │   Operational Data       │
                    │      DataCo Dataset      │
                    └────────────┬─────────────┘
                                 │
                                 │
             ┌───────────────────┼───────────────────┐
             │                   │                   │
             ▼                   ▼                   ▼
      Weather Data        Pollution Data       Port Performance
                                                    (CPPI)
             │                   │                   │
             └───────────────────┼───────────────────┘
                                 │
                                 ▼
                       ┌─────────────────┐
                       │ Disaster Data   │
                       │    EM-DAT       │
                       └────────┬────────┘
                                │
                                ▼
                    ┌──────────────────────┐
                    │ Data Integration &    │
                    │ Shipment-Level Join  │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Data Cleaning & EDA  │
                    └──────────┬───────────┘
                               │
                 ┌─────────────┴─────────────┐
                 │                           │
                 ▼                           ▼
        ┌─────────────────┐         ┌─────────────────┐
        │ SQL Analytics   │         │ Feature         │
        │ & Aggregations  │         │ Engineering     │
        └────────┬────────┘         └────────┬────────┘
                 │                           │
                 └─────────────┬─────────────┘
                               ▼
                    ┌──────────────────────┐
                    │ Leakage-Aware        │
                    │ Feature Selection     │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Preprocessing        │
                    │ • Imputation         │
                    │ • Scaling            │
                    │ • One-Hot Encoding  │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Train / Test Split   │
                    │ 80 / 20 Stratified   │
                    └──────────┬───────────┘
                               │
                               ▼
              ┌─────────────────────────────────┐
              │        ML Model Comparison      │
              │                                 │
              │ Logistic Regression             │
              │ Decision Tree                   │
              │ Random Forest                   │
              └────────────────┬────────────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Model Evaluation     │
                    │ Precision            │
                    │ Recall               │
                    │ F1-Score             │
                    │ ROC-AUC               │
                    └──────────┬───────────┘
                               │
                               ▼
                    ┌──────────────────────┐
                    │ Power BI Dashboard   │
                    │ + DAX KPIs           │
                    └──────────────────────┘
