# 🏥 NHS Performance Intelligence Suite

![Data Analytics](https://img.shields.io/badge/Data_Analytics-Comprehensive_Project-blue?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-SQLite-003B57?style=for-the-badge&logo=sqlite)
![Tableau](https://img.shields.io/badge/Tableau-Data_Viz-E97627?style=for-the-badge&logo=tableau)

## 📌 Executive Summary
The **NHS Performance Intelligence Suite** is a comprehensive data analytics project designed to simulate real-world healthcare operational reporting. Managing a hospital requires balancing patient demand with clinical capacity and stringent safety targets. 

This project utilises **SQL** for robust data engineering and **Tableau** for interactive visualisation to tackle five critical areas of hospital operations: Emergency Admissions, Outpatient Scheduling, Bed Capacity, Nursing Rotas, and Elective Care Wait Times.

---

## 🛠️ Core Technology Stack
* **Database & Data Engineering:** SQLite (Advanced date math `julianday`, window functions, complex aggregations, and `CASE WHEN` logic)
* **Business Intelligence:** Tableau Public (Calculated fields, dynamic filtering, Red-Amber-Green (RAG) conditional formatting, and action dashboards)
* **Version Control:** Git & GitHub

---

## 📂 The Project Phases

### 1️⃣ Emergency Care: A&E Admissions & Target Breaches
* **Objective:** Analyse emergency department flow and the 4-hour admission/discharge target.
* **Key Focus:** Identifying peak admission times and bottleneck areas causing 4-hour standard breaches.
* **[Link to Phase 01 Folder](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/01-Urgent-Emergency-Care)**
### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/AEPerformanceReport/AEPerformanceReport?publish=yes)
![AE Performance Dashboard](https://github.com/user-attachments/assets/4dbc2f14-ea28-48bb-96ff-6a50a0045e09)

### 2️⃣ Clinic Efficiency: Outpatient Appointments & DNA Rates
* **Objective:** Optimise outpatient clinic schedules and reduce "Did Not Attend" (DNA) rates.
* **Key Focus:** Tracking attendance trends across specialties to optimise booking slots and reduce wasted clinical time.
* **[Link to Phase 02 Folder](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/02-Outpatient-Efficiency)**
### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/DNA_Analysis_dashboard/Dashboard1?publish=yes)
![dna_dashboard](https://github.com/user-attachments/assets/c7afa5e4-3cd1-4d75-941c-8b5913c32f05)

### 3️⃣ Ward Flow: Inpatient Bed Capacity & Length of Stay (LOS)
* **Objective:** Monitor hospital bed utilisation to prevent overcrowding.
* **Key Focus:** Calculating average Length of Stay (LOS) and visualising current bed occupancy percentages against maximum capacity.
* **[Link to Phase 03 Folder](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/03-Inpatient-Flow-Capacity)**
### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Inpatient_Capacity_Alert/InpatientCapacityDTOCDelayedTransferofCareAlert?publish=yes)
![Capacity_Dashboard](https://github.com/user-attachments/assets/dabea604-2db3-447b-bd6c-7e6edec2ea0f)

### 4️⃣ Clinical Governance: Workforce Optimisation & Nursing Safety
* **Objective:** Ensure safe nurse-to-patient ratios across hospital wards.
* **Key Focus:** Automated flagging of high-risk shifts (>1:8 ratio) to transition from expensive agency staffing to optimised internal rotas.
* **[Link to Phase 04 Folder](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/04-Workforce-Optimization)**
### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Staffing_Workforce_Optimization/NursingSafetyStaffingLevels?publish=yes)
![Workforce_Dashboard](https://github.com/user-attachments/assets/a40521cc-f242-4f46-8217-df6d5c9e376b)

### 5️⃣ Elective Care: Referral to Treatment (RTT) Performance
* **Objective:** Track the 18-week RTT target for elective surgeries and clinical appointments.
* **Key Focus:** Highlighting departments falling below the 92% national standard and flagging critical 52+ week-long waiters for urgent intervention.
* **[Link to Phase 05 Folder](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/05-Elective-Care-RTT)**
### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHSRTTPerformanceDashboard/Dashboard1?publish=yes)
![RTT dashboard](https://github.com/user-attachments/assets/df09875a-dcf3-42a7-8f73-ae01424d2ada)

---

## 💡 How to Navigate this Repository
Each numbered phase folder contains:
1.  **`SQL_Scripts/`**: The `.sql` files containing table creation, mock data insertion, and the business logic queries used to prep the data.
2.  **`Data/`**: The exported `.csv` files fed into Tableau.
3.  **`README.md`**: A specific breakdown of the scenario, findings, and recommendations for that individual domain.
