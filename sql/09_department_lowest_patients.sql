-- Question 9: Department with the Lowest Number of Patients
-- Find the department with the smallest total patient count.

SELECT
    Department,
    SUM(Patients_Count) AS total_patients
FROM Hospital_data
GROUP BY Department
ORDER BY total_patients ASC
LIMIT 1;
