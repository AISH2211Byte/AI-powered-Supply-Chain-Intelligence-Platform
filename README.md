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
```

## 📂 Data Sources

The project uses multiple data sources to construct a richer shipment-level analytical dataset.

1. DataCo Operational Dataset

The primary operational dataset provides historical shipment and order information.

It forms the foundation for:

Shipment analysis
Delivery-performance analysis
Customer analysis
Product analysis
Logistics analysis
Late-delivery classification

The target variable represents whether a shipment was delivered late or on time.

2. Weather Data

Weather information was incorporated to capture the potential effect of environmental conditions on logistics operations.

Weather attributes were aligned with shipment information using relevant geographic and temporal relationships.

3. Pollution Data

Pollution-related information was integrated as an additional external-risk dimension.

This allows environmental conditions to be considered alongside conventional operational shipment variables.

4. Container Port Performance Index (CPPI)

Port-performance information was incorporated to represent logistics infrastructure and port-level operational conditions.

The information was integrated with shipment records using appropriate geographic relationships.

5. EM-DAT Disaster Data

Disaster-event information was incorporated to capture the potential effect of external disruptions on supply-chain performance.

The disaster data provides an additional risk dimension beyond internal shipment characteristics.

## 🔄 Data Integration

The central objective of the integration stage was to transform multiple heterogeneous sources into a shipment-level analytical dataset.

External datasets were connected to operational shipment records using relevant:

Geographic keys
Temporal keys
Location information
Shipment-related attributes

This created an enriched feature space where a shipment could be analyzed not only according to its internal characteristics but also according to external environmental, infrastructure, and disaster-related conditions.
```
Operational Shipment
        │
        ├── Shipment attributes
        ├── Customer attributes
        ├── Product attributes
        ├── Logistics attributes
        │
        ├── Weather conditions
        ├── Pollution conditions
        ├── Port-performance indicators
        └── Disaster indicators
                 │
                 ▼
        Shipment-Level Feature Space
```
## 🔍 Exploratory Data Analysis

EDA was performed before model development to understand the structure and behavior of the dataset.

The analysis focused on:

Dataset Understanding
Dataset dimensions
Data types
Numerical and categorical variables
Unique-value analysis
Missing values
Duplicate records
Delivery Performance

Analysis of:

Late vs. on-time shipments
Delivery-related patterns
Shipment characteristics associated with delays
Numerical Variables

Analysis of:

Distributions
Central tendency
Spread
Outliers
Relationships between numerical variables
Categorical Variables

Analysis of:

Category frequencies
Customer/product distributions
Shipment-related categories
Operational segmentation
External Factors

Analysis of the relationship between delivery performance and:

Weather
Pollution
Port performance
Disaster-related conditions

EDA was used to guide subsequent cleaning and feature-engineering decisions.

## 🧹 Data Cleaning & Preprocessing

The preprocessing stage was designed to produce a reliable dataset for both analytics and machine learning.

1. Data-Type Validation

Columns were inspected and converted to appropriate data types where required.

2. Missing-Value Analysis

Missing values were identified across numerical and categorical attributes.

For the machine-learning pipeline:

Numerical features → Median imputation
Categorical features → Mode imputation

Median imputation was used for numerical variables because it is less sensitive to extreme values than mean imputation.

3. Duplicate Analysis

Duplicate records were examined to avoid unintended duplication in downstream analysis.

4. Outlier Analysis

Numerical variables were analyzed for unusual observations and extreme values.

Outlier analysis was used as part of the data-quality assessment before model development.

5. Categorical Processing

Categorical variables were transformed using One-Hot Encoding.

6. Numerical Scaling

Numerical features were scaled as part of the machine-learning preprocessing pipeline.

## 🧠 Feature Engineering

Feature engineering transformed raw operational and external data into variables suitable for shipment-risk modeling.

The feature-engineering process focused on:

Temporal characteristics
Shipment characteristics
Logistics characteristics
Customer/product characteristics
External environmental indicators
Port-performance indicators
Disaster-related indicators

Temporal and logistics features were derived from available shipment information.

External datasets were incorporated using geographic and temporal relationships to create shipment-level contextual features.

## ⚠️ Leakage Prevention

A major design consideration was preventing target leakage.

The model is intended to predict delivery risk without using information that would only become available after the delivery outcome is known.

Therefore, the feature-selection process excluded:

Post-outcome variables
Target-derived information
Identifiers
High-cardinality fields that were unsuitable for the modeling objective

This produced a 50-feature modeling matrix consisting of:

37 Numerical Features
13 Categorical Features
-----------------------
50 Total Features

The leakage-aware design ensures that the model represents a realistic prediction scenario rather than learning from information that would not be available when making the prediction.

## 🗄️ SQL Analytics

SQL was used as a separate analytical layer to query and aggregate structured supply-chain information.

The SQL analysis focused on extracting operational insights from relational data.

Key SQL Concepts
SELECT
WHERE
GROUP BY
HAVING
ORDER BY
CASE WHEN
Aggregate functions
JOIN
Subqueries
CTEs
Window functions
Analytical Queries

Queries were used for:

Aggregating shipment performance
Segmenting operational data
Comparing categories
Calculating KPIs
Ranking entities
Analyzing trends
Identifying high-risk segments
Example
SELECT
    category,
    COUNT(*) AS shipments,
    SUM(
        CASE
            WHEN delivery_status = 'Late'
            THEN 1
            ELSE 0
        END
    ) AS late_shipments
FROM shipments
GROUP BY category
ORDER BY late_shipments DESC;

SQL analysis supported the transition from raw records to structured business insights.


##  🤖 Machine Learning
Problem Formulation

The machine-learning problem was formulated as a binary classification task.

Shipment
   │
   ▼
Will the shipment be late?
   │
   ├── 0 → On Time
   └── 1 → Late

The objective is to identify shipments with a higher likelihood of late delivery.

## ⚙️ Machine Learning Pipeline

The final modeling pipeline followed this structure:

Raw Dataset
     ↓
Feature Selection
     ↓
Train/Test Split
     ↓
Numerical Imputation
     ↓
Categorical Imputation
     ↓
Numerical Scaling
     ↓
Categorical One-Hot Encoding
     ↓
Model Training
     ↓
Prediction
     ↓
Model Evaluation

Preprocessing was implemented using a structured Scikit-learn Pipeline / ColumnTransformer approach.

This keeps preprocessing and model training organized and reduces the risk of inconsistent transformations between training and testing data.

## 📊 Train/Test Split

The dataset was divided using:

Training Set → 80%
Testing Set  → 20%

A stratified split was used to preserve the target-class distribution between training and testing datasets.

The split used:

random_state = 42

## 🧪 Models Evaluated

Three classification algorithms were benchmarked.

1. Logistic Regression

Used as a baseline linear classification model.

Advantages
Simple
Interpretable
Efficient
Useful baseline for binary classification
2. Decision Tree

A tree-based model capable of learning nonlinear relationships and feature interactions.

Advantages
Interpretable decision structure
Captures nonlinear relationships
Requires relatively little feature transformation
3. Random Forest

An ensemble of decision trees designed to improve generalization and predictive performance.

Advantages
Handles nonlinear relationships
Captures feature interactions
Robust compared with a single decision tree
Suitable for mixed analytical feature spaces

## 📈 Model Evaluation

Models were evaluated using multiple metrics:

Precision
Recall
F1-Score
ROC-AUC
Precision

Measures the proportion of predicted late shipments that were actually late.

Precision =
True Positives /
(True Positives + False Positives)
Recall

Measures the proportion of actual late shipments correctly identified by the model.

Recall =
True Positives /
(True Positives + False Negatives)
F1-Score

Harmonic mean of precision and recall.

F1 =
2 × Precision × Recall /
(Precision + Recall)
ROC-AUC

Measures the model's ability to distinguish between late and on-time shipments across classification thresholds.

## 🏆 Model Performance

The three models were benchmarked using:

Precision
Recall
F1-score
ROC-AUC

The final comparison selected Random Forest as the best-performing model based on overall class-discrimination performance.

Best Result
Model: Random Forest

ROC-AUC: 91.18%

The Random Forest achieved a ROC-AUC of:

0.9118

indicating strong discrimination between late and on-time shipment outcomes.

## 📊 Power BI Dashboard

The machine-learning and analytical outputs were integrated into an interactive Power BI dashboard.

The dashboard was designed around three major intelligence layers.

1. Operational Intelligence

Focuses on overall supply-chain and shipment performance.

Key analytical areas include:

Shipment volume
Delivery performance
Late-delivery behavior
Operational KPIs
Risk prioritization
2. Customer & Product Intelligence

Provides segmentation of delivery performance across:

Customers
Products
Customer/product combinations
Other relevant business dimensions

This layer helps identify segments associated with higher delivery risk.

3. External-Risk Intelligence

Combines shipment outcomes with external contextual information such as:

Weather
Pollution
Port performance
Disaster indicators

This allows operational delivery performance to be analyzed alongside external disruption factors.

## 📐 DAX & KPI Layer

DAX was used to create calculated KPIs and analytical measures inside Power BI.

The KPI layer supports:

Shipment-performance monitoring
Late-delivery analysis
Segmentation
Risk prioritization
Comparative analysis

The dashboard transforms raw analytical outputs into business-oriented metrics suitable for decision support.

## 🔁 Final Analytics Workflow

The complete project can be summarized as:
```
DATA COLLECTION
      ↓
DATA INTEGRATION
      ↓
DATA CLEANING
      ↓
EDA
      ↓
SQL ANALYSIS
      ↓
FEATURE ENGINEERING
      ↓
LEAKAGE PREVENTION
      ↓
50-FEATURE MODELING MATRIX
      ↓
PREPROCESSING
      ↓
80/20 STRATIFIED SPLIT
      ↓
MODEL TRAINING
      ↓
MODEL COMPARISON
      ↓
RANDOM FOREST
      ↓
91.18% ROC-AUC
      ↓
POWER BI + DAX
      ↓
SUPPLY-CHAIN DECISION SUPPORT
```

## 💡 Key Insights & Business Value

The project demonstrates how machine learning can be combined with traditional supply-chain analytics rather than being used as an isolated predictive model.

The resulting system enables organizations to:

Identify shipment-delivery risk earlier.
Prioritize potentially problematic shipments.
Analyze historical late-delivery patterns.
Segment delivery performance by customer and product.
Incorporate external environmental and infrastructure risks.
Monitor operational KPIs through interactive dashboards.
Support data-driven logistics decision-making.

The overall objective is to move from:

```Reactive Delivery Analysis
          ↓
Predictive Risk Identification
          ↓
Proactive Operational Decision-Making```

## 🛠️ Technology Stack

Category	Tools
Programming	Python
Data Analysis	Pandas, NumPy
Machine Learning	Scikit-learn
Models	Logistic Regression, Decision Tree, Random Forest
Database / Analytics	SQL, PostgreSQL
Visualization	Matplotlib, Seaborn
Business Intelligence	Microsoft Power BI
BI Calculations	DAX
Development	Jupyter Notebook, VS Code
Version Control	GitHub

## 📁 Project Structure
```AI-powered-Supply-Chain-Intelligence-Platform/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── external/
│
├── notebooks/
│   ├── 01_data_collection.ipynb
│   ├── 02_eda.ipynb
│   ├── 03_data_cleaning.ipynb
│   ├── 04_feature_engineering.ipynb
│   └── 05_modeling.ipynb
│
├── sql/
│   └── supply_chain_queries.sql
│
├── models/
│   └── model files
│
├── powerbi/
│   └── dashboard files
│
├── reports/
│   └── analysis outputs
│
├── requirements.txt
│
└── README.md
```
Update folder/file names to match the actual repository structure.
