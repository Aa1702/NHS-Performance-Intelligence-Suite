DROP TABLE IF EXISTS RTT_Waiting_List;

CREATE TABLE RTT_Waiting_List (
    PatientID INTEGER PRIMARY KEY,
    Specialty TEXT,
    ReferralDate TEXT, -- Format: YYYY-MM-DD
    IsClockStopped INTEGER -- 0 = Still Waiting, 1 = Treated
);

INSERT INTO RTT_Waiting_List VALUES
(501, 'Orthopaedics', '2024-01-10', 0),
(502, 'Orthopaedics', '2024-05-15', 0),
(503, 'Ophthalmology', '2024-02-01', 0),
(504, 'Ophthalmology', '2024-05-20', 0),
(505, 'Cardiology', '2023-11-01', 0),
(506, 'Cardiology', '2024-04-10', 0),
(507, 'Orthopaedics', '2023-12-15', 0),
(508, 'Gynaecology', '2024-03-22', 0),
(509, 'Gynaecology', '2024-05-01', 0),
(510, 'Ophthalmology', '2023-10-20', 0),
(511, 'Dermatology', '2024-04-28', 0),
(512, 'Dermatology', '2024-01-05', 0),
(513, 'Urology', '2024-02-14', 0),
(514, 'Urology', '2024-05-10', 0),
(515, 'Cardiology', '2024-01-25', 0),
(516, 'Orthopaedics', '2024-03-05', 0),
(517, 'Ophthalmology', '2024-04-15', 0),
(518, 'Gynaecology', '2024-02-28', 0),
(519, 'Dermatology', '2023-11-15', 0),
(520, 'Urology', '2024-03-10', 0);   

SELECT * FROM RTT_Waiting_List;

SELECT 
    PatientID,
    Specialty,
    ReferralDate,
    IsClockStopped,
    CAST(((julianday('2024-06-01') - julianday(ReferralDate))/ 7.0)AS INTEGER) AS WeeksWaiting 
FROM RTT_Waiting_List;

SELECT 
    PatientID,
    Specialty,
    ReferralDate,
    IsClockStopped,
    CAST(((julianday('2024-06-01') - julianday(ReferralDate))/ 7.0)AS INTEGER) AS WeeksWaiting, 
    CASE
        WHEN CAST(((julianday('2024-06-01') - julianday(ReferralDate))/ 7.0)AS INTEGER) > 52 THEN 'Long Waiters' 
        WHEN CAST(((julianday('2024-06-01') - julianday(ReferralDate))/ 7.0)AS INTEGER) > 18 THEN 'BREACH' 
        ELSE 'Within Target'
        END AS TARGET_STATUS
FROM RTT_Waiting_List;

SELECT
    COUNT(*) AS Within_Target_Range,
    (SUM(CASE WHEN (julianday('2024-06-01') - julianday(ReferralDate)) / 7.0 < 18 THEN 1 ELSE 0 END) * 100.0 )/ COUNT(*) AS Performance_Percentage
    FROM RTT_Waiting_List;



