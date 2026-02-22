
DROP TABLE IF EXISTS Ward_Shifts;

CREATE TABLE Ward_Shifts (
    ShiftID INTEGER PRIMARY KEY,
    ShiftDate TEXT,
    Ward TEXT,
    ShiftType TEXT, -- 'Day' or 'Night'
    NursesOnDuty INTEGER,
    PatientsOnWard INTEGER
);


INSERT INTO Ward_Shifts VALUES
(401, '2024-03-01', 'Acute Medical', 'Day', 4, 28),
(402, '2024-03-01', 'Acute Medical', 'Night', 2, 28), 
(403, '2024-03-01', 'Surgical', 'Day', 5, 30),        
(404, '2024-03-01', 'Surgical', 'Night', 3, 30),      
(405, '2024-03-02', 'Acute Medical', 'Day', 3, 29),   
(406, '2024-03-02', 'Acute Medical', 'Night', 3, 29); 

SELECT 
    ShiftDate,
    Ward,
    ShiftType,
    NursesOnDuty,
    PatientsOnWard,
    CAST(PatientsOnWard AS REAL) / NursesOnDuty AS Patient_Per_Nurse
FROM Ward_Shifts;


SELECT * FROM Ward_Shifts;

SELECT 
    ShiftID,
    ShiftDate,
    Ward,
    ShiftType,
    NursesOnDuty,
    PatientsOnWard,
    CAST(PatientsOnWard AS REAL) / NursesOnDuty AS Patient_Per_Nurse,
    CASE
        WHEN CAST(PatientsOnWard AS REAL) / NursesOnDuty > 8 THEN 'UNSAFE' ELSE 'SAFE'
        END AS Safety_Status
FROM Ward_Shifts;

