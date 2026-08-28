-- Question 1: Total Number of Patients
-- Find the total number of patients across all hospitals.

SELECT
    SUM(Patients_Count) AS total_patients
FROM Hospital_data;
