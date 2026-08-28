-- Hospital Data Analysis using PostgreSQL
-- Table: Hospital_data

-- 1. Total number of patients across all hospitals
SELECT
    SUM(Patients_Count) AS total_patients
FROM Hospital_data;


-- 2. Average number of doctors per hospital
SELECT
    Hospital_Name,
    ROUND(AVG(Doctors_Count), 2) AS avg_doctors_per_hospital
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY Hospital_Name;


-- 3. Top 3 departments with the highest number of patients
SELECT
    Department,
    SUM(Patients_Count) AS total_patients
FROM Hospital_data
GROUP BY Department
ORDER BY total_patients DESC
LIMIT 3;


-- 4. Hospital with the maximum total medical expenses
SELECT
    Hospital_Name,
    ROUND(SUM(Medical_Expenses), 2) AS total_medical_expenses
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY total_medical_expenses DESC
LIMIT 1;


-- 5. Daily average medical expenses for each hospital
-- Expense per recorded stay-day
SELECT
    Hospital_Name,
    ROUND(SUM(Medical_Expenses), 2) AS total_expenses,
    SUM(GREATEST(Discharge_Date - Admission_Date, 1)) AS total_stay_days,
    ROUND(
        SUM(Medical_Expenses) * 1.0
        / NULLIF(SUM(GREATEST(Discharge_Date - Admission_Date, 1)), 0),
        2
    ) AS avg_expenses_per_stay_day
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY Hospital_Name;


-- 6. Longest recorded hospital stay
-- The dataset does not contain Patient_ID, so this identifies the
-- record with the longest stay rather than an individual patient.
SELECT
    Hospital_Name,
    Location_,
    Department,
    Patients_Count,
    Admission_Date,
    Discharge_Date,
    (Discharge_Date - Admission_Date) AS stay_duration_days
FROM Hospital_data
ORDER BY stay_duration_days DESC
LIMIT 1;


-- 7. Total number of patients treated in each city
SELECT
    Location_ AS city,
    SUM(Patients_Count) AS total_patients_treated
FROM Hospital_data
GROUP BY Location_
ORDER BY total_patients_treated DESC;


-- 8. Average number of days patients spend in each department
SELECT
    Department,
    ROUND(AVG(Discharge_Date - Admission_Date), 2) AS avg_stay_days
FROM Hospital_data
GROUP BY Department
ORDER BY avg_stay_days DESC;


-- 9. Department with the lowest number of patients
SELECT
    Department,
    SUM(Patients_Count) AS total_patients
FROM Hospital_data
GROUP BY Department
ORDER BY total_patients ASC
LIMIT 1;


-- 10. Monthly medical expenses report
SELECT
    TO_CHAR(Admission_Date, 'YYYY-MM') AS expense_month,
    ROUND(SUM(Medical_Expenses), 2) AS total_medical_expenses
FROM Hospital_data
GROUP BY TO_CHAR(Admission_Date, 'YYYY-MM')
ORDER BY expense_month;
