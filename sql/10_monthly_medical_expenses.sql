-- Question 10: Monthly Medical Expenses Report
-- Group medical expenses by the month of admission and calculate
-- total medical expenses for each month.

SELECT
    TO_CHAR(Admission_Date, 'YYYY-MM') AS expense_month,
    ROUND(SUM(Medical_Expenses), 2) AS total_medical_expenses
FROM Hospital_data
GROUP BY TO_CHAR(Admission_Date, 'YYYY-MM')
ORDER BY expense_month ASC;
