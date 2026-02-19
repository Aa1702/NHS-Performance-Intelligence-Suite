CREATE TABLE Outpatient_Appts(
    AppointmentID INT PRIMARY KEY,
    AppointmentDate TEXT,
    Specialty TEXT,
    PatientAge INT,
    DistanceFromHospital_Miles INTEGER,
    Status TEXT,
    ApptCost INTEGER
);

INSERT INTO Outpatient_Appts VALUES
(201, '2024-03-01', 'Cardiology', 75, 2, 'Attended', 160),
(202, '2024-03-01', 'Dermatology', 22, 15, 'DNA', 120),
(203, '2024-03-01', 'Orthopaedics', 45, 5, 'Attended', 200),
(204, '2024-03-02', 'Cardiology', 60, 3, 'Attended', 160),
(205, '2024-03-02', 'Dermatology', 19, 20, 'DNA', 120),
(206, '2024-03-03', 'Orthopaedics', 80, 1, 'Attended', 200),
(207, '2024-03-03', 'Cardiology', 55, 12, 'DNA', 160),
(208, '2024-03-04', 'Dermatology', 30, 4, 'Attended', 120),
(209, '2024-03-04', 'Orthopaedics', 25, 25, 'DNA', 200),
(210, '2024-03-05', 'Cardiology', 72, 2, 'Attended', 160),
(211, '2024-03-05', 'Dermatology', 21, 10, 'DNA', 120),
(212, '2024-03-06', 'Orthopaedics', 50, 6, 'Attended', 200),
(213, '2024-03-06', 'Cardiology', 68, 3, 'Attended', 160),
(214, '2024-03-07', 'Dermatology', 24, 18, 'DNA', 120),
(215, '2024-03-07', 'Orthopaedics', 35, 2, 'Attended', 200);

SELECT * FROM Outpatient_Appts;

SELECT
    Specialty,
    COUNT(AppointmentID) AS Total_Appts,
    SUM(CASE WHEN Status = "DNA" THEN 1 ELSE 0 END)AS DNA_Count,
    SUM(CASE WHEN Status = "DNA" THEN ApptCost ELSE 0 END) AS Revenue_Lost
FROM Outpatient_Appts 
GROUP BY Specialty;


SELECT 
    Status,
    COUNT(AppointmentID) AS Total_patients,
    AVG(PatientAge) AS Average_Age,
    AVG(DistanceFromHospital_Miles) AS Average_Distance_Miles
    FROM Outpatient_Appts
    WHERE Specialty = "Dermatology"
    Group By Status;