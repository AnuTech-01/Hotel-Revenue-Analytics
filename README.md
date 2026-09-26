
# 🏨 Hotel Revenue Dashboard

An interactive Power BI dashboard that analyzes hotel revenue performance across properties, tracking key hospitality metrics like RevPAR, ADR, Occupancy %, and booking trends to support data-driven revenue management decisions.

<img width="1209" height="554" alt="Screenshot (1961)" src="https://github.com/user-attachments/assets/db9a027f-ff10-4d0b-b191-625565c9efac" />

---

## 📌 Project Overview

This dashboard was built to give hotel revenue managers a single-page view of how their properties are performing — comparing weekday vs weekend patterns, tracking week-over-week revenue trends, and drilling down into individual property performance by category (Luxury/Business) and city.

The goal was to turn raw booking and pricing data into a clean, decision-ready view that answers:
- Is revenue trending up or down, and since when?
- Which properties/categories are over- or under-performing?
- How does occupancy compare between weekdays and weekends?
- What's driving changes in ADR (Average Daily Rate) and RevPAR (Revenue per Available Room)?

---

## 🛠️ Tools & Technologies

- **Power BI Desktop** — data modeling, DAX measures, report design
- **DAX** — custom measures for RevPAR, ADR, Realisation %, WoW (week-over-week) change
- **Power Query (M)** — data cleaning and transformation
- **Star schema data model** — fact and dimension tables for scalable analysis

---

## 🗂️ Data Model

The report is built on a star schema with the following tables:

| Table | Type | Description |
|---|---|---|
| `fact_bookings` | Fact | Individual booking-level transactions |
| `fact_aggregated_bookings` | Fact | Pre-aggregated daily booking metrics |
| `imp_measures` | Measure table | All DAX measures (Revenue, RevPAR, ADR, etc.) |
| `dim_date` | Dimension | Calendar table with day_type, week no, month-year |
| `dim_hotels` | Dimension | Property details — city, category |
| `dim_rooms` | Dimension | Room-level attributes and capacity |

---

## 📊 Key Metrics (KPIs)

| Metric | What it measures |
|---|---|
| **Revenue** | Total booking revenue across selected period/filters |
| **RevPAR** | Revenue per Available Room — Revenue ÷ Total Room Capacity |
| **ADR** | Average Daily Rate — Revenue ÷ Rooms Sold |
| **Occupancy %** | Rooms booked ÷ Rooms available |
| **Realisation %** | Actual revenue realized against potential/listed rate |
| **DBRN** | Daily Booked Room Nights |
| **WoW Change %** | Week-over-week percentage change for trend tracking |

---

## ✨ Dashboard Features

- **Dynamic filters** — City, Category, Rooms, and Date (month/quarter slicers)
- **KPI cards** with WoW/period-over-period change indicators (▲ / ▼)
- **Day-type breakdown table** — Weekday vs Weekend performance side by side
- **Revenue trend line chart** — week-on-week revenue with highlighted data point markers
- **Report page tooltips** — hovering over the Revenue card reveals a detailed trend chart without leaving the main view
- **Category & platform-level breakdown** — Realisation % and ADR by booking category and booking platform
- **Property-level detail table** — drill down to individual property performance (revenue, RevPAR, occupancy, capacity)
- **Custom themed design** — gold-on-charcoal color palette with a branded hero background for a premium, presentation-ready look

---

## 🎨 Design Notes

The dashboard uses a custom dark, gold-accented theme rather than Power BI's default styling, built to feel closer to a real hospitality brand's internal reporting tool:

| Element | Color |
|---|---|
| Background | `#14100C` |
| Card surfaces | `#201A13` / `#2A2117` |
| Accent (gold) | `#EF9F27` |
| Primary text | `#FAEEDA` |
| Positive change | `#63C28A` |
| Negative change | `#E0665C` |

---

## 📸 More 6 Dashboard Here:
  <img width="1057" height="477" alt="Screenshot (1964)" src="https://github.com/user-attachments/assets/c1891e0e-586f-4f70-bd7e-c45bbfbe3d4a" />
<img width="1097" height="507" alt="Screenshot (1966)" src="https://github.com/user-attachments/assets/1bc8d2cf-461d-4099-82b2-d029cf99cc41" />
<img width="1125" height="499" alt="Screenshot (1967)" src="https://github.com/user-attachments/assets/9cf107c0-f84b-4375-8df7-3d8b4b789f39" />
<img width="1165" height="499" alt="Screenshot (1968)" src="https://github.com/user-attachments/assets/287aaf78-d488-4dfb-bcf0-616dd3a27350" />
<img width="1016" height="440" alt="Screenshot (1969)" src="https://github.com/user-attachments/assets/16dc5953-126c-406f-9181-3551211c3bf3" />
<img width="1155" height="576" alt="Screenshot (1970)" src="https://github.com/user-attachments/assets/13856423-52c9-43b8-ac78-a71507bd7bc1" />


---

## 🚀 How to Use

1. Clone or download this repository
2. Open `hotel_rev_dashboard_project.pbix` in Power BI Desktop
3. If prompted, update the data source connection to your own dataset
4. Use the filters (City, Category, Rooms, Date) to explore performance across different slices

---

## 👤 Author

Built by Anu Jangid as a portfolio project to demonstrate Power BI dashboard design, DAX measure development, and hospitality revenue analytics.

- LinkedIn: [(https://www.linkedin.com/in/anu-jangid-726564328/)]
- Website: [(https://anujangid-portfolio.netlify.app/)]
- Github : [(https://github.com/AnuTech-01)]
