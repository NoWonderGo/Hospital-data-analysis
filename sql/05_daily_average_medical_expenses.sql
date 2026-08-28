-- Question 5: Daily Average Medical Expenses Each Hospital
-- Calculate medical expenses per recorded stay-day for each hospital.
-- GREATEST(..., 1) ensures a minimum of one day for a same-day record.

SELECT
    Hospital_Name,
    ROUND(SUM(Medical_Expenses), 2) AS total_expenses,
    SUM(GREATEST(Discharge_Date - Admission_Date, 1)) AS total_stay_days,
    ROUND(
        SUM(Medical_Expenses) * 1.0
        / NULLIF(
            SUM(GREATEST(Discharge_Date - Admission_Date, 1)),
            0
        ),
        2
    ) AS avg_expenses_per_stay_day
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY Hospital_Name;
