
# 🏨 Hotel Revenue Dashboard

An interactive Power BI dashboard that analyzes hotel revenue performance across properties, tracking key hospitality metrics like RevPAR, ADR, Occupancy %, and booking trends to support data-driven revenue management decisions.

![Dashboard Preview](<img width="1209" height="554" alt="Screenshot (1961)" src="https://github.com/user-attachments/assets/db9a027f-ff10-4d0b-b191-625565c9efac" />
)

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

## 📸 Screenshots

> Add your dashboard screenshots to a `screenshots/` folder in this repo and reference them here, e.g.:

```
screenshots/
  dashboard-preview.png
  revenue-trend-tooltip.png
  property-detail-table.png
```

---

## 🚀 How to Use

1. Clone or download this repository
2. Open `hotel_rev_dashboard.pbix` in Power BI Desktop
3. If prompted, update the data source connection to your own dataset
4. Use the filters (City, Category, Rooms, Date) to explore performance across different slices

---

## 👤 Author

Built by [Anu Jangid] as a portfolio project to demonstrate Power BI dashboard design, DAX measure development, and hospitality revenue analytics.

- LinkedIn: [(https://www.linkedin.com/in/anu-jangid-726564328/)]
