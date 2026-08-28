-- Question 2: Average Number of Doctors per Hospital
-- Retrieve the average number of doctors recorded for each hospital.

SELECT
    Hospital_Name,
    ROUND(AVG(Doctors_Count), 2) AS avg_doctors_per_hospital
FROM Hospital_data
GROUP BY Hospital_Name
ORDER BY Hospital_Name;
