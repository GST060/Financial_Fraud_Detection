# 💳 Financial Fraud Detection & Transaction Risk Analysis
A Data Analyst portfolio project focused on detecting suspicious financial transactions and fraud patterns using Python, SQL, and Power BI.\
This project analyzes 50,000 banking transactions across 495 accounts (2020–2025) to uncover fraud signals such as abnormal transaction amounts, device sharing, unusual login attempts, and multi-location transactions.\
The goal is to simulate how banks and fintech companies detect fraud using data analytics.


## 📌 Project Overview
Financial fraud is a major challenge for banks, payment companies, and fintech platforms. Fraudsters exploit weak authentication, shared devices, or abnormal transaction patterns to perform unauthorized transactions.\
<br/>This project performs an end-to-end fraud detection analysis including:\
✔ Data cleaning and preprocessing using Python\
✔ Exploratory Data Analysis (EDA) to identify suspicious patterns\
✔ Fraud detection analysis using SQL queries\
✔ Power BI dashboard for fraud monitoring\
✔ Business insights and fraud prevention recommendations\
<br/>The project demonstrates how data analysts help financial institutions detect fraud and reduce financial risk.


## 📊 Dataset
The dataset contains banking transaction records from 2020–2025.
| **Metric**           | **Value**               |
| ------------------ | ------------------- |
| Total Transactions | 50,000              |
| Total Accounts     | 495                 |
| Channels           | ATM, Branch, Online |
| Time Period        | 2020 – 2025         |\
<br/>

**Key Columns**

| **Column**              | **Description**                            |
| ------------------- | -------------------------------------- |
| Transaction_ID      | Unique transaction identifier          |
| Account_ID          | Customer account number                |
| Transaction_Date    | Date and time of transaction           |
| Transaction_Amount  | Amount of transaction                  |
| Transaction_Type    | Deposit, Withdrawal, Transfer, Payment |
| Channel             | ATM / Online / Branch                  |
| Device_ID           | Device used for transaction            |
| Location            | Transaction location                   |
| Login_Attempts      | Number of login attempts               |
| Account_Balance     | Balance at time of transaction         |
| Customer_Age        | Age of customer                        |
| Customer_Occupation | Customer profession                    |
<br/>
These attributes allow detection of fraud indicators such as abnormal transaction frequency, device sharing, and unusual spending behavior.

## 🛠️ Tools & Technologies
| **Tool**                      | **Purpose**                  |
| ------------------------- | ------------------------ |
| 🐍 Python (Pandas, NumPy) | Data Cleaning & Analysis |
| 📓 Jupyter Notebook       | Data Exploration         |
| 🗄️ SQL                   | Fraud Detection Queries  |
| 📊 Power BI               | Interactive Dashboard    |
| 📑 Excel                  | Data Validation          |
| 🧠 Data Analytics         | Business Insights        |
| 🌐 GitHub                 | Project Documentation    |
<br/>


## 🔍 Project Workflow

#### 1️⃣ Data Loading
The dataset was loaded using Pandas in Python.\
<br/>
Key steps:
- Import dataset
- Inspect structure and columns
- Check missing values
- Validate data types
  
#### 2️⃣ Data Cleaning
Data preprocessing included:
- Converting date columns to datetime
- Handling missing values
- Removing duplicates
- Fixing inconsistent categories
- Ensuring correct data types <br/>

Clean data ensures accurate fraud analysis.

#### 3️⃣ Exploratory Data Analysis (EDA)
EDA was used to understand transaction patterns and fraud signals.
<br/>
Key analysis areas:
- Transaction amount distribution
- Channel usage (ATM vs Online vs Branch)
- Device usage patterns
- Location-based activity
- Customer demographic analysis 
<br/>

This helps detect patterns like:<br/>
⚠ Unusually large transactions\
⚠ Accounts using multiple devices\
⚠ Rapid transaction sequences\
⚠ Transactions from different locations


## 🧮 Fraud Detection Using SQL
A set of 15 SQL queries were written to simulate real-world fraud detection logic used in financial institutions.\

Example analyses include:
<br/>
🔹 High Transaction Frequency
<br/>
Identify accounts performing unusually large numbers of transactions.\
<br/>
🔹 Device Sharing Detection
<br/>
Find devices used by multiple accounts.\
<br/>
🔹 Geo-Location Risk
<br/>
Detect accounts performing transactions from different locations.\
<br/>
🔹 High Amount Transactions
<br/>
Find transactions exceeding statistical thresholds.\
<br/>
🔹 Transaction Velocity
<br/>
Identify multiple transactions within a short time period.\
<br/>
These queries help detect potential fraud signals and suspicious accounts.


## 📊 Power BI Dashboard
An interactive fraud monitoring dashboard was created in Power BI.\
<br/>
**Dashboard Page 1 — Fraud Risk Overview**
<br/>
Key KPIs:
- Total Transactions
- Total Transaction Amount
- High Value Transactions
- Device Sharing Indicators
- Channel Distribution
<br/>

Visualizations include:
- Transaction trends
- Channel comparison
- Location risk analysis
- High value transaction monitoring

<br/>

**Dashboard Page 2 — Account Risk Analysis**
<br/>
Focuses on identifying high-risk accounts.\
<br/>
Visualizations include:
- Accounts with highest transaction frequency
- Multi-device account activity
- High-risk locations
- Transaction velocity patterns
<br/>
The dashboard allows non-technical stakeholders to quickly identify fraud risks.


## 📈 Key Insights
Major patterns identified during analysis:
<br/>
✔ Large number of accounts use multiple devices\
✔ Several devices are linked to multiple accounts\
✔ Some transactions exceed statistical anomaly thresholds\
✔ Certain transactions consume large portions of account balances\
✔ Some accounts show transactions from multiple locations
<br/>
These behaviors can indicate potential fraud attempts or account takeover risks.


## 🧠 Business Recommendations
Based on the analysis, several fraud prevention strategies were proposed:\
<br/>
🔐 Multi-Device Monitoring\
Flag devices connected to multiple accounts.\
<br/>
🔐 Multi-Factor Authentication\
Trigger OTP verification after multiple login attempts.\
<br/>
🔐 Transaction Velocity Rules\
Alert when multiple transactions occur within a short period.\
<br/>
🌍 Geo-Location Monitoring\
Detect transactions occurring far apart in short time intervals.\
<br/>
💰 Balance Protection Rules\
Flag transactions exceeding a large percentage of account balance.\
<br/>
These measures help reduce fraud risk and improve financial security.


## 📂 Project Structure
Financial-Fraud-Detection\
│\
├── data/\
│\
├── notebooks/\
│   └── Financial_Fraud_Detection.ipynb\
│\
├── sql/\
│   └── Financial_Fraud_Detection_Analysis.sql\
│\
├── dashboard/\
│   └── financial_fraud_detection_dashboard.pbix\
│\
├── report/\
│   └── Financial_Fraud_Detection_Report.docx\
│\
├── presentation/\
│   └── Fraud_Detection_Presentation.pdf\
│\
└── README.md


## 💼 Skills Demonstrated
This project demonstrates skills required for Data Analyst roles:\
<br/>
📊 Data Cleaning & Preprocessing\
📊 Exploratory Data Analysis (EDA)\
📊 Fraud Pattern Detection\
📊 SQL Query Writing\
📊 Data Visualization\
📊 Business Insight Generation\
📊 Dashboard Development (Power BI)

## ⭐ If You Like This Project
If you found this project useful:\
⭐ Star the repository\
🍴 Fork the project\
📢 Share it with others
