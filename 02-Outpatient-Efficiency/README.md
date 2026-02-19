# Project 02: Outpatient "Did Not Attend" (DNA) Analysis

![dna_dashboard png](https://github.com/user-attachments/assets/017e3357-ddc5-4ee2-b524-36ffbc1c7e6b)

### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/DNA_Analysis_dashboard/Dashboard1?publish=yes)

## 🏥 Scenario
The Trust is experiencing a 10% DNA (Did Not Attend) rate in Outpatient clinics. Each missed appointment costs the NHS approximately £120-£200. The objective is to quantify the financial loss and identify demographic patterns driving the DNA rate to propose targeted interventions.

## 🛠 Tech Stack
* **SQL (SQLite):** Generated synthetic patient demographic data, calculated distances, and executed financial aggregation logic.
* **Tableau:** Developed a dual-insight dashboard featuring revenue loss bar charts and demographic scatter plots.

## 💡 Key Findings
1.  **Financial Drain:** Dermatology is the highest-losing specialty, bleeding £480 per week in this sample data.
2.  **The Demographic Root Cause:** Scatter plot analysis reveals a distinct cluster of DNAs among **patients under 25 who live more than 10 miles from the hospital**.
3.  **Older Patients Show Up:** Patients over 45, regardless of distance, have a near 100% attendance rate.

## 🚀 Recommendations
* **Targeted SMS Reminders:** Implement aggressive SMS reminders specifically for the under-25 demographic 48 hours before appointments.
* **Telehealth Expansion:** Offer "Virtual First" video appointments for Dermatology patients living further than 10 miles away to eliminate the travel barrier.

## 📄 SQL Logic
*See `02_DNA_Data_Gen.sql` for the data generation and financial loss queries.*
