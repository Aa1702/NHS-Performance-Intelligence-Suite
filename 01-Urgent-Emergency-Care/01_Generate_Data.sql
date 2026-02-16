DROP TABLE IF EXISTS AE_Arrivals;

CREATE TABLE AE_Arrivals(
    ArrivalID INTEGER PRIMARY KEY,
    ArrivalDateTime TEXT,
    Department TEXT(50), -- 'Majors' (Serious), 'Minors' (Injuries), 'Resus' (Life Threatening)
    TriageCategory TEXT(50), -- Red, Orange, Yellow, Green, Blue.
    Age INTEGER,
    DischargeDateTime TEXT,
    DischargeDisposition TEXT(50) -- 'Admitted', 'Discharged', 'Transferred'
);

INSERT INTO AE_Arrivals VALUES
(101, '2024-02-12 08:05:00', 'Majors','Red',70,'2024-02-12 13:30:00','Admitted'), -- BREACH (>4 hrs)
(102, '2024-02-12 08:10:00', 'Minors', 'Green', 24, '2024-02-12 09:45:00', 'Discharged'),
(103, '2024-02-12 08:15:00', 'Majors', 'Yellow', 65, '2024-02-12 12:00:00', 'Admitted'),
(104, '2024-02-12 08:30:00', 'Resus', 'Red', 88, '2024-02-12 14:00:00', 'Admitted'), -- BREACH
(105, '2024-02-12 09:00:00', 'Minors', 'Green', 12, '2024-02-12 10:30:00', 'Discharged'),
(106, '2024-02-12 09:15:00', 'Majors', 'Orange', 45, '2024-02-12 13:10:00', 'Admitted'),
(107, '2024-02-12 09:30:00', 'Minors', 'Blue', 30, '2024-02-12 10:15:00', 'Discharged'),
(108, '2024-02-12 10:00:00', 'Majors', 'Yellow', 55, '2024-02-12 14:30:00', 'Transferred'), -- BREACH
(109, '2024-02-12 10:15:00', 'Minors', 'Green', 19, '2024-02-12 11:45:00', 'Discharged'),
(110, '2024-02-12 10:30:00', 'Majors', 'Orange', 81, '2024-02-12 15:00:00', 'Admitted'), -- BREACH
(111, '2024-02-12 11:00:00', 'Resus', 'Red', 50, '2024-02-12 13:30:00', 'Transferred'),
(112, '2024-02-12 11:15:00', 'Minors', 'Green', 22, '2024-02-12 12:30:00', 'Discharged'),
(113, '2024-02-12 11:30:00', 'Majors', 'Yellow', 60, '2024-02-12 15:15:00', 'Admitted'),
(114, '2024-02-12 12:00:00', 'Minors', 'Blue', 9, '2024-02-12 13:00:00', 'Discharged'),
(115, '2024-02-12 12:30:00', 'Majors', 'Orange', 77, '2024-02-12 17:00:00', 'Admitted'), -- BREACH
(116, '2024-02-12 13:00:00', 'Minors', 'Green', 35, '2024-02-12 14:45:00', 'Discharged'),
(117, '2024-02-12 13:30:00', 'Majors', 'Red', 44, '2024-02-12 15:00:00', 'Transferred'),
(118, '2024-02-12 14:00:00', 'Minors', 'Green', 16, '2024-02-12 15:15:00', 'Discharged'),
(119, '2024-02-12 14:30:00', 'Majors', 'Yellow', 68, '2024-02-12 19:00:00', 'Admitted'), -- BREACH
(120, '2024-02-12 15:00:00', 'Resus', 'Red', 92, '2024-02-12 16:30:00', 'Admitted');

SELECT 
    ArrivalID, ArrivalDateTime, Department, TriageCategory, Age, DischargeDateTime,DischargeDisposition,
    CAST((julianday(DischargeDateTime) - julianday(ArrivalDateTime)) * 1440 AS INTEGER) AS WaitTime_Minutes,
    CASE
        WHEN (julianday(DischargeDateTime) - julianday(ArrivalDateTime)) * 1440 > 240 THEN "BREACH"
        ELSE "ON TIME"
    END AS Target_Status
FROM AE_Arrivals;

