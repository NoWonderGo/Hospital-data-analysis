-- Question 3: Top 3 Departments with the Highest Number of Patients
-- Find the top 3 departments based on total patients.

SELECT
    Department,
    SUM(Patients_Count) AS total_patients
FROM Hospital_data
GROUP BY Department
ORDER BY total_patients DESC
LIMIT 3;
