# Project 05: NHS Referral to Treatment (RTT) Performance

### [🔴 Click Here to View RTT Performance Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHSRTTPerformanceDashboard/Dashboard1?publish=yes)

## 🏥 Scenario
Elective care capacity is actively monitored using the NHS "Referral to Treatment" (RTT) pathway. The national standard dictates that **92%** of patients on an incomplete pathway should be waiting no more than **18 weeks** for treatment. This project analyzes the current waiting list to identify the Trust's performance against the 92% target, flagging both standard breaches (>18 weeks) and critical long waiters (>52 weeks) to help prioritize clinical capacity.

## 🛠 Tech Stack
* **SQL (SQLite):** Used `julianday()` for accurate date math to calculate wait times in weeks, `CAST()` for integer formatting, and nested `CASE WHEN` logic to assign dynamic clinical target statuses.
* **Tableau:** Developed a dual-view dashboard featuring a bold KPI headline with "Hide" logic for clean percentages, and a horizontal stacked bar chart using Red/Green color coding to immediately identify struggling specialties.

## 💡 Key Findings
1.  **Target Deficit:** The overall Trust RTT performance is currently sitting at **70%**, which is significantly below the 92% national safety standard.
2.  **Specialty Bottlenecks:** The visual breakdown highlights that specific departments (such as Orthopaedics and Dermatology) hold a disproportionate volume of the breaches, driving the overall Trust percentage down.

## 🚀 Recommendations
* **Targeted Capacity Increases:** Direct immediate funding for weekend clinic lists or waiting list initiatives (insourcing) specifically toward the highest-breaching specialties rather than a general hospital-wide spread.
* **Pre-Breach Validation:** Implement a "15-week warning" report to catch patients who are approaching the 18-week deadline, allowing booking teams to prioritize them before they officially breach the target.

## 📄 SQL Logic
*See `05-Elective-Care-for the` for the `julianday` date math, decimal division calculations, and `CASE WHEN` tiering.*