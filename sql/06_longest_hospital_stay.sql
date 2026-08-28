-- Question 6: Longest Hospital Stay
-- Find the record with the longest duration between admission and discharge.
-- The dataset does not contain Patient_ID, so this identifies the longest
-- recorded stay rather than an individual patient.

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
