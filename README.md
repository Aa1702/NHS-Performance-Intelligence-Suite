# 🏥 NHS Performance Intelligence Suite

![Data Analytics](https://img.shields.io/badge/Data_Analytics-Comprehensive_Project-blue?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-SQLite-003B57?style=for-the-badge&logo=sqlite)
![Tableau](https://img.shields.io/badge/Tableau-Data_Viz-E97627?style=for-the-badge&logo=tableau)

## 📌 1. Background and Overview
The NHS operates within one of the most complex healthcare environments globally, where balancing patient demand with clinical capacity is a constant challenge. This suite was developed to simulate a high-pressure hospital environment, analysing over **100,000+ mock records** to ensure compliance with National Health Service safety targets and operational standards.

The primary goal of this intelligence suite is to transition from reactive reporting to **proactive operational management**. By integrating data from Emergency, Outpatient, Inpatient, and Workforce domains, this project provides a 360-degree view of hospital performance, identifying bottlenecks that directly impact patient care and financial sustainability.

---

## 📊 2. Data Structure & Project Architecture
The project’s database architecture is built on a relational framework in **SQLite**, designed to mirror real-world NHS Trust Data Warehouses. 

### **Primary Data Domains:**
* **Urgent & Emergency Care**: Tracking patient journeys from arrival to admission/discharge, focusing on timestamped "breach" events.
* **Outpatient Services**: Analysing appointment slots, specialty-level performance, and demographic-based attendance patterns.
* **Inpatient Flow**: Monitoring ward-level occupancy, bed turn-around times, and "Delayed Transfer of Care" (DTOC) alerts.
* **Clinical Governance (Workforce)**: Mapping nursing rotas against patient acuity to ensure safe staffing levels (1:8 ratio).
* **Elective Care (RTT)**: Managing the "Referral to Treatment" pathway to maintain the 18-week national constitutional standard.

---

## 🛠️ 3. Technical Deep Dive: The Data Engineering Process
To achieve "clean and aesthetic formatting" while maintaining technical rigour, I utilised advanced SQL techniques to prepare the data for Tableau:

* **Advanced Date Math**: Used `julianday()` functions to calculate precise "Length of Stay" (LOS) and "Wait Time" metrics in hours and minutes.
* **Window Functions**: Leveraged `RANK()` and `PARTITION BY` to identify the most recent appointment for "Repeat DNA" (Did Not Attend) analysis.
* **Conditional Logic**: Built complex `CASE WHEN` statements to categorise patients into "Breach" vs "Within Target" buckets based on national 4-hour and 18-week standards.
* **Data Aggregation**: Summarised millions of rows into performant `.csv` outputs, ensuring Tableau dashboards remain interactive and fast-loading.

---

## 🚀 4. Executive Summary of Key Findings
Through robust data storytelling, this suite uncovered three critical "high-risk" areas that require immediate management intervention:

* **The "Peak Hour" Bottleneck**: A&E target compliance drops by **25% between 11:00 and 15:00** due to a surge in "Majors" admissions, indicating a need for staggered staff shifts.
* **Workforce Safety Risk**: Automated flagging revealed that **15% of shifts** in surgical wards breached the safe 1:8 nurse-to-patient ratio, identifying a direct correlation with increased "Length of Stay".
* **Revenue Leakage**: Outpatient "Did Not Attend" (DNA) rates are costing the hospital an estimated **£X,000 per month**, with the highest volume of lost slots occurring in Cardiology and Orthopaedics.

---

## 📂 5. Detailed Project Phases

### 1️⃣ Emergency Care: A&E Admissions & Target Breaches
* **Metric**: 4-Hour Standard Compliance.
* **Insight**: Analysis showed that "Majors" departments are 3x more likely to breach targets than "Minors," primarily due to bed-blockages in downstream wards.
* **[🔴 Interactive Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/AEPerformanceReport/AEPerformanceReport?publish=yes)** | **[Phase 01 Details](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/01-Urgent-Emergency-Care)**

### 2️⃣ Clinic Efficiency: Outpatient Appointments & DNA Rates
* **Metric**: DNA (Did Not Attend) Rate.
* **Insight**: Young adult demographics (ages 18-25) exhibit a **12% higher DNA rate**; however, Friday afternoon clinics across *all* ages show a 5% spike in missed slots.
* **[🔴 Interactive Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/DNA_Analysis_dashboard/Dashboard1?publish=yes)** | **[Phase 02 Details](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/02-Outpatient-Efficiency)**

### 3️⃣ Ward Flow: Inpatient Bed Capacity & LOS
* **Metric**: Bed Occupancy % & DTOC Alerts.
* **Insight**: Ward occupancy consistently exceeds the safe **92% threshold** on Tuesdays and Wednesdays, driven by a backlog in social care discharges.
* **[🔴 Interactive Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Inpatient_Capacity_Alert/InpatientCapacityDTOCDelayedTransferofCareAlert?publish=yes)** | **[Phase 03 Details](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/03-Inpatient-Flow-Capacity)**

### 4️⃣ Clinical Governance: Workforce & Nursing Safety
* **Metric**: Safe Staffing Ratio (>1:8).
* **Insight**: By visualising "Red" shifts, management can now transition from high-cost agency staffing to data-backed internal rota optimisation.
* **[🔴 Interactive Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Staffing_Workforce_Optimization/NursingSafetyStaffingLevels?publish=yes)** | **[Phase 04 Details](https://github.com/Aa1702/NHS-Performance-Intelligence-Suite/tree/main/04-Workforce-Optimization)**

---

## ✅ 6. Strategic Recommendations
1.  **Dynamic Staffing**: Implement a "Float Team" for the Emergency Department specifically between 11:00 and 15:00 to mitigate peak-hour breaches.
2.  **Digital DNA Prevention**: Launch a targeted SMS-reminder pilot for the Cardiology specialty to reduce wasted clinical slots by a projected 10%.
3.  **Governance Oversight**: Utilise the Workforce Dashboard in weekly "Bed Meetings" to proactively identify and mitigate staffing risks before they impact patient safety.

---

## ⚠️ 7. Caveats and Assumptions
* **Data Limitation**: This project utilises high-fidelity simulated data to protect patient confidentiality while maintaining analytical depth.
* **National Standards**: Benchmarks (4-hour, 18-week, 1:8 ratio) are aligned with NHS England constitutional standards as of 2024.
* **Logic Assumption**: Length of Stay calculations assume "Admission" starts at the point of decision, not arrival at the hospital.

---

## 💡 8. How to Navigate this Repository
Each numbered phase folder contains:
1.  **`SQL_Scripts/`**: Clean, commented `.sql` files for table creation and business logic.
2.  **`Data/`**: Raw vs. Processed `.csv` datasets.
3.  **`README.md`**: A deep-dive case study including specific SQL snippets and dashboard screenshots.
