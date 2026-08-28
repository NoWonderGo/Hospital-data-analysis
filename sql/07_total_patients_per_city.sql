-- Question 7: Total Patients Treated Per City
-- Count the total number of patients treated in each city.

SELECT
    Location_ AS city,
    SUM(Patients_Count) AS total_patients_treated
FROM Hospital_data
GROUP BY Location_
ORDER BY total_patients_treated DESC;
