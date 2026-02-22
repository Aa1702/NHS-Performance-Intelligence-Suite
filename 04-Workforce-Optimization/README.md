# Project 04: Workforce Optimization & Nursing Safety

![Workforce_Dashboard](https://github.com/user-attachments/assets/a38bd979-ee2f-47ee-92cb-e78fd2cf7045)

### [🔴 Click Here to View Interactive Staffing Dashboard](https://public.tableau.com/app/profile/aarti.omane/viz/NHS_Staffing_Workforce_Optimization/NursingSafetyStaffingLevels?publish=yes)

## 🏥 Scenario
Patient safety in hospital wards is heavily dependent on the nurse-to-patient ratio. Per safety standards, a ratio exceeding **1:8** (more than 8 patients per nurse) is flagged as high-risk. This project identifies systemic staffing gaps to help the Trust move away from expensive last-minute agency staff and toward safer, planned rotas.

## 🛠 Tech Stack
* **SQL (SQLite):** Used `CAST` for decimal division and `CASE WHEN` logic to create automated safety flags based on clinical thresholds.
* **Tableau:** Developed a Staffing Heatmap using "Square" marks and color-coded "Red-Alert" logic for immediate situational awareness.

## 💡 Key Findings
1.  **Systemic Risk:** 4 shifts were identified as clinically "Unsafe," with ratios reaching as high as **14.0** patients per nurse.
2.  **Night Shift Vulnerability:** 75% of unsafe shifts occurred during the **Night Shift**, indicating a critical need for rota redistribution rather than just more hiring.

## 🚀 Recommendations
* **Night Shift Redistribution:** Move at least one nursing line from Day to Night in the Acute Medical ward to bring the ratio back under 1:8.
* **Escalation Trigger:** Implement an automated alert in the PAS (Patient Administration System) when a ward's ratio hits 1:9, triggering an immediate clinical review.

## 📄 SQL Logic
*See `04_Staffing_Data_Gen.sql` for the ratio calculations and safety flagging.*
