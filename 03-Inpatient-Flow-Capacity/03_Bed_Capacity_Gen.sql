DROP TABLE IF EXISTS Inpatient_Beds;
CREATE TABLE Inpatient_Beds (
    BedID INTEGER PRIMARY KEY,
    Ward TEXT,
    PatientAge INTEGER,
    AdmissionDate TEXT,
    ExpectedDischargeDate TEXT,
    ActualDischargeDate TEXT, -- NULL means they are still in the bed
    MedicalClearance TEXT     -- 'Yes' (Medically fit to leave) or 'No' (Still sick)
);

-- 2. Insert Synthetic Data
INSERT INTO Inpatient_Beds VALUES
(301, 'Acute Medical', 78, '2024-03-01', '2024-03-05', NULL, 'Yes'),   -- Medically fit, but still here (Delayed)
(302, 'Acute Medical', 65, '2024-03-04', '2024-03-10', NULL, 'No'),    -- Still sick
(303, 'Surgical', 45, '2024-03-06', '2024-03-08', '2024-03-08', 'Yes'),-- Discharged on time
(304, 'Surgical', 82, '2024-02-25', '2024-03-02', NULL, 'Yes'),        -- Major delay (Awaiting care home)
(305, 'Elderly Care', 88, '2024-02-20', '2024-02-28', NULL, 'Yes'),    -- Major delay
(306, 'Elderly Care', 91, '2024-03-05', '2024-03-12', NULL, 'No'),     -- Still sick
(307, 'Acute Medical', 50, '2024-03-07', '2024-03-09', NULL, 'No'),
(308, 'Elderly Care', 79, '2024-02-22', '2024-03-01', NULL, 'Yes');    -- Another delay

SELECT * FROM Inpatient_Beds;


-- 3. The "Bed Bottleneck"
SELECT
    Ward,
    COUNT(BedID) AS Total_Patients,
    SUM(CASE WHEN MedicalClearance = "Yes" Then 1 ELSE 0 END) AS Delayed_Discharge
    FROM Inpatient_Beds
    WHERE ActualDischargeDate is NULL
    GROUP BY Ward;


-- 4. Calculate "Lost Bed Days" using SQLite Date Math
SELECT
    Ward,
    COUNT(CASE WHEN MedicalClearance = "Yes" THEN 1 ELSE 0 END ) AS Delayed_Patients,
    SUM(CASE WHEN MedicalClearance = "Yes" THEN CAST ((julianday('2024-03-15') - julianday(ExpectedDischargeDate)) AS INTEGER) ELSE 0 END) AS Total_Lost_Bed_Days
    FROM Inpatient_Beds
    WHERE ActualDischargeDate is NULL
    GROUP BY Ward;