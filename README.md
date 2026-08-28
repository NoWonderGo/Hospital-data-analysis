# 🏥 Hospital Data Analysis | PostgreSQL SQL Project

## 📌 Project Overview

This project is a beginner-level **SQL data analysis project** built using
PostgreSQL and a hospital dataset stored as a CSV file.

The goal is to use SQL to answer 10 practical questions about:

- 👥 Patients
- 👨‍⚕️ Doctors
- 🏥 Hospitals
- 🩺 Departments
- 📍 Cities / locations
- 💰 Medical expenses
- 📅 Admission and discharge dates
- ⏱️ Length of stay

The project demonstrates how SQL can be used to turn raw hospital data into
structured information that can support basic business and operational analysis.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **PostgreSQL** | Database and SQL analysis |
| **SQL** | Data querying and aggregation |
| **CSV / Excel** | Raw dataset |
| **GitHub** | Project documentation and version control |

---

## 📂 Dataset

The raw dataset contains hospital records with the following fields:

| Column | Description |
|---|---|
| `Hospital_Name` | Name of the hospital |
| `Location_` | City/location |
| `Department` | Hospital department |
| `Doctors_Count` | Number of doctors recorded |
| `Patients_Count` | Number of patients recorded |
| `Admission_Date` | Admission date |
| `Discharge_Date` | Discharge date |
| `Medical_Expenses` | Medical expenses recorded |

> **Data note:** The dataset does not contain a `Patient_ID` field. Therefore,
> Question 6 identifies the record with the longest recorded stay rather than
> identifying a specific individual patient.

---

## 🎯 Business Questions

This project answers the following 10 questions:

### 1. Total Number of Patients
Find the total number of patients across all hospitals.

### 2. Average Number of Doctors per Hospital
Calculate the average number of doctors recorded for each hospital.

### 3. Top 3 Departments with the Highest Number of Patients
Identify the three departments with the highest total patient count.

### 4. Hospital with the Maximum Medical Expenses
Identify the hospital with the highest total medical expenses.

### 5. Daily Average Medical Expenses
Calculate medical expenses per recorded stay-day for each hospital.

### 6. Longest Hospital Stay
Find the record with the longest duration between admission and discharge.

### 7. Total Patients Treated Per City
Calculate the total number of patients treated in each city.

### 8. Average Length of Stay Per Department
Calculate the average recorded stay duration for each department.

### 9. Department with the Lowest Number of Patients
Identify the department with the lowest total patient count.

### 10. Monthly Medical Expenses Report
Group medical expenses by admission month and calculate the monthly total.

---

## 🧠 SQL Concepts Demonstrated

This project demonstrates practical use of:

- `SELECT`
- `SUM()`
- `AVG()`
- `ROUND()`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Date arithmetic
- `TO_CHAR()`
- `GREATEST()`
- `NULLIF()`
- Aggregate calculations
- Sorting and ranking results

---

## 📁 Project Structure

```text
hospital-data-analysis/
│
├── README.md
│
├── data/
│   └── Hospital_data.csv
│
├── sql/
│   ├── 01_total_patients.sql
│   ├── 02_average_doctors_per_hospital.sql
│   ├── 03_top_3_departments_patients.sql
│   ├── 04_hospital_max_medical_expenses.sql
│   ├── 05_daily_average_medical_expenses.sql
│   ├── 06_longest_hospital_stay.sql
│   ├── 07_total_patients_per_city.sql
│   ├── 08_average_stay_per_department.sql
│   ├── 09_department_lowest_patients.sql
│   ├──10_monthly_medical_expenses.sql
│   └── hospital_analysis.sql
│
└── results/
    └── Results.pdf
```

---

## ▶️ How to Run the Project

### Step 1 — Create the table

Create a PostgreSQL table named:

```sql
Hospital_data
```

with columns matching the CSV dataset.

### Step 2 — Import the CSV

Import:

```text
data/Hospital_data.csv
```

into PostgreSQL.

Make sure the date columns are stored as `DATE` values (or are converted to
`DATE` when running the queries).

### Step 3 — Run the SQL files

Open the `sql` folder and run the queries individually.

Each file represents one assignment question.

### Step 4 — Save the results

For a stronger portfolio project, add screenshots or a PDF of the query
results inside:

```text
results/
```

---

## 📊 Analysis Approach

The analysis mainly uses aggregate functions and grouping.

For example:

```sql
SELECT
    Department,
    SUM(Patients_Count) AS total_patients
FROM Hospital_data
GROUP BY Department
ORDER BY total_patients DESC
LIMIT 3;
```

This groups records by department, calculates total patients, sorts the
departments from highest to lowest, and returns the top three.

---

## ⚠️ Important Data Interpretation Notes

### Question 4 — Monthly Medical Expenses report

The portfolio version calculates **total medical expenses per hospital** before
selecting the hospital with the highest total.

This is more appropriate for a hospital-level comparison when a hospital can
appear in multiple records.

### Question 5 — Daily Average Medical Expenses

The calculation divides total medical expenses by total recorded stay-days.

Because the available dataset does not contain individual patient-level stay
records, this should be interpreted as an **expense-per-recorded-stay-day**
metric rather than a true patient-day cost metric.

### Question 6 — Longest Stay

There is no `Patient_ID` in the dataset. Therefore, the query identifies the
record with the longest admission-to-discharge duration.

---

## 💼 Portfolio Skills Demonstrated

This project demonstrates the ability to:

- Work with raw CSV data
- Understand a relational dataset
- Write PostgreSQL queries
- Perform aggregation and grouping
- Analyze hospital operations
- Work with dates
- Rank and filter results
- Organize SQL into reusable files
- Document a data-analysis project on GitHub

---

## 🚀 Future Improvements

Possible next steps for this project:

1. Add data-cleaning SQL scripts.
2. Add a database schema / ER diagram.
3. Add more advanced SQL using CTEs and window functions.
4. Create a dashboard using Power BI or Tableau.
5. Add screenshots of the final results.
6. Add business insights based on the query results.

---

## 👤 Author

** Neeraj Kumar **

*Aspiring Data Analyst | SQL | PostgreSQL | Data Analysis*

---

## ⭐ Project Goal

The purpose of this project is to demonstrate practical SQL skills by answering
real-world-style hospital data questions using PostgreSQL.
