-- Question 4: Hospital with the Maximum Medical Expenses
-- Identify the hospital with the highest total medical expenses.
-- Expenses are summed across all records belonging to each hospital.

SELECT
    Hospital_Name,
    ROUND(SUM(Medical_Expenses), 2) AS total_medical_expenses
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY total_medical_expenses DESC
LIMIT 1;
