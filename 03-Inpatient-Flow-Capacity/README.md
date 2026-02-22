# Project 03: Inpatient Bed Capacity & Flow (DTOC)

![Capacity Dashboard Preview]

### [🔴 Click Here to View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Inpatient_Capacity_Alert/InpatientCapacityDTOCDelayedTransferofCareAlert?publish=yes)

## 🏥 Scenario
The Trust is facing winter bed pressures. Patients are backing up in A&E because wards are full. The objective is to identify if "Bed Blockers"—Delayed Transfers of Care (DTOC)—are contributing to the capacity crisis by quantifying patients who are medically cleared but still occupying a bed.

## 🛠 Tech Stack
* **SQL (SQLite):** Used Date Math (`julianday`), `CAST`, and conditional `CASE WHEN` logic to calculate live bed bottlenecks and "Lost Bed Days".
* **Tableau:** Built an operational alert dashboard utilizing KPI text cards and Red/Green status indicators for rapid executive decision-making.

## 💡 Key Findings
1.  **Live Bottleneck:** There are currently **4** patients occupying beds who are medically fit for discharge.
2.  **Worst Offender:** The **Elderly Care** ward is the primary bottleneck, suffering **30 Lost Bed Days** due to delayed discharges (likely awaiting social care/nursing home placements).

## 🚀 Recommendations
* Deploy a dedicated Social Worker liaison directly to the Elderly Care ward to expedite care home placements.
* Implement a daily morning "Board Round" focusing exclusively on the 4 patients marked as "Medically Cleared" to unblock those beds by 12:00 PM.

## 📄 SQL Logic
*See `03_Bed_Capacity_Gen.sql` for the date math and capacity calculations.*