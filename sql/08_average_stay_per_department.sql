-- Question 8: Average Length of Stay Per Department
-- Calculate the average number of recorded stay-days for each department.

SELECT
    Department,
    ROUND(AVG(Discharge_Date - Admission_Date), 2) AS avg_stay_days
FROM Hospital_data
GROUP BY Department
ORDER BY avg_stay_days DESC;
